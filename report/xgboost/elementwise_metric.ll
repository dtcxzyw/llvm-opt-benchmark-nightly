begin_hunk_0_@_ZN7xgboost6metric13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.z unwind label %bb.dz

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn59 = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %i.ci, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %bb.ac

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %.pr230 = load ptr, ptr %24, align 8, !tbaa !38 ; 4 uses
  %.not.i118 = icmp eq ptr %.pr230, null
  br i1 %.not.i118, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr %.pr230, align 8, !tbaa !19 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pr230, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119: ; preds = %bb.ab
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !26
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119
  call void @_ZdlPvm(ptr noundef nonnull %.pr230, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122: ; preds = %_ZN4dmlc11LogCheck_GTIdiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit66, %_ZN4dmlc11LogCheck_GTIdiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit66.thread, %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.co = load double, ptr %22, align 8, !tbaa !94
  %i.cp = load double, ptr %i.bs, align 8, !tbaa !94
  %i.cq = fdiv double %i.co, %i.cp
  %i.cr = load ptr, ptr %23, align 8, !tbaa !117  ; 3 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cr) #18, !inline_history !119
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 56) #35, !inline_history !119
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.dy

bb.ac:                                            ; preds = %bb.z, %bb.w
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.z ], [ %i.cg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %bb.ac ], [ %i.cf, %bb.v ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %common.resume

bb.ae:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit104
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !74 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 9 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %26, ptr noundef nonnull align 8 dereferenceable(25) %i.r, i32 %.sroa.0.0.copyload.i)
  %.sroa.0.0.copyload.i123 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.0.0.copyload.i123)
  %.sroa.0.0.copyload.i124 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 %.sroa.0.0.copyload.i124)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cu, align 8
  %i.cv = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !78
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !81 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.de, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.da, 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.df = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn48 = phi { i64, ptr } [ %.fca.1.insert.i.i, %bb.af ], [ %i.df, %bb.ag ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn48, 0 ; 2 uses
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn48, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !47 ; 2 uses
  store i64 %i.dh, ptr %i.g, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i32 0, ptr %i.h, align 4, !tbaa !73
  %.not.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142

_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.ah
  call void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %.pr234 = load ptr, ptr %27, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %.not245 = icmp eq ptr %.pr234, null
  br i1 %.not245, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142, label %bb.ai

bb.ai:                                            ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.di = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %.noexc125 unwind label %bb.aj

.noexc125:                                        ; preds = %bb.ai
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.di, ptr noundef nonnull @.str.41, i32 noundef 443)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit127 unwind label %bb.aj

_ZN4dmlc15LogMessageFatalC2EPKci.exit127:         ; preds = %.noexc125
  %i.dj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129 unwind label %bb.ak ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.115, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
  %i.dm = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.dn, i64 noundef %i.dp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135 unwind label %bb.ak

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc125, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129, %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.al unwind label %bb.dz

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn50 = phi { ptr, i32 } [ %i.ds, %bb.aj ], [ %i.dt, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.dx

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %.pr235 = load ptr, ptr %27, align 8, !tbaa !38 ; 4 uses
  %.not.i138 = icmp eq ptr %.pr235, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = load ptr, ptr %.pr235, align 8, !tbaa !19 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr235, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139: ; preds = %bb.an
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %.pr235, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.am, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.dz = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 13 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cu, align 8, !noalias !747
  %i.ea = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ec = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !747
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !81, !noalias !747
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

bb.ap:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ee = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !747
  %i.ef = extractvalue { i64, ptr } %i.ee, 1
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit: ; preds = %bb.ao, %bb.ap
  %.pn.i = phi ptr [ %i.ed, %bb.ao ], [ %i.ef, %bb.ap ] ; 2 uses
  %i.eg = load i64, ptr %i.g, align 8, !tbaa !47, !noalias !750 ; 15 uses
  %i.eh = mul i64 %i.eg, %i.dz                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %.sroa.0.0.copyload.i144 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 %.sroa.0.0.copyload.i144)
  %.sroa.0.0.copyload.i.i145 = load i32, ptr %i.cu, align 8
  %i.ej = and i32 %.sroa.0.0.copyload.i.i145, 65535
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.el = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !78
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !81 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.fca.0.insert.i.i146 = insertvalue { i64, ptr } poison, i64 %i.es, 0
  %.fca.1.insert.i.i147 = insertvalue { i64, ptr } %.fca.0.insert.i.i146, ptr %i.eo, 1
  br label %bb.as

bb.ar:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.et = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn52 = phi { i64, ptr } [ %.fca.1.insert.i.i147, %bb.aq ], [ %i.et, %bb.ar ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn52, 0 ; 4 uses
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn52, 1 ; 2 uses
  %.sroa.32195.128.copyload = load i64, ptr %26, align 8 ; 2 uses
  %.sroa.35.128..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.35.128.copyload = load i64, ptr %.sroa.35.128..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.37198.128..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 48
  %.sroa.37198.128.copyload = load ptr, ptr %.sroa.37198.128..sroa_idx, align 8, !tbaa !82 ; 2 uses
  %i.eu = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %.sroa.0.0.copyload.i.i148 = load i32, ptr %i.cu, align 8 ; 2 uses
  %.sroa.0115.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i148 to i16
  %.off.i.i = add i16 %.sroa.0115.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i148
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %15, ptr noundef nonnull align 8 dereferenceable(25) %i.r, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i149 = load i32, ptr %i.cu, align 8
  %i.ev = and i32 %.sroa.0.0.copyload.i.i.i149, 65535
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ex = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ex, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ey = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.au

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.at
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.at
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.av unwind label %bb.aw

common.resume:                                    ; preds = %bb.d, %bb.i, %bb.o, %bb.ad, %bb.dx, %bb.av, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.fa, %bb.av ], [ %.pn59.pn.pn, %bb.ad ], [ %.pn54.pn.pn.pn, %bb.dx ], [ %.pn46, %bb.o ], [ %.pn, %bb.i ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %common.resume

bb.aw:                                            ; preds = %bb.au
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESA_OT_m.exit

bb.ax:                                            ; preds = %bb.as
  %i.fd = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.ct) ; 5 uses
  %i.fe = sext i32 %i.fd to i64                   ; 3 uses
  %i.ff = icmp slt i32 %i.fd, 0
  br i1 %i.ff, label %bb.ay, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.dh

.noexc.i:                                         ; preds = %bb.ay
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.ax
  %.not.i.i.i.i.i = icmp eq i32 %i.fd, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fg = shl nuw nsw i64 %i.fe, 3                ; 6 uses
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc27.i unwind label %bb.dh ; 5 uses

.noexc27.i:                                       ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fh, i8 0, i64 %i.fg, i1 false), !tbaa !94
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe ; 2 uses
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc36.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit53.thread.i ; 4 uses

.noexc36.i:                                       ; preds = %.noexc27.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fj, i8 0, i64 %i.fg, i1 false), !tbaa !94
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fe
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  %i.fn = ptrtoint ptr %i.fl to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i:        ; preds = %.noexc36.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i.i146.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fk, %.noexc36.i ] ; 2 uses
  %.sroa.13133.0143.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fi, %.noexc36.i ] ; 2 uses
  %.sroa.0127.0139.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fh, %.noexc36.i ] ; 11 uses
  %.sroa.0.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fj, %.noexc36.i ] ; 12 uses
  %.sroa.13.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fn, %.noexc36.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fm, %.noexc36.i ] ; 2 uses
  %i.fo = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.r)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.di

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i
  %i.fp = mul i64 %i.fo, %i.eu                    ; 3 uses
  %i.fq = uitofp i64 %i.fp to double
  %i.fr = fmul nnan double %i.fq, f0x3F40000000000000
  %i.fs = call double @llvm.ceil.f64(double %i.fr)
  %i.ft = fptoui double %i.fs to i64              ; 4 uses
  %i.fu = icmp eq i32 %i.fd, 1
  br i1 %i.fu, label %.preheader.i.i.i.i, label %bb.bp

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.preheader.i

.lr.ph108.i.i.i.preheader.i:                      ; preds = %.preheader.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = trunc i64 %i.eg to i32                  ; 5 uses
  %33 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fw)
  %.not.i7.i.i86.i = icmp samesign ult i32 %33, 2
  %34 = add i32 %i.fw, -1                         ; 2 uses
  %35 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %34)
  %i.fx = trunc i64 %i.dz to i32                  ; 5 uses
  %36 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fx)
  %.not.1.i9.i.i89.i.a = icmp samesign ult i32 %36, 2
  %37 = add i32 %i.fx, -1                         ; 2 uses
  %38 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %37)
  %i.fy = add i64 %i.eg, -1                       ; 2 uses
  %i.fz = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ga = insertelement <2 x i64> %i.fz, i64 %i.fy, i64 1
  %i.gb = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ga) ; 2 uses
  %i.gc = extractelement <2 x i64> %i.gb, i64 0
  %.not.i.i.i102.i = icmp samesign ult i64 %i.gc, 2
  %i.gd = add i64 %i.dz, -1
  %i.ge = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.gf = shufflevector <2 x i64> %i.ge, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gg = add <2 x i64> %i.gf, <i64 0, i64 -1>
  %i.gh = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gg) ; 2 uses
  %i.gi = extractelement <2 x i64> %i.gh, i64 0
  %.not.1.i.i.i105.i = icmp samesign ult i64 %i.gi, 2
  %i.gj = icmp eq i64 %.sroa.01.0, 0
  %i.gk = extractelement <2 x i64> %i.gb, i64 1
  %i.gl = extractelement <2 x i64> %i.gh, i64 1
  br label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.noexc40.i, %.lr.ph108.i.i.i.preheader.i
  %.0107.i.i.i.i = phi i64 [ %i.ix, %.noexc40.i ], [ 0, %.lr.ph108.i.i.i.preheader.i ] ; 2 uses
  %i.gm = shl i64 %.0107.i.i.i.i, 11              ; 3 uses
  %i.gn = sub i64 %i.fp, %i.gm
  %.sroa.speculated.i59.i = call i64 @llvm.umin.i64(i64 %i.gn, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.go = add i64 %.sroa.speculated.i59.i, %i.gm
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.gm, i64 noundef %i.go)
          to label %.noexc82.i unwind label %.loopexit.i

