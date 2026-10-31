Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/predictor?download=true
inline.NumInlined: 674
inline.NumDeleted: 358
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 %.sink.i.i.i.i.i, ptr %i.d, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.bw = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  store i64 %i.bw, ptr %i.e, align 8, !tbaa !30
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !30, !noalias !152
  %i.by = icmp eq i64 %i.bx, %i.bw
  br i1 %i.by, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJRKmjEEEDaPKNS_7ContextEPNS_16HostDeviceVectorIT_EEDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit61

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZN7xgboost6linalg14MakeTensorViewIfJRKmjEEEDaPKNS_7ContextEPNS_16HostDeviceVectorIT_EEDpOT0_.exit
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pr74 = load ptr, ptr %12, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %.not80 = icmp eq ptr %.pr74, null
  br i1 %.not80, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit61, label %bb.p

bb.p:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.bz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc44 unwind label %bb.q

.noexc44:                                         ; preds = %bb.p
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bz, ptr noundef nonnull @.str, i32 noundef 86)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit46 unwind label %bb.q

_ZN4dmlc15LogMessageFatalC2EPKci.exit46:          ; preds = %.noexc44
  %i.ca = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48 unwind label %bb.r ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit46
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.2, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.5, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.cd = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.ce, i64 noundef %i.cg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit54 unwind label %bb.r

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit54: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit54
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %.noexc44, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit54, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit48, %_ZN4dmlc15LogMessageFatalC2EPKci.exit46
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.s unwind label %bb.ao

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn29 = phi { ptr, i32 } [ %i.cj, %bb.q ], [ %i.ck, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %common.resume

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %.pr75 = load ptr, ptr %12, align 8, !tbaa !33  ; 4 uses
  %.not.i57 = icmp eq ptr %.pr75, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit61, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %.pr75, align 8, !tbaa !23 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pr75, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58: ; preds = %bb.u
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !24
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i59

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i59: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58
  call void @_ZdlPvm(ptr noundef nonnull %.pr75, i64 noundef 32) #29
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit61

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit61: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.t, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.cq = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %.sroa.0.0.copyload.i.i62 = load i32, ptr %i.cr, align 8
  %i.cs = and i32 %.sroa.0.0.copyload.i.i62, 65535 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.cu = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cu, ptr noundef nonnull @.str.24, i32 noundef 187)
  %i.cv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.w

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.v
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.25, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.x unwind label %bb.y

common.resume:                                    ; preds = %bb.e, %bb.s, %bb.aj, %bb.ac, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %i.dd, %bb.ac ], [ %.pn.i.i, %bb.aj ], [ %.pn29, %bb.s ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #28
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit:      ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit"

bb.z:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit61
  %.off.i = add nsw i32 %i.cs, -2
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.da = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.da, ptr noundef nonnull @.str.24, i32 noundef 205)
  %i.db = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i64 unwind label %bb.ab

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i64: ; preds = %bb.aa
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.26, i64 noundef 47)
          to label %_ZN7xgboost6common17AssertSYCLSupportEv.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i64, %bb.aa
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %common.resume

bb.ad:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #28
  unreachable

_ZN7xgboost6common17AssertSYCLSupportEv.exit:     ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i64
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit"

bb.ae:                                            ; preds = %bb.z
  %i.dg = load i64, ptr %1, align 8, !tbaa !138   ; 4 uses
  %i.dh = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.cq) ; 3 uses
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %.preheader.i.i, label %bb.af

.preheader.i.i:                                   ; preds = %bb.ae
  %.not142.i.i = icmp eq i64 %i.dg, 0
  %.not.i68.i.i = icmp eq i32 %i.bf, 0
  %or.cond = select i1 %.not142.i.i, i1 true, i1 %.not.i68.i.i
  br i1 %or.cond, label %"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit", label %.lr.ph135.split.i.i

