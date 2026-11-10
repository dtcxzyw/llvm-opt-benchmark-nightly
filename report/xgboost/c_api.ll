Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/c_api?download=true
inline.NumInlined: 16379
inline.NumDeleted: 3208
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 38
begin_hunk_0_@XGDMatrixGetDataAsCSR:bb.a
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit106, %_ZN4dmlc15LogMessageFatalC2EPKci.exit104
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ag unwind label %bb.ds

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn52 = phi { ptr, i32 } [ %i.al, %bb.ae ], [ %i.am, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.dc

bb.ah:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.an = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 -1, ptr %i.c, align 4, !tbaa !50
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !76, !noalias !661
  %.not.i = icmp ugt i64 %i.as, 4294967295
  br i1 %.not.i, label %bb.aj, label %_ZN4dmlc11LogCheck_LEImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_LEImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN4dmlc11LogCheck_LEImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.am

_ZN4dmlc11LogCheck_LEImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.aj
  %.pr = load ptr, ptr %14, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.not174 = icmp eq ptr %.pr, null
  br i1 %.not174, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4dmlc11LogCheck_LEImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.at = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc111 unwind label %bb.an

.noexc111:                                        ; preds = %bb.ak
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.at, ptr noundef nonnull @.str.4, i32 noundef 935)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit113 unwind label %bb.an

_ZN4dmlc15LogMessageFatalC2EPKci.exit113:         ; preds = %.noexc111
  %i.au = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit115 unwind label %bb.ao ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit115: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit113
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.25, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit115
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.63, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.ax = load ptr, ptr %14, align 8, !tbaa !127  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !57
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ao

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aq unwind label %bb.an

bb.al:                                            ; preds = %bb.ah
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.bz

bb.am:                                            ; preds = %bb.aj
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.bz

bb.an:                                            ; preds = %.noexc111, %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.ap

bb.ao:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit115, %_ZN4dmlc15LogMessageFatalC2EPKci.exit113
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ap unwind label %bb.ds

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn54 = phi { ptr, i32 } [ %i.bf, %bb.an ], [ %i.bg, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #19
  br label %bb.bz

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %.pr171 = load ptr, ptr %14, align 8, !tbaa !127 ; 4 uses
  %.not.i123 = icmp eq ptr %.pr171, null
  br i1 %.not.i123, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bh = load ptr, ptr %.pr171, align 8, !tbaa !75 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.pr171, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ar
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !58
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr171, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_LEImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_LEImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.bm = load ptr, ptr %10, align 8, !tbaa !132  ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %bb.as unwind label %bb.ca

bb.as:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %17, i8 0, i64 48, i1 false)
  store double +qnan, ptr %i.br, align 8, !tbaa !324
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i8 1, ptr %i.bs, align 8, !tbaa !325
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 44
  store i32 3, ptr %i.bt, align 4, !tbaa !326
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !63, !noalias !662
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !662
  invoke void %i.bw(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_13ExtSparsePageEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit unwind label %bb.cb, !inline_history !637

_ZN7xgboost7DMatrix10GetBatchesINS_13ExtSparsePageEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !133, !noalias !663 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %16, align 16, !tbaa !139, !noalias !663
  store <2 x ptr> %i.ca, ptr %18, align 16, !tbaa !139, !alias.scope !663
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE5beginEv.exit, label %bb.at

bb.at:                                            ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_13ExtSparsePageEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58, !noalias !663
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !50, !noalias !663
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !50, !noalias !663
  br label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE5beginEv.exit

bb.av:                                            ; preds = %bb.at
  %i.cf = atomicrmw volatile add ptr %i.cb, i32 1 acq_rel, align 4, !noalias !663 ; 0 uses
  br label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE5beginEv.exit

_ZN7xgboost8BatchSetINS_13ExtSparsePageEE5beginEv.exit: ; preds = %_ZN7xgboost7DMatrix10GetBatchesINS_13ExtSparsePageEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit, %bb.au, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false), !alias.scope !664
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13ExtSparsePageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef null)
          to label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE3endEv.exit unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE5beginEv.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13ExtSparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #19
  br label %.body125

_ZN7xgboost8BatchSetINS_13ExtSparsePageEE3endEv.exit: ; preds = %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE5beginEv.exit, %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit"
  %i.ch = invoke noundef zeroext i1 @_ZNK7xgboost13BatchIteratorINS_13ExtSparsePageEE5AtEndEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.ax unwind label %bb.db