.noexc82.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %.val.i60.i = load i64, ptr %4, align 8, !tbaa !193 ; 2 uses
  %.val5.i61.i = load i64, ptr %i.fv, align 8, !tbaa !195 ; 2 uses
  %i.gp = icmp ult i64 %.val.i60.i, %.val5.i61.i
  br i1 %i.gp, label %.lr.ph.i.i64.i, label %.noexc40.i

.lr.ph.i.i64.i:                                   ; preds = %.noexc82.i, %.noexc83.i
  %.0181.i.i67.i = phi i64 [ %i.ip, %.noexc83.i ], [ %.val.i60.i, %.noexc82.i ] ; 7 uses
  %i.gq = phi <2 x double> [ %i.io, %.noexc83.i ], [ zeroinitializer, %.noexc82.i ]
  %i.gr = icmp ugt i64 %.0181.i.i67.i, 4294967295
  br i1 %i.gr, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph.i.i64.i
  br i1 %.not.i.i.i102.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = udiv i64 %.0181.i.i67.i, %i.eg          ; 2 uses
  %i.gt = mul i64 %i.gs, %i.eg                    ; 0 uses
  %.recomposed = urem i64 %.0181.i.i67.i, %i.eg
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.gu = and i64 %.0181.i.i67.i, %i.fy
  %i.gv = lshr i64 %.0181.i.i67.i, %i.gk
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.0.i.i.i103.i = phi i64 [ %i.gu, %bb.bc ], [ %.recomposed, %bb.bb ] ; 2 uses
  %.1.i.i.i104.i = phi i64 [ %i.gv, %bb.bc ], [ %i.gs, %bb.bb ] ; 4 uses
  br i1 %.not.1.i.i.i105.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gw = udiv i64 %.1.i.i.i104.i, %i.dz          ; 2 uses
  %i.gx = mul i64 %i.gw, %i.dz                    ; 0 uses
  %.recomposed333 = urem i64 %.1.i.i.i104.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bf:                                            ; preds = %bb.bd
  %i.gy = and i64 %.1.i.i.i104.i, %i.gd
  %i.gz = lshr i64 %.1.i.i.i104.i, %i.gl
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bg:                                            ; preds = %.lr.ph.i.i64.i
  %i.ha = trunc nuw i64 %.0181.i.i67.i to i32     ; 4 uses
  br i1 %.not.i7.i.i86.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hb = udiv i32 %i.ha, %i.fw                   ; 2 uses
  %i.hc = mul i32 %i.hb, %i.fw                    ; 0 uses
  %.recomposed334 = urem i32 %i.ha, %i.fw
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hd = and i32 %34, %i.ha
  %i.he = lshr i32 %i.ha, %35
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.7.0.in.i.i.i87.i = phi i32 [ %i.hd, %bb.bi ], [ %.recomposed334, %bb.bh ]
  %.1.i8.i.i88.i = phi i32 [ %i.he, %bb.bi ], [ %i.hb, %bb.bh ] ; 4 uses
  br i1 %.not.1.i9.i.i89.i.a, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hf = udiv i32 %.1.i8.i.i88.i, %i.fx          ; 2 uses
  %i.hg = mul i32 %i.hf, %i.fx                    ; 0 uses
  %.recomposed335 = urem i32 %.1.i8.i.i88.i, %i.fx
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

bb.bl:                                            ; preds = %bb.bj
  %i.hh = and i32 %.1.i8.i.i88.i, %37
  %i.hi = lshr i32 %.1.i8.i.i88.i, %38
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i: ; preds = %bb.bl, %bb.bk
  %.sroa.4.0.in.i.i.i91.i = phi i32 [ %i.hh, %bb.bl ], [ %.recomposed335, %bb.bk ]
  %.1.1.i10.i.i92.i = phi i32 [ %i.hi, %bb.bl ], [ %i.hf, %bb.bk ]
  %.sroa.4.0.i11.i.i93.i = zext i32 %.sroa.4.0.in.i.i.i91.i to i64
  %.sroa.7.0.i12.i.i94.i = zext i32 %.sroa.7.0.in.i.i.i87.i to i64
  %i.hj = zext i32 %.1.1.i10.i.i92.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i, %bb.bf, %bb.be
  %.sroa.7.0.i12.sink.i.i96.i = phi i64 [ %.sroa.7.0.i12.i.i94.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.sroa.7.0.i.i.i103.i, %bb.be ], [ %.sroa.7.0.i.i.i103.i, %bb.bf ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i97.i = phi i64 [ %.sroa.4.0.i11.i.i93.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.recomposed333, %bb.be ], [ %i.gy, %bb.bf ] ; 3 uses
  %.sink.i.i98.i = phi i64 [ %i.hj, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %i.gw, %bb.be ], [ %i.gz, %bb.bf ] ; 4 uses
  %i.hk = icmp ult i64 %.sroa.4.0.i11.sink.i.i97.i, %.sroa.03.0
  br i1 %i.hk, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i, label %bb.bm, !prof !189

bb.bm:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  call void @_ZSt9terminatev() #36, !noalias !753
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i97.i
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !83, !noalias !753 ; 2 uses
  br i1 %i.gj, label %.noexc83.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %i.hn = icmp ult i64 %.sink.i.i98.i, %.sroa.01.0
  br i1 %i.hn, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, label %bb.bo, !prof !189

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt9terminatev() #36, !noalias !753
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i: ; preds = %bb.bn
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i98.i
  %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i = load float, ptr %i.ho, align 4, !tbaa !83, !noalias !753
  br label %.noexc83.i

.noexc83.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %.in.i.i101.i.sroa.speculated = phi float [ %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i ] ; 2 uses
  %i.hp = mul i64 %.sink.i.i98.i, %i.eh
  %i.hq = mul i64 %.sroa.4.0.i11.sink.i.i97.i, %i.eg
  %i.hr = getelementptr [4 x i8], ptr %.pn.i, i64 %i.hp
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %i.hq
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %.sroa.7.0.i12.sink.i.i96.i
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !83, !noalias !753
  %i.hv = mul i64 %.sink.i.i98.i, %.sroa.32195.128.copyload
  %i.hw = mul i64 %.sroa.7.0.i12.sink.i.i96.i, %.sroa.35.128.copyload
  %i.hx = getelementptr [4 x i8], ptr %.sroa.37198.128.copyload, i64 %i.hv
  %i.hy = getelementptr [4 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !83, !noalias !753
  %i.ia = fsub float %i.hz, %i.hu                 ; 3 uses
  %i.ib = fcmp oge float %i.ia, 0.000000e+00
  %i.ic = uitofp i1 %i.ib to float                ; 2 uses
  %i.id = fmul float %i.hm, %i.ic
  %i.ie = fsub float 1.000000e+00, %i.hm
  %i.if = fsub nnan float 1.000000e+00, %i.ic
  %i.ig = fmul float %i.ie, %i.if
  %i.ih = fneg float %i.ia
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = call noundef float @llvm.fmuladd.f32(float %i.id, float %i.ia, float %i.ii)
  %i.ik = fmul float %.in.i.i101.i.sroa.speculated, %i.ij
  %i.il = insertelement <2 x float> poison, float %.in.i.i101.i.sroa.speculated, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.ik, i64 1
  %i.in = fpext <2 x float> %i.im to <2 x double>
  %i.io = fadd <2 x double> %i.gq, %i.in          ; 2 uses
  %i.ip = add i64 %.0181.i.i67.i, 1               ; 2 uses
  %exitcond.not.i.i77.i = icmp eq i64 %i.ip, %.val5.i61.i
  br i1 %exitcond.not.i.i77.i, label %.noexc40.i, label %.lr.ph.i.i64.i, !llvm.loop !756

.noexc40.i:                                       ; preds = %.noexc83.i, %.noexc82.i
  %i.iq = phi <2 x double> [ zeroinitializer, %.noexc82.i ], [ %i.io, %.noexc83.i ] ; 2 uses
  %i.ir = load double, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.is = extractelement <2 x double> %i.iq, i64 1
  %i.it = fadd double %i.is, %i.ir
  store double %i.it, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.iu = load double, ptr %.sroa.0.0.i, align 8, !tbaa !94
  %i.iv = extractelement <2 x double> %i.iq, i64 0
  %i.iw = fadd double %i.iv, %i.iu
  store double %i.iw, ptr %.sroa.0.0.i, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ix = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.ix, %i.ft
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !757

bb.bp:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.fd, ptr %i.a, align 4, !tbaa !73, !noalias !758
  store i32 1, ptr %i.b, align 4, !tbaa !73, !noalias !758
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.bp
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.iy = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc.i.i.i.i unwind label %bb.br

.noexc.i.i.i.i:                                   ; preds = %bb.bq
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.iy, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.br

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.iz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.bs ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.jc = load ptr, ptr %11, align 8, !tbaa !38   ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !19
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !15
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef %i.jd, i64 noundef %i.jf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bu unwind label %bb.br

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.bq
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bt unwind label %bb.de

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ji, %bb.br ], [ %i.jj, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body.i

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %.pr82.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jk = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bv
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !26
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.bu, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jr = trunc i64 %i.eg to i32                  ; 5 uses
  %39 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jr)
  %.not.i7.i.i.i = icmp samesign ult i32 %39, 2
  %40 = add i32 %i.jr, -1                         ; 2 uses
  %41 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %40)
  %i.js = trunc i64 %i.dz to i32                  ; 5 uses
  %42 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.js)
  %.not.1.i9.i.i.i.a = icmp samesign ult i32 %42, 2
  %43 = add i32 %i.js, -1                         ; 2 uses
  %44 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %43)
  %i.jt = add i64 %i.eg, -1                       ; 2 uses
  %i.ju = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.jv = insertelement <2 x i64> %i.ju, i64 %i.jt, i64 1
  %i.jw = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.jv) ; 2 uses
  %i.jx = extractelement <2 x i64> %i.jw, i64 0
  %.not.i.i.i85.i = icmp samesign ult i64 %i.jx, 2
  %i.jy = add i64 %i.dz, -1
  %i.jz = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.ka = shufflevector <2 x i64> %i.jz, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.kb = add <2 x i64> %i.ka, <i64 0, i64 -1>
  %i.kc = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.kb) ; 2 uses
  %i.kd = extractelement <2 x i64> %i.kc, i64 0
  %.not.1.i.i.i.i = icmp samesign ult i64 %i.kd, 2
  %i.ke = icmp eq i64 %.sroa.01.0, 0
  %i.kf = extractelement <2 x i64> %i.jw, i64 1
  %i.kg = extractelement <2 x i64> %i.kc, i64 1
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06199.i.i.i.i = phi i64 [ %i.no, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  %i.kh = shl i64 %.06199.i.i.i.i, 11             ; 3 uses
  %i.ki = sub i64 %i.fp, %i.kh
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ki, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.kj = add i64 %.sroa.speculated.i.i, %i.kh
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.kh, i64 noundef %i.kj)
          to label %.noexc57.i unwind label %bb.cl

