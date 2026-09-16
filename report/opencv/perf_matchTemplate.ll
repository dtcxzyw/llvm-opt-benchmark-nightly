Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_matchTemplate?download=true
inline.NumInlined: 1561
inline.NumDeleted: 684
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test42ImgSize_TmplSize_Method_matchTemplateSmallEE13RegisterTestsEv:bb.a

.thread:                                          ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %_ZN7testing7MessageD2Ev.exit130, %bb.ar
  %.pn37 = phi { ptr, i32 } [ %.pn, %bb.ar ], [ %.pn30.pn.pn.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit130 ] ; 2 uses
  %.not.i.i.i131 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i131, label %_ZN7testing8internal13ParamIteratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit133, label %bb.db

bb.db:                                            ; preds = %.thread, %bb.da
  %.pn37220 = phi { ptr, i32 } [ %i.om, %.thread ], [ %.pn37, %bb.da ] ; 2 uses
  %i.on = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i132 unwind label %bb.dd

.noexc.i.i132:                                    ; preds = %bb.db
  br i1 %i.on, label %bb.dc, label %_ZN7testing8internal13ParamIteratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit133

bb.dc:                                            ; preds = %.noexc.i.i132
  %i.oo = load ptr, ptr %i.cs, align 8, !tbaa !48
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #29, !inline_history !20
  br label %_ZN7testing8internal13ParamIteratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit133

bb.dd:                                            ; preds = %bb.db
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #32
  unreachable

_ZN7testing8internal13ParamIteratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit133: ; preds = %bb.dc, %.noexc.i.i132, %bb.da, %bb.ao
  %.pn37.pn = phi { ptr, i32 } [ %i.ew, %bb.ao ], [ %.pn37, %bb.da ], [ %.pn37220, %.noexc.i.i132 ], [ %.pn37220, %bb.dc ]
  %i.ot = load ptr, ptr %i.n, align 8, !tbaa !220
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ot)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit134 unwind label %bb.de

bb.de:                                            ; preds = %_ZN7testing8internal13ParamIteratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit133
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #32
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit134: ; preds = %_ZN7testing8internal13ParamIteratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.df

bb.df:                                            ; preds = %.loopexit234, %.loopexit.split-lp235, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit134, %.body
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit134 ], [ %lpad.phi233, %.body ], [ %lpad.loopexit236, %.loopexit234 ], [ %lpad.loopexit.split-lp237, %.loopexit.split-lp235 ] ; 3 uses
  %i.ow = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.i
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.df
  %i.oy = load i64, ptr %i.i, align 8, !tbaa !43
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i138 unwind label %bb.dl

.noexc.i.i138:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.pa = load ptr, ptr %i.ab, align 8, !tbaa !57 ; 3 uses
  %i.pb = icmp eq ptr %i.pa, %i.ab                ; 2 uses
  br i1 %i.pb, label %bb.dh, label %.preheader.i.i.i.i139

.preheader.i.i.i.i139:                            ; preds = %.noexc.i.i138, %.preheader.i.i.i.i139
  %.0.i.i.i.i140 = phi ptr [ %i.pc, %.preheader.i.i.i.i139 ], [ %i.pa, %.noexc.i.i138 ] ; 2 uses
  %i.pc = load ptr, ptr %.0.i.i.i.i140, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i141 = icmp eq ptr %i.pc, %i.ab
  br i1 %.not.i.i.i.i141, label %bb.dg, label %.preheader.i.i.i.i139, !llvm.loop !1

bb.dg:                                            ; preds = %.preheader.i.i.i.i139
  store ptr %i.pa, ptr %.0.i.i.i.i140, align 8, !tbaa !57
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.noexc.i.i138
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i142 unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #32
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i142: ; preds = %bb.dh
  br i1 %i.pb, label %bb.dj, label %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit143

