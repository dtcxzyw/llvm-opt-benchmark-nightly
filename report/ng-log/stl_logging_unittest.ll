Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/stl_logging_unittest?download=true
inline.NumInlined: 927
inline.NumDeleted: 434
begin_hunk_0_@_ZN21STLLogging_Basic_Test8TestBodyEv:_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  br i1 %i.jj, label %bb.bs, label %.loopexit.i, !prof !180

bb.bs:                                            ; preds = %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEC2ERKSC_.exit.thread, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEC2ERKSC_.exit
  %i.jk = phi ptr [ %.0.i.i.i.i.i.i, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEC2ERKSC_.exit.thread ], [ %i.ix, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEC2ERKSC_.exit ]
  %i.jl = load ptr, ptr %i.eu, align 8, !tbaa !56, !noalias !179 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.jl, %i.es
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bs, %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.thread6.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i = phi ptr [ %i.kd, %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.thread6.i.i.i.i.i.i.i ], [ %i.jk, %bb.bs ] ; 4 uses
  %.sroa.03.08.i.i.i.i.i.i.i = phi ptr [ %i.kc, %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.thread6.i.i.i.i.i.i.i ], [ %i.jl, %bb.bs ] ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i, i64 32
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 32
  %i.jo = load i32, ptr %i.jm, align 8, !tbaa !64, !noalias !179
  %i.jp = load i32, ptr %i.jn, align 8, !tbaa !64, !noalias !179
  %i.jq = icmp eq i32 %i.jo, %i.jp
  br i1 %i.jq, label %bb.bt, label %.loopexit.i, !prof !169

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 40
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i, i64 48
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !46, !noalias !179 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 48
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !46, !noalias !179
  %i.jx = icmp eq i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.bu, label %.loopexit.i, !prof !169

bb.bu:                                            ; preds = %bb.bt
  %i.jy = icmp eq i64 %i.ju, 0
  br i1 %i.jy, label %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.thread6.i.i.i.i.i.i.i, label %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i

_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i: ; preds = %bb.bu
  %i.jz = load ptr, ptr %i.js, align 8, !tbaa !47, !noalias !179
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !47, !noalias !179
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ka, ptr %i.jz, i64 %i.ju), !noalias !179
  %i.kb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kb, label %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.thread6.i.i.i.i.i.i.i, label %.loopexit.i, !prof !169

_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.thread6.i.i.i.i.i.i.i: ; preds = %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i, %bb.bu
  %i.kc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.08.i.i.i.i.i.i.i) #29, !noalias !179 ; 2 uses
  %i.kd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.09.i.i.i.i.i.i.i) #29, !noalias !179
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kc, %i.es
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226.thread, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !122

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226.thread: ; preds = %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.thread6.i.i.i.i.i.i.i, %bb.bs
  store ptr null, ptr %33, align 8, !tbaa !50
  br label %_ZN5nglog8internal13CheckOpStringD2Ev.exit231

.loopexit.i:                                      ; preds = %_ZSteqIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i, %bb.bt, %.lr.ph.i.i.i.i.i.i.i, %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEC2ERKSC_.exit
  invoke void @_ZN5nglog8internal17MakeCheckOpStringISt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS8_EEESF_EESt10unique_ptrIS8_St14default_deleteIS8_EERKT_RKT0_PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %33, ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull @.str.12)
          to label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226 unwind label %bb.ca

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226: ; preds = %.loopexit.i
  %.pre539 = load i64, ptr %33, align 8, !tbaa !50 ; 2 uses
  store i64 %.pre539, ptr %32, align 8, !tbaa !50
  store ptr null, ptr %33, align 8, !tbaa !50
  %.not453 = icmp eq i64 %.pre539, 0
  br i1 %.not453, label %_ZN5nglog8internal13CheckOpStringD2Ev.exit231, label %bb.cb

_ZN5nglog8internal13CheckOpStringD2Ev.exit231:    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226.thread, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.ke = load ptr, ptr %i.iy, align 8, !tbaa !55
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef %i.ke)
          to label %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev.exit unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN5nglog8internal13CheckOpStringD2Ev.exit231
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0
  call void @__clang_call_terminate(ptr %i.kg) #30
  unreachable