.noexc57.i:                                       ; preds = %.lr.ph100.i.i.i.i
  %.val.i.i = load i64, ptr %5, align 8, !tbaa !193 ; 2 uses
  %.val5.i.i = load i64, ptr %i.jq, align 8, !tbaa !195 ; 2 uses
  %i.kk = icmp ult i64 %.val.i.i, %.val5.i.i
  br i1 %i.kk, label %.lr.ph.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc57.i, %.noexc58.i
  %.0181.i.i.i = phi i64 [ %i.mk, %.noexc58.i ], [ %.val.i.i, %.noexc57.i ] ; 7 uses
  %i.kl = phi <2 x double> [ %i.mj, %.noexc58.i ], [ zeroinitializer, %.noexc57.i ]
  %i.km = icmp ugt i64 %.0181.i.i.i, 4294967295
  br i1 %i.km, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not.i.i.i85.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kn = udiv i64 %.0181.i.i.i, %i.eg            ; 2 uses
  %i.ko = mul i64 %i.kn, %i.eg                    ; 0 uses
  %.recomposed336 = urem i64 %.0181.i.i.i, %i.eg
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.kp = and i64 %.0181.i.i.i, %i.jt
  %i.kq = lshr i64 %.0181.i.i.i, %i.kf
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.kp, %bb.by ], [ %.recomposed336, %bb.bx ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %i.kq, %bb.by ], [ %i.kn, %bb.bx ] ; 4 uses
  br i1 %.not.1.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kr = udiv i64 %.1.i.i.i.i, %i.dz             ; 2 uses
  %i.ks = mul i64 %i.kr, %i.dz                    ; 0 uses
  %.recomposed337 = urem i64 %.1.i.i.i.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.kt = and i64 %.1.i.i.i.i, %i.jy
  %i.ku = lshr i64 %.1.i.i.i.i, %i.kg
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.kv = trunc nuw i64 %.0181.i.i.i to i32       ; 4 uses
  br i1 %.not.i7.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kw = udiv i32 %i.kv, %i.jr                   ; 2 uses
  %i.kx = mul i32 %i.kw, %i.jr                    ; 0 uses
  %.recomposed338 = urem i32 %i.kv, %i.jr
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ky = and i32 %40, %i.kv
  %i.kz = lshr i32 %i.kv, %41
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sroa.7.0.in.i.i.i.i = phi i32 [ %i.ky, %bb.ce ], [ %.recomposed338, %bb.cd ]
  %.1.i8.i.i.i = phi i32 [ %i.kz, %bb.ce ], [ %i.kw, %bb.cd ] ; 4 uses
  br i1 %.not.1.i9.i.i.i.a, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.la = udiv i32 %.1.i8.i.i.i, %i.js            ; 2 uses
  %i.lb = mul i32 %i.la, %i.js                    ; 0 uses
  %.recomposed339 = urem i32 %.1.i8.i.i.i, %i.js
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.lc = and i32 %.1.i8.i.i.i, %43
  %i.ld = lshr i32 %.1.i8.i.i.i, %44
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i: ; preds = %bb.ch, %bb.cg
  %.sroa.4.0.in.i.i.i.i = phi i32 [ %i.lc, %bb.ch ], [ %.recomposed339, %bb.cg ]
  %.1.1.i10.i.i.i = phi i32 [ %i.ld, %bb.ch ], [ %i.la, %bb.cg ]
  %.sroa.4.0.i11.i.i.i = zext i32 %.sroa.4.0.in.i.i.i.i to i64
  %.sroa.7.0.i12.i.i.i = zext i32 %.sroa.7.0.in.i.i.i.i to i64
  %i.le = zext i32 %.1.1.i10.i.i.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i, %bb.cb, %bb.ca
  %.sroa.7.0.i12.sink.i.i.i = phi i64 [ %.sroa.7.0.i12.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %.sroa.7.0.i.i.i.i, %bb.cb ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i.i = phi i64 [ %.sroa.4.0.i11.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %.recomposed337, %bb.ca ], [ %i.kt, %bb.cb ] ; 3 uses
  %.sink.i.i.i = phi i64 [ %i.le, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %i.kr, %bb.ca ], [ %i.ku, %bb.cb ] ; 4 uses
  %i.lf = icmp ult i64 %.sroa.4.0.i11.sink.i.i.i, %.sroa.03.0
  br i1 %i.lf, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, label %bb.ci, !prof !189

bb.ci:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  call void @_ZSt9terminatev() #36, !noalias !761
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i.i
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !83, !noalias !761 ; 2 uses
  br i1 %i.ke, label %.noexc58.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %i.li = icmp ult i64 %.sink.i.i.i, %.sroa.01.0
  br i1 %i.li, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, label %bb.ck, !prof !189

bb.ck:                                            ; preds = %bb.cj
  call void @_ZSt9terminatev() #36, !noalias !761
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %bb.cj
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i.i
  %.in.i.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i = load float, ptr %i.lj, align 4, !tbaa !83, !noalias !761
  br label %.noexc58.i

.noexc58.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.in.i.i.i.sroa.speculated = phi float [ %.in.i.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ] ; 2 uses
  %i.lk = mul i64 %.sink.i.i.i, %i.eh
  %i.ll = mul i64 %.sroa.4.0.i11.sink.i.i.i, %i.eg
  %i.lm = getelementptr [4 x i8], ptr %.pn.i, i64 %i.lk
  %i.ln = getelementptr [4 x i8], ptr %i.lm, i64 %i.ll
  %i.lo = getelementptr [4 x i8], ptr %i.ln, i64 %.sroa.7.0.i12.sink.i.i.i
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !83, !noalias !761
  %i.lq = mul i64 %.sink.i.i.i, %.sroa.32195.128.copyload
  %i.lr = mul i64 %.sroa.7.0.i12.sink.i.i.i, %.sroa.35.128.copyload
  %i.ls = getelementptr [4 x i8], ptr %.sroa.37198.128.copyload, i64 %i.lq
  %i.lt = getelementptr [4 x i8], ptr %i.ls, i64 %i.lr
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !83, !noalias !761
  %i.lv = fsub float %i.lu, %i.lp                 ; 3 uses
  %i.lw = fcmp oge float %i.lv, 0.000000e+00
  %i.lx = uitofp i1 %i.lw to float                ; 2 uses
  %i.ly = fmul float %i.lh, %i.lx
  %i.lz = fsub float 1.000000e+00, %i.lh
  %i.ma = fsub nnan float 1.000000e+00, %i.lx
  %i.mb = fmul float %i.lz, %i.ma
  %i.mc = fneg float %i.lv
  %i.md = fmul float %i.mb, %i.mc
  %i.me = call noundef float @llvm.fmuladd.f32(float %i.ly, float %i.lv, float %i.md)
  %i.mf = fmul float %.in.i.i.i.sroa.speculated, %i.me
  %i.mg = insertelement <2 x float> poison, float %.in.i.i.i.sroa.speculated, i64 0
  %i.mh = insertelement <2 x float> %i.mg, float %i.mf, i64 1
  %i.mi = fpext <2 x float> %i.mh to <2 x double>
  %i.mj = fadd <2 x double> %i.kl, %i.mi          ; 2 uses
  %i.mk = add i64 %.0181.i.i.i, 1                 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.mk, %.val5.i.i
  br i1 %exitcond.not.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !756

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i: ; preds = %.noexc58.i, %.noexc57.i
  %i.ml = phi <2 x double> [ zeroinitializer, %.noexc57.i ], [ %i.mj, %.noexc58.i ] ; 2 uses
  %i.mm = load double, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.mn = extractelement <2 x double> %i.ml, i64 1
  %i.mo = fadd double %i.mn, %i.mm
  store double %i.mo, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.mp = load double, ptr %.sroa.0.0.i, align 8, !tbaa !94
  %i.mq = extractelement <2 x double> %i.ml, i64 0
  %i.mr = fadd double %i.mq, %i.mp
  store double %i.mr, ptr %.sroa.0.0.i, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i

bb.cl:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.ms = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0      ; 2 uses
  %i.mu = extractvalue { ptr, i32 } %i.ms, 1      ; 2 uses
  %i.mv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.mw = icmp eq i32 %i.mu, %i.mv
  br i1 %i.mw, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.mx = call ptr @__cxa_begin_catch(ptr %i.mt) #18 ; 0 uses
  %i.my = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.jp) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.my, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.my) #33
          to label %.noexc.i.i.i unwind label %bb.cw