bb.ax:                                            ; preds = %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE3endEv.exit
  br i1 %i.ch, label %bb.ay, label %bb.cc

bb.ay:                                            ; preds = %bb.ax
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.ck, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !136
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #19, !inline_history !22
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #19, !inline_history !22
  br label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i = phi i32 [ %i.cn, %bb.bc ], [ %i.cx, %bb.bd ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.be, label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit, !prof !79

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #19
  br label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit: ; preds = %bb.ay, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.cz = load ptr, ptr %i.bx, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i128 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i128, label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit132, label %bb.bf

bb.bf:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.da, align 8, !tbaa !135
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !136
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #19, !inline_history !22
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #19, !inline_history !22
  br label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit132

bb.bh:                                            ; preds = %bb.bf
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i129 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i129, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130

bb.bj:                                            ; preds = %bb.bh
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i131 = phi i32 [ %i.dd, %bb.bi ], [ %i.dn, %bb.bj ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i131, 1
  br i1 %i.do, label %bb.bk, label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit132, !prof !79

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #19
  br label %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit132

_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit132: ; preds = %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.dp = load ptr, ptr %i.by, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i133 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i133, label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit132
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.dq, align 8, !tbaa !135
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !136
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #19, !inline_history !642
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #19, !inline_history !642
  br label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev.exit

bb.bn:                                            ; preds = %bb.bl
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i134 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i.i.i134, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i = phi i32 [ %i.dt, %bb.bo ], [ %i.ed, %bb.bp ]
  %i.ee = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ee, label %bb.bq, label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev.exit, !prof !79

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #19
  br label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev.exit

_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev.exit: ; preds = %_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev.exit132, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !133 ; 8 uses
  %.not.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.eh, align 8, !tbaa !135
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !136
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !63
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #19, !inline_history !16
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !63
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #19, !inline_history !16
  br label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bt:                                            ; preds = %bb.br
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i135 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i135, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i = phi i32 [ %i.ek, %bb.bu ], [ %i.eu, %bb.bv ]
  %i.ev = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ev, label %bb.bw, label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !79

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #19
  br label %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev.exit, %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ew = load ptr, ptr %9, align 8, !tbaa !61    ; 4 uses
  %.not.i.i.i136 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i136, label %_ZN7xgboost4JsonD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = atomicrmw add ptr %i.ex, i32 -1 release, align 4
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.by, label %_ZN7xgboost4JsonD2Ev.exit

bb.by:                                            ; preds = %bb.bx
  fence acquire
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !63
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(24) %i.ew) #19, !inline_history !6
  br label %_ZN7xgboost4JsonD2Ev.exit

_ZN7xgboost4JsonD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.dq

bb.bz:                                            ; preds = %bb.ap, %bb.am, %bb.al
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.ap ], [ %i.be, %bb.am ], [ %i.bd, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.dc

bb.ca:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.dc

bb.cb:                                            ; preds = %bb.as
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.dc

bb.cc:                                            ; preds = %bb.ax
  %i.ff = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7xgboost13BatchIteratorINS_13ExtSparsePageEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.cd unwind label %bb.db     ; 4 uses

bb.cd:                                            ; preds = %bb.cc
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !667 ; 2 uses
  %.not175 = icmp eq ptr %i.fg, null
  br i1 %.not175, label %bb.ce, label %bb.cj, !prof !79

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.fh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc137 unwind label %bb.cg

.noexc137:                                        ; preds = %bb.ce
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.fh, ptr noundef nonnull @.str.4, i32 noundef 938)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit139 unwind label %bb.cg

_ZN4dmlc15LogMessageFatalC2EPKci.exit139:         ; preds = %.noexc137
  %i.fi = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit141 unwind label %bb.ch ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit141: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit139
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.64, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.ch ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit141
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145 unwind label %bb.ch ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %.pre = load ptr, ptr %i.ff, align 8, !tbaa !667
  br label %bb.cj

