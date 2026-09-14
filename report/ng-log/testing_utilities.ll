Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/testing_utilities?download=true
inline.NumInlined: 1055
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5nglog12_GLOBAL__N_121GetCapturedTestOutputB5cxx11Ei:bb.a
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !52
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !61 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq i32 %i.by, -1
  br i1 %.not.i.i.i.i.i27, label %_ZNKSt14default_deleteIN5nglog14CapturedStreamEEclEPS1_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  store i32 -1, ptr %i.bx, align 4, !tbaa !63
  %i.bz = invoke i32 @close(i32 noundef %i.by)
          to label %_ZNKSt14default_deleteIN5nglog14CapturedStreamEEclEPS1_.exit.i unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #36
  unreachable

_ZNKSt14default_deleteIN5nglog14CapturedStreamEEclEPS1_.exit.i: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 40) #34
  br label %_ZNSt10unique_ptrIN5nglog14CapturedStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5nglog14CapturedStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI8_IO_FILESt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIN5nglog14CapturedStreamEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.x:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILESt14default_deleteIS0_EED2Ev.exit29

bb.y:                                             ; preds = %.noexc18.i, %.noexc17.i, %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %i.bl, %bb.s ], [ %i.bl, %bb.r ] ; 2 uses
  %.not.i28 = icmp eq ptr %i.aa, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrI8_IO_FILESt14default_deleteIS0_EED2Ev.exit29, label %bb.z

bb.z:                                             ; preds = %.body
  %i.ce = call i32 @fclose(ptr noundef nonnull %i.aa) ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILESt14default_deleteIS0_EED2Ev.exit29

_ZNSt10unique_ptrI8_IO_FILESt14default_deleteIS0_EED2Ev.exit29: ; preds = %bb.z, %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.x ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.z ]
  call void @_ZNSt10unique_ptrIN5nglog14CapturedStreamESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn

bb.aa:                                            ; preds = %.invoke
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5nglog21GetCapturedTestStderrB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.b = tail call i32 @fileno(ptr noundef %i.a) #31
  tail call fastcc void @_ZN5nglog12_GLOBAL__N_121GetCapturedTestOutputB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5nglog22MungeAndDiffTestStdoutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.nglog::LogMessageFatal", align 8 ; 5 uses
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !45
  %i.b = tail call i32 @fileno(ptr noundef %i.a) #31 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5nglog12_GLOBAL__N_118s_captured_streamsE, i64 16), align 8, !tbaa !69 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN5nglog12_GLOBAL__N_118s_captured_streamsE, i64 8), %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63
  %i.f = icmp slt i32 %i.e, %i.b                  ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN5nglog14CapturedStreamESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN5nglog14CapturedStreamESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5nglog12_GLOBAL__N_118s_captured_streamsE, i64 8)
  br i1 %i.g, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN5nglog14CapturedStreamESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63
  %i.j = icmp slt i32 %i.b, %i.i
  br i1 %i.j, label %select.unfold, label %.critedge

select.unfold:                                    ; preds = %bb.b, %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN5nglog14CapturedStreamESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN5nglog15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.1, i32 noundef 374)
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %select.unfold
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.12, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.13, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #35
  unreachable

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %select.unfold
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #35
          to label %bb.e unwind label %bb.f

.critedge:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.q = tail call fastcc noundef zeroext i1 @_ZN5nglog12_GLOBAL__N_116MungeAndDiffTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_14CapturedStreamE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.p)
  ret i1 %i.q

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5nglog12_GLOBAL__N_116MungeAndDiffTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_14CapturedStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.46", align 8    ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::vector", align 8       ; 13 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.nglog::LogMessage", align 8 ; 7 uses
  tail call void @_ZN5nglog14CapturedStream11StopCaptureEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_ZN5nglog12_GLOBAL__N_15MungeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke fastcc void @_ZN5nglog12_GLOBAL__N_15MungeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread41, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.h = load ptr, ptr %4, align 8, !tbaa !49
  %i.i = load ptr, ptr %3, align 8, !tbaa !49
  %bcmp.i.i = call i32 @bcmp(ptr %i.i, ptr %i.h, i64 %i.c)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread41, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !45
  %fwrite = call i64 @fwrite(ptr nonnull @.str.22, i64 57, i64 1, ptr %i.j) #32 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke fastcc void @_ZN5nglog12_GLOBAL__N_110SplitLinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke fastcc void @_ZN5nglog12_GLOBAL__N_110SplitLinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 5                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.y = add nsw i64 %i.x, 1                      ; 4 uses
  %i.z = icmp ugt i64 %i.y, 2305843009213693951
  br i1 %i.z, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #35
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i, label %.noexc63.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit91.i

