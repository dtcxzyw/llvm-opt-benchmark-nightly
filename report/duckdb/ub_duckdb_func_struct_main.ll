inline.NumInlined: 5129
inline.NumDeleted: 2006
begin_hunk_0_@_ZN6duckdbL17StructExtractBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE:bb.a
  %i.x = load ptr, ptr %6, align 8, !tbaa !27     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.x) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.069, label %bb.p, label %bb.cp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.069, label %bb.p, label %bb.cp

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn93150 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ]
  call void @__cxa_free_exception(ptr %i.u) #21
  br label %bb.cp

bb.q:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0) ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = load i8, ptr %i.d, align 8, !tbaa !83
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !115 ; 8 uses
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !22
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.at, align 8, !tbaa !116
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !118
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21, !inline_history !121
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21, !inline_history !121
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.x:                                             ; preds = %bb.v
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.y ], [ %i.bg, %bb.z ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.aa, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !120

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #21
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.q, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aa
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1) ; 4 uses
  %i.bj = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(88) %i.bj)
  br i1 %i.bn, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bo) #21
  br label %bb.cp

bb.ae:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.bq = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !83
  %.not = icmp eq i8 %i.bs, 25
  br i1 %.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !85
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(88) %i.bt)
  br i1 %i.bx, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.by = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.thread

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.cq unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.thread: ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.071 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %.071, label %bb.ak, label %bb.cp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %.071, label %bb.ak, label %bb.cp

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.pn89153 = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.thread ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ]
  call void @__cxa_free_exception(ptr %i.by) #21
  br label %bb.cp

bb.al:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ce = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
  call void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.ce, i1 noundef zeroext false)
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.am unwind label %bb.aq     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %25 = load i8, ptr %24, align 8, !tbaa !97, !range !104, !noundef !80
  %26 = trunc nuw i8 %25 to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  %or.cond = select i1 %26, i1 true, i1 %i.ci
  br i1 %or.cond, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.thread

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.cq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.al
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.thread: ; preds = %bb.an
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.067 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cn = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.cn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.067, label %bb.as, label %bb.co

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br i1 %.067, label %bb.as, label %bb.co

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn86156 = phi { ptr, i32 } [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.thread ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ]
  call void @__cxa_free_exception(ptr %i.cj) #21
  br label %bb.co

bb.at:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %.preheader unwind label %bb.aw

.preheader:                                       ; preds = %bb.au
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !113
  %.not177 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.aw:                                            ; preds = %bb.au
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ax:                                            ; preds = %.lr.ph, %_ZN6duckdb11LogicalTypeaSERKS0_.exit119
  %.060171 = phi i64 [ 0, %.lr.ph ], [ %i.er, %_ZN6duckdb11LogicalTypeaSERKS0_.exit119 ] ; 3 uses
  %i.cx = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.060171)
          to label %bb.ay unwind label %bb.bn     ; 5 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
          to label %bb.az unwind label %bb.bo

bb.az:                                            ; preds = %bb.ay
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !11 ; 4 uses
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !11
  %i.da = icmp eq i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.ba, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.az
  %.pre = load ptr, ptr %15, align 8, !tbaa !27
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.ba:                                            ; preds = %bb.az
  %i.db = icmp eq i64 %i.cy, 0
  %.pre183 = load ptr, ptr %15, align 8, !tbaa !27 ; 3 uses
  br i1 %i.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dc = load ptr, ptr %13, align 8, !tbaa !27
  %bcmp.i = call i32 @bcmp(ptr %.pre183, ptr %i.dc, i64 %i.cy)
  %i.dd = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.ba, %bb.bb
  %i.de = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre183, %bb.bb ], [ %.pre183, %bb.ba ] ; 2 uses
  %i.df = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.dd, %bb.bb ], [ true, %bb.ba ]
  %i.dg = icmp eq ptr %i.de, %i.cu
  br i1 %i.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i110: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dh = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.dh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %i.de) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br i1 %i.df, label %bb.bc, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit119

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.dj = icmp eq ptr %14, %i.di
  br i1 %i.dj, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dk = load i8, ptr %i.di, align 8, !tbaa !83
  store i8 %i.dk, ptr %14, align 8, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !84
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !84
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !115 ; 2 uses
  %i.ds = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !22
  %.not.i.i.i.i.i.i112 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i.i112, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i114, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 3 uses
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i113 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i113, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i114

bb.bg:                                            ; preds = %bb.be
  %i.dx = atomicrmw volatile add ptr %i.dt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i114

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i114: ; preds = %bb.bg, %bb.bf, %bb.bd
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !115 ; 8 uses
  store <2 x ptr> %i.ds, ptr %i.do, align 8, !tbaa !22
  %.not.i.i.i.i.i115 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i115, label %.thread, label %bb.bh

bb.bh:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i114
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ea, align 8, !tbaa !116
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !118
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !85
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21, !inline_history !121
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !85
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21, !inline_history !121
  br label %.thread

bb.bj:                                            ; preds = %bb.bh
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i5.i.i116 = icmp eq i8 %i.el, 0
end_hunk_0