bb.dj:                                            ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i142
  %i.pf = load ptr, ptr %4, align 8, !tbaa !120   ; 3 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit143, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ph = load ptr, ptr %i.pf, align 8, !tbaa !48
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8
  call void %i.pj(ptr noundef nonnull align 8 dereferenceable(8) %i.pf) #29, !inline_history !21
  br label %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit143

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.pk = landingpad { ptr, i32 }
          catch ptr null
  %i.pl = extractvalue { ptr, i32 } %i.pk, 0
  call void @__clang_call_terminate(ptr %i.pl) #32
  unreachable

_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit143: ; preds = %bb.dk, %bb.dj, %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i142, %bb.r
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.r ], [ %.pn37.pn.pn, %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i142 ], [ %.pn37.pn.pn, %bb.dj ], [ %.pn37.pn.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  invoke void @_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test42ImgSize_TmplSize_Method_matchTemplateSmallEE8TestInfoEE6departEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test42ImgSize_TmplSize_Method_matchTemplateSmallEE8TestInfoEED2Ev.exit144 unwind label %bb.dm

bb.dm:                                            ; preds = %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit143
  %i.pm = landingpad { ptr, i32 }
          catch ptr null
  %i.pn = extractvalue { ptr, i32 } %i.pm, 0
  call void @__clang_call_terminate(ptr %i.pn) #32
  unreachable

_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test42ImgSize_TmplSize_Method_matchTemplateSmallEE8TestInfoEED2Ev.exit144: ; preds = %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn37.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internal13ParamIteratorISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINS0_22ParamIteratorInterfaceISt5tupleIJN2cv5Size_IiEES6_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.b, label %bb.c, label %_ZN7testing8internal10scoped_ptrINS0_22ParamIteratorInterfaceISt5tupleIJN2cv5Size_IiEES6_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !225    ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7testing8internal10scoped_ptrINS0_22ParamIteratorInterfaceISt5tupleIJN2cv5Size_IiEES6_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29, !inline_history !419
  br label %_ZN7testing8internal10scoped_ptrINS0_22ParamIteratorInterfaceISt5tupleIJN2cv5Size_IiEES6_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #32
  unreachable

_ZN7testing8internal10scoped_ptrINS0_22ParamIteratorInterfaceISt5tupleIJN2cv5Size_IiEES6_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %bb.d
  ret void
}

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing13PrintToStringISt5tupleIJN2cv5Size_IiEES4_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 4 dereferenceable(20) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.53, i64 noundef 1)
          to label %.noexc unwind label %bb.j     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void @_ZN2cv7PrintToERKNS_5Size_IiEEPSo(ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull %i.b)
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %.noexc
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %.noexc3 unwind label %bb.j    ; 0 uses

.noexc3:                                          ; preds = %.noexc2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  invoke void @_ZN2cv7PrintToERKNS_5Size_IiEEPSo(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef nonnull %i.b)
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %.noexc3
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %.critedge.i.i.i.i.i.i.i.i.i unwind label %bb.j ; 0 uses

.critedge.1.i.i.i.i.i.i.i.i.i:                    ; preds = %.critedge38.i.i.i.i.i.i.i.i.i, %.critedge.1.i.i.i.i.i.i.i.i.i
  %indvars.iv.1.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.1.i.i.i.i.i.i.i.i.i, %.critedge.1.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.i.i.i.i.i.i.i.i.i, %.critedge38.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr @.str.56, i64 %indvars.iv.1.i.i.i.i.i.i.i.i.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !43    ; 3 uses
  %i.j = sext i8 %i.i to i32
  %i.k = call i32 @isspace(i32 noundef %i.j) #35
  %.not.1.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.k, 0
  %i.l = icmp eq i8 %i.i, 44
  %or.cond.1.i.i.i.i.i.i.i.i.i = or i1 %i.l, %.not.1.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.1.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.1.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.1.i.i.i.i.i.i.i.i.i, label %.critedge.1.i.i.i.i.i.i.i.i.i, label %.preheader.1.i.i.i.i.i.i.i.i.i, !llvm.loop !420