.lr.ph135.split.i.i:                              ; preds = %.preheader.i.i
  %i.dj = load i64, ptr %10, align 8, !tbaa !30   ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !145 ; 7 uses
  %14 = ptrtoaddr ptr %i.dl to i64
  %15 = sub i64 %.sroa.5.0.i95, %14
  %16 = shl nuw nsw i64 %i.bt, 2
  %min.iters.check102 = icmp ult i32 %i.bf, 8
  %ident.check98.not = icmp ne i64 %i.dj, 1
  %or.cond113.not118 = select i1 %min.iters.check102, i1 true, i1 %ident.check98.not
  %invariant.op124 = add i64 %15, -1
  %n.vec104 = and i64 %i.bt, 4294967288           ; 3 uses
  %cmp.n111 = icmp eq i64 %n.vec104, %i.bt
  %xtraiter120 = and i64 %i.bt, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %"_ZZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEENK3$_0clImEEDaT_.exit.loopexit.i.i", %.lr.ph135.split.i.i
  %.0134.i.i = phi i64 [ 0, %.lr.ph135.split.i.i ], [ %i.et, %"_ZZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEENK3$_0clImEEDaT_.exit.loopexit.i.i" ] ; 3 uses
  %17 = mul i64 %16, %.0134.i.i
  %i.dm = mul i64 %.0134.i.i, %i.bt
  %18 = getelementptr [4 x i8], ptr %.sroa.5.0.i, i64 %i.dm ; 6 uses
  %.reass125 = add i64 %17, %invariant.op124
  %diff.check100 = icmp ult i64 %.reass125, 31
  %or.cond114 = select i1 %or.cond113.not118, i1 true, i1 %diff.check100
  br i1 %or.cond114, label %scalar.ph101.preheader, label %vector.body105

vector.body105:                                   ; preds = %.lr.ph.i.i.i.a, %vector.body105
  %index106 = phi i64 [ %index.next109, %vector.body105 ], [ 0, %.lr.ph.i.i.i.a ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index106 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load107 = load <4 x float>, ptr %i.dn, align 4, !tbaa !147
  %wide.load108 = load <4 x float>, ptr %i.do, align 4, !tbaa !147
  %i.dp = getelementptr [4 x i8], ptr %18, i64 %index106 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  store <4 x float> %wide.load107, ptr %i.dp, align 4, !tbaa !147
  store <4 x float> %wide.load108, ptr %i.dq, align 4, !tbaa !147
  %index.next109 = add nuw i64 %index106, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next109, %n.vec104
  br i1 %i.dr, label %middle.block110, label %vector.body105, !llvm.loop !69

middle.block110:                                  ; preds = %vector.body105
  br i1 %cmp.n111, label %"_ZZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEENK3$_0clImEEDaT_.exit.loopexit.i.i", label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %.lr.ph.i.i.i.a, %middle.block110
  %.05.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.a ], [ %n.vec104, %middle.block110 ] ; 3 uses
  br i1 %lcmp.mod121.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol

scalar.ph101.prol:                                ; preds = %scalar.ph101.preheader, %scalar.ph101.prol
  %.05.i.i.i.prol = phi i64 [ %i.dw, %scalar.ph101.prol ], [ %.05.i.i.i.ph, %scalar.ph101.preheader ] ; 3 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %scalar.ph101.prol ], [ 0, %scalar.ph101.preheader ]
  %i.ds = mul i64 %.05.i.i.i.prol, %i.dj
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !147
  %i.dv = getelementptr [4 x i8], ptr %18, i64 %.05.i.i.i.prol
  store float %i.du, ptr %i.dv, align 4, !tbaa !147
  %i.dw = add nuw nsw i64 %.05.i.i.i.prol, 1      ; 2 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol, !llvm.loop !70

scalar.ph101.prol.loopexit:                       ; preds = %scalar.ph101.prol, %scalar.ph101.preheader
  %.05.i.i.i.unr = phi i64 [ %.05.i.i.i.ph, %scalar.ph101.preheader ], [ %i.dw, %scalar.ph101.prol ]
  %i.dx = sub nsw i64 %.05.i.i.i.ph, %i.bt
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %"_ZZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEENK3$_0clImEEDaT_.exit.loopexit.i.i", label %scalar.ph101

