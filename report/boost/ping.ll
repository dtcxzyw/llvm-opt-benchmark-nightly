Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/ping?download=true
inline.NumInlined: 51899
inline.NumDeleted: 16679
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 97
begin_hunk_0_@_ZN5boost5beast9websocket20websocket_test_suite6doTestILb1EZNS1_9ping_test10doTestPingINS2_10SyncClientEEEvRKT_EUlRNS1_6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EEEE_EEvRKNS1_18permessage_deflateERKT0_:bb.a
          to label %.noexc76 unwind label %bb.bm

.noexc76:                                         ; preds = %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc76
  %i.hu = load ptr, ptr %14, align 8, !tbaa !988  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.be
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !989
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #39
  br label %.critedge

bb.bf:                                            ; preds = %.noexc76
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %14, align 8, !tbaa !988  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.bf
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !989
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %.body77

.critedge:                                        ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.if = load ptr, ptr %26, align 8, !tbaa !988  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !989
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  invoke void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  store ptr @.str.30, ptr %28, align 8, !tbaa !1116
  %i.ik = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.31, ptr %i.ik, align 8, !tbaa !1144
  %i.il = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 349, ptr %i.il, align 8, !tbaa !1117
  %i.im = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 63, ptr %i.im, align 4, !tbaa !1145
  invoke void @_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(24) %28) #38
          to label %bb.bh unwind label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEEC2ERNS3_10io_contextERNS1_10fail_countE.exit
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.bj:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EEC2IJS8_EEEDpOT_.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.bk:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10set_optionERKNS1_18permessage_deflateE.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.bl:                                            ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.thread.i, %.noexc.i.i.i.i, %.noexc.i.i.i, %bb.ba
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.bm:                                            ; preds = %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.bm
  %eh.lpad-body78 = phi { ptr, i32 } [ %i.ir, %bb.bm ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 2 uses
  %i.is = load ptr, ptr %26, align 8, !tbaa !988  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body77
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !989
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.bl
  %.pn52 = phi { ptr, i32 } [ %i.iq, %bb.bl ], [ %eh.lpad-body78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %eh.lpad-body78, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  br label %.body68

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bg
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #36
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn56 = phi { ptr, i32 } [ %i.iy, %bb.bo ], [ %i.ix, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  br label %.body68

_ZNK5boost6system10error_codecvbEv.exit.thread202: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.iz = load ptr, ptr %23, align 8, !tbaa !1284 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2387 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !1306, !range !1018, !noundef !1019
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread202
  store i8 0, ptr %i.ja, align 1, !tbaa !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN5boost5beast15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177: ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.526.0.copyload.i179 = load i64, ptr %.sroa.526.0..sroa_idx.i178, align 8, !tbaa !986 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %switch.i.i.i180 = icmp ult i64 %.sroa.526.0.copyload.i179, 2
  %i.jf = and i64 %.sroa.526.0.copyload.i179, 1
  %i.jg = or disjoint i64 %i.jf, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i181 = select i1 %switch.i.i.i180, i64 %.sroa.526.0.copyload.i179, i64 %i.jg ; 2 uses
  store i64 %.sroa.5.0.i.i181, ptr %i.y, align 8, !tbaa !986
  br label %.noexc82

bb.bs:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread202
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 2228
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !1307
  %.off.i162 = add i32 %i.ji, -3
  %switch.i163 = icmp ult i32 %.off.i162, 2
  br i1 %switch.i163, label %bb.bt, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183

bb.bt:                                            ; preds = %bb.bs
  %i.jj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !997, !noalias !5782
  %i.jk = and i64 %i.jj, -2
  %switch.i.i.i.i.i172 = icmp eq i64 %i.jk, -5572340897628102704
  br i1 %switch.i.i.i.i.i172, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173: ; preds = %bb.bt
  %i.jl = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !980, !noalias !5782
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !5782
  %i.jo = call noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !5782, !inline_history !16
  br i1 %i.jo, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176, label %bb.bu

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173, %bb.bt
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173
  %i.jp = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176 ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173 ]
  %i.jq = or disjoint i64 %i.jp, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb__0 to i64) ; 2 uses
  store i64 125, ptr %11, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 %i.jq, ptr %i.y, align 8, !tbaa !986
  br label %.noexc82

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183: ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(179) %7, ptr noundef nonnull %i.z, i64 noundef 139) #36
  %i.jr = load ptr, ptr %23, align 8, !tbaa !1284 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2224
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !1308
  %.not.i148 = icmp eq i32 %i.jt, 0               ; 2 uses
  %33 = select i1 %.not.i148, i8 -128, i8 0
  br i1 %.not.i148, label %bb.bv, label %.thread213