bb.cg:                                            ; preds = %.noexc137, %bb.ce, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.fl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.ci

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit141, %_ZN4dmlc15LogMessageFatalC2EPKci.exit139
  %i.fm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ci unwind label %bb.ds

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn57 = phi { ptr, i32 } [ %i.fl, %bb.cg ], [ %i.fm, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.body151

bb.cj:                                            ; preds = %bb.cf, %bb.cd
  %i.fn = phi ptr [ %.pre, %bb.cf ], [ %i.fg, %bb.cd ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fo)
          to label %bb.ck unwind label %bb.db     ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !295 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !295
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = icmp sgt i64 %i.fv, 8
  br i1 %i.fw, label %bb.cl, label %bb.cm, !prof !105

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %i.fq, i64 %i.fv, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit

bb.cm:                                            ; preds = %bb.ck
  %i.fx = icmp eq i64 %i.fv, 8
  br i1 %i.fx, label %bb.cn, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit

bb.cn:                                            ; preds = %bb.cm
  %i.fy = load i64, ptr %i.fq, align 8, !tbaa !76
  store i64 %i.fy, ptr %2, align 8, !tbaa !76
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit: ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.fz = load ptr, ptr %i.ff, align 8, !tbaa !667 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorImE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ga)
          to label %.noexc146 unwind label %bb.db ; 0 uses

.noexc146:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %bb.co unwind label %bb.db     ; 2 uses

bb.co:                                            ; preds = %.noexc146
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !670, !noalias !671
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !672, !noalias !671 ; 19 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3                 ; 8 uses
  %i.gl = load ptr, ptr %i.ff, align 8, !tbaa !667
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorINS_5EntryEE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gm)
          to label %bb.cp unwind label %bb.db     ; 8 uses

bb.cp:                                            ; preds = %bb.co
  %i.go = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = invoke noundef ptr %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %bb.cq unwind label %bb.db

bb.cq:                                            ; preds = %bb.cp
  %i.gt = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.gs)
          to label %bb.cr unwind label %bb.db     ; 3 uses

bb.cr:                                            ; preds = %bb.cq
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %.preheader.i.i, label %bb.cs

.preheader.i.i:                                   ; preds = %bb.cr
  %.not138.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not138.i.i, label %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit", label %.lr.ph131.i.i.preheader

.lr.ph131.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.gv = add i64 %i.gn, -1
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gv) ; 3 uses
  %i.gx = add i64 %i.gw, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.gx, 9
  br i1 %min.iters.check, label %.lr.ph131.i.i.preheader258, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph131.i.i.preheader
  %i.gy = shl i64 %i.gw, 2
  %24 = add i64 %i.gy, 4                          ; 2 uses
  %i.gz = getelementptr i8, ptr %4, i64 %24
  %i.ha = getelementptr i8, ptr %i.gg, i64 4
  %i.hb = shl i64 %i.gw, 3                        ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gg, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  %i.he = getelementptr i8, ptr %3, i64 %24
  %i.hf = getelementptr i8, ptr %i.gg, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.hf, i64 4
  %bound0 = icmp ult ptr %4, %i.hd
  %bound1 = icmp ult ptr %i.ha, %i.gz
  %found.conflict = and i1 %bound0, %bound1
  %bound0213 = icmp ult ptr %3, %i.hg
  %bound1214 = icmp ult ptr %i.gg, %i.he
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx = or i1 %found.conflict, %found.conflict215
  br i1 %conflict.rdx, label %.lr.ph131.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hh = and i64 %i.gx, 7                        ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  %i.hj = select i1 %i.hi, i64 8, i64 %i.hh
  %n.vec = sub i64 %i.gx, %i.hj
  %i.hk = freeze i64 %n.vec                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %wide.vec = load <8 x float>, ptr %i.hl, align 4, !tbaa !58 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec216 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec217 = load <8 x float>, ptr %i.hn, align 4, !tbaa !58 ; 2 uses
  %strided.vec218 = shufflevector <8 x float> %wide.vec217, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec219 = shufflevector <8 x float> %wide.vec217, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x float> %strided.vec216, ptr %i.ho, align 4, !tbaa !104, !alias.scope !673, !noalias !674
  store <4 x float> %strided.vec219, ptr %i.hp, align 4, !tbaa !104, !alias.scope !673, !noalias !674
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <4 x float> %strided.vec, ptr %i.hq, align 4, !tbaa !50, !alias.scope !675, !noalias !676
  store <4 x float> %strided.vec218, ptr %i.hr, align 4, !tbaa !50, !alias.scope !675, !noalias !676
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %i.hk
  br i1 %i.hs, label %.lr.ph131.i.i.preheader258, label %vector.body, !llvm.loop !650