.preheader.1.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.1.i.i.i.i.i.i.i.i.i, %.preheader.1.i.i.i.i.i.i.i.i.i
  %indvars.iv63.1.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next64.1.i.i.i.i.i.i.i.i.i, %.preheader.1.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.1.i.i.i.i.i.i.i.i.i, %.critedge.1.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr @.str.56, i64 %indvars.iv63.1.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43    ; 2 uses
  %i.o = sext i8 %i.n to i32
  %i.p = call i32 @isspace(i32 noundef %i.o) #35
  %.not33.1.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  %i.q = icmp ne i8 %i.n, 44
  %or.cond36.not49.1.i.i.i.i.i.i.i.i.i = and i1 %i.q, %.not33.1.i.i.i.i.i.i.i.i.i
  %i.r = icmp ne i64 %indvars.iv63.1.i.i.i.i.i.i.i.i.i, 83
  %or.cond43.1.i.i.i.i.i.i.i.i.i = and i1 %i.r, %or.cond36.not49.1.i.i.i.i.i.i.i.i.i
  %indvars.iv.next64.1.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv63.1.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond43.1.i.i.i.i.i.i.i.i.i, label %.preheader.1.i.i.i.i.i.i.i.i.i, label %.critedge38.1.i.i.i.i.i.i.i.i.i, !llvm.loop !421

.critedge38.1.i.i.i.i.i.i.i.i.i:                  ; preds = %.preheader.1.i.i.i.i.i.i.i.i.i
  %.not35.1.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 1
  br i1 %.not35.1.i.i.i.i.i.i.i.i.i, label %bb.b, label %.critedge.2.i.i.i.i.i.i.i.i.i

.critedge.2.i.i.i.i.i.i.i.i.i:                    ; preds = %.critedge38.1.i.i.i.i.i.i.i.i.i, %.critedge.2.i.i.i.i.i.i.i.i.i
  %indvars.iv.2.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.2.i.i.i.i.i.i.i.i.i, %.critedge.2.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.1.i.i.i.i.i.i.i.i.i, %.critedge38.1.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr @.str.56, i64 %indvars.iv.2.i.i.i.i.i.i.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43    ; 3 uses
  %i.u = sext i8 %i.t to i32
  %i.v = call i32 @isspace(i32 noundef %i.u) #35
  %.not.2.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.v, 0
  %i.w = icmp eq i8 %i.t, 44
  %or.cond.2.i.i.i.i.i.i.i.i.i = or i1 %i.w, %.not.2.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.2.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.2.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.2.i.i.i.i.i.i.i.i.i, label %.critedge.2.i.i.i.i.i.i.i.i.i, label %.preheader.2.i.i.i.i.i.i.i.i.i, !llvm.loop !420

.preheader.2.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.2.i.i.i.i.i.i.i.i.i, %.preheader.2.i.i.i.i.i.i.i.i.i
  %indvars.iv63.2.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next64.2.i.i.i.i.i.i.i.i.i, %.preheader.2.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.2.i.i.i.i.i.i.i.i.i, %.critedge.2.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr @.str.56, i64 %indvars.iv63.2.i.i.i.i.i.i.i.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43    ; 2 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = call i32 @isspace(i32 noundef %i.z) #35
  %.not33.2.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  %i.ab = icmp ne i8 %i.y, 44
  %or.cond36.not49.2.i.i.i.i.i.i.i.i.i = and i1 %i.ab, %.not33.2.i.i.i.i.i.i.i.i.i
  %i.ac = icmp ne i64 %indvars.iv63.2.i.i.i.i.i.i.i.i.i, 83
  %or.cond43.2.i.i.i.i.i.i.i.i.i = and i1 %i.ac, %or.cond36.not49.2.i.i.i.i.i.i.i.i.i
  %indvars.iv.next64.2.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv63.2.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond43.2.i.i.i.i.i.i.i.i.i, label %.preheader.2.i.i.i.i.i.i.i.i.i, label %.critedge38.2.i.i.i.i.i.i.i.i.i, !llvm.loop !421

.critedge38.2.i.i.i.i.i.i.i.i.i:                  ; preds = %.preheader.2.i.i.i.i.i.i.i.i.i
  %.not35.2.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 2
  br i1 %.not35.2.i.i.i.i.i.i.i.i.i, label %bb.b, label %.critedge.3.i.i.i.i.i.i.i.i.i

