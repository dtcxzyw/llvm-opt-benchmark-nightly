begin_hunk_0_@_ZN7xgboost4tree8ColMaker7Builder8InitRootERKSt6vectorINS_6detail20GradientPairInternalIfEESaIS6_EERKNS_7DMatrixERKNS_7RegTreeE:bb.a

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.23, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.121, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load ptr, ptr %4, align 8, !tbaa !112    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %bb.ah

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.x, %bb.c ], [ %i.y, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ag

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.pr47 = load ptr, ptr %4, align 8, !tbaa !112  ; 4 uses
  %.not.i = icmp eq ptr %.pr47, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %.pr47, align 8, !tbaa !9  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr47, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr47, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !95 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.af, ptr %i.a, align 4, !tbaa !95, !noalias !731
  store i32 0, ptr %i.b, align 4, !tbaa !95, !noalias !731
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit41

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr49 = load ptr, ptr %6, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not54 = icmp eq ptr %.pr49, null
  br i1 %.not54, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit41, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ah = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ah, ptr noundef nonnull @.str.88, i32 noundef 309)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit26 unwind label %bb.i

_ZN4dmlc15LogMessageFatalC2EPKci.exit26:          ; preds = %.noexc24
  %i.ai = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28 unwind label %bb.j ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit26
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.23, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.122, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.al = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34 unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.noexc24, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28, %_ZN4dmlc15LogMessageFatalC2EPKci.exit26
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.k unwind label %bb.ah

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn13 = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.as, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ag

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pr50 = load ptr, ptr %6, align 8, !tbaa !112  ; 4 uses
  %.not.i37 = icmp eq ptr %.pr50, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit41, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %.pr50, align 8, !tbaa !9 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pr50, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38: ; preds = %bb.m
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i39

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i39: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38
  call void @_ZdlPvm(ptr noundef nonnull %.pr50, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit41

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit41: ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7xgboost4tree8ColMaker7Builder13InitNodeStatsERKSt6vectorIiSaIiEERKS3_INS_6detail20GradientPairInternalIfEESaISA_EERKNS_7DMatrixERKNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !676, !noalias !734
  %i.bb = icmp eq i16 %i.ba, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit41
  %i.bd = call noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc), !noalias !734 ; 0 uses
  %i.be = call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ay), !noalias !734
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bg = call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf), !noalias !734
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit41
  %i.bh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc), !noalias !734 ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ay), !noalias !734
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !284, !noalias !734
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk), !noalias !734
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !284, !noalias !734
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit: ; preds = %bb.n, %bb.o
  %.sroa.4.0 = phi ptr [ %i.be, %bb.n ], [ %i.bj, %bb.o ] ; 2 uses
  %.sink4.i = phi ptr [ %i.bg, %bb.n ], [ %i.bm, %bb.o ] ; 2 uses
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sink3.i = load i8, ptr %.sink3.in.i, align 8, !tbaa !583, !range !106, !noalias !734, !noundef !107
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !577 ; 4 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !558, !nonnull !107, !align !559 ; 8 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %i.bo, align 8, !tbaa !737 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.2.0.copyload.i.i = load double, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !737 ; 4 uses
  %i.bq = fcmp ugt double %.sroa.2.0.copyload.i.i, 0.000000e+00 ; 3 uses
  br i1 %i.bq, label %bb.p, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.p:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.bs = load float, ptr %i.br, align 4, !tbaa !738 ; 2 uses
  %i.bt = fpext float %i.bs to double             ; 3 uses
  %i.bu = fcmp ogt double %.sroa.0.0.copyload.i.i, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = fsub double %.sroa.0.0.copyload.i.i, %i.bt
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bw = fneg float %i.bs
  %i.bx = fpext float %i.bw to double
  %i.by = fcmp olt double %.sroa.0.0.copyload.i.i, %i.bx
  br i1 %i.by, label %bb.s, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bz = fadd double %.sroa.0.0.copyload.i.i, %i.bt
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %.0.i.i.i.i.i = phi double [ %i.bv, %bb.q ], [ %i.bz, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.ca = fneg double %.0.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !739
  %i.cd = fpext float %i.cc to double
  %i.ce = fadd double %.sroa.2.0.copyload.i.i, %i.cd
  %i.cf = fdiv double %i.ca, %i.ce                ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.ci = fcmp une float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.t, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.t:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %i.cj = call double @llvm.fabs.f64(double %i.cf)
  %i.ck = fpext float %i.ch to double             ; 2 uses
  %i.cl = fcmp ogt double %i.cj, %i.ck
  br i1 %i.cl, label %bb.u, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.cm = call double @llvm.copysign.f64(double %i.ck, double %i.cf)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i: ; preds = %bb.u, %bb.t, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i, %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  %.012.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit ], [ %i.cm, %bb.u ], [ %i.cf, %bb.t ], [ %i.cf, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i ]
  %i.cn = fptrunc double %.012.i.i.i.i to float   ; 4 uses
  %i.co = trunc nuw i8 %.sink3.i to i1            ; 2 uses
  br i1 %i.co, label %bb.v, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.v:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i
  %i.cp = load float, ptr %.sroa.4.0, align 4, !tbaa !108 ; 2 uses
  %i.cq = fcmp ogt float %i.cp, %i.cn
  br i1 %i.cq, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load float, ptr %.sink4.i, align 4, !tbaa !108 ; 2 uses
  %i.cs = fcmp olt float %i.cr, %i.cn
  %..i.i.i = select i1 %i.cs, float %i.cr, float %i.cn
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i, %bb.v, %bb.w
  %.1.i.i.i = phi float [ %i.cn, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i ], [ %i.cp, %bb.v ], [ %..i.i.i, %bb.w ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store float %.1.i.i.i, ptr %i.ct, align 4, !tbaa !581
  br i1 %i.bq, label %bb.x, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.x:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !738 ; 2 uses
  %i.cw = fpext float %i.cv to double             ; 3 uses
  %i.cx = fcmp ogt double %.sroa.0.0.copyload.i.i, %i.cw
  br i1 %i.cx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cy = fsub double %.sroa.0.0.copyload.i.i, %i.cw
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cz = fneg float %i.cv
  %i.da = fpext float %i.cz to double
  %i.db = fcmp olt double %.sroa.0.0.copyload.i.i, %i.da
  br i1 %i.db, label %bb.aa, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dc = fadd double %.sroa.0.0.copyload.i.i, %i.cw
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi double [ %i.cy, %bb.y ], [ %i.dc, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.dd = fneg double %.0.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.df = load float, ptr %i.de, align 8, !tbaa !739
  %i.dg = fpext float %i.df to double
  %i.dh = fadd double %.sroa.2.0.copyload.i.i, %i.dg
  %i.di = fdiv double %i.dd, %i.dh                ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !740 ; 2 uses
  %i.dl = fcmp une float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.ab, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.ab:                                            ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i
  %i.dm = call double @llvm.fabs.f64(double %i.di)
  %i.dn = fpext float %i.dk to double             ; 2 uses
  %i.do = fcmp ogt double %i.dm, %i.dn
  br i1 %i.do, label %bb.ac, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call double @llvm.copysign.f64(double %i.dn, double %i.di)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %.012.i.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit ], [ %i.dp, %bb.ac ], [ %i.di, %bb.ab ], [ %i.di, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i ]
  %i.dq = fptrunc double %.012.i.i.i.i.i to float ; 4 uses
  br i1 %i.co, label %bb.ad, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

bb.ad:                                            ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %i.dr = load float, ptr %.sroa.4.0, align 4, !tbaa !108 ; 2 uses
  %i.ds = fcmp ogt float %i.dr, %i.dq
  br i1 %i.ds, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load float, ptr %.sink4.i, align 4, !tbaa !108 ; 2 uses
  %i.du = fcmp olt float %i.dt, %i.dq
  %..i.i.i.i = select i1 %i.du, float %i.dt, float %i.dq
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i: ; preds = %bb.ae, %bb.ad, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %.1.i.i.i.i = phi float [ %i.dq, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i ], [ %i.dr, %bb.ad ], [ %..i.i.i.i, %bb.ae ] ; 4 uses
  br i1 %i.bq, label %bb.af, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.af:                                            ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i
  %i.dv = fmul double %.sroa.0.0.copyload.i.i, 2.000000e+00
  %i.dw = fpext float %.1.i.i.i.i to double
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %8 = load float, ptr %i.dx, align 8, !tbaa !739
  %i.dy = fpext float %8 to double
  %9 = fadd double %.sroa.2.0.copyload.i.i, %i.dy
  %10 = fmul float %.1.i.i.i.i, %.1.i.i.i.i
  %11 = fpext float %10 to double
  %12 = fmul double %9, %11
  %13 = call double @llvm.fmuladd.f64(double %i.dv, double %i.dw, double %12)
  %14 = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %15 = load float, ptr %14, align 4, !tbaa !738
  %16 = fpext float %15 to double
  %i.dz = fmul double %16, 2.000000e+00
  %i.ea = call noundef float @llvm.fabs.f32(float %.1.i.i.i.i)
  %i.eb = fpext float %i.ea to double
  %i.ec = call double @llvm.fmuladd.f64(double %i.dz, double %i.eb, double %13)
  %i.ed = fptrunc double %i.ec to float
  %i.ee = fneg float %i.ed
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i, %bb.af
  %.0.i.i = phi float [ %i.ee, %bb.af ], [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store float %.0.i.i, ptr %i.ef, align 8, !tbaa !741
  ret void

bb.ag:                                            ; preds = %bb.k, %bb.e
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.k ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %.pn13.pn

bb.ah:                                            ; preds = %bb.j, %bb.d
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree8ColMaker7Builder9FindSplitEiRKSt6vectorIiSaIiEERKS3_INS_6detail20GradientPairInternalIfEESaISA_EEPNS_7DMatrixEPNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(320) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.113", align 8 ; 7 uses
  %7 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %8 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %9 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i16, ptr %i.b, align 8, !tbaa !676, !noalias !742
  %i.d = icmp eq i16 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !742 ; 0 uses
  %i.g = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.a), !noalias !742
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = tail call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !742
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !742 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.a), !noalias !742
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !284, !noalias !742
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !742
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !284, !noalias !742
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit: ; preds = %bb.b, %bb.c
  %.sroa.5.0 = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sink4.i = phi ptr [ %i.i, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !671, !noalias !742
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sink3.i = load i8, ptr %.sink3.in.i, align 8, !tbaa !583, !range !106, !noalias !742, !noundef !107
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !552
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !527
  call void @_ZN7xgboost6common13ColumnSampler13GetFeatureSetEPKNS_7ContextEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.113") align 8 %6, ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef %i.s, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !527
  %i.u = load ptr, ptr %4, align 8, !tbaa !53, !noalias !745
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !noalias !745
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.t)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit unwind label %bb.ab, !inline_history !503

