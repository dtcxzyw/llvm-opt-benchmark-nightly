Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/gbtree?download=true
inline.NumInlined: 6868
inline.NumDeleted: 2573
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK7xgboost3gbm6GBTree5SliceEiiiPNS_15GradientBoosterEPb:bb.a
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 3
  %i.ei = load ptr, ptr %i.dj, align 8, !tbaa !159
  %i.ej = load ptr, ptr %i.di, align 8, !tbaa !160
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3
  %i.eo = sub nsw i64 %i.eh, %i.en
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i64 noundef %i.eo)
          to label %_ZNSolsEm.exit unwind label %bb.aj

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.67, i64 noundef 99)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZNSolsEm.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.al unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc107, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit117, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit111, %_ZN4dmlc15LogMessageFatalC2EPKci.exit109
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.ak unwind label %bb.cs

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn58 = phi { ptr, i32 } [ %i.er, %bb.ai ], [ %i.es, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %common.resume

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %.pr203 = load ptr, ptr %21, align 8, !tbaa !148 ; 4 uses
  %.not.i125 = icmp eq ptr %.pr203, null
  br i1 %.not.i125, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit129, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %.pr203, align 8, !tbaa !54 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.pr203, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126: ; preds = %bb.am
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !55
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i127

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i127: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126
  call void @_ZdlPvm(ptr noundef nonnull %.pr203, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit129

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit129: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.al, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit129, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.ey = icmp eq i32 %i.at, 0                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = load ptr, ptr %i.ez, align 8
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = lshr exact i64 %i.ff, 2
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = select i1 %i.ey, i32 %i.fh, i32 %i.at   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.g, align 4, !tbaa !171, !noalias !766
  store i32 1, ptr %i.h, align 4, !tbaa !171, !noalias !766
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.an
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.81") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not101.i = icmp eq ptr %.pr.i, null
  br i1 %.not101.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.fj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc.i unwind label %bb.ap

.noexc.i:                                         ; preds = %bb.ao
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.fj, ptr noundef nonnull @.str.133, i32 noundef 146)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.ap

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc.i
  %i.fk = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.aq ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.fn = load ptr, ptr %10, align 8, !tbaa !148  ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !54
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !135
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef %i.fo, i64 noundef %i.fq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.aq

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.as unwind label %bb.ap

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i, %.noexc.i, %bb.ao
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ar unwind label %bb.bn

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn.i = phi { ptr, i32 } [ %i.ft, %bb.ap ], [ %i.fu, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.pr87.i = load ptr, ptr %10, align 8, !tbaa !148 ; 4 uses
  %.not.i67.i = icmp eq ptr %.pr87.i, null
  br i1 %.not.i67.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fv = load ptr, ptr %.pr87.i, align 8, !tbaa !54 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.pr87.i, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.at
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !55
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr87.i, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.as, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ga = sub nsw i32 %i.fi, %1                   ; 2 uses
  %i.gb = icmp sgt i32 %3, %i.ga
  br i1 %i.gb, label %"_ZN7xgboost3gbm6detail10SliceTreesIZNKS0_6GBTree5SliceEiiiPNS_15GradientBoosterEPbE3$_0EEbiiiRKNS0_11GBTreeModelEOT_.exit", label %bb.au

bb.au:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.gc = call noundef i32 @_ZNK7xgboost3gbm11GBTreeModel13BoostedRoundsEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ad)
  %i.gd = icmp sgt i32 %i.fi, %i.gc
  br i1 %i.gd, label %"_ZN7xgboost3gbm6detail10SliceTreesIZNKS0_6GBTree5SliceEiiiPNS_15GradientBoosterEPbE3$_0EEbiiiRKNS0_11GBTreeModelEOT_.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ge = sdiv i32 %i.ga, %3                      ; 2 uses
  %.not55120.i = icmp slt i32 %1, %i.fi
  br i1 %.not55120.i, label %.lr.ph124.i, label %.thread93.i

.lr.ph124.i:                                      ; preds = %bb.av
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 3 uses
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i, %.lr.ph124.i
  %indvars.iv141.i = phi i64 [ 0, %.lr.ph124.i ], [ %indvars.iv.next142.i, %._crit_edge.i ] ; 2 uses
  %.038122.i.a = phi i32 [ %1, %.lr.ph124.i ], [ %i.kb, %._crit_edge.i ] ; 3 uses
  %i.gl = add nsw i32 %.038122.i.a, 1
  %i.gm = call i64 @_ZN7xgboost3gbm6detail11LayerToTreeERKNS0_11GBTreeModelEii(ptr noundef nonnull align 8 dereferenceable(192) %i.ad, i32 noundef %.038122.i.a, i32 noundef %i.gl) ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.gm, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32 ; 3 uses
  %i.gn = load ptr, ptr %i.gg, align 8, !tbaa !159
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !160
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = lshr exact i64 %i.gr, 3
  %i.gt = trunc i64 %i.gs to i32
  %.not.i131 = icmp sgt i32 %.sroa.4.0.extract.trunc.i, %i.gt
  br i1 %.not.i131, label %"_ZN7xgboost3gbm6detail10SliceTreesIZNKS0_6GBTree5SliceEiiiPNS_15GradientBoosterEPbE3$_0EEbiiiRKNS0_11GBTreeModelEOT_.exit", label %.preheader.i

.preheader.i:                                     ; preds = %bb.aw
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.gm to i32
  %i.gu = icmp slt i32 %.sroa.0.0.extract.trunc.i, %.sroa.4.0.extract.trunc.i
  br i1 %i.gu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %sext.i = shl i64 %i.gm, 32
  %i.gv = ashr exact i64 %sext.i, 32
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZZNK7xgboost3gbm6GBTree5SliceEiiiPNS_15GradientBoosterEPbENK3$_0clIiiEEDaT_T0_.exit.i", %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.gv, %.lr.ph.i ], [ %indvars.iv.next.i, %"_ZZNK7xgboost3gbm6GBTree5SliceEiiiPNS_15GradientBoosterEPbENK3$_0clIiiEEDaT_T0_.exit.i" ] ; 5 uses
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !159
  %i.gx = load ptr, ptr %i.gf, align 8, !tbaa !160 ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 3                 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.hb, %indvars.iv.i
  br i1 %.not.i.i.i.i, label %_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE2atEm.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.159, i64 noundef %indvars.iv.i, i64 noundef %i.hb) #39
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE2atEm.exit.i.i: ; preds = %bb.ax
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !163
  %i.he = call noundef ptr @_ZNK7xgboost7RegTree4CopyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.hd) ; 5 uses
  %i.hf = load ptr, ptr %i.gh, align 8, !tbaa !159 ; 6 uses
  %i.hg = load ptr, ptr %i.gi, align 8, !tbaa !172
  %.not.i.i.i = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE2atEm.exit.i.i
  %i.hh = ptrtoint ptr %i.he to i64
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !163
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.hi, ptr %i.gh, align 8, !tbaa !159
  br label %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i

