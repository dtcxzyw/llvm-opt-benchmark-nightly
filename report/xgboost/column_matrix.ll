inline.NumInlined: 760
inline.NumDeleted: 363
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7xgboost6common12ColumnMatrix11InitStorageERKNS_16GHistIndexMatrixEd:bb.a
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.g, label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #9
  br label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit

_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !21  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !24
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #9, !inline_history !31
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #9, !inline_history !31
  br label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.k ], [ %i.ax, %bb.l ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.m, label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, !prof !30

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #9
  br label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit

_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit: ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 -1, ptr %i.b, align 4, !tbaa !29
  %.not129 = icmp eq i32 %i.j, 0                  ; 2 uses
  br i1 %.not129, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph

.noexc:                                           ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.az = shl nuw nsw i64 %i.m, 3                 ; 2 uses
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #27 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.az, i1 false), !tbaa !32
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.m
  %i.bc = ptrtoint ptr %i.bb to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

.lr.ph:                                           ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ 0, %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.bd = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  %i.bh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = sub i32 %i.bg, %i.bk                    ; 2 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !29
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !29, !noalias !36
  %.not.i = icmp ugt i32 %i.bl, %i.bm
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %.lr.ph
  call void @_ZN4dmlc14LogCheckFormatIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.11") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.n
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bn, ptr noundef nonnull @.str, i32 noundef 28)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.o

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc64
  %i.bo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.p ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !45
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bs, i64 noundef %i.bu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %.noexc64, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.q unwind label %bb.cq

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %i.by, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZNSt6vectorImSaImEED2Ev.exit111

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.pr118 = load ptr, ptr %4, align 8, !tbaa !39  ; 4 uses
  %.not.i73 = icmp eq ptr %.pr118, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %.pr118, align 8, !tbaa !41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pr118, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !28
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr118, i64 noundef 32) #28
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.r, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.noexc, label %.lr.ph, !llvm.loop !46

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, %.noexc
  %.sroa.12.0 = phi i64 [ 0, %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit ], [ %i.bc, %.noexc ] ; 2 uses
  %.sroa.0112.0 = phi ptr [ null, %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit ], [ %i.ba, %.noexc ] ; 15 uses
  %i.ce = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc75 unwind label %.loopexit.split-lp ; 2 uses

.noexc75:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %i.cm = add nsw i64 %i.cl, -1                   ; 2 uses
  %.not.i74 = icmp eq i64 %i.cm, 0
  br i1 %.not.i74, label %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %.noexc75
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %scevgep158.a = getelementptr i8, ptr %.sroa.0112.0, i64 8
  br label %bb.t

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc77
  %i.co = icmp ugt i64 %i.cm, %i.cx
  br i1 %i.co, label %bb.t, label %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit, !llvm.loop !49

bb.t:                                             ; preds = %.loopexit.i, %.lr.ph16.i
  %i.cp = phi i64 [ 0, %.lr.ph16.i ], [ %i.cx, %.loopexit.i ] ; 3 uses
  %.01215.i = phi i32 [ 0, %.lr.ph16.i ], [ %i.cw, %.loopexit.i ]
  %i.cq = shl nuw nsw i64 %i.cp, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0112.0, i64 %i.cq
  %scevgep159.a = getelementptr i8, ptr %scevgep158.a, i64 %i.cq
  %i.cr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %bb.t
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cp
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !29 ; 2 uses
  %i.cv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc77 unwind label %.loopexit