.lr.ph131.i.i.preheader258:                       ; preds = %vector.body, %vector.memcheck, %.lr.ph131.i.i.preheader
  %.049130.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph131.i.i.preheader ], [ %i.hk, %vector.body ] ; 7 uses
  %i.ht = sub i64 %i.gn, %.049130.i.i.ph          ; 2 uses
  %xtraiter262 = and i64 %i.ht, 1
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph131.i.i.prol.loopexit, label %.lr.ph131.i.i.prol

.lr.ph131.i.i.prol:                               ; preds = %.lr.ph131.i.i.preheader258
  %exitcond156.not.i.i.prol = icmp eq i64 %.049130.i.i.ph, %i.gk
  br i1 %exitcond156.not.i.i.prol, label %.loopexit264, label %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.prol", !prof !79

"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.prol": ; preds = %.lr.ph131.i.i.prol
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.049130.i.i.ph ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !678
  %i.hx = load i32, ptr %i.hu, align 4, !tbaa !679
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.049130.i.i.ph
  store float %i.hw, ptr %i.hy, align 4, !tbaa !104
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.049130.i.i.ph
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !50
  %i.ia = add nuw i64 %.049130.i.i.ph, 1
  br label %.lr.ph131.i.i.prol.loopexit

.lr.ph131.i.i.prol.loopexit:                      ; preds = %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.prol", %.lr.ph131.i.i.preheader258
  %.049130.i.i.unr = phi i64 [ %.049130.i.i.ph, %.lr.ph131.i.i.preheader258 ], [ %i.ia, %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.prol" ]
  %i.ib = icmp eq i64 %i.ht, 1
  br i1 %i.ib, label %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit", label %.lr.ph131.i.i

.lr.ph131.i.i:                                    ; preds = %.lr.ph131.i.i.prol.loopexit, %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.1"
  %.049130.i.i = phi i64 [ %i.ip, %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.1" ], [ %.049130.i.i.unr, %.lr.ph131.i.i.prol.loopexit ] ; 6 uses
  %exitcond156.not.i.i = icmp eq i64 %.049130.i.i, %i.gk
  br i1 %exitcond156.not.i.i, label %.loopexit264, label %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i", !prof !79

.loopexit264:                                     ; preds = %.lr.ph131.i.i.prol, %.lr.ph131.i.i, %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i"
  call void @_ZSt9terminatev() #38
  unreachable

"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i": ; preds = %.lr.ph131.i.i
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.049130.i.i ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !678
  %i.if = load i32, ptr %i.ic, align 4, !tbaa !679
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.049130.i.i
  store float %i.ie, ptr %i.ig, align 4, !tbaa !104
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.049130.i.i
  store i32 %i.if, ptr %i.ih, align 4, !tbaa !50
  %i.ii = add nuw i64 %.049130.i.i, 1             ; 4 uses
  %exitcond156.not.i.i.1 = icmp eq i64 %i.ii, %i.gk
  br i1 %exitcond156.not.i.i.1, label %.loopexit264, label %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.1", !prof !79

"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.1": ; preds = %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i"
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load float, ptr %i.ik, align 4, !tbaa !678
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !679
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ii
  store float %i.il, ptr %i.in, align 4, !tbaa !104
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ii
  store i32 %i.im, ptr %i.io, align 4, !tbaa !50
  %i.ip = add nuw i64 %.049130.i.i, 2             ; 2 uses
  %exitcond157.not.i.i.1 = icmp eq i64 %i.ip, %i.gn
  br i1 %exitcond157.not.i.i.1, label %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit", label %.lr.ph131.i.i, !llvm.loop !651

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.gt, ptr %i.a, align 4, !tbaa !50, !noalias !680
  store i32 1, ptr %i.b, align 4, !tbaa !50, !noalias !680
  %.not.i.i.i148 = icmp slt i32 %i.gt, 1
  br i1 %.not.i.i.i148, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader113.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i: ; preds = %bb.cs
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc150 unwind label %bb.db

.noexc150:                                        ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i149 = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i149, label %.preheader113.i.i, label %bb.ct

bb.ct:                                            ; preds = %.noexc150
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.iq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc.i.i unwind label %bb.cu

.noexc.i.i:                                       ; preds = %bb.ct
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.iq, ptr noundef nonnull @.str.326, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i unwind label %bb.cu

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i:        ; preds = %.noexc.i.i
  %i.ir = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.cv ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.25, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.327, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i.i unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.iu = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !75
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !57
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef %i.iv, i64 noundef %i.ix)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.cv

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i.i
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i.i unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.cx unwind label %bb.cu

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i.i, %.noexc.i.i, %bb.ct
  %i.ja = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %bb.cw

bb.cv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.jb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i.i = phi { ptr, i32 } [ %i.ja, %bb.cu ], [ %i.jb, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.body151

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pr105.i.i = load ptr, ptr %5, align 8, !tbaa !127 ; 4 uses
  %.not.i63.i.i = icmp eq ptr %.pr105.i.i, null
  br i1 %.not.i63.i.i, label %.preheader113.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jc = load ptr, ptr %.pr105.i.i, align 8, !tbaa !75 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.pr105.i.i, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cy
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !58
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr105.i.i, i64 noundef 32) #36
  br label %.preheader113.i.i

.preheader113.i.i:                                ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.cx, %.noexc150, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.not134.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not134.i.i, label %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit", label %.lr.ph123.i.i.preheader

.lr.ph123.i.i.preheader:                          ; preds = %.preheader113.i.i
  %i.jh = add i64 %i.gn, -1
  %i.ji = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.jh) ; 3 uses
  %i.jj = add i64 %i.ji, 1                        ; 3 uses
  %min.iters.check236 = icmp ult i64 %i.jj, 9
  br i1 %min.iters.check236, label %.lr.ph123.i.i.preheader259, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph123.i.i.preheader
  %i.jk = shl i64 %i.ji, 2
  %25 = add i64 %i.jk, 4                          ; 2 uses
  %i.jl = getelementptr i8, ptr %4, i64 %25
  %i.jm = getelementptr i8, ptr %i.gg, i64 4
  %i.jn = shl i64 %i.ji, 3                        ; 2 uses
  %i.jo = getelementptr i8, ptr %i.gg, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 8
  %i.jq = getelementptr i8, ptr %3, i64 %25
  %i.jr = getelementptr i8, ptr %i.gg, i64 %i.jn
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  %bound0238 = icmp ult ptr %4, %i.jp
  %bound1239 = icmp ult ptr %i.jm, %i.jl
  %found.conflict240 = and i1 %bound0238, %bound1239
  %bound0241 = icmp ult ptr %3, %i.js
  %bound1242 = icmp ult ptr %i.gg, %i.jq
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %found.conflict240, %found.conflict243
  br i1 %conflict.rdx244, label %.lr.ph123.i.i.preheader259, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck237
  %i.jt = and i64 %i.jj, 7                        ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 0
  %i.jv = select i1 %i.ju, i64 8, i64 %i.jt
  %n.vec246 = sub i64 %i.jj, %i.jv
  %i.jw = freeze i64 %n.vec246                    ; 2 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next255, %vector.body247 ] ; 5 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index248
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index248
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %wide.vec249 = load <8 x float>, ptr %i.jx, align 4, !tbaa !58 ; 2 uses
  %strided.vec250 = shufflevector <8 x float> %wide.vec249, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec251 = shufflevector <8 x float> %wide.vec249, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec252 = load <8 x float>, ptr %i.jz, align 4, !tbaa !58 ; 2 uses
  %strided.vec253 = shufflevector <8 x float> %wide.vec252, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec254 = shufflevector <8 x float> %wide.vec252, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index248 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store <4 x float> %strided.vec251, ptr %i.ka, align 4, !tbaa !104, !alias.scope !681, !noalias !682
  store <4 x float> %strided.vec254, ptr %i.kb, align 4, !tbaa !104, !alias.scope !681, !noalias !682
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index248 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store <4 x float> %strided.vec250, ptr %i.kc, align 4, !tbaa !50, !alias.scope !683, !noalias !684
  store <4 x float> %strided.vec253, ptr %i.kd, align 4, !tbaa !50, !alias.scope !683, !noalias !684
  %index.next255 = add nuw i64 %index248, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next255, %i.jw
  br i1 %i.ke, label %.lr.ph123.i.i.preheader259, label %vector.body247, !llvm.loop !659