.noexc.i.i.i:                                     ; preds = %bb.cn
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.cm
  %i.mz = load ptr, ptr %13, align 8, !tbaa !105
  %.not22.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not22.i.i.i, label %bb.co, label %.sink.split.i.i.i

bb.co:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.na = load ptr, ptr %9, align 8, !tbaa !105
  store ptr null, ptr %9, align 8, !tbaa !105
  %i.nb = load ptr, ptr %13, align 8, !tbaa !105  ; 2 uses
  store ptr %i.nb, ptr %7, align 8, !tbaa !105
  store ptr %i.na, ptr %13, align 8, !tbaa !105
  %.not.i.i9.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i9.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i: ; preds = %bb.co
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %.pr.i.i.i = load ptr, ptr %9, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i4.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.cp, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.sink.split.i.i.i

bb.cq:                                            ; preds = %bb.cl
  %i.nc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.nd = icmp eq i32 %i.mu, %i.nc
  br i1 %i.nd, label %bb.cr, label %.body.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.ne = call ptr @__cxa_begin_catch(ptr %i.mt) #18 ; 0 uses
  %i.nf = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.jp) #18 ; 2 uses
  %.not.i.i10.i.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not.i.i10.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.nf) #33
          to label %.noexc11.i.i.i unwind label %bb.cv

.noexc11.i.i.i:                                   ; preds = %bb.cs
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i:  ; preds = %bb.cr
  %i.ng = load ptr, ptr %13, align 8, !tbaa !105
  %.not.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i, label %bb.ct, label %.sink.split.i.i.i

bb.ct:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.nh = load ptr, ptr %8, align 8, !tbaa !105
  store ptr null, ptr %8, align 8, !tbaa !105
  %i.ni = load ptr, ptr %13, align 8, !tbaa !105  ; 2 uses
  store ptr %i.ni, ptr %6, align 8, !tbaa !105
  store ptr %i.nh, ptr %13, align 8, !tbaa !105
  %.not.i.i13.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i13.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i: ; preds = %bb.ct
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %.pr20.i.i.i = load ptr, ptr %8, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not.i15.i.i.i = icmp eq ptr %.pr20.i.i.i, null
  br i1 %.not.i15.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i: ; preds = %bb.cu, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.sink.split.i.i.i

bb.cv:                                            ; preds = %bb.cs
  %i.nj = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN7xgboost6metric14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.z unwind label %bb.dz

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn59 = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %i.ci, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %bb.ac

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %.pr230 = load ptr, ptr %24, align 8, !tbaa !38 ; 4 uses
  %.not.i118 = icmp eq ptr %.pr230, null
  br i1 %.not.i118, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr %.pr230, align 8, !tbaa !19 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pr230, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119: ; preds = %bb.ab
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !26
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119
  call void @_ZdlPvm(ptr noundef nonnull %.pr230, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122: ; preds = %_ZN4dmlc11LogCheck_GTIdiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit66, %_ZN4dmlc11LogCheck_GTIdiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit66.thread, %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.co = load double, ptr %22, align 8, !tbaa !94
  %i.cp = load double, ptr %i.bs, align 8, !tbaa !94
  %i.cq = fdiv double %i.co, %i.cp
  %i.cr = load ptr, ptr %23, align 8, !tbaa !117  ; 3 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cr) #18, !inline_history !119
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 56) #35, !inline_history !119
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit122, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.dy

bb.ac:                                            ; preds = %bb.z, %bb.w
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.z ], [ %i.cg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %bb.ac ], [ %i.cf, %bb.v ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %common.resume

bb.ae:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit104
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !74 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 9 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %26, ptr noundef nonnull align 8 dereferenceable(25) %i.r, i32 %.sroa.0.0.copyload.i)
  %.sroa.0.0.copyload.i123 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.0.0.copyload.i123)
  %.sroa.0.0.copyload.i124 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 %.sroa.0.0.copyload.i124)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cu, align 8
  %i.cv = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !78
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !81 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.de, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.da, 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.df = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn48 = phi { i64, ptr } [ %.fca.1.insert.i.i, %bb.af ], [ %i.df, %bb.ag ] ; 2 uses
  %.sroa.03.0 = extractvalue { i64, ptr } %.pn48, 0 ; 2 uses
  %.sroa.6.0 = extractvalue { i64, ptr } %.pn48, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !47 ; 2 uses
  store i64 %i.dh, ptr %i.g, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i32 0, ptr %i.h, align 4, !tbaa !73
  %.not.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142

_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.ah
  call void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %.pr234 = load ptr, ptr %27, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %.not245 = icmp eq ptr %.pr234, null
  br i1 %.not245, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142, label %bb.ai

bb.ai:                                            ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.di = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %.noexc125 unwind label %bb.aj

.noexc125:                                        ; preds = %bb.ai
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.di, ptr noundef nonnull @.str.41, i32 noundef 530)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit127 unwind label %bb.aj

_ZN4dmlc15LogMessageFatalC2EPKci.exit127:         ; preds = %.noexc125
  %i.dj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129 unwind label %bb.ak ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.115, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
  %i.dm = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.dn, i64 noundef %i.dp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135 unwind label %bb.ak

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc125, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit135, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit129, %_ZN4dmlc15LogMessageFatalC2EPKci.exit127
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.al unwind label %bb.dz

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn50 = phi { ptr, i32 } [ %i.ds, %bb.aj ], [ %i.dt, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.dx

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %.pr235 = load ptr, ptr %27, align 8, !tbaa !38 ; 4 uses
  %.not.i138 = icmp eq ptr %.pr235, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = load ptr, ptr %.pr235, align 8, !tbaa !19 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr235, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139: ; preds = %bb.an
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %.pr235, i64 noundef 32) #35
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.am, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.dz = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 13 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cu, align 8, !noalias !837
  %i.ea = and i32 %.sroa.0.0.copyload.i.i.i, 65535
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ec = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !837
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !81, !noalias !837
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

bb.ap:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit142
  %i.ee = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !837
  %i.ef = extractvalue { i64, ptr } %i.ee, 1
  br label %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit

_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit: ; preds = %bb.ao, %bb.ap
  %.pn.i = phi ptr [ %i.ed, %bb.ao ], [ %i.ef, %bb.ap ] ; 2 uses
  %i.eg = load i64, ptr %i.g, align 8, !tbaa !47, !noalias !840 ; 15 uses
  %i.eh = mul i64 %i.eg, %i.dz                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %.sroa.0.0.copyload.i144 = load i32, ptr %i.cu, align 8
  call void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 %.sroa.0.0.copyload.i144)
  %.sroa.0.0.copyload.i.i145 = load i32, ptr %i.cu, align 8
  %i.ej = and i32 %.sroa.0.0.copyload.i.i145, 65535
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.el = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !78
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !81 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.fca.0.insert.i.i146 = insertvalue { i64, ptr } poison, i64 %i.es, 0
  %.fca.1.insert.i.i147 = insertvalue { i64, ptr } %.fca.0.insert.i.i146, ptr %i.eo, 1
  br label %bb.as

bb.ar:                                            ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJmmRmEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_.exit
  %i.et = call { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn52 = phi { i64, ptr } [ %.fca.1.insert.i.i147, %bb.aq ], [ %i.et, %bb.ar ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, ptr } %.pn52, 0 ; 4 uses
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn52, 1 ; 2 uses
  %.sroa.19190.88.copyload = load i64, ptr %26, align 8 ; 2 uses
  %.sroa.22.88..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.22.88.copyload = load i64, ptr %.sroa.22.88..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.24193.88..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 48
  %.sroa.24193.88.copyload = load ptr, ptr %.sroa.24193.88..sroa_idx, align 8, !tbaa !82 ; 2 uses
  %i.eu = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %.sroa.0.0.copyload.i.i148 = load i32, ptr %i.cu, align 8 ; 2 uses
  %.sroa.0115.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i148 to i16
  %.off.i.i = add i16 %.sroa.0115.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  %spec.select.i = select i1 %switch.i.i, i32 -65536, i32 %.sroa.0.0.copyload.i.i148
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %15, ptr noundef nonnull align 8 dereferenceable(25) %i.r, i32 %spec.select.i)
  %.sroa.0.0.copyload.i.i.i149 = load i32, ptr %i.cu, align 8
  %i.ev = and i32 %.sroa.0.0.copyload.i.i.i149, 65535
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ex = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ex, ptr noundef nonnull @.str.72, i32 noundef 187)
  %i.ey = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.au

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.at
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.73, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit.i unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.at
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.av unwind label %bb.aw