.critedge.3.i.i.i.i.i.i.i.i.i:                    ; preds = %.critedge38.2.i.i.i.i.i.i.i.i.i, %.critedge.3.i.i.i.i.i.i.i.i.i
  %indvars.iv.3.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.3.i.i.i.i.i.i.i.i.i, %.critedge.3.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.2.i.i.i.i.i.i.i.i.i, %.critedge38.2.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr @.str.56, i64 %indvars.iv.3.i.i.i.i.i.i.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !43  ; 3 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #35
  %.not.3.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.ag, 0
  %i.ah = icmp eq i8 %i.ae, 44
  %or.cond.3.i.i.i.i.i.i.i.i.i = or i1 %i.ah, %.not.3.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.3.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.3.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.3.i.i.i.i.i.i.i.i.i, label %.critedge.3.i.i.i.i.i.i.i.i.i, label %.preheader.3.i.i.i.i.i.i.i.i.i, !llvm.loop !420

.preheader.3.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.3.i.i.i.i.i.i.i.i.i, %.preheader.3.i.i.i.i.i.i.i.i.i
  %indvars.iv63.3.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next64.3.i.i.i.i.i.i.i.i.i, %.preheader.3.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.3.i.i.i.i.i.i.i.i.i, %.critedge.3.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ai = getelementptr inbounds i8, ptr @.str.56, i64 %indvars.iv63.3.i.i.i.i.i.i.i.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !43  ; 2 uses
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #35
  %.not33.3.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  %i.am = icmp ne i8 %i.aj, 44
  %or.cond36.not49.3.i.i.i.i.i.i.i.i.i = and i1 %i.am, %.not33.3.i.i.i.i.i.i.i.i.i
  %i.an = icmp ne i64 %indvars.iv63.3.i.i.i.i.i.i.i.i.i, 83
  %or.cond43.3.i.i.i.i.i.i.i.i.i = and i1 %i.an, %or.cond36.not49.3.i.i.i.i.i.i.i.i.i
  %indvars.iv.next64.3.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv63.3.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond43.3.i.i.i.i.i.i.i.i.i, label %.preheader.3.i.i.i.i.i.i.i.i.i, label %.critedge38.3.i.i.i.i.i.i.i.i.i, !llvm.loop !421

.critedge38.3.i.i.i.i.i.i.i.i.i:                  ; preds = %.preheader.3.i.i.i.i.i.i.i.i.i
  %.not35.3.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 3
  br i1 %.not35.3.i.i.i.i.i.i.i.i.i, label %bb.b, label %.critedge.4.i.i.i.i.i.i.i.i.i

.critedge.4.i.i.i.i.i.i.i.i.i:                    ; preds = %.critedge38.3.i.i.i.i.i.i.i.i.i, %.critedge.4.i.i.i.i.i.i.i.i.i
  %indvars.iv.4.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.4.i.i.i.i.i.i.i.i.i, %.critedge.4.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.3.i.i.i.i.i.i.i.i.i, %.critedge38.3.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr @.str.56, i64 %indvars.iv.4.i.i.i.i.i.i.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !43  ; 3 uses
  %i.aq = sext i8 %i.ap to i32
  %i.ar = call i32 @isspace(i32 noundef %i.aq) #35
  %.not.4.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.ar, 0
  %i.as = icmp eq i8 %i.ap, 44
  %or.cond.4.i.i.i.i.i.i.i.i.i = or i1 %i.as, %.not.4.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.4.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.4.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.4.i.i.i.i.i.i.i.i.i, label %.critedge.4.i.i.i.i.i.i.i.i.i, label %.preheader.4.i.i.i.i.i.i.i.i.i, !llvm.loop !420