.noexc63.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aa = shl nuw nsw i64 %i.y, 2                 ; 3 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #37
          to label %.noexc18 unwind label %bb.y   ; 4 uses

.noexc18:                                         ; preds = %.noexc63.i
  store ptr %i.ab, ptr %2, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.aa, i1 false), !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  br label %.loopexit91.i

.loopexit91.i:                                    ; preds = %.noexc18, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i.i ], [ %i.ae, %.noexc18 ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !78
  %i.ag = add nsw i64 %i.q, 1                     ; 6 uses
  %i.ah = icmp ugt i64 %i.ag, 384307168202282325
  br i1 %i.ah, label %bb.f, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.f:                                             ; preds = %.loopexit91.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #35
          to label %.noexc65.i unwind label %bb.k

.noexc65.i:                                       ; preds = %bb.f
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %.loopexit91.i
  %.not.i.i.i.i64.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i64.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ai = mul nuw nsw i64 %i.ag, 24
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #37
          to label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i.i unwind label %bb.k

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ak = phi ptr [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.aj, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 11 uses
  %i.al = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.ak, i64 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit.i unwind label %bb.g ; 2 uses

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %.idx.i) #34
  br label %.body.i

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit.i: ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i.i
  %i.an = load ptr, ptr %2, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i67.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i67.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !77
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.not94.i = icmp eq ptr %i.l, %i.m
  br i1 %.not94.i, label %.preheader88.i, label %.preheader90.lr.ph.i

.preheader90.lr.ph.i:                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.at = add nsw i64 %i.x, -1                    ; 2 uses
  %.not6292.i = icmp eq ptr %i.s, %i.t
  br i1 %.not6292.i, label %.preheader88.i, label %.preheader90.lr.ph.split.i

.preheader90.lr.ph.split.i:                       ; preds = %.preheader90.lr.ph.i
  %i.au = load ptr, ptr %5, align 8, !tbaa !54
  %i.av = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  br label %.preheader90.i

..loopexit_crit_edge.i:                           ; preds = %bb.m, %bb.j
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %.lr.ph.i, label %.preheader90.i, !llvm.loop !110

.preheader90.i:                                   ; preds = %..loopexit_crit_edge.i, %.preheader90.lr.ph.split.i
  %.05795.i = phi i64 [ %i.q, %.preheader90.lr.ph.split.i ], [ %i.aw, %..loopexit_crit_edge.i ] ; 2 uses
  %i.aw = add i64 %.05795.i, -1                   ; 4 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !50
  %.fr103.i = freeze i64 %i.az                    ; 3 uses
  %i.ba = icmp eq i64 %.fr103.i, 0
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.05795.i ; 3 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aw
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76 ; 4 uses
  br i1 %i.ba, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.preheader90.i
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.j
  %i.bf = phi i64 [ %i.bu, %bb.j ], [ %i.at, %.lr.ph.split.us.i.preheader ] ; 6 uses
  %.05693.us.i = phi i64 [ %i.bf, %bb.j ], [ %i.x, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !50
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.us.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us.i: ; preds = %.lr.ph.split.us.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.05693.us.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.bm = add nsw i32 %i.bl, 1
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.us.i: ; preds = %.lr.ph.split.us.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.05693.us.i
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !63
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.br = call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bq)
  br label %bb.j

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.us.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us.i
  %i.bs = phi i32 [ %i.bm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.us.i ], [ %i.br, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.us.i ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bf
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !63
  %i.bu = add i64 %i.bf, -1
  %.not62.us.i = icmp eq i64 %i.bf, 0
  br i1 %.not62.us.i, label %..loopexit_crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !111

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bv, %bb.k ], [ %i.am, %bb.h ], [ %i.am, %bb.g ]
  %i.bw = load ptr, ptr %2, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i68.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i68.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit69.i, label %bb.l

bb.l:                                             ; preds = %.body.i
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !77
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69.i

_ZNSt6vectorIiSaIiEED2Ev.exit69.i:                ; preds = %bb.l, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.body

.lr.ph.split.i:                                   ; preds = %.preheader90.i, %bb.m
  %i.cc = phi i64 [ %i.cv, %bb.m ], [ %i.at, %.preheader90.i ] ; 6 uses
  %.05693.i = phi i64 [ %i.cc, %bb.m ], [ %i.x, %.preheader90.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !50
  %i.cg = icmp eq i64 %.fr103.i, %i.cf
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %.lr.ph.split._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84_crit_edge.i

.lr.ph.split._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84_crit_edge.i: ; preds = %.lr.ph.split.i
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !76
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.split.i
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !49
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !49
  %bcmp.i.i17 = call i32 @bcmp(ptr %i.ci, ptr %i.ch, i64 %.fr103.i)
  %i.cj = icmp eq i32 %bcmp.i.i17, 0
  %.pre106.i = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 2 uses
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre106.i, i64 %.05693.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !63
  %i.cm = add nsw i32 %i.cl, 1
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.split._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84_crit_edge.i
  %i.cn = phi ptr [ %.pre.i, %.lr.ph.split._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84_crit_edge.i ], [ %.pre106.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cc
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.05693.i
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !63
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !63
  %i.cs = call i32 @llvm.smax.i32(i32 %i.cq, i32 %i.cr)
  br label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ct = phi i32 [ %i.cm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %i.cs, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread84.i ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cc
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !63
  %i.cv = add i64 %i.cc, -1
  %.not62.i = icmp eq i64 %i.cc, 0
  br i1 %.not62.i, label %..loopexit_crit_edge.i, label %.lr.ph.split.i, !llvm.loop !111

.preheader88.i:                                   ; preds = %bb.q, %.preheader90.lr.ph.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %.053.lcssa.i = phi i64 [ 0, %.preheader90.lr.ph.i ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ], [ %.154.i, %bb.q ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader90.lr.ph.i ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ], [ %.1.i, %bb.q ] ; 2 uses
  %i.cw = icmp ult i64 %.053.lcssa.i, %i.q
  br i1 %i.cw, label %.lr.ph100.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %..loopexit_crit_edge.i, %bb.q
  %.097.i = phi i64 [ %.1.i, %bb.q ], [ 0, %..loopexit_crit_edge.i ] ; 5 uses
  %.05396.i = phi i64 [ %.154.i, %bb.q ], [ 0, %..loopexit_crit_edge.i ] ; 5 uses
  %i.cx = load ptr, ptr %5, align 8, !tbaa !54
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.05396.i ; 3 uses
  %i.cz = load ptr, ptr %6, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %.097.i ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !50 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !50
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread85.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.dg = icmp eq i64 %i.dc, 0
  %.pre107.i = load ptr, ptr %i.cy, align 8, !tbaa !49 ; 2 uses
  br i1 %i.dg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.i: ; preds = %bb.n
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !49
  %bcmp.i70.i = call i32 @bcmp(ptr %.pre107.i, ptr %i.dh, i64 %i.dc)
  %i.di = icmp eq i32 %bcmp.i70.i, 0
  br i1 %i.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread85.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.i, %bb.n
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.50, ptr noundef %.pre107.i) #38 ; 0 uses
  %i.dl = add nuw i64 %.05396.i, 1
  %i.dm = add nuw i64 %.097.i, 1
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread85.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.i, %.lr.ph.i
  %i.dn = add nuw i64 %.05396.i, 1                ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !76
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.097.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !63
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.05396.i
  %i.dt = add nuw i64 %.097.i, 1                  ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !76
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !63
  %.not61.i = icmp slt i32 %i.dr, %i.dw
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !45 ; 2 uses
  br i1 %.not61.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread85.i
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !49
  %i.dz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.51, ptr noundef %i.dy) #38 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread85.i
  %i.ea = load ptr, ptr %i.da, align 8, !tbaa !49
  %i.eb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.52, ptr noundef %i.ea) #38 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread.i
  %.154.i = phi i64 [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread.i ], [ %i.dn, %bb.o ], [ %.05396.i, %bb.p ] ; 3 uses
  %.1.i = phi i64 [ %i.dm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit71.thread.i ], [ %.097.i, %bb.o ], [ %i.dt, %bb.p ] ; 3 uses
  %i.ec = icmp ult i64 %.154.i, %i.q
  %i.ed = icmp ult i64 %.1.i, %i.x
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %i.ee, label %.lr.ph.i, label %.preheader88.i, !llvm.loop !112

.preheader.i:                                     ; preds = %.lr.ph100.i, %.preheader88.i
  %i.ef = icmp ult i64 %.0.lcssa.i, %i.x
  br i1 %i.ef, label %.lr.ph102.i, label %._crit_edge.i

.lr.ph100.i:                                      ; preds = %.preheader88.i, %.lr.ph100.i
  %.25599.i = phi i64 [ %i.el, %.lr.ph100.i ], [ %.053.lcssa.i, %.preheader88.i ] ; 2 uses
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.eh = load ptr, ptr %5, align 8, !tbaa !54
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %.25599.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !49
  %i.ek = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eg, ptr noundef nonnull @.str.51, ptr noundef %i.ej) #38 ; 0 uses
  %i.el = add i64 %.25599.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.el, %i.q
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph100.i, !llvm.loop !113