.thread213:                                       ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -119, ptr %i.a, align 1, !tbaa !989
  store i8 0, ptr %.1..1..1..sroa_idx685, align 1, !tbaa !989
  br label %bb.bx

bb.bv:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 2385
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !1309, !range !1018, !noundef !1019
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = invoke noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.jw)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %bb.bv, %.noexc156
  %i.jy = invoke noundef i32 %i.jx()
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1310 ; 2 uses

.noexc156:                                        ; preds = %.noexc155
  %.not.i.i154 = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i154, label %.noexc155, label %bb.bw, !llvm.loop !17

bb.bw:                                            ; preds = %.noexc156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -119, ptr %i.a, align 1, !tbaa !989
  store i8 %33, ptr %.1..1..1..sroa_idx, align 1, !tbaa !989
  store i32 %i.jy, ptr %.2..2..2..2..2..2.gep.sroa_idx, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %.thread213, %bb.bw
  %.1.i.i = phi i64 [ 6, %bb.bw ], [ 2, %.thread213 ]
  %i.jz = invoke { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %.1.i.i)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc157:                                        ; preds = %bb.bx
  %i.ka = extractvalue { ptr, i64 } %i.jz, 1      ; 2 uses
  %i.kb = call i64 @llvm.umin.i64(i64 %i.ka, i64 14) ; 2 uses
  %.not.i.i.i.i.i151 = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i.i.i.i151, label %.noexc122, label %bb.by

bb.by:                                            ; preds = %.noexc157
  %i.kc = extractvalue { ptr, i64 } %i.jz, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr nonnull align 1 %i.a, i64 %i.kb, i1 false)
  br label %.noexc122

.noexc122:                                        ; preds = %bb.by, %.noexc157
  %i.kd = load ptr, ptr %i.aa, align 8, !tbaa !1311
  %i.ke = load ptr, ptr %i.ab, align 8, !tbaa !1312 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.kh, i64 %i.kb)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sroa.speculated.i.i.i ; 3 uses
  store ptr %i.ki, ptr %i.ab, align 8, !tbaa !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kj = load ptr, ptr %23, align 8, !tbaa !1284 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !1287, !nonnull !1019, !align !1023
  %i.km = load ptr, ptr %i.ac, align 8, !tbaa !1313 ; 3 uses
  %i.kn = ptrtoint ptr %i.ki to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not17.not.i.i.i.i = icmp eq ptr %i.ki, %i.km
  br i1 %.not17.not.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc122, %.noexc123
  %.sroa.7.018.i.i.i.i = phi i64 [ %i.kx, %.noexc123 ], [ 0, %.noexc122 ] ; 3 uses
  %i.kq = load i64, ptr %i.y, align 8, !tbaa !999 ; 2 uses
  %i.kr = and i64 %i.kq, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.kr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ks = icmp eq i64 %i.kq, 1
  %i.kt = load i32, ptr %11, align 8
  %.fr.i.i.i.i.i = freeze i32 %i.kt
  %.not.i.i.i.i.i120 = icmp eq i32 %.fr.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.ks, %.not.i.i.i.i.i120
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i: ; preds = %bb.bz, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.7.018.i.i.i.i
  %i.kv = sub nuw i64 %i.kp, %.sroa.7.018.i.i.i.i
  %spec.select.i1.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.kv, i64 65536)
  store ptr %i.ku, ptr %6, align 8
  store i64 %spec.select.i1.i.i.i.i.i, ptr %i.ad, align 8
  %i.kw = invoke noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE10write_someINS3_12const_bufferEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i
  %i.kx = add i64 %i.kw, %.sroa.7.018.i.i.i.i     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.not.i.i.i.i121 = icmp ult i64 %i.kx, %i.kp
  br i1 %.not.i.i.i.i121, label %.lr.ph.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit: ; preds = %bb.bz, %.noexc123
  %.pre417 = load ptr, ptr %23, align 8, !tbaa !1284
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i: ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit, %.noexc122
  %i.ky = phi ptr [ %.pre417, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit ], [ %i.kj, %.noexc122 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2387 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !1306, !range !1018, !noundef !1019
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i
  store i8 0, ptr %i.kz, align 1, !tbaa !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZN5boost5beast15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i: ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.526.0.copyload.i = load i64, ptr %.sroa.526.0..sroa_idx.i, align 8, !tbaa !986 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %switch.i.i.i = icmp ult i64 %.sroa.526.0.copyload.i, 2
  %i.le = and i64 %.sroa.526.0.copyload.i, 1
  %i.lf = or disjoint i64 %i.le, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.526.0.copyload.i, i64 %i.lf ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %i.y, align 8, !tbaa !986
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

bb.cc:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 2228 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !1307
  %.off.i = add i32 %i.lh, -3
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.li = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !997, !noalias !5783
  %i.lj = and i64 %i.li, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.lj, -5572340897628102704
  br i1 %switch.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i: ; preds = %bb.cd
  %i.lk = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !980, !noalias !5783
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !5783
  %i.ln = call noundef zeroext i1 %i.lm(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !5783, !inline_history !16
  br i1 %i.ln, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i, label %bb.ce

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i, %bb.cd
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i
  %i.lo = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i ]
  %i.lp = or disjoint i64 %i.lo, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb__0 to i64) ; 2 uses
  store i64 125, ptr %11, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 %i.lp, ptr %i.y, align 8, !tbaa !986
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