.preheader.4.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.4.i.i.i.i.i.i.i.i.i, %.preheader.4.i.i.i.i.i.i.i.i.i
  %indvars.iv63.4.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next64.4.i.i.i.i.i.i.i.i.i, %.preheader.4.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.4.i.i.i.i.i.i.i.i.i, %.critedge.4.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.at = getelementptr inbounds i8, ptr @.str.56, i64 %indvars.iv63.4.i.i.i.i.i.i.i.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !43  ; 2 uses
  %i.av = sext i8 %i.au to i32
  %i.aw = call i32 @isspace(i32 noundef %i.av) #35
  %.not33.4.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  %i.ax = icmp ne i8 %i.au, 44
  %or.cond36.not49.4.i.i.i.i.i.i.i.i.i = and i1 %i.ax, %.not33.4.i.i.i.i.i.i.i.i.i
  %i.ay = icmp ne i64 %indvars.iv63.4.i.i.i.i.i.i.i.i.i, 83
  %or.cond43.4.i.i.i.i.i.i.i.i.i = and i1 %i.ay, %or.cond36.not49.4.i.i.i.i.i.i.i.i.i
  %indvars.iv.next64.4.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv63.4.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond43.4.i.i.i.i.i.i.i.i.i, label %.preheader.4.i.i.i.i.i.i.i.i.i, label %.critedge38.4.i.i.i.i.i.i.i.i.i, !llvm.loop !421

.critedge38.4.i.i.i.i.i.i.i.i.i:                  ; preds = %.preheader.4.i.i.i.i.i.i.i.i.i
  %.not35.4.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 4
  br i1 %.not35.4.i.i.i.i.i.i.i.i.i, label %bb.b, label %.critedge.5.i.i.i.i.i.i.i.i.i

.critedge.5.i.i.i.i.i.i.i.i.i:                    ; preds = %.critedge38.4.i.i.i.i.i.i.i.i.i, %.critedge.5.i.i.i.i.i.i.i.i.i
  %indvars.iv.5.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.5.i.i.i.i.i.i.i.i.i, %.critedge.5.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.4.i.i.i.i.i.i.i.i.i, %.critedge38.4.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.az = getelementptr inbounds i8, ptr @.str.56, i64 %indvars.iv.5.i.i.i.i.i.i.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !43  ; 3 uses
  %i.bb = sext i8 %i.ba to i32
  %i.bc = call i32 @isspace(i32 noundef %i.bb) #35
  %.not.5.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.bc, 0
  %i.bd = icmp eq i8 %i.ba, 44
  %or.cond.5.i.i.i.i.i.i.i.i.i = or i1 %i.bd, %.not.5.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.5.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.5.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.5.i.i.i.i.i.i.i.i.i, label %.critedge.5.i.i.i.i.i.i.i.i.i, label %.preheader.5.i.i.i.i.i.i.i.i.i, !llvm.loop !420

.preheader.5.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.5.i.i.i.i.i.i.i.i.i, %.preheader.5.i.i.i.i.i.i.i.i.i
  %indvars.iv63.5.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next64.5.i.i.i.i.i.i.i.i.i, %.preheader.5.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.5.i.i.i.i.i.i.i.i.i, %.critedge.5.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = getelementptr inbounds i8, ptr @.str.56, i64 %indvars.iv63.5.i.i.i.i.i.i.i.i.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !43  ; 2 uses
  %i.bg = sext i8 %i.bf to i32
  %i.bh = call i32 @isspace(i32 noundef %i.bg) #35
  %.not33.5.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  %i.bi = icmp ne i8 %i.bf, 44
  %or.cond36.not49.5.i.i.i.i.i.i.i.i.i = and i1 %i.bi, %.not33.5.i.i.i.i.i.i.i.i.i
  %i.bj = icmp ne i64 %indvars.iv63.5.i.i.i.i.i.i.i.i.i, 83
  %or.cond43.5.i.i.i.i.i.i.i.i.i = and i1 %i.bj, %or.cond36.not49.5.i.i.i.i.i.i.i.i.i
  %indvars.iv.next64.5.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv63.5.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond43.5.i.i.i.i.i.i.i.i.i, label %.preheader.5.i.i.i.i.i.i.i.i.i, label %.critedge38.5.i.i.i.i.i.i.i.i.i, !llvm.loop !421

.critedge38.5.i.i.i.i.i.i.i.i.i:                  ; preds = %.preheader.5.i.i.i.i.i.i.i.i.i
  %.not35.5.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 5
  br i1 %.not35.5.i.i.i.i.i.i.i.i.i, label %bb.b, label %.critedge42.i.i.i.i.i.i.i.i.i