common.resume:                                    ; preds = %bb.d, %bb.i, %bb.o, %bb.ad, %bb.dx, %bb.av, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit55.i ], [ %i.fa, %bb.av ], [ %.pn59.pn.pn, %bb.ad ], [ %.pn54.pn.pn.pn, %bb.dx ], [ %.pn46, %bb.o ], [ %.pn, %bb.i ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %common.resume

bb.aw:                                            ; preds = %bb.au
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #36
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit.i:    ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %_ZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESA_OT_m.exit

bb.ax:                                            ; preds = %bb.as
  %i.fd = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.ct) ; 5 uses
  %i.fe = sext i32 %i.fd to i64                   ; 3 uses
  %i.ff = icmp slt i32 %i.fd, 0
  br i1 %i.ff, label %bb.ay, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #33
          to label %.noexc.i unwind label %bb.dh

.noexc.i:                                         ; preds = %bb.ay
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.ax
  %.not.i.i.i.i.i = icmp eq i32 %i.fd, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fg = shl nuw nsw i64 %i.fe, 3                ; 6 uses
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc27.i unwind label %bb.dh ; 5 uses

.noexc27.i:                                       ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fh, i8 0, i64 %i.fg, i1 false), !tbaa !94
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe ; 2 uses
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #34
          to label %.noexc36.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit53.thread.i ; 4 uses

.noexc36.i:                                       ; preds = %.noexc27.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fj, i8 0, i64 %i.fg, i1 false), !tbaa !94
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fe
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  %i.fn = ptrtoint ptr %i.fl to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i:        ; preds = %.noexc36.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i.i146.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fk, %.noexc36.i ] ; 2 uses
  %.sroa.13133.0143.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fi, %.noexc36.i ] ; 2 uses
  %.sroa.0127.0139.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fh, %.noexc36.i ] ; 11 uses
  %.sroa.0.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fj, %.noexc36.i ] ; 12 uses
  %.sroa.13.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fn, %.noexc36.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fm, %.noexc36.i ] ; 2 uses
  %i.fo = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.r)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %bb.di

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i
  %i.fp = mul i64 %i.fo, %i.eu                    ; 3 uses
  %i.fq = uitofp i64 %i.fp to double
  %i.fr = fmul nnan double %i.fq, f0x3F40000000000000
  %i.fs = call double @llvm.ceil.f64(double %i.fr)
  %i.ft = fptoui double %i.fs to i64              ; 4 uses
  %i.fu = icmp eq i32 %i.fd, 1
  br i1 %i.fu, label %.preheader.i.i.i.i, label %bb.bp

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not115.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not115.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.preheader.i

.lr.ph108.i.i.i.preheader.i:                      ; preds = %.preheader.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = trunc i64 %i.eg to i32                  ; 5 uses
  %33 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fw)
  %.not.i7.i.i86.i = icmp samesign ult i32 %33, 2
  %34 = add i32 %i.fw, -1                         ; 2 uses
  %35 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %34)
  %i.fx = trunc i64 %i.dz to i32                  ; 5 uses
  %36 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fx)
  %.not.1.i9.i.i89.i.a = icmp samesign ult i32 %36, 2
  %37 = add i32 %i.fx, -1                         ; 2 uses
  %38 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %37)
  %i.fy = add i64 %i.eg, -1                       ; 2 uses
  %i.fz = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ga = insertelement <2 x i64> %i.fz, i64 %i.fy, i64 1
  %i.gb = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ga) ; 2 uses
  %i.gc = extractelement <2 x i64> %i.gb, i64 0
  %.not.i.i.i102.i = icmp samesign ult i64 %i.gc, 2
  %i.gd = add i64 %i.dz, -1
  %i.ge = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.gf = shufflevector <2 x i64> %i.ge, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gg = add <2 x i64> %i.gf, <i64 0, i64 -1>
  %i.gh = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gg) ; 2 uses
  %i.gi = extractelement <2 x i64> %i.gh, i64 0
  %.not.1.i.i.i105.i = icmp samesign ult i64 %i.gi, 2
  %i.gj = icmp eq i64 %.sroa.01.0, 0
  %i.gk = extractelement <2 x i64> %i.gb, i64 1
  %i.gl = extractelement <2 x i64> %i.gh, i64 1
  br label %.lr.ph108.i.i.i.i

.lr.ph108.i.i.i.i:                                ; preds = %.noexc40.i, %.lr.ph108.i.i.i.preheader.i
  %.0107.i.i.i.i = phi i64 [ %i.it, %.noexc40.i ], [ 0, %.lr.ph108.i.i.i.preheader.i ] ; 2 uses
  %i.gm = shl i64 %.0107.i.i.i.i, 11              ; 3 uses
  %i.gn = sub i64 %i.fp, %i.gm
  %.sroa.speculated.i59.i = call i64 @llvm.umin.i64(i64 %i.gn, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.go = add i64 %.sroa.speculated.i59.i, %i.gm
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.gm, i64 noundef %i.go)
          to label %.noexc82.i unwind label %.loopexit.i

.noexc82.i:                                       ; preds = %.lr.ph108.i.i.i.i
  %.val.i60.i = load i64, ptr %4, align 8, !tbaa !193 ; 2 uses
  %.val5.i61.i = load i64, ptr %i.fv, align 8, !tbaa !195 ; 2 uses
  %i.gp = icmp ult i64 %.val.i60.i, %.val5.i61.i
  br i1 %i.gp, label %.lr.ph.i.i64.i, label %.noexc40.i

.lr.ph.i.i64.i:                                   ; preds = %.noexc82.i, %.noexc83.i
  %.0181.i.i67.i = phi i64 [ %i.il, %.noexc83.i ], [ %.val.i60.i, %.noexc82.i ] ; 7 uses
  %i.gq = phi <2 x double> [ %i.ik, %.noexc83.i ], [ zeroinitializer, %.noexc82.i ]
  %i.gr = icmp ugt i64 %.0181.i.i67.i, 4294967295
  br i1 %i.gr, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph.i.i64.i
  br i1 %.not.i.i.i102.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = udiv i64 %.0181.i.i67.i, %i.eg          ; 2 uses
  %i.gt = mul i64 %i.gs, %i.eg                    ; 0 uses
  %.recomposed = urem i64 %.0181.i.i67.i, %i.eg
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.gu = and i64 %.0181.i.i67.i, %i.fy
  %i.gv = lshr i64 %.0181.i.i67.i, %i.gk
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.0.i.i.i103.i = phi i64 [ %i.gu, %bb.bc ], [ %.recomposed, %bb.bb ] ; 2 uses
  %.1.i.i.i104.i = phi i64 [ %i.gv, %bb.bc ], [ %i.gs, %bb.bb ] ; 4 uses
  br i1 %.not.1.i.i.i105.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gw = udiv i64 %.1.i.i.i104.i, %i.dz          ; 2 uses
  %i.gx = mul i64 %i.gw, %i.dz                    ; 0 uses
  %.recomposed333 = urem i64 %.1.i.i.i104.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bf:                                            ; preds = %bb.bd
  %i.gy = and i64 %.1.i.i.i104.i, %i.gd
  %i.gz = lshr i64 %.1.i.i.i104.i, %i.gl
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bg:                                            ; preds = %.lr.ph.i.i64.i
  %i.ha = trunc nuw i64 %.0181.i.i67.i to i32     ; 4 uses
  br i1 %.not.i7.i.i86.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hb = udiv i32 %i.ha, %i.fw                   ; 2 uses
  %i.hc = mul i32 %i.hb, %i.fw                    ; 0 uses
  %.recomposed334 = urem i32 %i.ha, %i.fw
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hd = and i32 %34, %i.ha
  %i.he = lshr i32 %i.ha, %35
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.7.0.in.i.i.i87.i = phi i32 [ %i.hd, %bb.bi ], [ %.recomposed334, %bb.bh ]
  %.1.i8.i.i88.i = phi i32 [ %i.he, %bb.bi ], [ %i.hb, %bb.bh ] ; 4 uses
  br i1 %.not.1.i9.i.i89.i.a, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hf = udiv i32 %.1.i8.i.i88.i, %i.fx          ; 2 uses
  %i.hg = mul i32 %i.hf, %i.fx                    ; 0 uses
  %.recomposed335 = urem i32 %.1.i8.i.i88.i, %i.fx
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