.lr.ph123.i.i.preheader259:                       ; preds = %vector.body247, %vector.memcheck237, %.lr.ph123.i.i.preheader
  %.041122.i.i.ph = phi i64 [ 0, %vector.memcheck237 ], [ 0, %.lr.ph123.i.i.preheader ], [ %i.jw, %vector.body247 ] ; 7 uses
  %i.kf = sub i64 %i.gn, %.041122.i.i.ph          ; 2 uses
  %xtraiter = and i64 %i.kf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.i.i.prol.loopexit, label %.lr.ph123.i.i.prol

.lr.ph123.i.i.prol:                               ; preds = %.lr.ph123.i.i.preheader259
  %exitcond148.not.i.i.prol = icmp eq i64 %.041122.i.i.ph, %i.gk
  br i1 %exitcond148.not.i.i.prol, label %.loopexit, label %.lr.ph123.i.i.prol.loopexit.unr-lcssa, !prof !79

.lr.ph123.i.i.prol.loopexit.unr-lcssa:            ; preds = %.lr.ph123.i.i.prol
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.041122.i.i.ph ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !678
  %i.kj = load i32, ptr %i.kg, align 4, !tbaa !679
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.041122.i.i.ph
  store float %i.ki, ptr %i.kk, align 4, !tbaa !104
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.041122.i.i.ph
  store i32 %i.kj, ptr %i.kl, align 4, !tbaa !50
  %i.km = add nuw i64 %.041122.i.i.ph, 1
  br label %.lr.ph123.i.i.prol.loopexit