bb.ba:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE2atEm.exit.i.i
  %i.hj = load ptr, ptr %i.cg, align 8, !tbaa !160 ; 10 uses
  %i.hk = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64               ; 3 uses
  %i.hm = sub i64 %i.hk, %i.hl                    ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775800
  br i1 %i.hn, label %bb.bb, label %_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #39
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc15.i.i:                                     ; preds = %bb.bb
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %i.ho = ashr exact i64 %i.hm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 1)
  %i.hp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ho ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho
  %i.hr = call i64 @llvm.umin.i64(i64 %i.hp, i64 1152921504606846975)
  %i.hs = select i1 %i.hq, i64 1152921504606846975, i64 %i.hr ; 3 uses
  %.not.i.i14.i.i = icmp ne i64 %i.hs, 0
  call void @llvm.assume(i1 %.not.i.i14.i.i)
  %i.ht = shl nuw nsw i64 %i.hs, 3
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #40
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc16.i.i:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hm
  %i.hw = ptrtoint ptr %i.he to i64
  store i64 %i.hw, ptr %i.hv, align 8, !tbaa !163
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.hf
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc16.i.i
  %i.hx = add i64 %i.hk, -8
  %i.hy = sub i64 %i.hx, %i.hl                    ; 3 uses
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hy, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader357, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ib = and i64 %i.hy, -8
  %i.ic = add i64 %i.ib, 8                        ; 2 uses
  %i.id = getelementptr i8, ptr %i.hu, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.hj, i64 %i.ic
  %bound0 = icmp ult ptr %i.hu, %i.ie
  %bound1 = icmp ult ptr %i.hj, %i.id
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader357, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ia, 4611686018427387900     ; 3 uses
  %i.if = shl i64 %n.vec, 3                       ; 2 uses
  %i.ig = getelementptr i8, ptr %i.hu, i64 %i.if  ; 2 uses
  %i.ih = getelementptr i8, ptr %i.hj, i64 %i.if
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ii = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hu, i64 %i.ii ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.hj, i64 %i.ii ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ij = getelementptr i8, ptr %next.gep349, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep349, align 8, !tbaa !163, !alias.scope !769
  %wide.load350 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !163, !alias.scope !769
  %i.ik = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !163, !alias.scope !770, !noalias !771
  store <2 x i64> %wide.load350, ptr %i.ik, align 8, !tbaa !163, !alias.scope !770, !noalias !771
  store <2 x ptr> splat (ptr null), ptr %next.gep349, align 8, !tbaa !163, !alias.scope !769
  store <2 x ptr> splat (ptr null), ptr %i.ij, align 8, !tbaa !163, !alias.scope !769
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !747

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ia, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader357