bb.bl:                                            ; preds = %bb.bj
  %i.hh = and i32 %.1.i8.i.i88.i, %37
  %i.hi = lshr i32 %.1.i8.i.i88.i, %38
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i: ; preds = %bb.bl, %bb.bk
  %.sroa.4.0.in.i.i.i91.i = phi i32 [ %i.hh, %bb.bl ], [ %.recomposed335, %bb.bk ]
  %.1.1.i10.i.i92.i = phi i32 [ %i.hi, %bb.bl ], [ %i.hf, %bb.bk ]
  %.sroa.4.0.i11.i.i93.i = zext i32 %.sroa.4.0.in.i.i.i91.i to i64
  %.sroa.7.0.i12.i.i94.i = zext i32 %.sroa.7.0.in.i.i.i87.i to i64
  %i.hj = zext i32 %.1.1.i10.i.i92.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i, %bb.bf, %bb.be
  %.sroa.7.0.i12.sink.i.i96.i = phi i64 [ %.sroa.7.0.i12.i.i94.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.sroa.7.0.i.i.i103.i, %bb.be ], [ %.sroa.7.0.i.i.i103.i, %bb.bf ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i97.i = phi i64 [ %.sroa.4.0.i11.i.i93.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.recomposed333, %bb.be ], [ %i.gy, %bb.bf ] ; 3 uses
  %.sink.i.i98.i = phi i64 [ %i.hj, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %i.gw, %bb.be ], [ %i.gz, %bb.bf ] ; 4 uses
  %i.hk = mul i64 %.sink.i.i98.i, %i.eh
  %i.hl = mul i64 %.sroa.4.0.i11.sink.i.i97.i, %i.eg
  %i.hm = getelementptr [4 x i8], ptr %.pn.i, i64 %i.hk
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %i.hl
  %i.ho = getelementptr [4 x i8], ptr %i.hn, i64 %.sroa.7.0.i12.sink.i.i96.i
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !83, !noalias !843
  %i.hq = mul i64 %.sink.i.i98.i, %.sroa.19190.88.copyload
  %i.hr = mul i64 %.sroa.7.0.i12.sink.i.i96.i, %.sroa.22.88.copyload
  %i.hs = getelementptr [4 x i8], ptr %.sroa.24193.88.copyload, i64 %i.hq
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !83, !noalias !843
  %i.hv = icmp ult i64 %.sroa.4.0.i11.sink.i.i97.i, %.sroa.03.0
  br i1 %i.hv, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i, label %bb.bm, !prof !189

bb.bm:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  call void @_ZSt9terminatev() #36, !noalias !843
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i97.i
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !83, !noalias !843 ; 2 uses
  br i1 %i.gj, label %.noexc83.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %i.hy = icmp ult i64 %.sink.i.i98.i, %.sroa.01.0
  br i1 %i.hy, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, label %bb.bo, !prof !189

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt9terminatev() #36, !noalias !843
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i: ; preds = %bb.bn
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i98.i
  %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i = load float, ptr %i.hz, align 4, !tbaa !83, !noalias !843
  br label %.noexc83.i

.noexc83.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %.in.i.i101.i.sroa.speculated = phi float [ %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i ] ; 2 uses
  %i.ia = fsub float %i.hp, %i.hu                 ; 3 uses
  %i.ib = fcmp oge float %i.ia, 0.000000e+00
  %i.ic = fsub float 1.000000e+00, %i.hx
  %i.id = select i1 %i.ib, float %i.ic, float %i.hx
  %i.ie = fmul float %i.ia, %i.id
  %i.if = fmul float %i.ia, %i.ie
  %i.ig = fmul float %i.if, %.in.i.i101.i.sroa.speculated
  %i.ih = insertelement <2 x float> poison, float %.in.i.i101.i.sroa.speculated, i64 0
  %i.ii = insertelement <2 x float> %i.ih, float %i.ig, i64 1
  %i.ij = fpext <2 x float> %i.ii to <2 x double>
  %i.ik = fadd <2 x double> %i.gq, %i.ij          ; 2 uses
  %i.il = add i64 %.0181.i.i67.i, 1               ; 2 uses
  %exitcond.not.i.i77.i = icmp eq i64 %i.il, %.val5.i61.i
  br i1 %exitcond.not.i.i77.i, label %.noexc40.i, label %.lr.ph.i.i64.i, !llvm.loop !846

.noexc40.i:                                       ; preds = %.noexc83.i, %.noexc82.i
  %i.im = phi <2 x double> [ zeroinitializer, %.noexc82.i ], [ %i.ik, %.noexc83.i ] ; 2 uses
  %i.in = load double, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.io = extractelement <2 x double> %i.im, i64 1
  %i.ip = fadd double %i.io, %i.in
  store double %i.ip, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.iq = load double, ptr %.sroa.0.0.i, align 8, !tbaa !94
  %i.ir = extractelement <2 x double> %i.im, i64 0
  %i.is = fadd double %i.ir, %i.iq
  store double %i.is, ptr %.sroa.0.0.i, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.it = add nuw i64 %.0107.i.i.i.i, 1           ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.it, %i.ft
  br i1 %exitcond126.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph108.i.i.i.i, !llvm.loop !847

bb.bp:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.fd, ptr %i.a, align 4, !tbaa !73, !noalias !848
  store i32 1, ptr %i.b, align 4, !tbaa !73, !noalias !848
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader90.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.bp
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.iu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc.i.i.i.i unwind label %bb.br

.noexc.i.i.i.i:                                   ; preds = %bb.bq
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.iu, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.br

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.iv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.bs ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.iy = load ptr, ptr %11, align 8, !tbaa !38   ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !19
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !15
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef %i.iz, i64 noundef %i.jb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bu unwind label %bb.br

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.bq
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bt unwind label %bb.de

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.je, %bb.br ], [ %i.jf, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body.i

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %.pr82.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader90.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jg = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bv
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !26
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader90.i.i.i.i

.preheader90.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.bu, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, i8 0, i64 48, i1 false)
  %.not111.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not111.i.i.i.i, label %.thread.i.i.i, label %.lr.ph100.i.i.preheader.i.i

.lr.ph100.i.i.preheader.i.i:                      ; preds = %.preheader90.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jn = trunc i64 %i.eg to i32                  ; 5 uses
  %39 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jn)
  %.not.i7.i.i.i = icmp samesign ult i32 %39, 2
  %40 = add i32 %i.jn, -1                         ; 2 uses
  %41 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %40)
  %i.jo = trunc i64 %i.dz to i32                  ; 5 uses
  %42 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jo)
  %.not.1.i9.i.i.i.a = icmp samesign ult i32 %42, 2
  %43 = add i32 %i.jo, -1                         ; 2 uses
  %44 = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %43)
  %i.jp = add i64 %i.eg, -1                       ; 2 uses
  %i.jq = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.jr = insertelement <2 x i64> %i.jq, i64 %i.jp, i64 1
  %i.js = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.jr) ; 2 uses
  %i.jt = extractelement <2 x i64> %i.js, i64 0
  %.not.i.i.i85.i = icmp samesign ult i64 %i.jt, 2
  %i.ju = add i64 %i.dz, -1
  %i.jv = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.jw = shufflevector <2 x i64> %i.jv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.jx = add <2 x i64> %i.jw, <i64 0, i64 -1>
  %i.jy = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.jx) ; 2 uses
  %i.jz = extractelement <2 x i64> %i.jy, i64 0
  %.not.1.i.i.i.i = icmp samesign ult i64 %i.jz, 2
  %i.ka = icmp eq i64 %.sroa.01.0, 0
  %i.kb = extractelement <2 x i64> %i.js, i64 1
  %i.kc = extractelement <2 x i64> %i.jy, i64 1
  br label %.lr.ph100.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader90.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph100.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_14ExpectileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i, %.lr.ph100.i.i.preheader.i.i
  %.06199.i.i.i.i = phi i64 [ %i.ng, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_14ExpectileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i ], [ 0, %.lr.ph100.i.i.preheader.i.i ] ; 2 uses
  %i.kd = shl i64 %.06199.i.i.i.i, 11             ; 3 uses
  %i.ke = sub i64 %i.fp, %i.kd
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ke, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.kf = add i64 %.sroa.speculated.i.i, %i.kd
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.kd, i64 noundef %i.kf)
          to label %.noexc57.i unwind label %bb.cl