_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit: ; preds = %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !288, !noalias !748 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %7, align 16, !tbaa !175, !noalias !748
  store <2 x ptr> %i.aa, ptr %8, align 16, !tbaa !175, !alias.scope !748
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15, !noalias !748
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !95, !noalias !748
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !95, !noalias !748
  br label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4, !noalias !748 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit

_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit: ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_13SortedCSCPageEEENS_8BatchSetIT_EEPKNS_7ContextE.exit, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !751
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #21
  br label %.body

_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit: ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE5beginEv.exit, %bb.ag
  %i.ah = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_13SortedCSCPageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.h unwind label %bb.ac

bb.h:                                             ; preds = %_ZN7xgboost8BatchSetINS_13SortedCSCPageEE3endEv.exit
  br i1 %i.ah, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !288 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !281
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !283
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21, !inline_history !510
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21, !inline_history !510
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.o, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit, !prof !143

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !288 ; 8 uses
  %.not.i.i.i46 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i46, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit50, label %bb.p

bb.p:                                             ; preds = %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ba, align 8, !tbaa !281
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !283
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #21, !inline_history !510
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #21, !inline_history !510
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit50

bb.r:                                             ; preds = %bb.p
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i47 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i47, label %bb.t, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN7xgboost4tree8ColMaker7Builder17UpdateQueueExpandERKNS_7RegTreeERKSt6vectorIiSaIiEEPS8_:bb.a
  %i.i = load i32, ptr %.sroa.021.025, align 4, !tbaa !95
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !757  ; 3 uses
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = getelementptr inbounds [20 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !574  ; 3 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !592  ; 4 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !555  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.n, ptr %i.p, align 4, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8, !tbaa !592
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %3, align 8, !tbaa !554    ; 4 uses
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775804
  br i1 %i.w, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #36
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.x = ashr exact i64 %i.v, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 2305843009213693951)
  %i.ab = select i1 %i.z, i64 2305843009213693951, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #37 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store i32 %i.n, ptr %i.ae, align 4, !tbaa !95
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.v) #35
  %.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !757
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.h ], [ %i.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.ad, ptr %3, align 8, !tbaa !554
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !592
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !555
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ai = phi ptr [ %i.q, %bb.d ], [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.aj = phi ptr [ %i.r, %bb.d ], [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.ak = phi ptr [ %i.j, %bb.d ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.al = getelementptr inbounds [20 x i8], ptr %i.ak, i64 %i.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !576 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !95
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !592
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit17

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ap = load ptr, ptr %3, align 8, !tbaa !554   ; 4 uses
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #36
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11: ; preds = %bb.j
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i12 = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i12, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #37 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i32 %i.an, ptr %i.bb, align 4, !tbaa !95
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.not.i17.i.i.i15 = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i14
  store ptr %i.ba, ptr %3, align 8, !tbaa !554
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !592
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.h, align 8, !tbaa !555
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit17

_ZNSt6vectorIiSaIiEE9push_backEOi.exit17:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i16, %bb.i, %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree8ColMaker7Builder11InitNewNodeERKSt6vectorIiSaIiEERKS3_INS_6detail20GradientPairInternalIfEESaISA_EERKNS_7DMatrixERKNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(96) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"struct.xgboost::tree::ScalarTreeView", align 8 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %.not49 = icmp eq ptr %i.c, %i.e
  br i1 %.not49, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.a
  call void @_ZN7xgboost4tree8ColMaker7Builder13InitNodeStatsERKSt6vectorIiSaIiEERKS3_INS_6detail20GradientPairInternalIfEESaISA_EERKNS_7DMatrixERKNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(96) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load i16, ptr %i.g, align 8, !tbaa !676, !noalias !765
  %i.i = icmp eq i16 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = call noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !765 ; 0 uses
  %i.l = call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.f), !noalias !765
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = call noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !765
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !765 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.f), !noalias !765
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !284, !noalias !765
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !765
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !284, !noalias !765
  br label %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit

_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit: ; preds = %bb.b, %bb.c
  %.sroa.4.0 = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %.sink4.i = phi ptr [ %i.n, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %.not4751 = icmp eq ptr %i.u, %i.v
  br i1 %.not4751, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sink3.i = load i8, ptr %.sink3.in.i, align 8, !tbaa !583, !range !106, !noalias !765, !noundef !107
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !671, !noalias !765
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !757
  %i.y = load ptr, ptr %0, align 8, !tbaa !558, !nonnull !107, !align !559 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !577
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 44 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.ae = trunc nuw i8 %.sink3.i to i1            ; 2 uses
  %i.af = zext i32 %.sink.i to i64                ; 2 uses
  br label %bb.j

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.sroa.042.050 = phi ptr [ %i.ay, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.042.050, align 4, !tbaa !95 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !95, !noalias !768
  store i32 0, ptr %i.b, align 4, !tbaa !95, !noalias !768
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_NEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_NEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_NEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_NEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %.lr.ph
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not48 = icmp eq ptr %.pr, null
  br i1 %.not48, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_NEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ah = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ah, ptr noundef nonnull @.str.88, i32 noundef 325)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ai = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.23, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.131, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !112   ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.pr45 = load ptr, ptr %5, align 8, !tbaa !112  ; 4 uses
  %.not.i31 = icmp eq ptr %.pr45, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %.pr45, align 8, !tbaa !9 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pr45, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr45, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_NEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.042.050, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge54:                                    ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, %_ZNK7xgboost4tree13TreeEvaluator12GetEvaluatorINS0_10TrainParamEEEDav.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.j:                                             ; preds = %.lr.ph53, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %.sroa.032.052 = phi ptr [ %i.u, %.lr.ph53 ], [ %i.dv, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit ] ; 2 uses
  %i.az = load i32, ptr %.sroa.032.052, align 4, !tbaa !95
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [20 x i8], ptr %i.x, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !771
  %i.bd = and i32 %i.bc, 2147483647               ; 2 uses
  %i.be = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.ba ; 4 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %i.be, align 8, !tbaa !737 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.2.0.copyload.i.i = load double, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !737 ; 4 uses
  %i.bf = fcmp ugt double %.sroa.2.0.copyload.i.i, 0.000000e+00 ; 3 uses
  br i1 %i.bf, label %bb.k, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bg = load float, ptr %i.ab, align 4, !tbaa !738 ; 2 uses
  %i.bh = fpext float %i.bg to double             ; 3 uses
  %i.bi = fcmp ogt double %.sroa.0.0.copyload.i.i, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = fsub double %.sroa.0.0.copyload.i.i, %i.bh
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = fneg float %i.bg
  %i.bl = fpext float %i.bk to double
  %i.bm = fcmp olt double %.sroa.0.0.copyload.i.i, %i.bl
  br i1 %i.bm, label %bb.n, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bn = fadd double %.sroa.0.0.copyload.i.i, %i.bh
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.i.i.i.i = phi double [ %i.bj, %bb.l ], [ %i.bn, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.bo = fneg double %.0.i.i.i.i.i
  %i.bp = load float, ptr %i.ac, align 8, !tbaa !739
  %i.bq = fpext float %i.bp to double
  %i.br = fadd double %.sroa.2.0.copyload.i.i, %i.bq
  %i.bs = fdiv double %i.bo, %i.br                ; 4 uses
  %i.bt = load float, ptr %i.ad, align 8, !tbaa !740 ; 2 uses
  %i.bu = fcmp une float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.o, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.o:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %i.bv = call double @llvm.fabs.f64(double %i.bs)
  %i.bw = fpext float %i.bt to double             ; 2 uses
  %i.bx = fcmp ogt double %i.bv, %i.bw
  br i1 %i.bx, label %bb.p, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.by = call double @llvm.copysign.f64(double %i.bw, double %i.bs)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i: ; preds = %bb.p, %bb.o, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i, %bb.j
  %.012.i.i.i.i = phi double [ 0.000000e+00, %bb.j ], [ %i.by, %bb.p ], [ %i.bs, %bb.o ], [ %i.bs, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i ]
  %i.bz = fptrunc double %.012.i.i.i.i to float   ; 4 uses
  br i1 %i.ae, label %bb.q, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.q:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i
  %i.ca = zext nneg i32 %i.bd to i64
  %i.cb = mul nuw nsw i64 %i.ca, %i.af            ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !108 ; 2 uses
  %i.ce = fcmp ogt float %i.cd, %i.bz
  br i1 %i.ce, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sink4.i, i64 %i.cb
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !108 ; 2 uses
  %i.ch = fcmp olt float %i.cg, %i.bz
  %..i.i.i = select i1 %i.ch, float %i.cg, float %i.bz
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i, %bb.q, %bb.r
  %.1.i.i.i = phi float [ %i.bz, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i ], [ %i.cd, %bb.q ], [ %..i.i.i, %bb.r ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store float %.1.i.i.i, ptr %i.ci, align 4, !tbaa !581
  br i1 %i.bf, label %bb.s, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.s:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.cj = load float, ptr %i.ab, align 4, !tbaa !738 ; 2 uses
  %i.ck = fpext float %i.cj to double             ; 3 uses
  %i.cl = fcmp ogt double %.sroa.0.0.copyload.i.i, %i.ck
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = fsub double %.sroa.0.0.copyload.i.i, %i.ck
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cn = fneg float %i.cj
  %i.co = fpext float %i.cn to double
  %i.cp = fcmp olt double %.sroa.0.0.copyload.i.i, %i.co
  br i1 %i.cp, label %bb.v, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cq = fadd double %.sroa.0.0.copyload.i.i, %i.ck
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi double [ %i.cm, %bb.t ], [ %i.cq, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.cr = fneg double %.0.i.i.i.i.i.i
  %i.cs = load float, ptr %i.ac, align 8, !tbaa !739
  %i.ct = fpext float %i.cs to double
  %i.cu = fadd double %.sroa.2.0.copyload.i.i, %i.ct
  %i.cv = fdiv double %i.cr, %i.cu                ; 4 uses
  %i.cw = load float, ptr %i.ad, align 8, !tbaa !740 ; 2 uses
  %i.cx = fcmp une float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.w, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.w:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i
  %i.cy = call double @llvm.fabs.f64(double %i.cv)
  %i.cz = fpext float %i.cw to double             ; 2 uses
  %i.da = fcmp ogt double %i.cy, %i.cz
  br i1 %i.da, label %bb.x, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.db = call double @llvm.copysign.f64(double %i.cz, double %i.cv)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i: ; preds = %bb.x, %bb.w, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %.012.i.i.i.i.i = phi double [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit ], [ %i.db, %bb.x ], [ %i.cv, %bb.w ], [ %i.cv, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i.i ]
  %i.dc = fptrunc double %.012.i.i.i.i.i to float ; 4 uses
  br i1 %i.ae, label %bb.y, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

bb.y:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %i.dd = zext nneg i32 %i.bd to i64
  %i.de = mul nuw nsw i64 %i.dd, %i.af            ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !108 ; 2 uses
  %i.dh = fcmp ogt float %i.dg, %i.dc
  br i1 %i.dh, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sink4.i, i64 %i.de
  %i.dj = load float, ptr %i.di, align 4, !tbaa !108 ; 2 uses
  %i.dk = fcmp olt float %i.dj, %i.dc
  %..i.i.i.i = select i1 %i.dk, float %i.dj, float %i.dc
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i: ; preds = %bb.z, %bb.y, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i
  %.1.i.i.i.i = phi float [ %i.dc, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i.i ], [ %i.dg, %bb.y ], [ %..i.i.i.i, %bb.z ] ; 4 uses
  br i1 %i.bf, label %bb.aa, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.aa:                                            ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i
  %i.dl = fmul double %.sroa.0.0.copyload.i.i, 2.000000e+00
  %i.dm = fpext float %.1.i.i.i.i to double
  %8 = load float, ptr %i.ac, align 8, !tbaa !739
  %i.dn = fpext float %8 to double
  %9 = fadd double %.sroa.2.0.copyload.i.i, %i.dn
  %10 = fmul float %.1.i.i.i.i, %.1.i.i.i.i
  %11 = fpext float %10 to double
  %12 = fmul double %9, %11
  %13 = call double @llvm.fmuladd.f64(double %i.dl, double %i.dm, double %12)
  %14 = load float, ptr %i.ab, align 4, !tbaa !738
  %15 = fpext float %14 to double
  %i.do = fmul double %15, 2.000000e+00
  %i.dp = call noundef float @llvm.fabs.f32(float %.1.i.i.i.i)
  %i.dq = fpext float %i.dp to double
  %i.dr = call double @llvm.fmuladd.f64(double %i.do, double %i.dq, double %13)
  %i.ds = fptrunc double %i.dr to float
  %i.dt = fneg float %i.ds
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE8CalcGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i, %bb.aa
  %.0.i.i = phi float [ %i.dt, %bb.aa ], [ 0.000000e+00, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store float %.0.i.i, ptr %i.du, align 8, !tbaa !741
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.032.052, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.dv, %i.v
  br i1 %.not47, label %._crit_edge54, label %bb.j

bb.ab:                                            ; preds = %bb.f
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common13ColumnSampler4InitEPKNS_7ContextElRKNS_16HostDeviceVectorIfEEfff(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.113", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.113", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8
  tail call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 %.sroa.0.0.copyload.i)
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.b, align 8
  tail call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 %.sroa.0.0.copyload.i19)
  %i.c = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  tail call void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  tail call void @_ZN7xgboost16HostDeviceVectorIfE4CopyERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %5, ptr %i.d, align 8, !tbaa !772
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store float %6, ptr %i.e, align 4, !tbaa !773
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %4, ptr %i.f, align 8, !tbaa !384
  %i.g = load ptr, ptr %0, align 8, !tbaa !754
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.b, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37, !noalias !774 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !281, !noalias !774
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !283, !noalias !774
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !53, !noalias !774
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  invoke void @_ZN7xgboost16HostDeviceVectorIjEC1EmjNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0, i32 noundef 0, i32 -65536)
          to label %_ZSt11make_sharedIN7xgboost16HostDeviceVectorIjEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !774

common.resume:                                    ; preds = %bb.am, %bb.n, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ], [ %i.au, %bb.n ], [ %i.dz, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7xgboost16HostDeviceVectorIjEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #35, !noalias !774
  br label %common.resume

_ZSt11make_sharedIN7xgboost16HostDeviceVectorIjEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.k, ptr %0, align 8, !tbaa !777
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !288  ; 8 uses
  store ptr %i.h, ptr %i.m, align 8, !tbaa !288
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_sharedIN7xgboost16HostDeviceVectorIjEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 8, !tbaa !281
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !283
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #21, !inline_history !778
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #21, !inline_history !778
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !143

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #21
  br label %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11make_sharedIN7xgboost16HostDeviceVectorIjEEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !754
  tail call void @_ZN7xgboost16HostDeviceVectorIjE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %i.ag)
          to label %_ZN7xgboost6common13ColumnSampler5ResetEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #38
  unreachable

_ZN7xgboost6common13ColumnSampler5ResetEv.exit:   ; preds = %_ZNSt12__shared_ptrIN7xgboost16HostDeviceVectorIjEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.am, align 8, !tbaa !27
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.b, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i20 to i16
  %.off.i = add i16 %.sroa.0.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  br i1 %switch.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN7xgboost6common13ColumnSampler5ResetEv.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !754
  tail call void @_ZNK7xgboost16HostDeviceVectorIjE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 %.sroa.0.0.copyload.i20)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN7xgboost6common13ColumnSampler5ResetEv.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !754
  tail call void @_ZN7xgboost16HostDeviceVectorIjE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %2)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 8
  %i.ap = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ar = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ar, ptr noundef nonnull @.str.118, i32 noundef 187)
  %i.as = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.m

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.l
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.119, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #38
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit:      ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit

bb.p:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %0, align 8, !tbaa !754
  %i.ay = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIjE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !102 ; 5 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !754
end_hunk_1
begin_hunk_2_@_ZNK7xgboost4tree8ColMaker7Builder17UpdateEnumerationEiNS_6detail20GradientPairInternalIfEEfijRNS0_9GradStatsERSt6vectorINS1_11ThreadEntryESaIS9_EERKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEE:bb.a
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !578
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.sink.split

bb.n:                                             ; preds = %bb.f
  %i.bg = tail call noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i32 noundef %1, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !577
  %i.bi = getelementptr inbounds nuw [104 x i8], ptr %i.bh, i64 %i.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !741
  %i.bl = fsub float %i.bg, %i.bk                 ; 7 uses
  %i.bm = load float, ptr %i.m, align 8, !tbaa !911 ; 2 uses
  %i.bn = fadd float %3, %i.bm
  %i.bo = fmul float %i.bn, 5.000000e-01          ; 2 uses
  %i.bp = fcmp oeq float %i.bo, %3
  %i.bq = tail call float @llvm.fabs.f32(float %i.bl)
  %i.br = fcmp oeq float %i.bq, +inf              ; 2 uses
  br i1 %i.bp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.br, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !578
  %i.bu = and i32 %i.bt, 2147483647
  %.not.i.i75 = icmp ugt i32 %i.bu, %5
  %i.bv = load float, ptr %i.af, align 8, !tbaa !851 ; 2 uses
  br i1 %.not.i.i75, label %.split.i78, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i76

.split.i78:                                       ; preds = %bb.p
  %i.bw = fcmp ule float %i.bv, %i.bl
  br i1 %i.bw, label %bb.q, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i76: ; preds = %bb.p
  %i.bx = fcmp ogt float %i.bl, %i.bv
  br i1 %i.bx, label %bb.q, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

bb.q:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i76, %.split.i78
  store float %i.bl, ptr %i.af, align 8, !tbaa !851
  store i32 %5, ptr %i.bs, align 4, !tbaa !578
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.sink.split

bb.r:                                             ; preds = %bb.n
  br i1 %i.br, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !578
  %i.ca = and i32 %i.bz, 2147483647
  %.not.i.i80 = icmp ugt i32 %i.ca, %5
  %i.cb = load float, ptr %i.af, align 8, !tbaa !851 ; 2 uses
  br i1 %.not.i.i80, label %.split.i83, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i81

.split.i83:                                       ; preds = %bb.s
  %i.cc = fcmp ule float %i.cb, %i.bl
  br i1 %i.cc, label %bb.t, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i81: ; preds = %bb.s
  %i.cd = fcmp ogt float %i.bl, %i.cb
  br i1 %i.cd, label %bb.t, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

bb.t:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i81, %.split.i83
  store float %i.bl, ptr %i.af, align 8, !tbaa !851
  store i32 %5, ptr %i.by, align 4, !tbaa !578
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.sink.split

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.sink.split: ; preds = %bb.j, %bb.m, %bb.q, %bb.t
  %.sink = phi float [ %i.bo, %bb.t ], [ %i.bm, %bb.q ], [ %i.ao, %bb.m ], [ %i.am, %bb.j ]
  %.sink92 = phi ptr [ %i.c, %bb.t ], [ %i.c, %bb.q ], [ %6, %bb.m ], [ %6, %bb.j ]
  %.sink91 = phi ptr [ %6, %bb.t ], [ %6, %bb.q ], [ %i.c, %bb.m ], [ %i.c, %bb.j ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store float %.sink, ptr %i.ce, align 8, !tbaa !852
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.cf, align 8, !tbaa !853
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %.sink92, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %.sink91, i64 16, i1 false)
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit: ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.sink.split, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i81, %.split.i83, %bb.r, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i76, %.split.i78, %bb.o, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i71, %.split.i73, %bb.k, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i, %bb.h, %bb.e, %bb.d, %bb.c
  %i.ci = fpext <2 x float> %2 to <2 x double>
  %i.cj = load <2 x double>, ptr %i.c, align 8, !tbaa !737
  %i.ck = fadd <2 x double> %i.cj, %i.ci
  store <2 x double> %i.ck, ptr %i.c, align 8, !tbaa !737
  store float %3, ptr %i.m, align 8, !tbaa !911
  br label %bb.u

bb.u:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !912 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !912 ; 3 uses
  %i.e = fcmp ogt double %i.b, 0.000000e+00
  %i.f = fcmp ogt double %i.d, 0.000000e+00
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.b, label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load float, ptr %i.g, align 4, !tbaa !910
  %i.i = fpext float %i.h to double               ; 2 uses
  %i.j = fcmp oge double %i.b, %i.i
  %i.k = fcmp oge double %i.d, %i.i
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.c, label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !884, !range !106, !noundef !107
  %i.n = trunc nuw i8 %i.m to i1                  ; 3 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !880
  %i.p = zext i32 %3 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %i.r, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %4, align 8, !tbaa !737 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.u = load float, ptr %i.t, align 4, !tbaa !738 ; 3 uses
  %i.v = fpext float %i.u to double               ; 7 uses
  %i.w = fcmp ogt double %.sroa.0.0.copyload.i.i, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = fsub double %.sroa.0.0.copyload.i.i, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = fneg float %i.u
  %i.z = fpext float %i.y to double
  %i.aa = fcmp olt double %.sroa.0.0.copyload.i.i, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = fadd double %.sroa.0.0.copyload.i.i, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i.i.i.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ac = fneg double %.0.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !739
  %i.af = fpext float %i.ae to double             ; 2 uses
  %i.ag = fadd double %i.b, %i.af                 ; 2 uses
  %i.ah = fdiv double %i.ac, %i.ag                ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !740 ; 3 uses
  %i.ak = fcmp une float %i.aj, 0.000000e+00      ; 2 uses
  br i1 %i.ak, label %bb.i, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.i:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %i.al = tail call double @llvm.fabs.f64(double %i.ah)
  %i.am = fpext float %i.aj to double             ; 2 uses
  %i.an = fcmp ogt double %i.al, %i.am
  br i1 %i.an, label %bb.j, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call double @llvm.copysign.f64(double %i.am, double %i.ah)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i: ; preds = %bb.j, %bb.i, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i
  %.012.i.i.i.i = phi double [ %i.ah, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i ], [ %i.ao, %bb.j ], [ %i.ah, %bb.i ]
  %i.ap = fptrunc double %.012.i.i.i.i to float   ; 4 uses
  br i1 %i.n, label %bb.k, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

bb.k:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !885
  %i.as = zext i32 %i.ar to i64
  %i.at = sext i32 %2 to i64
  %i.au = mul nsw i64 %i.as, %i.at                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !882
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !108 ; 2 uses
  %i.az = fcmp ogt float %i.ay, %i.ap
  br i1 %i.az, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !883
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.au
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !108 ; 2 uses
  %i.be = fcmp olt float %i.bd, %i.ap
  %..i.i.i = select i1 %i.be, float %i.bd, float %i.ap
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit: ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i, %bb.k, %bb.l
  %.1.i.i.i = phi float [ %i.ap, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i ], [ %i.ay, %bb.k ], [ %..i.i.i, %bb.l ] ; 6 uses
  %.sroa.0.0.copyload.i.i29 = load double, ptr %5, align 8, !tbaa !737 ; 5 uses
  %i.bf = fcmp ogt double %.sroa.0.0.copyload.i.i29, %i.v
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.bg = fsub double %.sroa.0.0.copyload.i.i29, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

bb.n:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit
  %i.bh = fneg float %i.u
  %i.bi = fpext float %i.bh to double
  %i.bj = fcmp olt double %.sroa.0.0.copyload.i.i29, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

bb.o:                                             ; preds = %bb.n
  %i.bk = fadd double %.sroa.0.0.copyload.i.i29, %i.v
  br label %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36

_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36: ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i.i.i.i37 = phi double [ %i.bg, %bb.m ], [ %i.bk, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.bl = fneg double %.0.i.i.i.i.i37
  %i.bm = fadd double %i.d, %i.af                 ; 2 uses
  %i.bn = fdiv double %i.bl, %i.bm                ; 4 uses
  br i1 %i.ak, label %bb.p, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

bb.p:                                             ; preds = %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fpext float %i.aj to double             ; 2 uses
  %i.bq = fcmp ogt double %i.bo, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

bb.q:                                             ; preds = %bb.p
  %i.br = tail call double @llvm.copysign.f64(double %i.bp, double %i.bn)
  br label %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32

_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32: ; preds = %bb.q, %bb.p, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36
  %.012.i.i.i.i33 = phi double [ %i.bn, %_ZN7xgboost4tree11ThresholdL1IdfEENSt9enable_ifIXaasr3stdE19is_floating_point_vIT_Esr3stdE19is_floating_point_vIT0_EES3_E4typeES3_S4_.exit.i.i.i.i36 ], [ %i.br, %bb.q ], [ %i.bn, %bb.p ]
  %i.bs = fptrunc double %.012.i.i.i.i33 to float ; 4 uses
  br i1 %i.n, label %bb.r, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38

bb.r:                                             ; preds = %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !885
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sext i32 %2 to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !882
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !108 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, %i.bs
  br i1 %i.cc, label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !883
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bx
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !108 ; 2 uses
  %i.ch = fcmp olt float %i.cg, %i.bs
  %..i.i.i35 = select i1 %i.ch, float %i.cg, float %i.bs
  br label %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38

_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38: ; preds = %bb.s, %bb.r, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32
  %.1.i.i.i34 = phi float [ %i.bs, %_ZN7xgboost4tree10CalcWeightINS0_10TrainParamENS0_9GradStatsEEEfRKT_T0_.exit.i.i32 ], [ %i.cb, %bb.r ], [ %..i.i.i35, %bb.s ] ; 6 uses
  %6 = fmul double %.sroa.0.0.copyload.i.i, 2.000000e+00
  %7 = fpext float %.1.i.i.i to double
  %8 = fmul float %.1.i.i.i, %.1.i.i.i
  %9 = fpext float %8 to double
  %10 = fmul double %i.ag, %9
  %11 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %10)
  %i.ci = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %.sroa.0.0.copyload.i.i29, i64 1
  %i.ck = fmul <2 x double> %i.cj, splat (double 2.000000e+00) ; 2 uses
  %12 = tail call noundef float @llvm.fabs.f32(float %.1.i.i.i)
  %13 = fmul float %.1.i.i.i34, %.1.i.i.i34
  %14 = fpext float %13 to double
  %15 = fmul double %i.bm, %14
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %17 = insertelement <2 x float> %16, float %.1.i.i.i34, i64 1
  %i.cl = fpext <2 x float> %17 to <2 x double>
  %i.cm = insertelement <2 x double> poison, double %11, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %15, i64 1
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %i.cn) ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %20 = fptrunc double %19 to float
  %21 = fneg float %20
  %22 = tail call noundef float @llvm.fabs.f32(float %.1.i.i.i34)
  %23 = fpext float %22 to double
  %24 = extractelement <2 x double> %18, i64 1
  %25 = extractelement <2 x double> %i.ck, i64 0
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %23, double %24)
  %27 = fptrunc double %26 to float
  %i.co = fsub float %21, %27                     ; 3 uses
  %i.cp = icmp eq i32 %i.s, 0
  br i1 %i.cp, label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38
  %i.cq = icmp sgt i32 %i.s, 0
  br i1 %i.cq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = fcmp ole float %.1.i.i.i, %.1.i.i.i34
  %i.cs = select i1 %i.cr, float %i.co, float -inf
  br label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.ct = fcmp oge float %.1.i.i.i, %.1.i.i.i34
  %i.cu = select i1 %i.ct, float %i.co, float -inf
  br label %_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread

_ZN7xgboost4tree12IsValidSplitINS0_10TrainParamEdEEbRKT_T0_S6_.exit.thread: ; preds = %bb.a, %bb.b, %bb.u, %bb.v, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38
  %.1 = phi float [ -inf, %bb.a ], [ %i.cu, %bb.v ], [ %i.cs, %bb.u ], [ %i.co, %_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE10CalcWeightINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfiRKS3_RKS8_.exit38 ], [ -inf, %bb.b ]
  ret float %.1
}

declare void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree8ColMaker7Builder21SetNonDefaultPositionERKSt6vectorIiSaIiEEPNS_7DMatrixERKNS_7RegTreeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.xgboost::tree::ScalarTreeView", align 8 ; 7 uses
  %5 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %6 = alloca %"class.xgboost::BatchIterator", align 16 ; 12 uses
  %7 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"class.xgboost::common::Span.265", align 8 ; 10 uses
  %9 = alloca %class.anon.317, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %3)
  %i.b = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not101 = icmp eq ptr %i.b, %i.d
  br i1 %.not101, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.not.i.i = icmp eq ptr %.sroa.074.1, %.sroa.15.1
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = ptrtoint ptr %.sroa.15.1 to i64          ; 2 uses
  %i.g = ptrtoint ptr %.sroa.074.1 to i64         ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 8 uses
  %i.j = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.074.1, ptr %.sroa.15.1, i64 noundef %i.l)
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.b
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.074.1, ptr %.sroa.15.1)
          to label %.preheader.i.i.i unwind label %bb.av

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.sroa.074.0105 = phi ptr [ null, %.lr.ph ], [ %.sroa.074.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 8 uses
  %.sroa.15.0104 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 7 uses
  %.sroa.26.0103 = phi ptr [ null, %.lr.ph ], [ %.sroa.26.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %.sroa.071.0102 = phi ptr [ %i.b, %.lr.ph ], [ %i.am, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.m = load i32, ptr %.sroa.071.0102, align 4, !tbaa !95
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !757
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [20 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !574
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !914
  %i.v = and i32 %i.u, 2147483647                 ; 2 uses
  %.not.i.i38 = icmp eq ptr %.sroa.15.0104, %.sroa.26.0103
  br i1 %.not.i.i38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %.sroa.15.0104, align 4, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.15.0104, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.f:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %.sroa.15.0104 to i64
  %i.y = ptrtoint ptr %.sroa.074.0105 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #36
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #37
          to label %.noexc40 unwind label %.loopexit ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i32 %i.v, ptr %i.ai, align 4, !tbaa !95
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %.sroa.074.0105, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.074.0105, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0105, i64 noundef %i.z) #35
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c
  %.sroa.26.1 = phi ptr [ %.sroa.26.0103, %bb.c ], [ %i.al, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.26.0103, %bb.e ] ; 10 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0104, %bb.c ], [ %i.ak, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.w, %bb.e ] ; 15 uses
  %.sroa.074.1 = phi ptr [ %.sroa.074.0105, %bb.c ], [ %i.ah, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.074.0105, %bb.e ] ; 18 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.071.0102, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c

.preheader.i.i.i:                                 ; preds = %.noexc, %bb.j
  %.sroa.09.0.i.i.i = phi ptr [ %i.an, %bb.j ], [ %.sroa.074.1, %.noexc ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, %.sroa.15.1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i
  %i.ao = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !95 ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !95
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !915

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ar, %.sroa.15.1
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.l
  %i.as = phi i32 [ %i.au, %bb.l ], [ %i.ao, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.at = phi ptr [ %i.ax, %bb.l ], [ %i.ar, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.l ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !95 ; 3 uses
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.aw, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.ax, %.sroa.15.1
  br i1 %.not.i.i41, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !916

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit: ; preds = %bb.l, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.l ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.pre143 = ptrtoint ptr %i.ay to i64
  %.pre145 = sub i64 %.pre143, %i.g               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a
_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #35
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !554
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !592
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !555
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_updater_colmaker.cc() #32 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call noundef ptr @_ZN7xgboost4tree18ColMakerTrainParam11__MANAGER__Ev() ; 0 uses
  %i.c = tail call noundef ptr @_ZN4dmlc8RegistryIN7xgboost14TreeUpdaterRegEE3GetEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !15
  %i.g = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost14TreeUpdaterRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i10.i unwind label %bb.d ; 5 uses

.noexc.i10.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 44, ptr %i.a, align 8, !tbaa !17
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11.i unwind label %bb.e ; 3 uses

.noexc11.i:                                       ; preds = %.noexc.i10.i
  store ptr %i.i, ptr %2, align 8, !tbaa !9
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.i, ptr noundef nonnull align 1 dereferenceable(44) @.str.3, i64 44, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i unwind label %_ZNSt14_Function_baseD2Ev.exit18.i

_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i: ; preds = %.noexc11.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !1001
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !175
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !175  ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEENS0_4tree3$_0EE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.p, align 8, !tbaa !175
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !175
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEENS0_4tree3$_0EE9_M_invokeERKSt9_Any_dataOS5_OS8_", ptr %i.q, align 8, !tbaa !175
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %_ZNSt8functionIFPN7xgboost11TreeUpdaterEPKNS0_7ContextEPKNS0_7ObjInfoEEEC2ERKSA_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  %i.w = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !15
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.d
  br i1 %i.ab, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #35
  br label %__cxx_global_var_init.1.exit

bb.d:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i10.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt14_Function_baseD2Ev.exit18.i:               ; preds = %.noexc11.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.ag, %_ZNSt14_Function_baseD2Ev.exit18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, %bb.d
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i ], [ %i.ae, %bb.d ]
  %i.al = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.d, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn.pn.pn.i

__cxx_global_var_init.1.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  store ptr %i.g, ptr @_ZN7xgboost4treeL32__make_TreeUpdaterReg_ColMaker__E, align 8, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nounwind memory(none) }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !6, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!11, !12, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!10, !14, i64 8}
!19 = !{!20, !22, i64 0}
!20 = !{!"_ZTSSt15_Rb_tree_header", !21, i64 0, !14, i64 32}
!21 = !{!"_ZTSSt18_Rb_tree_node_base", !22, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!22 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!23 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!24 = !{!20, !23, i64 8}
!25 = !{!20, !23, i64 16}
!26 = !{!20, !23, i64 24}
!27 = !{!20, !14, i64 32}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSN7xgboost16XGBoostParameterINS_4tree18ColMakerTrainParamEEE", !30, i64 0}
!30 = !{!"bool", !6, i64 0}
!31 = !{!23, !23, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN7xgboost14TreeUpdaterRegE", !13, i64 0}
!36 = !{!37, !38, i64 8}
!37 = !{!"_ZTSNSt12_Vector_baseIPKN7xgboost14TreeUpdaterRegESaIS3_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p2 _ZTSN7xgboost14TreeUpdaterRegE", !39, i64 0}
!39 = !{!"any p2 pointer", !13, i64 0}
!40 = !{!37, !38, i64 16}
!41 = !{!37, !38, i64 0}
!42 = !{!43, !38, i64 8}
!43 = !{!"_ZTSNSt12_Vector_baseIPN7xgboost14TreeUpdaterRegESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!44 = !{!43, !38, i64 16}
!45 = !{!43, !38, i64 0}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSNSt12_Vector_baseIPN4dmlc9parameter16FieldAccessEntryESaIS3_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p2 _ZTSN4dmlc9parameter16FieldAccessEntryE", !39, i64 0}
!49 = !{!47, !48, i64 0}
!50 = !{!47, !48, i64 16}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTSN4dmlc9parameter16FieldAccessEntryE", !13, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !7, i64 0}
!55 = distinct !{!55, !33}
!56 = !{!21, !23, i64 24}
!57 = !{!21, !23, i64 16}
!58 = distinct !{!58, !33}
!59 = !{!60, !30, i64 133}
!60 = !{!"_ZTSN4dmlc9parameter17FieldEntryNumericINS0_10FieldEntryIfEEfEE", !61, i64 0, !30, i64 132, !30, i64 133, !63, i64 136, !63, i64 140}
!61 = !{!"_ZTSN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIfEEfEE", !62, i64 0, !63, i64 128}
!62 = !{!"_ZTSN4dmlc9parameter16FieldAccessEntryE", !30, i64 8, !14, i64 16, !10, i64 24, !10, i64 56, !10, i64 88, !14, i64 120}
!63 = !{!"float", !6, i64 0}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZN4dmlc16type_name_helperIfE5valueB5cxx11Ev: argument 0"}
!66 = distinct !{!66, !"_ZN4dmlc16type_name_helperIfE5valueB5cxx11Ev"}
!67 = distinct !{!67, !68, !"_ZN4dmlc9type_nameIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv: argument 0"}
!68 = distinct !{!68, !"_ZN4dmlc9type_nameIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv"}
!69 = !{!62, !14, i64 120}
!70 = !{!61, !63, i64 128}
!71 = !{!62, !30, i64 8}
!72 = !{!73, !5, i64 128}
!73 = !{!"_ZTSN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiEE", !62, i64 0, !5, i64 128}
!74 = !{!62, !14, i64 16}
!75 = !{!76, !30, i64 132}
!76 = !{!"_ZTSN4dmlc9parameter17FieldEntryNumericINS0_10FieldEntryIiEEiEE", !73, i64 0, !30, i64 132, !30, i64 133, !5, i64 136, !5, i64 140}
!77 = !{!76, !30, i64 133}
!78 = !{!79, !30, i64 144}
!79 = !{!"_ZTSN4dmlc9parameter10FieldEntryIiEE", !76, i64 0, !30, i64 144, !80, i64 152, !85, i64 200}
!80 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !81, i64 0}
!81 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !82, i64 0}
!82 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !83, i64 0, !20, i64 8}
!83 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !84, i64 0}
!84 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!85 = !{!"_ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !86, i64 0}
!86 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE", !87, i64 0}
!87 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !88, i64 0, !20, i64 8}
!88 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !89, i64 0}
!89 = !{!"_ZTSSt4lessIiE"}
!90 = !{!91, !93}
!91 = distinct !{!91, !92, !"_ZN4dmlc16type_name_helperIiE5valueB5cxx11Ev: argument 0"}
!92 = distinct !{!92, !"_ZN4dmlc16type_name_helperIiE5valueB5cxx11Ev"}
!93 = distinct !{!93, !94, !"_ZN4dmlc9type_nameIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv: argument 0"}
!94 = distinct !{!94, !"_ZN4dmlc9type_nameIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv"}
!95 = !{!5, !5, i64 0}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = !{!99, !5, i64 32}
!99 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !10, i64 0, !5, i64 32}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = !{!103, !103, i64 0}
!103 = !{!"p1 int", !13, i64 0}
!104 = distinct !{!104, !33}
!105 = !{ptr @_ZN4dmlc9parameter16FieldAccessEntryD2Ev}
!106 = !{i8 0, i8 2}
!107 = !{}
!108 = !{!63, !63, i64 0}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!111 = distinct !{!111, !"_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!112 = !{!113, !113, i64 0}
!113 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!114 = !{!60, !30, i64 132}
!115 = !{!60, !63, i64 136}
!116 = !{!60, !63, i64 140}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!119 = distinct !{!119, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!122 = distinct !{!122, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!123 = !{!121, !118}
!124 = !{!125, !12, i64 40}
!125 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !126, i64 56}
!126 = !{!"_ZTSSt6locale", !127, i64 0}
!127 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!128 = !{!125, !12, i64 32}
!129 = !{!130, !14, i64 16}
!130 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !131, i64 24, !132, i64 28, !132, i64 32, !133, i64 40, !134, i64 48, !6, i64 64, !5, i64 192, !135, i64 200, !126, i64 208}
!131 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!132 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!133 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!134 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !14, i64 8}
!135 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!138 = distinct !{!138, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!141 = distinct !{!141, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!142 = !{!140, !137}
!143 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!144 = !{!130, !14, i64 8}
!145 = !{!12, !12, i64 0}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
end_hunk_3