.lr.ph.i.i.i.i.i.i.preheader357:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.hu, %vector.memcheck ], [ %i.hu, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ig, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.hj, %vector.memcheck ], [ %i.hj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ih, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader357, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader357 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader357 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.im = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !163, !alias.scope !768
  store i64 %i.im, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !163, !alias.scope !767
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !163, !alias.scope !768
  %i.in = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.in, %i.hf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !748

_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc16.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.hu, %.noexc16.i.i ], [ %i.ig, %middle.block ], [ %i.io, %.lr.ph.i.i.i.i.i.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i23.i.i.i, label %.noexc.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.iq = load ptr, ptr %i.gi, align 8, !tbaa !172
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = sub i64 %i.ir, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.is) #37
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.bc, %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.hu, ptr %i.cg, align 8, !tbaa !160
  store ptr %i.ip, ptr %i.gh, align 8, !tbaa !159
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hs
  store ptr %i.it, ptr %i.gi, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i: ; preds = %.noexc.i.i, %bb.az
  %i.iu = load ptr, ptr %i.ck, align 8, !tbaa !166
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.i
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !171 ; 2 uses
  %i.ix = load ptr, ptr %i.gj, align 8, !tbaa !167 ; 4 uses
  %i.iy = load ptr, ptr %i.gk, align 8, !tbaa !298
  %.not.i7.i.i = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i7.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !171
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store ptr %i.iz, ptr %i.gj, align 8, !tbaa !167
  br label %"_ZZNK7xgboost3gbm6GBTree5SliceEiiiPNS_15GradientBoosterEPbENK3$_0clIiiEEDaT_T0_.exit.i"

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i
  %i.ja = load ptr, ptr %i.ci, align 8, !tbaa !166 ; 4 uses
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 5 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775804
  br i1 %i.je, label %.noexc8.i.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

.noexc8.i.i:                                      ; preds = %bb.be
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #39
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.be
  %i.jf = ashr exact i64 %i.jd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = call i64 @llvm.umin.i64(i64 %i.jg, i64 2305843009213693951)
  %i.jj = select i1 %i.jh, i64 2305843009213693951, i64 %i.ji ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.jj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.jk = shl nuw nsw i64 %i.jj, 2
  %i.jl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #40 ; 4 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 %i.jd ; 2 uses
  store i32 %i.iw, ptr %i.jm, align 4, !tbaa !171
  %i.jn = icmp sgt i64 %i.jd, 0
  br i1 %i.jn, label %bb.bf, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

bb.bf:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jl, ptr align 4 %i.ja, i64 %i.jd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.bf, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %.not.i17.i.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  %i.jp = load ptr, ptr %i.gk, align 8, !tbaa !298
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = sub i64 %i.jq, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.jr) #37
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.jl, ptr %i.ci, align 8, !tbaa !166
  store ptr %i.jo, ptr %i.gj, align 8, !tbaa !167
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jj
  store ptr %i.js, ptr %i.gk, align 8, !tbaa !298
  br label %"_ZZNK7xgboost3gbm6GBTree5SliceEiiiPNS_15GradientBoosterEPbENK3$_0clIiiEEDaT_T0_.exit.i"

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost7RegTreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.bb
  %lpad.loopexit.split-lp358 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i11.i.i, label %common.resume, label %_ZNKSt14default_deleteIN7xgboost7RegTreeEEclEPS1_.exit.i12.i.i