.noexc77:                                         ; preds = %.noexc76
  %i.cw = add i32 %.01215.i, 1                    ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29 ; 2 uses
  %i.db = icmp ult i32 %i.cu, %i.da
  br i1 %i.db, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.noexc77
  %i.dc = load ptr, ptr %i.cn, align 8, !tbaa !50 ; 8 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %i.cp ; 7 uses
  %.promoted.i = load i64, ptr %i.dd, align 8, !tbaa !32 ; 3 uses
  %i.de = zext i32 %i.cu to i64                   ; 6 uses
  %wide.trip.count.i = zext i32 %i.da to i64      ; 5 uses
  %i.df = sub nsw i64 %wide.trip.count.i, %i.de   ; 3 uses
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dg = shl nuw nsw i64 %i.de, 3
  %scevgep160.a = getelementptr nuw i8, ptr %i.dc, i64 %i.dg
  %i.dh = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep161 = getelementptr i8, ptr %i.dc, i64 %i.dh
  %bound0 = icmp ult ptr %scevgep, %scevgep161
  %bound1 = icmp ult ptr %scevgep160.a, %scevgep159.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, -4                      ; 3 uses
  %i.di = add nsw i64 %n.vec, %i.de
  %i.dj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i, i64 0
  %invariant.gep = getelementptr [8 x i8], ptr %i.dc, i64 %i.de
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dj, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi162 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !32, !alias.scope !51
  %wide.load163 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !32, !alias.scope !51
  %i.dl = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.dm = add <2 x i64> %wide.load163, %vec.phi162 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dm, %i.dl
  %i.do = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.do, ptr %i.dd, align 8, !tbaa !32, !alias.scope !57, !noalias !51
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i ], [ %i.di, %middle.block ] ; 4 uses
  %.ph = phi i64 [ %.promoted.i, %vector.memcheck ], [ %.promoted.i, %.lr.ph.i ], [ %i.do, %middle.block ] ; 2 uses
  %i.dp = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.dp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dq = phi i64 [ %i.dt, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.prol
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !32
  %i.dt = add i64 %i.ds, %i.dq                    ; 3 uses
  store i64 %i.dt, ptr %i.dd, align 8, !tbaa !32
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !59

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.dt, %scalar.ph.prol ]
  %i.du = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dw = phi i64 [ %i.el, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = add i64 %i.dy, %i.dw                    ; 2 uses
  store i64 %i.dz, ptr %i.dd, align 8, !tbaa !32
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !32
  %i.ed = add i64 %i.ec, %i.dz                    ; 2 uses
  store i64 %i.ed, ptr %i.dd, align 8, !tbaa !32
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.eh = add i64 %i.eg, %i.ed                    ; 2 uses
  store i64 %i.eh, ptr %i.dd, align 8, !tbaa !32
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !32
  %i.el = add i64 %i.ek, %i.eh                    ; 2 uses
  store i64 %i.el, ptr %i.dd, align 8, !tbaa !32
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !61

_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit: ; preds = %.loopexit.i, %.noexc75
  br i1 %.not129, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit
  %i.em = uitofp i64 %spec.select.i to double
  %i.en = fmul double %2, %i.em                   ; 3 uses
  %xtraiter165 = and i64 %i.m, 1
  %i.eo = icmp eq i32 %i.j, 1
  br i1 %i.eo, label %.epil.preheader, label %.lr.ph123.new

.lr.ph123.new:                                    ; preds = %.lr.ph123
  %unroll_iter = and i64 %i.m, 4294967294
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !62  ; 2 uses
  br label %bb.u

._crit_edge124.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %._crit_edge124, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge124.loopexit.unr-lcssa, %.lr.ph123
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next133.1, %._crit_edge124.loopexit.unr-lcssa ] ; 2 uses
  %.042121.epil.init = phi i1 [ true, %.lr.ph123 ], [ %..042121.1, %._crit_edge124.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %indvars.iv132.epil.init
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !32
  %i.es = uitofp i64 %i.er to double
  %i.et = fcmp ogt double %i.en, %i.es            ; 2 uses
  %i.eu = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv132.epil.init
  %..epil = zext i1 %i.et to i8
  %not..epil = xor i1 %i.et, true
  %..042121.epil = select i1 %not..epil, i1 %.042121.epil.init, i1 false
  store i8 %..epil, ptr %i.ev, align 1, !tbaa !18
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.epil.preheader, %._crit_edge124.loopexit.unr-lcssa, %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit
  %.042.lcssa = phi i1 [ true, %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit ], [ %..042121.1, %._crit_edge124.loopexit.unr-lcssa ], [ %..042121.epil, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ew = and i64 %i.h, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i64 0, ptr %i.d, align 8, !tbaa !32
  invoke void @_ZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEmRKS3_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView") align 8 %6, i64 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.v unwind label %bb.ai

.loopexit:                                        ; preds = %bb.t, %.noexc76
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.u:                                             ; preds = %bb.u, %.lr.ph123.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph123.new ], [ %indvars.iv.next133.1, %bb.u ] ; 4 uses
  %.042121 = phi i1 [ true, %.lr.ph123.new ], [ %..042121.1, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph123.new ], [ %niter.next.1, %bb.u ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %indvars.iv132
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !32
  %i.ez = uitofp i64 %i.ey to double
  %i.fa = fcmp ogt double %i.en, %i.ez            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv132
  %. = zext i1 %i.fa to i8
  store i8 %., ptr %i.fb, align 1, !tbaa !18
  %indvars.iv.next133 = or disjoint i64 %indvars.iv132, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %indvars.iv.next133
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !32
  %i.fe = uitofp i64 %i.fd to double
  %i.ff = fcmp ogt double %i.en, %i.fe            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv.next133
  %..1 = zext i1 %i.ff to i8
  %i.fh = select i1 %i.ff, i1 true, i1 %i.fa
  %i.fi = xor i1 %i.fh, true
  %..042121.1 = select i1 %i.fi, i1 %.042121, i1 false ; 3 uses
  store i8 %..1, ptr %i.fg, align 1, !tbaa !18
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge124.loopexit.unr-lcssa, label %bb.u, !llvm.loop !64

bb.v:                                             ; preds = %._crit_edge124
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fo = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !21 ; 8 uses
  store <2 x ptr> %i.fo, ptr %i.fk, align 8, !tbaa !20
  %.not.i.i.i.i.i78 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i78, label %_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.fq, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !24
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !25
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #9, !inline_history !65
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
end_hunk_0