bb.cf:                                            ; preds = %bb.cc
  %i.lq = load i64, ptr %i.y, align 8, !tbaa !999 ; 4 uses
  %i.lr = and i64 %i.lq, 1
  %.not.i.i.i145 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i.i145, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ls = icmp ne i64 %i.lq, 1
  %i.lt = load i32, ptr %11, align 8
  %i.lu = icmp ne i32 %i.lt, 0
  %or.cond.i146 = select i1 %i.ls, i1 true, i1 %i.lu
  br i1 %or.cond.i146, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %bb.cg
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 2386 ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 2, !tbaa !1314, !range !1018, !noundef !1019
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  %i.ly = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !997, !noalias !5784
  %i.lz = and i64 %i.ly, -2
  %switch.i.i.i.i13.i = icmp eq i64 %i.lz, -5572340897628102704
  br i1 %switch.i.i.i.i13.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i: ; preds = %bb.ch
  %i.ma = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !980, !noalias !5784
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !5784
  %i.md = call noundef zeroext i1 %i.mc(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !5784, !inline_history !16
  br i1 %i.md, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i, label %bb.ci

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i, %bb.ch
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i
  %i.me = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i ]
  %i.mf = or disjoint i64 %i.me, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb__1 to i64) ; 2 uses
  store i64 125, ptr %11, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 %i.mf, ptr %i.y, align 8, !tbaa !986
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