.lr.ph123.i.i.prol.loopexit:                      ; preds = %.lr.ph123.i.i.prol.loopexit.unr-lcssa, %.lr.ph123.i.i.preheader259
  %.041122.i.i.unr = phi i64 [ %.041122.i.i.ph, %.lr.ph123.i.i.preheader259 ], [ %i.km, %.lr.ph123.i.i.prol.loopexit.unr-lcssa ]
  %i.kn = icmp eq i64 %i.kf, 1
  br i1 %i.kn, label %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit", label %.lr.ph123.i.i

.lr.ph123.i.i:                                    ; preds = %.lr.ph123.i.i.prol.loopexit, %bb.cz
  %.041122.i.i = phi i64 [ %i.lb, %bb.cz ], [ %.041122.i.i.unr, %.lr.ph123.i.i.prol.loopexit ] ; 6 uses
  %exitcond148.not.i.i = icmp eq i64 %.041122.i.i, %i.gk
  br i1 %exitcond148.not.i.i, label %.loopexit, label %.lr.ph123.i.i.1, !prof !79

.loopexit:                                        ; preds = %.lr.ph123.i.i.prol, %.lr.ph123.i.i, %.lr.ph123.i.i.1
  call void @_ZSt9terminatev() #38
  unreachable

.lr.ph123.i.i.1:                                  ; preds = %.lr.ph123.i.i
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.041122.i.i ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !678
  %i.kr = load i32, ptr %i.ko, align 4, !tbaa !679
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.041122.i.i
  store float %i.kq, ptr %i.ks, align 4, !tbaa !104
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.041122.i.i
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !50
  %i.ku = add nuw i64 %.041122.i.i, 1             ; 4 uses
  %exitcond148.not.i.i.1 = icmp eq i64 %i.ku, %i.gk
  br i1 %exitcond148.not.i.i.1, label %.loopexit, label %bb.cz, !prof !79

bb.cz:                                            ; preds = %.lr.ph123.i.i.1
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !678
  %i.ky = load i32, ptr %i.kv, align 4, !tbaa !679
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ku
  store float %i.kx, ptr %i.kz, align 4, !tbaa !104
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ku
  store i32 %i.ky, ptr %i.la, align 4, !tbaa !50
  %i.lb = add nuw i64 %.041122.i.i, 2             ; 2 uses
  %exitcond149.not.i.i.1 = icmp eq i64 %i.lb, %i.gn
  br i1 %exitcond149.not.i.i.1, label %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit", label %.lr.ph123.i.i, !llvm.loop !660

bb.da:                                            ; preds = %bb.cv
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #38
  unreachable

