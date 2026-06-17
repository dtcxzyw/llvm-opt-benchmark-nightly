inline.NumInlined: 691
inline.NumDeleted: 382
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_116UnionExtractBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ab) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.069, label %bb.p, label %bb.dd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.069, label %bb.p, label %bb.dd

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn93155 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ]
  call void @__cxa_free_exception(ptr %i.y) #18
  br label %bb.dd

bb.q:                                             ; preds = %bb.k
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.af = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ai = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 0) ; 5 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load i8, ptr %i.ag, align 8, !tbaa !74
  store i8 %i.ak, ptr %i.ai, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 57
  %i.am = load i8, ptr %i.al, align 1, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !77 ; 8 uses
  store <2 x ptr> %i.as, ptr %i.ao, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ba, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !81
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #18, !inline_history !84
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #18, !inline_history !84
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.x:                                             ; preds = %bb.v
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.y ], [ %i.bn, %bb.z ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.aa, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !85

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #18
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.q, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aa
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1) ; 4 uses
  %i.bq = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !82
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(88) %i.bq)
  br i1 %i.bu, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bv)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bv) #18
  br label %bb.dd

bb.ae:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.bx = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !74
  %.not72 = icmp eq i8 %i.bz, 25
  br i1 %.not72, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ca = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(88) %i.ca)
  br i1 %i.ce, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.de unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread: ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.065 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ci = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.ci) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %.065, label %bb.ak, label %bb.dd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %.065, label %bb.ak, label %bb.dd

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn89158 = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.thread ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ]
  call void @__cxa_free_exception(ptr %i.cf) #18
  br label %bb.dd

bb.al:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.cl = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  call void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.cl, i1 noundef zeroext false)
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %bb.am unwind label %bb.aq     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %26 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %27 = load i8, ptr %26, align 8, !tbaa !86, !range !93, !noundef !56
  %28 = trunc nuw i8 %27 to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.co, 0
  %or.cond = select i1 %28, i1 true, i1 %i.cp
  br i1 %or.cond, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.cq = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.de unwind label %bb.ar

bb.aq:                                            ; preds = %bb.al
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread: ; preds = %bb.an
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.046 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cu = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.cu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br i1 %.046, label %bb.as, label %bb.dc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br i1 %.046, label %bb.as, label %bb.dc

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn86161 = phi { ptr, i32 } [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  call void @__cxa_free_exception(ptr %i.cq) #18
  br label %bb.dc

bb.at:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %.preheader171 unwind label %bb.aw

.preheader171:                                    ; preds = %bb.au
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.aw:                                            ; preds = %bb.au
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ax:                                            ; preds = %.preheader171, %_ZN6duckdb11LogicalTypeaSERKS0_.exit121
  %.042175 = phi i64 [ 0, %.preheader171 ], [ %i.fb, %_ZN6duckdb11LogicalTypeaSERKS0_.exit121 ] ; 4 uses
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9UnionType13GetMemberNameB5cxx11ERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %.042175)
          to label %bb.ba unwind label %.loopexit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %bb.bb unwind label %bb.bs

bb.bb:                                            ; preds = %bb.ba
  %i.dg = load i64, ptr %i.cx, align 8, !tbaa !94 ; 4 uses
  %i.dh = load i64, ptr %i.cy, align 8, !tbaa !94
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.bc, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.bb
  %.pre = load ptr, ptr %17, align 8, !tbaa !75
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.bc:                                            ; preds = %bb.bb
  %i.dj = icmp eq i64 %i.dg, 0
  %.pre181 = load ptr, ptr %17, align 8, !tbaa !75 ; 3 uses
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dk = load ptr, ptr %15, align 8, !tbaa !75
  %bcmp.i = call i32 @bcmp(ptr %.pre181, ptr %i.dk, i64 %i.dg)
  %i.dl = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.bc, %bb.bd
  %i.dm = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre181, %bb.bd ], [ %.pre181, %bb.bc ] ; 2 uses
  %i.dn = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.dl, %bb.bd ], [ true, %bb.bc ]
  %i.do = icmp eq ptr %i.dm, %i.cz
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dp = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %i.dm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br i1 %i.dn, label %bb.be, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit121

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.bf unwind label %.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %bb.bg unwind label %.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9UnionType13GetMemberTypeERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 noundef %.042175)
          to label %bb.bh unwind label %.loopexit.split-lp ; 5 uses

bb.bh:                                            ; preds = %bb.bg
  %i.du = icmp eq ptr %16, %i.dt
  br i1 %i.du, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dv = load i8, ptr %i.dt, align 8, !tbaa !74
  store i8 %i.dv, ptr %16, align 8, !tbaa !74
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 1
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !77 ; 2 uses
  %i.ed = load <2 x ptr>, ptr %i.ea, align 8, !tbaa !13
  %.not.i.i.i.i.i.i114 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i114, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i116, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i.i115 = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i.i115, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i116

bb.bl:                                            ; preds = %bb.bj
  %i.ei = atomicrmw volatile add ptr %i.ee, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i116

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i116: ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !77 ; 8 uses
  store <2 x ptr> %i.ed, ptr %i.dz, align 8, !tbaa !13
  %.not.i.i.i.i.i117 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i117, label %.thread, label %bb.bm

bb.bm:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i116
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.el, align 8, !tbaa !79
end_hunk_0