bb.cj:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  store i8 1, ptr %i.lv, align 2, !tbaa !1314
  store i32 4, ptr %i.lg, align 4, !tbaa !1307
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i, %bb.ce, %bb.cf, %bb.cg, %bb.ci, %bb.cj
  %i.mg = phi i64 [ %.sroa.5.0.i.i, %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i ], [ %i.lp, %bb.ce ], [ %i.lq, %bb.cf ], [ 1, %bb.cg ], [ %i.mf, %bb.ci ], [ %i.lq, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.noexc82

.noexc82:                                         ; preds = %bb.bu, %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177, %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit
  %i.mh = phi i64 [ %.sroa.5.0.i.i181, %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177 ], [ %i.mg, %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit ], [ %i.jq, %bb.bu ] ; 2 uses
  %i.mi = and i64 %i.mh, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.mi, 0
  br i1 %.not.i.i.i.i.i, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %.noexc82
  %i.mj = icmp ne i64 %i.mh, 1
  %i.mk = load i32, ptr %11, align 8
  %i.ml = icmp ne i32 %i.mk, 0
end_hunk_0
begin_hunk_1_@_ZN5boost5beast9websocket20websocket_test_suite6doTestILb1EZNS1_9ping_test10doTestPingINS2_10SyncClientEEEvRKT_EUlRNS1_6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EEEE0_EEvRKNS1_18permessage_deflateERKT0_:bb.a
          to label %.noexc76 unwind label %bb.bm

.noexc76:                                         ; preds = %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc76
  %i.hu = load ptr, ptr %14, align 8, !tbaa !988  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.be
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !989
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #39
  br label %.critedge

bb.bf:                                            ; preds = %.noexc76
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %14, align 8, !tbaa !988  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.bf
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !989
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %.body77

.critedge:                                        ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.if = load ptr, ptr %26, align 8, !tbaa !988  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !989
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  invoke void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  store ptr @.str.30, ptr %28, align 8, !tbaa !1116
  %i.ik = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.31, ptr %i.ik, align 8, !tbaa !1144
  %i.il = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 349, ptr %i.il, align 8, !tbaa !1117
  %i.im = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 63, ptr %i.im, align 4, !tbaa !1145
  invoke void @_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(24) %28) #38
          to label %bb.bh unwind label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEEC2ERNS3_10io_contextERNS1_10fail_countE.exit
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.bj:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EEC2IJS8_EEEDpOT_.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.bk:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10set_optionERKNS1_18permessage_deflateE.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.bl:                                            ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.thread.i, %.noexc.i.i.i.i, %.noexc.i.i.i, %bb.ba
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.bm:                                            ; preds = %_ZNK5boost6system10error_code7messageB5cxx11Ev.exit
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.bm
  %eh.lpad-body78 = phi { ptr, i32 } [ %i.ir, %bb.bm ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 2 uses
  %i.is = load ptr, ptr %26, align 8, !tbaa !988  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body77
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !989
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.bl
  %.pn52 = phi { ptr, i32 } [ %i.iq, %bb.bl ], [ %eh.lpad-body78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %eh.lpad-body78, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  br label %.body68

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bg
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #36
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn56 = phi { ptr, i32 } [ %i.iy, %bb.bo ], [ %i.ix, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  br label %.body68

_ZNK5boost6system10error_codecvbEv.exit.thread202: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.iz = load ptr, ptr %23, align 8, !tbaa !1284 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2387 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !1306, !range !1018, !noundef !1019
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread202
  store i8 0, ptr %i.ja, align 1, !tbaa !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN5boost5beast15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177: ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.526.0.copyload.i179 = load i64, ptr %.sroa.526.0..sroa_idx.i178, align 8, !tbaa !986 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %switch.i.i.i180 = icmp ult i64 %.sroa.526.0.copyload.i179, 2
  %i.jf = and i64 %.sroa.526.0.copyload.i179, 1
  %i.jg = or disjoint i64 %i.jf, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i181 = select i1 %switch.i.i.i180, i64 %.sroa.526.0.copyload.i179, i64 %i.jg ; 2 uses
  store i64 %.sroa.5.0.i.i181, ptr %i.y, align 8, !tbaa !986
  br label %.noexc82

bb.bs:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread202
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 2228
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !1307
  %.off.i162 = add i32 %i.ji, -3
  %switch.i163 = icmp ult i32 %.off.i162, 2
  br i1 %switch.i163, label %bb.bt, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183

bb.bt:                                            ; preds = %bb.bs
  %i.jj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !997, !noalias !5815
  %i.jk = and i64 %i.jj, -2
  %switch.i.i.i.i.i172 = icmp eq i64 %i.jk, -5572340897628102704
  br i1 %switch.i.i.i.i.i172, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173: ; preds = %bb.bt
  %i.jl = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !980, !noalias !5815
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !5815
  %i.jo = call noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !5815, !inline_history !16
  br i1 %i.jo, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176, label %bb.bu

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173, %bb.bt
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173
  %i.jp = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i176 ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i173 ]
  %i.jq = or disjoint i64 %i.jp, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb__0 to i64) ; 2 uses
  store i64 125, ptr %11, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 %i.jq, ptr %i.y, align 8, !tbaa !986
  br label %.noexc82

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183: ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(179) %7, ptr noundef nonnull %i.z, i64 noundef 139) #36
  %i.jr = load ptr, ptr %23, align 8, !tbaa !1284 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2224
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !1308
  %.not.i148 = icmp eq i32 %i.jt, 0               ; 2 uses
  %33 = select i1 %.not.i148, i8 -128, i8 0
  br i1 %.not.i148, label %bb.bv, label %.thread213