_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev.exit: ; preds = %_ZN5nglog8internal13CheckOpStringD2Ev.exit231
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  store ptr %i.dz, ptr %26, align 8, !tbaa !12
  %i.kh = load i64, ptr %i.eb, align 8
  %i.ki = getelementptr inbounds i8, ptr %26, i64 %i.kh
  store ptr %i.ea, ptr %i.ki, align 8, !tbaa !12
  %i.kj = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kj, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !47 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232: ; preds = %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev.exit
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !39
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit234

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit234: ; preds = %_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kj, align 8, !tbaa !12
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kq) #25
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kr) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %i.ks = load ptr, ptr %i.et, align 8, !tbaa !55
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef %i.ks)
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.peel unwind label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit234
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #30
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.peel: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit234
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %i.kv = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 8 uses
  store ptr %i.kv, ptr %35, align 8, !tbaa !44
  %i.kw = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 6 uses
  store i64 0, ptr %i.kw, align 8, !tbaa !46
  store i8 0, ptr %i.kv, align 8, !tbaa !39
  %i.kx = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %bb.bx unwind label %.loopexit459.loopexit.split-lp ; 6 uses

bb.bx:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.peel
  store i32 0, ptr %i.kx, align 4, !tbaa !36
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4 ; 3 uses
  %.sroa.11.2.peel = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.kz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef 0) #25 ; 0 uses
  %i.la = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #25 ; 2 uses
  %i.lb = load i64, ptr %i.kw, align 8, !tbaa !46
  %i.lc = sub i64 4611686018427387903, %i.lb
  %i.ld = icmp ult i64 %i.lc, %i.la
  br i1 %i.ld, label %.loopexit533, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel: ; preds = %bb.bx
  %i.le = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull %i.f, i64 noundef %i.la)
          to label %.peel.next unwind label %.loopexit464.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.cq

bb.by:                                            ; preds = %_ZN7testing7MessageD2Ev.exit212, %.body188
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %_ZN7testing7MessageD2Ev.exit212 ], [ %.pn48, %.body188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.cn

bb.bz:                                            ; preds = %bb.bq
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ca:                                            ; preds = %.loopexit.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cb:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit226
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  invoke void @_ZN5nglog15LogMessageFatalC1EPKciRKNS_8internal13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %34, ptr noundef nonnull @.str.2, i32 noundef 74, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.lh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %34)
          to label %bb.cd unwind label %bb.cg     ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %34) #28
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  unreachable

bb.cf:                                            ; preds = %bb.cd, %bb.cb
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  call void @_ZN5nglog8internal13CheckOpStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #25
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.invoke

bb.ch:                                            ; preds = %bb.cf, %bb.ca
  %.pn75 = phi { ptr, i32 } [ %i.li, %bb.cf ], [ %i.lg, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  call void @_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #25
  br label %bb.cm

.loopexit537:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.not.i.i236 = icmp eq ptr %.sroa.11.2, %.sroa.18.5
  br i1 %.not.i.i236, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.loopexit537
  store i32 100, ptr %.sroa.11.2, align 4, !tbaa !36
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit245

bb.cj:                                            ; preds = %.loopexit537
  %i.lk = ptrtoint ptr %.sroa.18.5 to i64
  %i.ll = ptrtoint ptr %.sroa.0.5 to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 6 uses
  %i.ln = icmp eq i64 %i.lm, 9223372036854775804
  br i1 %i.ln, label %bb.ck, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i237

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #28
          to label %.noexc243 unwind label %bb.dg

.noexc243:                                        ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i237: ; preds = %bb.cj
  %i.lo = ashr exact i64 %i.lm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i238 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1)
  %i.lp = add nsw i64 %.sroa.speculated.i.i.i.i238, %i.lo ; 2 uses
  %i.lq = icmp ult i64 %i.lp, %i.lo
  %i.lr = call i64 @llvm.umin.i64(i64 %i.lp, i64 2305843009213693951)
  %i.ls = select i1 %i.lq, i64 2305843009213693951, i64 %i.lr ; 3 uses
  %.not.i.i.i.i239 = icmp ne i64 %i.ls, 0
  call void @llvm.assume(i1 %.not.i.i.i.i239)
  %i.lt = shl nuw nsw i64 %i.ls, 2
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #26
          to label %.noexc244 unwind label %bb.dg ; 4 uses