.noexc57.i:                                       ; preds = %.lr.ph100.i.i.i.i
  %.val.i.i = load i64, ptr %5, align 8, !tbaa !193 ; 2 uses
  %.val5.i.i = load i64, ptr %i.jm, align 8, !tbaa !195 ; 2 uses
  %i.kg = icmp ult i64 %.val.i.i, %.val5.i.i
  br i1 %i.kg, label %.lr.ph.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc57.i, %.noexc58.i
  %.0181.i.i.i = phi i64 [ %i.mc, %.noexc58.i ], [ %.val.i.i, %.noexc57.i ] ; 7 uses
  %i.kh = phi <2 x double> [ %i.mb, %.noexc58.i ], [ zeroinitializer, %.noexc57.i ]
  %i.ki = icmp ugt i64 %.0181.i.i.i, 4294967295
  br i1 %i.ki, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not.i.i.i85.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kj = udiv i64 %.0181.i.i.i, %i.eg            ; 2 uses
  %i.kk = mul i64 %i.kj, %i.eg                    ; 0 uses
  %.recomposed336 = urem i64 %.0181.i.i.i, %i.eg
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.kl = and i64 %.0181.i.i.i, %i.jp
  %i.km = lshr i64 %.0181.i.i.i, %i.kb
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.kl, %bb.by ], [ %.recomposed336, %bb.bx ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %i.km, %bb.by ], [ %i.kj, %bb.bx ] ; 4 uses
  br i1 %.not.1.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kn = udiv i64 %.1.i.i.i.i, %i.dz             ; 2 uses
  %i.ko = mul i64 %i.kn, %i.dz                    ; 0 uses
  %.recomposed337 = urem i64 %.1.i.i.i.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.kp = and i64 %.1.i.i.i.i, %i.ju
  %i.kq = lshr i64 %.1.i.i.i.i, %i.kc
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.kr = trunc nuw i64 %.0181.i.i.i to i32       ; 4 uses
  br i1 %.not.i7.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ks = udiv i32 %i.kr, %i.jn                   ; 2 uses
  %i.kt = mul i32 %i.ks, %i.jn                    ; 0 uses
  %.recomposed338 = urem i32 %i.kr, %i.jn
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ku = and i32 %40, %i.kr
  %i.kv = lshr i32 %i.kr, %41
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sroa.7.0.in.i.i.i.i = phi i32 [ %i.ku, %bb.ce ], [ %.recomposed338, %bb.cd ]
  %.1.i8.i.i.i = phi i32 [ %i.kv, %bb.ce ], [ %i.ks, %bb.cd ] ; 4 uses
  br i1 %.not.1.i9.i.i.i.a, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kw = udiv i32 %.1.i8.i.i.i, %i.jo            ; 2 uses
  %i.kx = mul i32 %i.kw, %i.jo                    ; 0 uses
  %.recomposed339 = urem i32 %.1.i8.i.i.i, %i.jo
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.ky = and i32 %.1.i8.i.i.i, %43
  %i.kz = lshr i32 %.1.i8.i.i.i, %44
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i: ; preds = %bb.ch, %bb.cg
  %.sroa.4.0.in.i.i.i.i = phi i32 [ %i.ky, %bb.ch ], [ %.recomposed339, %bb.cg ]
  %.1.1.i10.i.i.i = phi i32 [ %i.kz, %bb.ch ], [ %i.kw, %bb.cg ]
  %.sroa.4.0.i11.i.i.i = zext i32 %.sroa.4.0.in.i.i.i.i to i64
  %.sroa.7.0.i12.i.i.i = zext i32 %.sroa.7.0.in.i.i.i.i to i64
  %i.la = zext i32 %.1.1.i10.i.i.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i, %bb.cb, %bb.ca
  %.sroa.7.0.i12.sink.i.i.i = phi i64 [ %.sroa.7.0.i12.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %.sroa.7.0.i.i.i.i, %bb.cb ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i.i = phi i64 [ %.sroa.4.0.i11.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %.recomposed337, %bb.ca ], [ %i.kp, %bb.cb ] ; 3 uses
  %.sink.i.i.i = phi i64 [ %i.la, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %i.kn, %bb.ca ], [ %i.kq, %bb.cb ] ; 4 uses
  %i.lb = mul i64 %.sink.i.i.i, %i.eh
  %i.lc = mul i64 %.sroa.4.0.i11.sink.i.i.i, %i.eg
  %i.ld = getelementptr [4 x i8], ptr %.pn.i, i64 %i.lb
  %i.le = getelementptr [4 x i8], ptr %i.ld, i64 %i.lc
  %i.lf = getelementptr [4 x i8], ptr %i.le, i64 %.sroa.7.0.i12.sink.i.i.i
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !83, !noalias !851
  %i.lh = mul i64 %.sink.i.i.i, %.sroa.19190.88.copyload
  %i.li = mul i64 %.sroa.7.0.i12.sink.i.i.i, %.sroa.22.88.copyload
  %i.lj = getelementptr [4 x i8], ptr %.sroa.24193.88.copyload, i64 %i.lh
  %i.lk = getelementptr [4 x i8], ptr %i.lj, i64 %i.li
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !83, !noalias !851
  %i.lm = icmp ult i64 %.sroa.4.0.i11.sink.i.i.i, %.sroa.03.0
  br i1 %i.lm, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, label %bb.ci, !prof !189

bb.ci:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  call void @_ZSt9terminatev() #36, !noalias !851
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i.i
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !83, !noalias !851 ; 2 uses
  br i1 %i.ka, label %.noexc58.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %i.lp = icmp ult i64 %.sink.i.i.i, %.sroa.01.0
  br i1 %i.lp, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, label %bb.ck, !prof !189

bb.ck:                                            ; preds = %bb.cj
  call void @_ZSt9terminatev() #36, !noalias !851
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %bb.cj
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i.i
  %.in.i.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i = load float, ptr %i.lq, align 4, !tbaa !83, !noalias !851
  br label %.noexc58.i

.noexc58.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.in.i.i.i.sroa.speculated = phi float [ %.in.i.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ] ; 2 uses
  %i.lr = fsub float %i.lg, %i.ll                 ; 3 uses
  %i.ls = fcmp oge float %i.lr, 0.000000e+00
  %i.lt = fsub float 1.000000e+00, %i.lo
  %i.lu = select i1 %i.ls, float %i.lt, float %i.lo
  %i.lv = fmul float %i.lr, %i.lu
  %i.lw = fmul float %i.lr, %i.lv
  %i.lx = fmul float %i.lw, %.in.i.i.i.sroa.speculated
  %i.ly = insertelement <2 x float> poison, float %.in.i.i.i.sroa.speculated, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %i.lx, i64 1
  %i.ma = fpext <2 x float> %i.lz to <2 x double>
  %i.mb = fadd <2 x double> %i.kh, %i.ma          ; 2 uses
  %i.mc = add i64 %.0181.i.i.i, 1                 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.mc, %.val5.i.i
  br i1 %exitcond.not.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !846

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_14ExpectileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i: ; preds = %.noexc58.i, %.noexc57.i
  %i.md = phi <2 x double> [ zeroinitializer, %.noexc57.i ], [ %i.mb, %.noexc58.i ] ; 2 uses
  %i.me = load double, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.mf = extractelement <2 x double> %i.md, i64 1
  %i.mg = fadd double %i.mf, %i.me
  store double %i.mg, ptr %.sroa.0127.0139.i, align 8, !tbaa !94
  %i.mh = load double, ptr %.sroa.0.0.i, align 8, !tbaa !94
  %i.mi = extractelement <2 x double> %i.md, i64 0
  %i.mj = fadd double %i.mi, %i.mh
  store double %i.mj, ptr %.sroa.0.0.i, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_14ExpectileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i

bb.cl:                                            ; preds = %.lr.ph100.i.i.i.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ml = extractvalue { ptr, i32 } %i.mk, 0      ; 2 uses
  %i.mm = extractvalue { ptr, i32 } %i.mk, 1      ; 2 uses
  %i.mn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.mp = call ptr @__cxa_begin_catch(ptr %i.ml) #18 ; 0 uses
  %i.mq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.jl) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.mq) #33
          to label %.noexc.i.i.i unwind label %bb.cw

.noexc.i.i.i:                                     ; preds = %bb.cn
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.cm
  %i.mr = load ptr, ptr %13, align 8, !tbaa !105
  %.not22.i.i.i = icmp eq ptr %i.mr, null
  br i1 %.not22.i.i.i, label %bb.co, label %.sink.split.i.i.i

bb.co:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ms = load ptr, ptr %9, align 8, !tbaa !105
  store ptr null, ptr %9, align 8, !tbaa !105
  %i.mt = load ptr, ptr %13, align 8, !tbaa !105  ; 2 uses
  store ptr %i.mt, ptr %7, align 8, !tbaa !105
  store ptr %i.ms, ptr %13, align 8, !tbaa !105
  %.not.i.i9.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i9.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i: ; preds = %bb.co
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %.pr.i.i.i = load ptr, ptr %9, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i4.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.cp, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.sink.split.i.i.i

bb.cq:                                            ; preds = %bb.cl
  %i.mu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.mv = icmp eq i32 %i.mm, %i.mu
  br i1 %i.mv, label %bb.cr, label %.body.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.mw = call ptr @__cxa_begin_catch(ptr %i.ml) #18 ; 0 uses
  %i.mx = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.jl) #18 ; 2 uses
  %.not.i.i10.i.i.i = icmp eq i32 %i.mx, 0
  br i1 %.not.i.i10.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.mx) #33
          to label %.noexc11.i.i.i unwind label %bb.cv

.noexc11.i.i.i:                                   ; preds = %bb.cs
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i:  ; preds = %bb.cr
  %i.my = load ptr, ptr %13, align 8, !tbaa !105
  %.not.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i, label %bb.ct, label %.sink.split.i.i.i

bb.ct:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.mz = load ptr, ptr %8, align 8, !tbaa !105
  store ptr null, ptr %8, align 8, !tbaa !105
  %i.na = load ptr, ptr %13, align 8, !tbaa !105  ; 2 uses
  store ptr %i.na, ptr %6, align 8, !tbaa !105
  store ptr %i.mz, ptr %13, align 8, !tbaa !105
  %.not.i.i13.i.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i13.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i: ; preds = %bb.ct
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %.pr20.i.i.i = load ptr, ptr %8, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not.i15.i.i.i = icmp eq ptr %.pr20.i.i.i, null
  br i1 %.not.i15.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i: ; preds = %bb.cu, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.sink.split.i.i.i

bb.cv:                                            ; preds = %bb.cs
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.cx

end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_elementwise_metric.cc:bb.a
  %i.rn = icmp eq ptr %i.rm, %i.ql
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i199
  %i.ro = load i64, ptr %i.ql, align 8, !tbaa !26
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200, %bb.bh
  %.pn.pn.i197 = phi { ptr, i32 } [ %i.rk, %bb.bh ], [ %i.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200 ], [ %i.rl, %_ZNSt14_Function_baseD2Ev.exit18.i199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196, %bb.bg
  %.pn.pn.pn.i191 = phi { ptr, i32 } [ %.pn.pn.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196 ], [ %i.rj, %bb.bg ]
  %i.rq = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.qh
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i192: ; preds = %bb.bi
  %i.rs = load i64, ptr %i.qh, align 8, !tbaa !26
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i193: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

__cxx_global_var_init.32.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  store ptr %i.qk, ptr @_ZN7xgboost6metric32__make_MetricReg_QuantileError__E, align 8, !tbaa !23
  %i.ru = call noundef ptr @_ZN4dmlc8RegistryIN7xgboost9MetricRegEE3GetEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.rv, ptr %1, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.rv, ptr noundef nonnull align 1 dereferenceable(9) @.str.36, i64 9, i1 false)
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 9, ptr %i.rw, align 8, !tbaa !15
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.rx, align 1, !tbaa !26
  %i.ry = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost9MetricRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ru, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i10.i214 unwind label %bb.bl ; 5 uses

.noexc.i10.i214:                                  ; preds = %__cxx_global_var_init.32.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.rz, ptr %2, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 27, ptr %i.a, align 8, !tbaa !47
  %i.sa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11.i217 unwind label %bb.bm ; 2 uses