.thread213:                                       ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -118, ptr %i.a, align 1, !tbaa !989
  store i8 0, ptr %.1..1..1..sroa_idx685, align 1, !tbaa !989
  br label %bb.bx

bb.bv:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit183
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 2385
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !1309, !range !1018, !noundef !1019
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = invoke noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.jw)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %bb.bv, %.noexc156
  %i.jy = invoke noundef i32 %i.jx()
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1310 ; 2 uses

.noexc156:                                        ; preds = %.noexc155
  %.not.i.i154 = icmp eq i32 %i.jy, 0
  br i1 %.not.i.i154, label %.noexc155, label %bb.bw, !llvm.loop !17

bb.bw:                                            ; preds = %.noexc156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -118, ptr %i.a, align 1, !tbaa !989
  store i8 %33, ptr %.1..1..1..sroa_idx, align 1, !tbaa !989
  store i32 %i.jy, ptr %.2..2..2..2..2..2.gep.sroa_idx, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %.thread213, %bb.bw
  %.1.i.i = phi i64 [ 6, %bb.bw ], [ 2, %.thread213 ]
  %i.jz = invoke { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %.1.i.i)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc157:                                        ; preds = %bb.bx
  %i.ka = extractvalue { ptr, i64 } %i.jz, 1      ; 2 uses
  %i.kb = call i64 @llvm.umin.i64(i64 %i.ka, i64 14) ; 2 uses
  %.not.i.i.i.i.i151 = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i.i.i.i151, label %.noexc122, label %bb.by

bb.by:                                            ; preds = %.noexc157
  %i.kc = extractvalue { ptr, i64 } %i.jz, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr nonnull align 1 %i.a, i64 %i.kb, i1 false)
  br label %.noexc122

.noexc122:                                        ; preds = %bb.by, %.noexc157
  %i.kd = load ptr, ptr %i.aa, align 8, !tbaa !1311
  %i.ke = load ptr, ptr %i.ab, align 8, !tbaa !1312 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.kh, i64 %i.kb)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sroa.speculated.i.i.i ; 3 uses
  store ptr %i.ki, ptr %i.ab, align 8, !tbaa !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kj = load ptr, ptr %23, align 8, !tbaa !1284 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !1287, !nonnull !1019, !align !1023
  %i.km = load ptr, ptr %i.ac, align 8, !tbaa !1313 ; 3 uses
  %i.kn = ptrtoint ptr %i.ki to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not17.not.i.i.i.i = icmp eq ptr %i.ki, %i.km
  br i1 %.not17.not.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc122, %.noexc123
  %.sroa.7.018.i.i.i.i = phi i64 [ %i.kx, %.noexc123 ], [ 0, %.noexc122 ] ; 3 uses
  %i.kq = load i64, ptr %i.y, align 8, !tbaa !999 ; 2 uses
  %i.kr = and i64 %i.kq, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.kr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ks = icmp eq i64 %i.kq, 1
  %i.kt = load i32, ptr %11, align 8
  %.fr.i.i.i.i.i = freeze i32 %i.kt
  %.not.i.i.i.i.i120 = icmp eq i32 %.fr.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.ks, %.not.i.i.i.i.i120
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i: ; preds = %bb.bz, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.7.018.i.i.i.i
  %i.kv = sub nuw i64 %i.kp, %.sroa.7.018.i.i.i.i
  %spec.select.i1.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.kv, i64 65536)
  store ptr %i.ku, ptr %6, align 8
  store i64 %spec.select.i1.i.i.i.i.i, ptr %i.ad, align 8
  %i.kw = invoke noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE10write_someINS3_12const_bufferEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i.i
  %i.kx = add i64 %i.kw, %.sroa.7.018.i.i.i.i     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.not.i.i.i.i121 = icmp ult i64 %i.kx, %i.kp
  br i1 %.not.i.i.i.i121, label %.lr.ph.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit: ; preds = %bb.bz, %.noexc123
  %.pre417 = load ptr, ptr %23, align 8, !tbaa !1284
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i: ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit, %.noexc122
  %i.ky = phi ptr [ %.pre417, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i.loopexit ], [ %i.kj, %.noexc122 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2387 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !1306, !range !1018, !noundef !1019
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i
  store i8 0, ptr %i.kz, align 1, !tbaa !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZN5boost5beast15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i: ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.526.0.copyload.i = load i64, ptr %.sroa.526.0..sroa_idx.i, align 8, !tbaa !986 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %switch.i.i.i = icmp ult i64 %.sroa.526.0.copyload.i, 2
  %i.le = and i64 %.sroa.526.0.copyload.i, 1
  %i.lf = or disjoint i64 %i.le, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.526.0.copyload.i, i64 %i.lf ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %i.y, align 8, !tbaa !986
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

bb.cc:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 2228 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !1307
  %.off.i = add i32 %i.lh, -3
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.li = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !997, !noalias !5816
  %i.lj = and i64 %i.li, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.lj, -5572340897628102704
  br i1 %switch.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i: ; preds = %bb.cd
  %i.lk = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !980, !noalias !5816
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !5816
  %i.ln = call noundef zeroext i1 %i.lm(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !5816, !inline_history !16
  br i1 %i.ln, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i, label %bb.ce

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i, %bb.cd
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i
  %i.lo = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i ]
  %i.lp = or disjoint i64 %i.lo, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb__0 to i64) ; 2 uses
  store i64 125, ptr %11, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 %i.lp, ptr %i.y, align 8, !tbaa !986
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