.lr.ph102.i:                                      ; preds = %.preheader.i, %.lr.ph102.i
  %.2101.i = phi i64 [ %i.er, %.lr.ph102.i ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.en = load ptr, ptr %6, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %.2101.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !49
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.52, ptr noundef %i.ep) #38 ; 0 uses
  %i.er = add i64 %.2101.i, 1                     ; 2 uses
  %exitcond105.not.i = icmp eq i64 %i.er, %i.x
  br i1 %exitcond105.not.i, label %._crit_edge.i, label %.lr.ph102.i, !llvm.loop !114

._crit_edge.i:                                    ; preds = %.lr.ph102.i, %.preheader.i
  %.not4.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ey, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i ], [ %i.ak, %._crit_edge.i ] ; 3 uses
  %i.es = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !77
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #34
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i72.i = icmp eq ptr %i.ey, %i.al
  br i1 %.not.i.i.i72.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i, %._crit_edge.i
  %.not.i.i1.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i, label %_ZN5nglog12_GLOBAL__N_19PrintDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %.idx87.i = mul nuw nsw i64 %i.ag, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %.idx87.i) #34
  br label %_ZN5nglog12_GLOBAL__N_19PrintDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_.exit

_ZN5nglog12_GLOBAL__N_19PrintDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_.exit: ; preds = %bb.s, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ez = load ptr, ptr %6, align 8, !tbaa !54    ; 3 uses
  %i.fa = load ptr, ptr %i.r, align 8, !tbaa !55  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ez, %i.fa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5nglog12_GLOBAL__N_19PrintDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ez, %_ZN5nglog12_GLOBAL__N_19PrintDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_.exit ] ; 3 uses
  %i.fb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !52
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fg, %i.fa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN5nglog12_GLOBAL__N_19PrintDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_.exit
  %i.fh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ez, %_ZN5nglog12_GLOBAL__N_19PrintDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !57
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fm) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.fn = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %i.fo = load ptr, ptr %i.k, align 8, !tbaa !55  ; 2 uses
  %.not4.i.i.i19 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not4.i.i.i19, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23
  %.05.i.i.i21 = phi ptr [ %i.fu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23 ], [ %i.fn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fp = load ptr, ptr %.05.i.i.i21, align 8, !tbaa !49 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i20
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !52
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23: ; preds = %.lr.ph.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.fu, %i.fo
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25, label %.lr.ph.i.i.i20, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i23
  %.pr.i26 = load ptr, ptr %5, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.fv = phi ptr [ %.pr.i26, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i25 ], [ %i.fn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i28 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i1.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit30, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i27
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !57
end_hunk_0