.noexc11.i217:                                    ; preds = %.noexc.i10.i214
  store ptr %i.sa, ptr %2, align 8, !tbaa !19
  %i.sb = load i64, ptr %i.a, align 8, !tbaa !47  ; 3 uses
  store i64 %i.sb, ptr %i.rz, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.sa, ptr noundef nonnull align 1 dereferenceable(27) @.str.37, i64 27, i1 false)
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.sb, ptr %i.sc, align 8, !tbaa !15
  %i.sd = load ptr, ptr %2, align 8, !tbaa !19
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store i8 0, ptr %i.se, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.sf, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221 unwind label %_ZNSt14_Function_baseD2Ev.exit18.i218

_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221: ; preds = %.noexc11.i217
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.sg, i64 16, i1 false), !tbaa.struct !883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sg, i8 0, i64 16, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %i.ry, i64 104 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 112
  %i.sk = load <2 x ptr>, ptr %i.si, align 8, !tbaa !54
  %i.sl = load ptr, ptr %i.si, align 8, !tbaa !54 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric4$_12EE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.si, align 8, !tbaa !54
  store <2 x ptr> %i.sk, ptr %i.sh, align 8, !tbaa !54
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric4$_12EE9_M_invokeERKSt9_Any_dataOS4_", ptr %i.sj, align 8, !tbaa !54
  %.not.i.i.i.i222 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i222, label %_ZNSt14_Function_baseD2Ev.exit.i223, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221
  %i.sm = invoke noundef zeroext i1 %i.sl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i223 unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i223:              ; preds = %bb.bj, %_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.sp = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.rz
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i223
  %i.sr = load i64, ptr %i.rz, align 8, !tbaa !26
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.ss) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.st = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.rv
  br i1 %i.su, label %__cxx_global_var_init.35.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225
  %i.sv = load i64, ptr %i.rv, align 8, !tbaa !26
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #35
  br label %__cxx_global_var_init.35.exit

bb.bl:                                            ; preds = %__cxx_global_var_init.32.exit
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %.noexc.i10.i214
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215

_ZNSt14_Function_baseD2Ev.exit18.i218:            ; preds = %.noexc11.i217
  %i.sz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ta = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.rz
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i218
  %i.tc = load i64, ptr %i.rz, align 8, !tbaa !26
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219, %bb.bm
  %.pn.pn.i216 = phi { ptr, i32 } [ %i.sy, %bb.bm ], [ %i.sz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219 ], [ %i.sz, %_ZNSt14_Function_baseD2Ev.exit18.i218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215, %bb.bl
  %.pn.pn.pn.i210 = phi { ptr, i32 } [ %.pn.pn.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215 ], [ %i.sx, %bb.bl ]
  %i.te = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.rv
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i211: ; preds = %bb.bn
  %i.tg = load i64, ptr %i.rv, align 8, !tbaa !26
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i212: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %common.resume

__cxx_global_var_init.35.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  store ptr %i.ry, ptr @_ZN7xgboost6metric33__make_MetricReg_ExpectileError__E, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #29 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTSSt15_Rb_tree_header", !10, i64 0, !14, i64 32}
!10 = !{!"_ZTSSt18_Rb_tree_node_base", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!11 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!12 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!16, !14, i64 8}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !14, i64 8, !6, i64 16}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!16, !18, i64 0}
!20 = !{!12, !12, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN7xgboost9MetricRegE", !13, i64 0}
!25 = !{!17, !18, i64 0}
!26 = !{!6, !6, i64 0}
!27 = !{!28, !29, i64 8}
!28 = !{!"_ZTSNSt12_Vector_baseIPKN7xgboost9MetricRegESaIS3_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p2 _ZTSN7xgboost9MetricRegE", !30, i64 0}
!30 = !{!"any p2 pointer", !13, i64 0}
!31 = !{!28, !29, i64 16}
!32 = !{!28, !29, i64 0}
!33 = !{!34, !29, i64 8}
!34 = !{!"_ZTSNSt12_Vector_baseIPN7xgboost9MetricRegESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!35 = !{!34, !29, i64 16}
!36 = !{!34, !29, i64 0}
!37 = distinct !{!37, !22}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !13, i64 0}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeE", !41, i64 0, !44, i64 8}
!44 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegEEE", !13, i64 0}
!45 = !{!9, !14, i64 32}
!46 = !{!10, !12, i64 24}
!47 = !{!14, !14, i64 0}
!48 = !{!49, !24, i64 32}
!49 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegEE", !16, i64 0, !24, i64 32}
!50 = distinct !{!50, !22}
!51 = !{!9, !12, i64 16}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !7, i64 0}
!54 = !{!13, !13, i64 0}
!55 = !{!56, !5, i64 0}
!56 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!57 = !{!58, !61, i64 16}
!58 = !{!"_ZTSN7xgboost5ValueE", !59, i64 8, !61, i64 16}
!59 = !{!"_ZTSN7xgboost16IntrusivePtrCellE", !60, i64 0}
!60 = !{!"_ZTSSt6atomicIiE", !56, i64 0}
!61 = !{!"_ZTSN7xgboost5Value9ValueKindE", !6, i64 0}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSN7xgboost12IntrusivePtrINS_5ValueEEE", !64, i64 0}
!64 = !{!"p1 _ZTSN7xgboost5ValueE", !13, i64 0}
!65 = distinct !{null}
!66 = !{!64, !64, i64 0}
!67 = distinct !{null, null, null, null}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !71, i64 8}
!70 = !{!"p1 _ZTSN7xgboost7DMatrixE", !13, i64 0}
!71 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0}
!72 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!73 = !{!5, !5, i64 0}
!74 = !{!75, !77, i64 8}
!75 = !{!"_ZTSN7xgboost6MetricE", !76, i64 0, !77, i64 8}
!76 = !{!"_ZTSN7xgboost12ConfigurableE"}
!77 = !{!"p1 _ZTSN7xgboost7ContextE", !13, i64 0}
!78 = !{!79, !80, i64 8}
!79 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 float", !13, i64 0}
!81 = !{!79, !80, i64 0}
!82 = !{!80, !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"float", !6, i64 0}
!85 = !{i64 0, i64 16, !26, i64 16, i64 16, !26, i64 32, i64 8, !47, i64 40, i64 8, !82, i64 48, i64 8, !82, i64 56, i64 8, !47, i64 64, i64 2, !86, i64 66, i64 2, !88}
!86 = !{!87, !87, i64 0}
!87 = !{!"_ZTSN7xgboost9DeviceOrd4TypeE", !6, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"short", !6, i64 0}
!90 = !{!91, !92, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!92 = !{!"p1 double", !13, i64 0}
!93 = !{!91, !92, i64 16}
!94 = !{!95, !95, i64 0}
!95 = !{!"double", !6, i64 0}
!96 = !{!91, !92, i64 8}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTSN7xgboost6linalg10TensorViewIKfLi2EEE", !13, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !13, i64 0}
!101 = distinct !{!101, !22}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!104 = distinct !{!104, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!105 = !{!106, !13, i64 0}
!106 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!107 = distinct !{!107, !22}
!108 = !{!92, !92, i64 0}
!109 = distinct !{!109, !22}
!110 = !{!111, !113}
!111 = distinct !{!111, !112, !"_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE: argument 0"}
!112 = distinct !{!112, !"_ZN7xgboost10collective9AllreduceIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE"}
!113 = distinct !{!113, !114, !"_ZN7xgboost10collective9GlobalSumIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEE: argument 0"}
!114 = distinct !{!114, !"_ZN7xgboost10collective9GlobalSumIdLi1EEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_XT0_EEE"}
!115 = !{!116, !116, i64 0}
!116 = !{!"p1 _ZTSN7xgboost10collective9CommGroupE", !13, i64 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSN7xgboost10collective6detail10ResultImplE", !13, i64 0}
!119 = distinct !{null, null}
!120 = !{!121, !124, i64 24}
!121 = !{!"_ZTSN7xgboost6linalg6TensorIfLi2EEE", !122, i64 0, !6, i64 8, !124, i64 24}
!122 = !{!"_ZTSN7xgboost16HostDeviceVectorIfEE", !123, i64 0}
!123 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplIfEE", !13, i64 0}
!124 = !{!"_ZTSN7xgboost6linalg5OrderE", !6, i64 0}
!125 = !{!126, !80, i64 48}
!126 = !{!"_ZTSN7xgboost6linalg10TensorViewIKfLi2EEE", !6, i64 0, !6, i64 16, !127, i64 32, !80, i64 48, !14, i64 56, !128, i64 64}
!127 = !{!"_ZTSN7xgboost6common4SpanIKfLm18446744073709551615EEE", !14, i64 0, !80, i64 8}
!128 = !{!"_ZTSN7xgboost9DeviceOrdE", !87, i64 0, !89, i64 2}
!129 = !{!126, !14, i64 56}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!132 = distinct !{!132, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!135 = distinct !{!135, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!136 = !{!134, !131}
!137 = !{!138, !18, i64 40}
!138 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !139, i64 56}
!139 = !{!"_ZTSSt6locale", !140, i64 0}
!140 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!141 = !{!138, !18, i64 32}
!142 = !{!143, !144, i64 64}
!143 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !138, i64 0, !144, i64 64, !16, i64 72}
!144 = !{!"_ZTSSt13_Ios_Openmode", !6, i64 0}
!145 = !{!146, !5, i64 8}
!146 = !{!"_ZTS2tm", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !14, i64 40, !18, i64 48}
!147 = !{!146, !5, i64 4}
!148 = !{!146, !5, i64 0}
!149 = !{!150, !152, i64 32}
!150 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !151, i64 24, !152, i64 28, !152, i64 32, !153, i64 40, !154, i64 48, !6, i64 64, !5, i64 192, !155, i64 200, !139, i64 208}
!151 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!152 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!153 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!154 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !14, i64 8}
!155 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!156 = !{!"branch_weights", i32 1, i32 1023}
end_hunk_2