bb.cf:                                            ; preds = %bb.cc
  %i.lq = load i64, ptr %i.y, align 8, !tbaa !999 ; 4 uses
  %i.lr = and i64 %i.lq, 1
  %.not.i.i.i145 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i.i145, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ls = icmp ne i64 %i.lq, 1
  %i.lt = load i32, ptr %11, align 8
  %i.lu = icmp ne i32 %i.lt, 0
  %or.cond.i146 = select i1 %i.ls, i1 true, i1 %i.lu
  br i1 %or.cond.i146, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %bb.cg
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 2386 ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 2, !tbaa !1314, !range !1018, !noundef !1019
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  %i.ly = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !997, !noalias !5817
  %i.lz = and i64 %i.ly, -2
  %switch.i.i.i.i13.i = icmp eq i64 %i.lz, -5572340897628102704
  br i1 %switch.i.i.i.i13.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i: ; preds = %bb.ch
  %i.ma = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !980, !noalias !5817
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !5817
  %i.md = call noundef zeroext i1 %i.mc(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #36, !noalias !5817, !inline_history !16
  br i1 %i.md, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i, label %bb.ci

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i, %bb.ch
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i
  %i.me = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.i ]
  %i.mf = or disjoint i64 %i.me, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb__1 to i64) ; 2 uses
  store i64 125, ptr %11, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 %i.mf, ptr %i.y, align 8, !tbaa !986
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

bb.cj:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  store i8 1, ptr %i.lv, align 2, !tbaa !1314
  store i32 4, ptr %i.lg, align 4, !tbaa !1307
  br label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i, %bb.ce, %bb.cf, %bb.cg, %bb.ci, %bb.cj
  %i.mg = phi i64 [ %.sroa.5.0.i.i, %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i ], [ %i.lp, %bb.ce ], [ %i.lq, %bb.cf ], [ 1, %bb.cg ], [ %i.mf, %bb.ci ], [ %i.lq, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.noexc82

.noexc82:                                         ; preds = %bb.bu, %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177, %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit
  %i.mh = phi i64 [ %.sroa.5.0.i.i181, %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i177 ], [ %i.mg, %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE.exit ], [ %i.jq, %bb.bu ] ; 2 uses
  %i.mi = and i64 %i.mh, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.mi, 0
  br i1 %.not.i.i.i.i.i, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %.noexc82
  %i.mj = icmp ne i64 %i.mh, 1
  %i.mk = load i32, ptr %11, align 8
  %i.ml = icmp ne i32 %i.mk, 0
end_hunk_1