.noexc244:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i237
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %i.lm ; 2 uses
  store i32 100, ptr %i.lv, align 4, !tbaa !36
  %i.lw = icmp sgt i64 %i.lm, 0
  br i1 %i.lw, label %bb.cl, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i242

bb.cl:                                            ; preds = %.noexc244
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lu, ptr align 4 %.sroa.0.5, i64 %i.lm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i242

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i242: ; preds = %bb.cl, %.noexc244
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.lm) #27
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ls
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit245

bb.cm:                                            ; preds = %bb.ch, %bb.bz
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %bb.ch ], [ %i.lf, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.by, %bb.bd
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %bb.cm ], [ %.pn50.pn.pn, %bb.by ], [ %i.hv, %bb.bd ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %26) #25
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bc
  %.pn75.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn, %bb.cn ], [ %i.hu, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bb, %bb.ba, %bb.az
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn.pn, %bb.co ], [ %i.ht, %bb.bb ], [ %i.hs, %bb.ba ], [ %i.hr, %bb.az ]
  call void @_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit381

bb.cq:                                            ; preds = %.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %storemerge502 = phi i32 [ 1, %.peel.next ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 4 uses
  %.sroa.18.0501 = phi ptr [ %i.ky, %.peel.next ], [ %.sroa.18.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 5 uses
  %.sroa.11.0500 = phi ptr [ %.sroa.11.2.peel, %.peel.next ], [ %.sroa.11.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 3 uses
  %.sroa.0.0499 = phi ptr [ %i.kx, %.peel.next ], [ %.sroa.0.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 6 uses
  %.not.i246 = icmp eq ptr %.sroa.11.0500, %.sroa.18.0501
  br i1 %.not.i246, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store i32 %storemerge502, ptr %.sroa.11.0500, align 4, !tbaa !36
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  %i.ly = ptrtoint ptr %.sroa.18.0501 to i64
  %i.lz = ptrtoint ptr %.sroa.0.0499 to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 6 uses
  %i.mb = icmp eq i64 %i.ma, 9223372036854775804
  br i1 %i.mb, label %.loopexit, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.loopexit:                                        ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #28
          to label %.noexc248 unwind label %.loopexit.split-lp460

.noexc248:                                        ; preds = %.loopexit
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cs
  %i.mc = ashr exact i64 %i.ma, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mc, i64 1)
  %i.md = add nsw i64 %.sroa.speculated.i.i.i, %i.mc ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  %i.mf = call i64 @llvm.umin.i64(i64 %i.md, i64 2305843009213693951)
  %i.mg = select i1 %i.me, i64 2305843009213693951, i64 %i.mf ; 3 uses
  %.not.i.i.i247 = icmp ne i64 %i.mg, 0
  call void @llvm.assume(i1 %.not.i.i.i247)
  %i.mh = shl nuw nsw i64 %i.mg, 2
  %i.mi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #26
          to label %.noexc249 unwind label %.loopexit459.loopexit ; 4 uses

.noexc249:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 %i.ma ; 2 uses
  store i32 %storemerge502, ptr %i.mj, align 4, !tbaa !36
  %i.mk = icmp sgt i64 %i.ma, 0
  br i1 %i.mk, label %bb.ct, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

bb.ct:                                            ; preds = %.noexc249
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mi, ptr align 4 %.sroa.0.0499, i64 %i.ma, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ct, %.noexc249
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0499, i64 noundef %i.ma) #27
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mg
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.0.5 = phi ptr [ %i.mi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.0499, %bb.cr ] ; 9 uses
  %.pn457 = phi ptr [ %i.mj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.0500, %bb.cr ]
  %.sroa.18.5 = phi ptr [ %i.ml, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.0501, %bb.cr ] ; 8 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn457, i64 4 ; 4 uses
  %i.mm = load i64, ptr %i.kw, align 8, !tbaa !46 ; 4 uses
  %i.mn = add i64 %i.mm, 1                        ; 3 uses
  %i.mo = load ptr, ptr %35, align 8, !tbaa !47   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.kv
  br i1 %i.mp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.cu
  %i.mq = icmp ult i64 %i.mm, 16
  call void @llvm.assume(i1 %i.mq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cu
  %i.mr = load i64, ptr %i.kv, align 8, !tbaa !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ms = phi i64 [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.mt = icmp ugt i64 %i.mn, %i.ms
  br i1 %i.mt, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %i.mm, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc251 unwind label %.loopexit459.loopexit

.noexc251:                                        ; preds = %bb.cv
  %.pre.i.i250 = load ptr, ptr %35, align 8, !tbaa !47
  br label %bb.cw

.loopexit459.loopexit:                            ; preds = %bb.cv, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0.1.ph.ph = phi ptr [ %.sroa.0.5, %bb.cv ], [ %.sroa.0.0499, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.18.1.ph.ph = phi ptr [ %.sroa.18.5, %bb.cv ], [ %.sroa.18.0501, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit530 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit459

.loopexit459.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.peel
  %lpad.loopexit.split-lp531 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit459

.loopexit.split-lp460:                            ; preds = %.loopexit
  %lpad.loopexit.split-lp462 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit459

bb.cw:                                            ; preds = %.noexc251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.mu = phi ptr [ %.pre.i.i250, %.noexc251 ], [ %i.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mm
  store i8 32, ptr %i.mv, align 1, !tbaa !39
  store i64 %i.mn, ptr %i.kw, align 8, !tbaa !46
  %i.mw = load ptr, ptr %35, align 8, !tbaa !47
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mn
  store i8 0, ptr %i.mx, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.my = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %storemerge502) #25 ; 0 uses
  %i.mz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #25 ; 2 uses
  %i.na = load i64, ptr %i.kw, align 8, !tbaa !46
  %i.nb = sub i64 4611686018427387903, %i.na
  %i.nc = icmp ult i64 %i.nb, %i.mz
  br i1 %i.nc, label %.loopexit533, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit533:                                     ; preds = %bb.cw, %bb.bx
  %.sroa.0.5.lcssa = phi ptr [ %i.kx, %bb.bx ], [ %.sroa.0.5, %bb.cw ]
  %.sroa.18.5.lcssa = phi ptr [ %i.ky, %bb.bx ], [ %.sroa.18.5, %bb.cw ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc252 unwind label %.loopexit.split-lp465

.noexc252:                                        ; preds = %.loopexit533
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.cw
  %i.nd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull %i.f, i64 noundef %i.mz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit464.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.ne = add nuw nsw i32 %storemerge502, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ne, 100
  br i1 %exitcond.not, label %.loopexit537, label %bb.cq, !llvm.loop !123

.loopexit464.loopexit:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit534 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit464

.loopexit464.loopexit.split-lp:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel
  %lpad.loopexit.split-lp535 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit464

.loopexit.split-lp465:                            ; preds = %.loopexit533
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit464

.loopexit464:                                     ; preds = %.loopexit464.loopexit, %.loopexit464.loopexit.split-lp, %.loopexit.split-lp465
  %.sroa.0.5523 = phi ptr [ %.sroa.0.5.lcssa, %.loopexit.split-lp465 ], [ %.sroa.0.5, %.loopexit464.loopexit ], [ %i.kx, %.loopexit464.loopexit.split-lp ]
  %.sroa.18.5520 = phi ptr [ %.sroa.18.5.lcssa, %.loopexit.split-lp465 ], [ %.sroa.18.5, %.loopexit464.loopexit ], [ %i.ky, %.loopexit464.loopexit.split-lp ]
  %lpad.phi468 = phi { ptr, i32 } [ %lpad.loopexit.split-lp467, %.loopexit.split-lp465 ], [ %lpad.loopexit534, %.loopexit464.loopexit ], [ %lpad.loopexit.split-lp535, %.loopexit464.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %.loopexit459

_ZNSt6vectorIiSaIiEE9push_backEOi.exit245:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i242, %bb.ci
  %.sroa.0.4 = phi ptr [ %i.lu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i242 ], [ %.sroa.0.5, %bb.ci ] ; 8 uses
  %.pn454 = phi ptr [ %i.lv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i242 ], [ %.sroa.11.2, %bb.ci ] ; 3 uses
  %.sroa.18.4 = phi ptr [ %i.lx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i242 ], [ %.sroa.18.5, %bb.ci ] ; 3 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn454, i64 4
  %i.nf = load i64, ptr %i.kw, align 8, !tbaa !46
  %i.ng = and i64 %i.nf, -4
  %i.nh = icmp eq i64 %i.ng, 4611686018427387900
  br i1 %i.nh, label %bb.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254

bb.cx:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit245
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc255 unwind label %bb.dh

.noexc255:                                        ; preds = %bb.cx
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit245
  %i.ni = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.14, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit257 unwind label %bb.dh ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %36)
          to label %bb.cy unwind label %bb.di

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit257
  %.not12.i.i258 = icmp eq ptr %.sroa.0.4, %.sroa.11.1
  br i1 %.not12.i.i258, label %_ZlsIiSaIiEERSoS1_RKSt6vectorIT_T0_E.exit272, label %.lr.ph.preheader._crit_edge.i.i259

.lr.ph.preheader._crit_edge.i.i259:               ; preds = %bb.cy
  %.pre.i.i260 = load i32, ptr %.sroa.0.4, align 4, !tbaa !36
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef %.pre.i.i260)
          to label %.noexc267 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc267:                                        ; preds = %.lr.ph.preheader._crit_edge.i.i259
  %.not.i.i261 = icmp eq ptr %.sroa.0.4, %.pn454
  br i1 %.not.i.i261, label %_ZlsIiSaIiEERSoS1_RKSt6vectorIT_T0_E.exit272, label %.lr.ph.peel.next.i.i262

._crit_edge.i.i266:                               ; preds = %.noexc270
  br i1 %i.nv, label %bb.db, label %_ZlsIiSaIiEERSoS1_RKSt6vectorIT_T0_E.exit272

.lr.ph.peel.next.i.i262:                          ; preds = %.noexc267, %.noexc270
  %.011.i.i263 = phi i32 [ %i.nu, %.noexc270 ], [ 1, %.noexc267 ] ; 2 uses
  %.sroa.06.010.i.i264.pn = phi ptr [ %.sroa.06.010.i.i264, %.noexc270 ], [ %.sroa.0.4, %.noexc267 ]
  %.sroa.06.010.i.i264 = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i264.pn, i64 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !39
  %i.nk = load ptr, ptr %36, align 8, !tbaa !12
  %i.nl = getelementptr i8, ptr %i.nk, i64 -24
  %i.nm = load i64, ptr %i.nl, align 8
  %i.nn = getelementptr inbounds i8, ptr %36, i64 %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load i64, ptr %i.no, align 8, !tbaa !40
  %.not.i.i.i265 = icmp eq i64 %i.np, 0
  br i1 %.not.i.i.i265, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.peel.next.i.i262
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %.noexc268 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.da:                                            ; preds = %.lr.ph.peel.next.i.i262
  %i.nr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %36, i8 noundef signext 32)
          to label %.noexc268 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc268:                                        ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ns = load i32, ptr %.sroa.06.010.i.i264, align 4, !tbaa !36
  %i.nt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef %i.ns)
          to label %.noexc270 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc270:                                        ; preds = %.noexc268
  %i.nu = add nuw nsw i32 %.011.i.i263, 1
  %i.nv = icmp ne ptr %.sroa.06.010.i.i264, %.pn454 ; 2 uses
  %i.nw = icmp samesign ult i32 %.011.i.i263, 99
  %i.nx = select i1 %i.nv, i1 %i.nw, i1 false
  br i1 %i.nx, label %.lr.ph.peel.next.i.i262, label %._crit_edge.i.i266, !llvm.loop !0

bb.db:                                            ; preds = %._crit_edge.i.i266
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull @.str.14, i64 noundef 4)
          to label %_ZlsIiSaIiEERSoS1_RKSt6vectorIT_T0_E.exit272 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZlsIiSaIiEERSoS1_RKSt6vectorIT_T0_E.exit272:     ; preds = %._crit_edge.i.i266, %.noexc267, %bb.cy, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.nz = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  store ptr %i.nz, ptr %39, align 8, !tbaa !44, !alias.scope !183
  %i.oa = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store i64 0, ptr %i.oa, align 8, !tbaa !46, !alias.scope !183
  store i8 0, ptr %i.nz, align 8, !tbaa !39, !alias.scope !183
  %i.ob = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !18, !noalias !183 ; 3 uses
  %.not.i.not.i.i273 = icmp eq ptr %i.oc, null
  %i.od = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.oe = load ptr, ptr %i.od, align 8, !noalias !183 ; 2 uses
  %i.of = icmp ugt ptr %i.oc, %i.oe
end_hunk_0