.critedge42.i.i.i.i.i.i.i.i.i:                    ; preds = %.critedge38.5.i.i.i.i.i.i.i.i.i
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.57, i64 noundef 7)
          to label %_ZN7testing8internal14UniversalPrintISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEvRKT_PSo.exit.i unwind label %bb.j ; 0 uses

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc4, %.critedge.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ], [ 0, %.noexc4 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr @.str.56, i64 %indvars.iv.i.i.i.i.i.i.i.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !43  ; 3 uses
  %i.bn = sext i8 %i.bm to i32
  %i.bo = call i32 @isspace(i32 noundef %i.bn) #35
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.bo, 0
  %i.bp = icmp eq i8 %i.bm, 44
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.bp, %.not.i.i.i.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !420

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv63.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next64.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr @.str.56, i64 %indvars.iv63.i.i.i.i.i.i.i.i.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !43  ; 2 uses
  %i.bs = sext i8 %i.br to i32
  %i.bt = call i32 @isspace(i32 noundef %i.bs) #35
  %.not33.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  %i.bu = icmp ne i8 %i.br, 44
  %or.cond36.not49.i.i.i.i.i.i.i.i.i = and i1 %i.bu, %.not33.i.i.i.i.i.i.i.i.i
  %i.bv = icmp ne i64 %indvars.iv63.i.i.i.i.i.i.i.i.i, 83
  %or.cond43.i.i.i.i.i.i.i.i.i = and i1 %i.bv, %or.cond36.not49.i.i.i.i.i.i.i.i.i
  %indvars.iv.next64.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv63.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond43.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %.critedge38.i.i.i.i.i.i.i.i.i, !llvm.loop !421

.critedge38.i.i.i.i.i.i.i.i.i:                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %1, align 4   ; 6 uses
  %.not35.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %.not35.i.i.i.i.i.i.i.i.i, label %bb.b, label %.critedge.1.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.critedge38.i.i.i.i.i.i.i.i.i, %.critedge38.5.i.i.i.i.i.i.i.i.i, %.critedge38.4.i.i.i.i.i.i.i.i.i, %.critedge38.3.i.i.i.i.i.i.i.i.i, %.critedge38.2.i.i.i.i.i.i.i.i.i, %.critedge38.1.i.i.i.i.i.i.i.i.i
  %.lcssa60.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv63.i.i.i.i.i.i.i.i.i, %.critedge38.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.1.i.i.i.i.i.i.i.i.i, %.critedge38.1.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.2.i.i.i.i.i.i.i.i.i, %.critedge38.2.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.3.i.i.i.i.i.i.i.i.i, %.critedge38.3.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.4.i.i.i.i.i.i.i.i.i, %.critedge38.4.i.i.i.i.i.i.i.i.i ], [ %indvars.iv63.5.i.i.i.i.i.i.i.i.i, %.critedge38.5.i.i.i.i.i.i.i.i.i ]
  %.lcssa58.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i.i.i.i, %.critedge38.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.1.i.i.i.i.i.i.i.i.i, %.critedge38.1.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.2.i.i.i.i.i.i.i.i.i, %.critedge38.2.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.3.i.i.i.i.i.i.i.i.i, %.critedge38.3.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.4.i.i.i.i.i.i.i.i.i, %.critedge38.4.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.5.i.i.i.i.i.i.i.i.i, %.critedge38.5.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bm, %.critedge38.i.i.i.i.i.i.i.i.i ], [ %i.i, %.critedge38.1.i.i.i.i.i.i.i.i.i ], [ %i.t, %.critedge38.2.i.i.i.i.i.i.i.i.i ], [ %i.ae, %.critedge38.3.i.i.i.i.i.i.i.i.i ], [ %i.ap, %.critedge38.4.i.i.i.i.i.i.i.i.i ], [ %i.ba, %.critedge38.5.i.i.i.i.i.i.i.i.i ]
  %i.bw = getelementptr inbounds i8, ptr @.str.56, i64 %.lcssa58.lcssa.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bx, ptr %2, align 8, !tbaa !38
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.by, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %gepdiff.i.i.i.i.i.i.i.i.i = sub nsw i64 %.lcssa60.lcssa.i.i.i.i.i.i.i.i.i, %.lcssa58.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  store i64 %gepdiff.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !40
  %i.bz = icmp ugt i64 %gepdiff.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.bz, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.b
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %bb.j    ; 2 uses