scalar.ph101:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101
  %.05.i.i.i = phi i64 [ %i.es, %scalar.ph101 ], [ %.05.i.i.i.unr, %scalar.ph101.prol.loopexit ] ; 6 uses
  %i.dz = mul i64 %.05.i.i.i, %i.dj
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !147
  %i.ec = getelementptr [4 x i8], ptr %18, i64 %.05.i.i.i
  store float %i.eb, ptr %i.ec, align 4, !tbaa !147
  %i.ed = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %i.ee = mul i64 %i.ed, %i.dj
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !147
  %i.eh = getelementptr [4 x i8], ptr %18, i64 %i.ed
  store float %i.eg, ptr %i.eh, align 4, !tbaa !147
  %i.ei = add nuw nsw i64 %.05.i.i.i, 2           ; 2 uses
  %i.ej = mul i64 %i.ei, %i.dj
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !147
  %i.em = getelementptr [4 x i8], ptr %18, i64 %i.ei
  store float %i.el, ptr %i.em, align 4, !tbaa !147
  %i.en = add nuw nsw i64 %.05.i.i.i, 3           ; 2 uses
  %i.eo = mul i64 %i.en, %i.dj
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !147
  %i.er = getelementptr [4 x i8], ptr %18, i64 %i.en
  store float %i.eq, ptr %i.er, align 4, !tbaa !147
  %i.es = add nuw nsw i64 %.05.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.es, %i.bt
  br i1 %exitcond.not.i.i.i.3, label %"_ZZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEENK3$_0clImEEDaT_.exit.loopexit.i.i", label %scalar.ph101, !llvm.loop !71

"_ZZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEENK3$_0clImEEDaT_.exit.loopexit.i.i": ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101, %middle.block110
  %i.et = add nuw i64 %.0134.i.i, 1               ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %i.et, %i.dg
  br i1 %exitcond154.not.i.i, label %"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit", label %.lr.ph.i.i.i.a, !llvm.loop !72

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !31, !noalias !156
  store i32 1, ptr %i.b, align 4, !tbaa !31, !noalias !156
  %.not.i.i.i = icmp slt i32 %i.dh, 1
  br i1 %.not.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader117.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i: ; preds = %bb.af
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i, label %.preheader117.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.eu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc.i.i unwind label %bb.ah

.noexc.i.i:                                       ; preds = %bb.ag
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.eu, ptr noundef nonnull @.str.35, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i unwind label %bb.ah

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i:        ; preds = %.noexc.i.i
  %i.ev = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.ai ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.2, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.ey = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !28
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef %i.ez, i64 noundef %i.fb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ai

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ak unwind label %bb.ah

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i, %.noexc.i.i, %bb.ag
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.i.i = phi { ptr, i32 } [ %i.fe, %bb.ah ], [ %i.ff, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %common.resume

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.pr109.i.i = load ptr, ptr %4, align 8, !tbaa !33 ; 4 uses
  %.not.i77.i.i = icmp eq ptr %.pr109.i.i, null
  br i1 %.not.i77.i.i, label %.preheader117.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fg = load ptr, ptr %.pr109.i.i, align 8, !tbaa !23 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pr109.i.i, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !24
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr109.i.i, i64 noundef 32) #29
  br label %.preheader117.i.i

.preheader117.i.i:                                ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.ak, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not138.i.i = icmp eq i64 %i.dg, 0
  %.not.i.i88.i.i = icmp eq i32 %i.bf, 0
  %or.cond79 = select i1 %.not138.i.i, i1 true, i1 %.not.i.i88.i.i
  br i1 %or.cond79, label %"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit", label %.lr.ph127.split.i.i

.lr.ph127.split.i.i:                              ; preds = %.preheader117.i.i
  %i.fl = load i64, ptr %10, align 8, !tbaa !30   ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !145 ; 7 uses
  %19 = ptrtoaddr ptr %i.fn to i64
  %20 = sub i64 %.sroa.5.0.i95, %19
  %21 = shl nuw nsw i64 %i.bt, 2
  %min.iters.check = icmp ult i32 %i.bf, 8
  %ident.check.not = icmp ne i64 %i.fl, 1
  %or.cond115.not117 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %invariant.op = add i64 %20, -1
  %n.vec = and i64 %i.bt, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  %xtraiter = and i64 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i89.i.i.a