_ZNKSt14default_deleteIN7xgboost7RegTreeEEclEPS1_.exit.i12.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.jt = load ptr, ptr %i.he, align 8, !tbaa !138
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(96) %i.he) #23, !inline_history !749
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.l, %bb.s, %bb.y, %bb.bs, %bb.ak, %bb.h, %bb.bz, %bb.co, %bb.ar, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN7xgboost7RegTreeEEclEPS1_.exit.i12.i.i, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %.pn.i179, %bb.bz ], [ %.pn.i, %bb.ar ], [ %lpad.loopexit.split-lp358, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp358, %_ZNKSt14default_deleteIN7xgboost7RegTreeEEclEPS1_.exit.i12.i.i ], [ %.pn56.i, %bb.bk ], [ %.pn50.i, %bb.co ], [ %i.v, %bb.d ], [ %i.ab, %bb.h ], [ %i.aq, %bb.l ], [ %.pn56, %bb.y ], [ %.pn, %bb.s ], [ %.pn60, %bb.bs ], [ %.pn58, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

"_ZZNK7xgboost3gbm6GBTree5SliceEiiiPNS_15GradientBoosterEPbENK3$_0clIiiEEDaT_T0_.exit.i": ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, %bb.bd
  %i.jw = load ptr, ptr %i.cf, align 8, !tbaa !168
  %i.jx = getelementptr [4 x i8], ptr %i.jw, i64 %indvars.iv141.i
  %i.jy = getelementptr i8, ptr %i.jx, i64 4      ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !171
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !171
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %.sroa.4.0.extract.trunc.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ax, !llvm.loop !750

._crit_edge.i:                                    ; preds = %"_ZZNK7xgboost3gbm6GBTree5SliceEiiiPNS_15GradientBoosterEPbENK3$_0clIiiEEDaT_T0_.exit.i", %.preheader.i
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %i.kb = add nsw i32 %.038122.i.a, %3            ; 2 uses
  %.not55.i = icmp slt i32 %i.kb, %i.fi
  br i1 %.not55.i, label %bb.aw, label %.thread93.loopexit.i, !llvm.loop !751

.thread93.loopexit.i:                             ; preds = %._crit_edge.i
  %25 = trunc nuw i64 %indvars.iv.next142.i to i32
  br label %.thread93.i

.thread93.i:                                      ; preds = %.thread93.loopexit.i, %bb.av
  %.039.lcssa.i = phi i32 [ 0, %bb.av ], [ %25, %.thread93.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.039.lcssa.i, ptr %i.e, align 4, !tbaa !171, !noalias !772
  store i32 %i.ge, ptr %i.f, align 4, !tbaa !171, !noalias !772
  %i.kc = icmp eq i32 %.039.lcssa.i, %i.ge
  br i1 %i.kc, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %.thread93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit85.i

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %.thread93.i
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.81") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %.pr96.i = load ptr, ptr %12, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not102.i = icmp eq ptr %.pr96.i, null
  br i1 %.not102.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit85.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.kd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc68.i unwind label %bb.bi

.noexc68.i:                                       ; preds = %bb.bh
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.kd, ptr noundef nonnull @.str.133, i32 noundef 169)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit70.i unwind label %bb.bi

_ZN4dmlc15LogMessageFatalC2EPKci.exit70.i:        ; preds = %.noexc68.i
  %i.ke = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72.i unwind label %bb.bj ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit70.i
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72.i
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, ptr noundef nonnull @.str.160, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i
  %i.kh = load ptr, ptr %12, align 8, !tbaa !148  ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !54
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !135
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, ptr noundef %i.ki, i64 noundef %i.kk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78.i unwind label %bb.bj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80.i unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bl unwind label %bb.bi

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80.i, %.noexc68.i, %bb.bh
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit72.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit70.i
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn56.i = phi { ptr, i32 } [ %i.kn, %bb.bi ], [ %i.ko, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %common.resume

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.pr97.i = load ptr, ptr %12, align 8, !tbaa !148 ; 4 uses
  %.not.i81.i = icmp eq ptr %.pr97.i, null
  br i1 %.not.i81.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit85.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kp = load ptr, ptr %.pr97.i, align 8, !tbaa !54 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.pr97.i, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82.i: ; preds = %bb.bm
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !55
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i83.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i83.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr97.i, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit85.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit85.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i83.i, %bb.bl, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %"_ZN7xgboost3gbm6detail10SliceTreesIZNKS0_6GBTree5SliceEiiiPNS_15GradientBoosterEPbE3$_0EEbiiiRKNS0_11GBTreeModelEOT_.exit"

bb.bn:                                            ; preds = %bb.bj, %bb.aq
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #38
  unreachable

"_ZN7xgboost3gbm6detail10SliceTreesIZNKS0_6GBTree5SliceEiiiPNS_15GradientBoosterEPbE3$_0EEbiiiRKNS0_11GBTreeModelEOT_.exit": ; preds = %bb.aw, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, %bb.au, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit85.i
  %.4.i = phi i8 [ 1, %bb.au ], [ 1, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i ], [ 0, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit85.i ], [ 1, %bb.aw ]
  store i8 %.4.i, ptr %5, align 1, !tbaa !276
  %i.kw = load ptr, ptr %i.cf, align 8, !tbaa !197 ; 5 uses
  %i.kx = load ptr, ptr %i.co, align 8, !tbaa !197 ; 3 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, label %bb.bo

bb.bo:                                            ; preds = %"_ZN7xgboost3gbm6detail10SliceTreesIZNKS0_6GBTree5SliceEiiiPNS_15GradientBoosterEPbE3$_0EEbiiiRKNS0_11GBTreeModelEOT_.exit"
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 4 ; 2 uses
  %.not14.i = icmp eq ptr %i.kz, %i.kx
  br i1 %.not14.i, label %_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, label %.lr.ph.i132.preheader

.lr.ph.i132.preheader:                            ; preds = %bb.bo
  %i.la = load i32, ptr %i.kw, align 4, !tbaa !171
  br label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.preheader, %.lr.ph.i132
  %i.lb = phi ptr [ %i.lf, %.lr.ph.i132 ], [ %i.kz, %.lr.ph.i132.preheader ] ; 2 uses
  %.016.i = phi i32 [ %i.ld, %.lr.ph.i132 ], [ %i.la, %.lr.ph.i132.preheader ]
  %.sroa.0.015.i = phi ptr [ %i.le, %.lr.ph.i132 ], [ %i.kw, %.lr.ph.i132.preheader ]
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !171
  %i.ld = add nsw i32 %i.lc, %.016.i              ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 4 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !171
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 4 ; 2 uses
  %.not.i133 = icmp eq ptr %i.lf, %i.kx
  br i1 %.not.i133, label %_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, label %.lr.ph.i132, !llvm.loop !754

_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %.lr.ph.i132, %bb.bo, %"_ZN7xgboost3gbm6detail10SliceTreesIZNKS0_6GBTree5SliceEiiiPNS_15GradientBoosterEPbE3$_0EEbiiiRKNS0_11GBTreeModelEOT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.lg = load i32, ptr %i.kw, align 4, !tbaa !171 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.lg, ptr %i.i, align 4, !tbaa !171, !noalias !773
  store i32 0, ptr %i.j, align 4, !tbaa !171, !noalias !773
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit152

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.81") align 8 %23, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  %.pr207 = load ptr, ptr %23, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not215 = icmp eq ptr %.pr207, null
  br i1 %.not215, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit152, label %bb.bp

bb.bp:                                            ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.li = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %.noexc135 unwind label %bb.bq

.noexc135:                                        ; preds = %bb.bp
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.li, ptr noundef nonnull @.str.1, i32 noundef 643)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit137 unwind label %bb.bq

_ZN4dmlc15LogMessageFatalC2EPKci.exit137:         ; preds = %.noexc135
  %i.lj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit139 unwind label %bb.br ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit139: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit137
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit139
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef nonnull @.str.68, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
  %i.lm = load ptr, ptr %23, align 8, !tbaa !148  ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !54
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !135
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef %i.ln, i64 noundef %i.lp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit145 unwind label %bb.br

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit145: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit145
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bt unwind label %bb.bq

bb.bq:                                            ; preds = %.noexc135, %bb.bp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147
  %i.ls = landingpad { ptr, i32 }
end_hunk_0