.noexc7:                                          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ca, ptr %2, align 8, !tbaa !42
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !43
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc7, %bb.b
  %i.cc = phi ptr [ %i.ca, %.noexc7 ], [ %i.bx, %bb.b ] ; 2 uses
  switch i64 %gepdiff.i.i.i.i.i.i.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  store i8 %.lcssa.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.cc, align 1, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr nonnull align 1 %i.bw, i64 %gepdiff.i.i.i.i.i.i.i.i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !44
  %i.ce = load ptr, ptr %2, align 8, !tbaa !42
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.cg = load ptr, ptr %2, align 8, !tbaa !42
  %i.ch = load i64, ptr %i.by, align 8, !tbaa !44
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.cg, i64 noundef %i.ch)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.cj = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bx
  br i1 %i.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i
  %i.cl = load i64, ptr %i.bx, align 8, !tbaa !43
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bx
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.cq = load i64, ptr %i.bx, align 8, !tbaa !43
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZN7testing8internal14UniversalPrintISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEvRKT_PSo.exit.i

_ZN7testing8internal14UniversalPrintISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEvRKT_PSo.exit.i: ; preds = %.critedge42.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.54, i64 noundef 1)
          to label %_ZN7testing8internal21UniversalTersePrinterISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEE5PrintERKS9_PSo.exit unwind label %bb.j ; 0 uses

_ZN7testing8internal21UniversalTersePrinterISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEE5PrintERKS9_PSo.exit: ; preds = %_ZN7testing8internal14UniversalPrintISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEvRKT_PSo.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !38, !alias.scope !428
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cu, align 8, !tbaa !44, !alias.scope !428
  store i8 0, ptr %i.ct, align 8, !tbaa !43, !alias.scope !428
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !430, !noalias !428 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cw, null
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !428 ; 2 uses
  %i.cz = icmp ugt ptr %i.cw, %i.cy
  %.08.i.i.i = select i1 %i.cz, ptr %i.cw, ptr %i.cy ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEE5PrintERKS9_PSo.exit
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !431, !noalias !428 ; 2 uses
  %i.dc = ptrtoint ptr %.08.i.i.i to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.db, i64 noundef %i.de)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !428 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ct
  br i1 %i.di, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.dj = load i64, ptr %i.ct, align 8, !tbaa !43, !alias.scope !428
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #31
  br label %.body

bb.i:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEE5PrintERKS9_PSo.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.dm = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dm, ptr %3, align 8, !tbaa !48
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.do = getelementptr i8, ptr %i.dm, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %3, i64 %i.dp
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !48
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ds, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !43
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ds, align 8, !tbaa !48
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dz) #29
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ea, ptr %3, align 8, !tbaa !48
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ec = getelementptr i8, ptr %i.ea, i64 -24
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr %3, i64 %i.ed
  store ptr %i.eb, ptr %i.ee, align 8, !tbaa !48
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ef, align 8, !tbaa !433
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.eg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.j:                                             ; preds = %_ZN7testing8internal14UniversalPrintISt5tupleIJN2cv5Size_IiEES5_N11opencv_test12_GLOBAL__N_110MethodTypeEEEEEvRKT_PSo.exit.i, %.noexc.i.i.i.i.i.i.i.i.i.i, %.critedge42.i.i.i.i.i.i.i.i.i, %.noexc4, %.noexc3, %.noexc2, %.noexc, %bb.a
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i ], [ %i.eh, %bb.j ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dg, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing4Test13SetUpTestCaseEv() #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing4Test16TearDownTestCaseEv() #10 comdat align 2 {
end_hunk_0