.lr.ph.i.i89.i.i.a:                               ; preds = %"_ZN4dmlc12OMPException3RunIZNK7xgboost9Predictor18InitOutPredictionsERKNS2_8MetaInfoEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEE3$_0JmEEEvT_DpT0_.exit92.loopexit.i.i", %.lr.ph127.split.i.i
  %.060126.i.i = phi i64 [ 0, %.lr.ph127.split.i.i ], [ %i.gv, %"_ZN4dmlc12OMPException3RunIZNK7xgboost9Predictor18InitOutPredictionsERKNS2_8MetaInfoEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEE3$_0JmEEEvT_DpT0_.exit92.loopexit.i.i" ] ; 3 uses
  %22 = mul i64 %21, %.060126.i.i
  %i.fo = mul i64 %.060126.i.i, %i.bt
  %23 = getelementptr [4 x i8], ptr %.sroa.5.0.i, i64 %i.fo ; 6 uses
  %.reass = add i64 %22, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond116 = select i1 %or.cond115.not117, i1 true, i1 %diff.check
  br i1 %or.cond116, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i89.i.i.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i89.i.i.a ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <4 x float>, ptr %i.fp, align 4, !tbaa !147
  %wide.load96 = load <4 x float>, ptr %i.fq, align 4, !tbaa !147
  %i.fr = getelementptr [4 x i8], ptr %23, i64 %index ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store <4 x float> %wide.load, ptr %i.fr, align 4, !tbaa !147
  store <4 x float> %wide.load96, ptr %i.fs, align 4, !tbaa !147
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZN4dmlc12OMPException3RunIZNK7xgboost9Predictor18InitOutPredictionsERKNS2_8MetaInfoEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEE3$_0JmEEEvT_DpT0_.exit92.loopexit.i.i", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i89.i.i.a, %middle.block
  %.05.i.i90.i.i.ph = phi i64 [ 0, %.lr.ph.i.i89.i.i.a ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05.i.i90.i.i.prol = phi i64 [ %i.fy, %scalar.ph.prol ], [ %.05.i.i90.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fu = mul i64 %.05.i.i90.i.i.prol, %i.fl
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !147
  %i.fx = getelementptr [4 x i8], ptr %23, i64 %.05.i.i90.i.i.prol
  store float %i.fw, ptr %i.fx, align 4, !tbaa !147
  %i.fy = add nuw nsw i64 %.05.i.i90.i.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i90.i.i.unr = phi i64 [ %.05.i.i90.i.i.ph, %scalar.ph.preheader ], [ %i.fy, %scalar.ph.prol ]
  %i.fz = sub nsw i64 %.05.i.i90.i.i.ph, %i.bt
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %"_ZN4dmlc12OMPException3RunIZNK7xgboost9Predictor18InitOutPredictionsERKNS2_8MetaInfoEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEE3$_0JmEEEvT_DpT0_.exit92.loopexit.i.i", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i90.i.i = phi i64 [ %i.gu, %scalar.ph ], [ %.05.i.i90.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gb = mul i64 %.05.i.i90.i.i, %i.fl
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !147
  %i.ge = getelementptr [4 x i8], ptr %23, i64 %.05.i.i90.i.i
  store float %i.gd, ptr %i.ge, align 4, !tbaa !147
  %i.gf = add nuw nsw i64 %.05.i.i90.i.i, 1       ; 2 uses
  %i.gg = mul i64 %i.gf, %i.fl
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !147
  %i.gj = getelementptr [4 x i8], ptr %23, i64 %i.gf
  store float %i.gi, ptr %i.gj, align 4, !tbaa !147
  %i.gk = add nuw nsw i64 %.05.i.i90.i.i, 2       ; 2 uses
  %i.gl = mul i64 %i.gk, %i.fl
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !147
  %i.go = getelementptr [4 x i8], ptr %23, i64 %i.gk
  store float %i.gn, ptr %i.go, align 4, !tbaa !147
  %i.gp = add nuw nsw i64 %.05.i.i90.i.i, 3       ; 2 uses
  %i.gq = mul i64 %i.gp, %i.fl
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !147
  %i.gt = getelementptr [4 x i8], ptr %23, i64 %i.gp
  store float %i.gs, ptr %i.gt, align 4, !tbaa !147
  %i.gu = add nuw nsw i64 %.05.i.i90.i.i, 4       ; 2 uses
  %exitcond.not.i.i91.i.i.3 = icmp eq i64 %i.gu, %i.bt
  br i1 %exitcond.not.i.i91.i.i.3, label %"_ZN4dmlc12OMPException3RunIZNK7xgboost9Predictor18InitOutPredictionsERKNS2_8MetaInfoEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEE3$_0JmEEEvT_DpT0_.exit92.loopexit.i.i", label %scalar.ph, !llvm.loop !77

"_ZN4dmlc12OMPException3RunIZNK7xgboost9Predictor18InitOutPredictionsERKNS2_8MetaInfoEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEE3$_0JmEEEvT_DpT0_.exit92.loopexit.i.i": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gv = add nuw i64 %.060126.i.i, 1             ; 2 uses
  %exitcond150.not.i.i = icmp eq i64 %i.gv, %i.dg
  br i1 %exitcond150.not.i.i, label %"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit", label %.lr.ph.i.i89.i.i.a, !llvm.loop !78

bb.am:                                            ; preds = %bb.ai
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #28
  unreachable

"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit": ; preds = %"_ZN4dmlc12OMPException3RunIZNK7xgboost9Predictor18InitOutPredictionsERKNS2_8MetaInfoEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEE3$_0JmEEEvT_DpT0_.exit92.loopexit.i.i", %"_ZZNK7xgboost9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEENK3$_0clImEEDaT_.exit.loopexit.i.i", %_ZN7xgboost6common16AssertGPUSupportEv.exit, %_ZN7xgboost6common17AssertSYCLSupportEv.exit, %.preheader.i.i, %.preheader117.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.an

bb.an:                                            ; preds = %"_ZN7xgboost6common11ParallelForImZNKS_9Predictor18InitOutPredictionsERKNS_8MetaInfoEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEE3$_0EEvT_iOT0_.exit", %bb.j
  ret void

bb.ao:                                            ; preds = %bb.r, %bb.d
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

declare void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #9

declare void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost23ValidateBaseMarginShapeILi2EEEvRKNS_6linalg6TensorIfXT_EEEmj(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !30
  store i32 %2, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.e = icmp ult i64 %1, 10
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.m, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.l, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.f = icmp ult i64 %.02328.i.i, 100
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.l = udiv i64 %.02328.i.i, 10000
  %i.m = add i32 %.029.i.i, 4                     ; 2 uses
  %i.n = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !159

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.k, %bb.f ], [ %i.g, %bb.b ], [ %i.i, %bb.d ], [ 1, %bb.a ], [ %i.m, %bb.g ]
  %i.o = zext i32 %.022.i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !34, !alias.scope !175
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.o, i8 noundef signext 0)
  %i.q = load ptr, ptr %7, align 8, !tbaa !23, !alias.scope !175 ; 4 uses
  %i.r = icmp ugt i64 %1, 99
  br i1 %i.r, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28, !alias.scope !175
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.y, %.lr.ph.i4.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ai, %.lr.ph.i4.i ], [ %i.v, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.w = urem i64 %.020.i.i, 100
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.x ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24, !noalias !175
  %i.ac = zext i32 %.01819.i.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !24
  %i.ae = load i8, ptr %i.z, align 2, !tbaa !24, !noalias !175
  %i.af = add i32 %.01819.i.i, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ag
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !24
  %i.ai = add i32 %.01819.i.i, -2
  %i.aj = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.aj, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !160

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.y, %.lr.ph.i4.i ] ; 3 uses
  %i.ak = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.al = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !24, !noalias !175
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !24
  %i.aq = load i8, ptr %i.am, align 2, !tbaa !24, !noalias !175
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ar = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.as = or disjoint i8 %i.ar, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.as, %bb.i ], [ %i.aq, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.q, align 1, !tbaa !24
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 41)
          to label %.noexc24 unwind label %bb.ah  ; 6 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !34, !alias.scope !176
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc24
  store ptr %i.av, ptr %6, align 8, !tbaa !23, !alias.scope !176
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !24
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !24, !alias.scope !176
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
end_hunk_0