"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit": ; preds = %.lr.ph123.i.i.prol.loopexit, %bb.cz, %.lr.ph131.i.i.prol.loopexit, %"_ZZ21XGDMatrixGetDataAsCSRENK3$_0clEm.exit.i.i.1", %.preheader113.i.i, %.preheader.i.i
  %i.le = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE3endEv.exit unwind label %bb.db ; 0 uses

bb.db:                                            ; preds = %bb.co, %bb.cp, %bb.cq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_.exit, %.noexc146, %_ZN7xgboost8BatchSetINS_13ExtSparsePageEE3endEv.exit, %bb.cc, %"_ZN7xgboost6common11ParallelForImZ21XGDMatrixGetDataAsCSRE3$_0EEvT_iOT0_.exit", %bb.cj, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  %i.lf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %.body151

.body151:                                         ; preds = %bb.cw, %bb.db, %bb.ci
  %.pn63 = phi { ptr, i32 } [ %.pn.i.i, %bb.cw ], [ %.pn57, %bb.ci ], [ %i.lf, %bb.db ]
  call void @_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #19
  br label %.body125

.body125:                                         ; preds = %bb.aw, %.body151
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %.body151 ], [ %i.cg, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @_ZN7xgboost13BatchIteratorINS_13ExtSparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN7xgboost8BatchSetINS_13ExtSparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.dc

bb.dc:                                            ; preds = %bb.ca, %bb.cb, %.body125, %bb.bz, %bb.ag, %bb.aa, %bb.u
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn46, %bb.u ], [ %.pn54.pn, %bb.bz ], [ %.pn52, %bb.ag ], [ %.pn49, %bb.aa ], [ %.pn63.pn, %.body125 ], [ %i.fe, %bb.cb ], [ %i.fd, %bb.ca ]
  call void @_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #19
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.r
  %.pn63.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn.pn, %bb.dc ], [ %i.y, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.lg = load ptr, ptr %9, align 8, !tbaa !61    ; 4 uses
  %.not.i.i.i153 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i153, label %_ZN7xgboost4JsonD2Ev.exit154, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = atomicrmw add ptr %i.lh, i32 -1 release, align 4
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.df, label %_ZN7xgboost4JsonD2Ev.exit154

bb.df:                                            ; preds = %bb.de
  fence acquire
  %i.lk = load ptr, ptr %i.lg, align 8, !tbaa !63
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(24) %i.lg) #19, !inline_history !6
  br label %_ZN7xgboost4JsonD2Ev.exit154

_ZN7xgboost4JsonD2Ev.exit154:                     ; preds = %bb.df, %bb.de, %bb.dd, %bb.q
  %.pn63.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.q ], [ %.pn63.pn.pn.pn.pn, %bb.dd ], [ %.pn63.pn.pn.pn.pn, %bb.de ], [ %.pn63.pn.pn.pn.pn, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.body

.body:                                            ; preds = %bb.k, %_ZN7xgboost4JsonD2Ev.exit154, %bb.d, %bb.f
  %.pn63.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn63.pn.pn.pn.pn.pn, %_ZN7xgboost4JsonD2Ev.exit154 ], [ %.pn, %bb.k ], [ %i.k, %bb.f ] ; 3 uses
  %.17 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn.pn.pn.pn.pn, 0 ; 2 uses
  %.1740 = extractvalue { ptr, i32 } %.pn63.pn.pn.pn.pn.pn.pn.pn, 1 ; 2 uses
  %i.ln = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #19
  %i.lo = icmp eq i32 %.1740, %i.ln
  br i1 %i.lo, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.body
  %i.lp = call ptr @__cxa_begin_catch(ptr %.17) #19 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !63
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = call noundef ptr %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lp) #19, !inline_history !7
  invoke void @_Z18XGBAPISetLastErrorPKc(ptr noundef %i.lt)
          to label %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit unwind label %bb.dp

_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit:    ; preds = %bb.dg
  call void @__cxa_end_catch()
  br label %bb.dq

bb.dh:                                            ; preds = %.body
  %i.lu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.lv = icmp eq i32 %.1740, %i.lu
  br i1 %i.lv, label %bb.di, label %bb.dr

bb.di:                                            ; preds = %bb.dh
  %i.lw = call ptr @__cxa_begin_catch(ptr %.17) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !63
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
end_hunk_0
