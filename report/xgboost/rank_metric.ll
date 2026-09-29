Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/rank_metric?download=true
inline.NumInlined: 4872
inline.NumDeleted: 2022
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN7xgboost6metric12EvalMAPScore4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoESt10shared_ptrINS_3ltr8MAPCacheEE:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.95, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ej = load ptr, ptr %11, align 8, !tbaa !63   ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !54
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !53
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef %i.ek, i64 noundef %i.em)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ag

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %.noexc44, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.af ], [ %i.eq, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.am

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %.pr70 = load ptr, ptr %11, align 8, !tbaa !63  ; 4 uses
  %.not.i = icmp eq ptr %.pr70, null
  br i1 %.not.i, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = load ptr, ptr %.pr70, align 8, !tbaa !54 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.pr70, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aj
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !60
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr70, i64 noundef 32) #39
  br label %.thread

bb.ak:                                            ; preds = %_ZN7xgboost6common19MakeOptionalWeightsENS_9DeviceOrdERKNS_16HostDeviceVectorIfEE.exit
  %i.ew = load i64, ptr %8, align 8, !tbaa !222
  %.fr = freeze i64 %i.ew                         ; 6 uses
  %.not80 = icmp eq i64 %.fr, 0
  br i1 %.not80, label %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader: ; preds = %bb.ak
  %xtraiter122 = and i64 %.fr, 7                  ; 3 uses
  %i.ex = icmp ult i64 %.fr, 8
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil.preheader, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader.new

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader.new: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader
  %unroll_iter126 = and i64 %.fr, -8
  br label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us

.thread:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.ai, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ey = load i64, ptr %8, align 8, !tbaa !222
  %.fr92 = freeze i64 %i.ey                       ; 7 uses
  %.not8093 = icmp eq i64 %.fr92, 0
  br i1 %.not8093, label %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader: ; preds = %.thread
  %i.ez = load ptr, ptr %i.cb, align 8, !tbaa !224 ; 3 uses
  %xtraiter = and i64 %.fr92, 1
  %i.fa = icmp eq i64 %.fr92, 1
  br i1 %i.fa, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.epil.preheader, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader.new

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader.new: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader
  %unroll_iter = and i64 %.fr92, -2
  br label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader.new
  %.02777.us = phi double [ 0.000000e+00, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader.new ], [ %i.fi, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us ]
  %niter127 = phi i64 [ 0, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader.new ], [ %niter127.next.7, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us ]
  %i.fb = fadd double %.02777.us, 1.000000e+00
  %i.fc = fadd double %i.fb, 1.000000e+00
  %i.fd = fadd double %i.fc, 1.000000e+00
  %i.fe = fadd double %i.fd, 1.000000e+00
  %i.ff = fadd double %i.fe, 1.000000e+00
  %i.fg = fadd double %i.ff, 1.000000e+00
  %i.fh = fadd double %i.fg, 1.000000e+00
  %i.fi = fadd double %i.fh, 1.000000e+00         ; 3 uses
  %niter127.next.7 = add nuw i64 %niter127, 8     ; 2 uses
  %niter127.ncmp.7 = icmp eq i64 %niter127.next.7, %unroll_iter126
  br i1 %niter127.ncmp.7, label %.lr.ph.split.preheader.split.i.loopexit.unr-lcssa, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us, !llvm.loop !860

.lr.ph.split.preheader.split.i.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.split.preheader.split.i, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil.preheader

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil.preheader: ; preds = %.lr.ph.split.preheader.split.i.loopexit.unr-lcssa, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader
  %.02777.us.epil.init = phi double [ 0.000000e+00, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.preheader ], [ %i.fi, %.lr.ph.split.preheader.split.i.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter122, 0
  call void @llvm.assume(i1 %lcmp.mod125)
  br label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil.preheader
  %.02777.us.epil = phi double [ %i.fj, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil ], [ %.02777.us.epil.init, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil ], [ 0, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil.preheader ]
  %i.fj = fadd double %.02777.us.epil, 1.000000e+00 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter122
  br i1 %epil.iter.cmp.not, label %.lr.ph.split.preheader.split.i, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil, !llvm.loop !861

.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.preheader.split.i, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.epil.preheader

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.epil.preheader: ; preds = %.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader
  %.02777.epil.init = phi double [ 0.000000e+00, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader ], [ %i.hp, %.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa ]
  %.02876.epil.init = phi i64 [ 0, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader ], [ %i.hq, %.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa ] ; 3 uses
  %lcmp.mod121 = trunc i64 %.fr92 to i1
  call void @llvm.assume(i1 %lcmp.mod121)
  %exitcond.not.epil = icmp eq i64 %.02876.epil.init, %.sroa.0.0.i
  br i1 %exitcond.not.epil, label %.loopexit, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.epil, !prof !80

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.epil: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.epil.preheader
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.02876.epil.init ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !225
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.i, i64 %.02876.epil.init
  %.in.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.epil = load float, ptr %i.fm, align 4, !tbaa !123
  %i.fn = fpext float %.in.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.epil to double ; 2 uses
  %i.fo = fmul double %i.fl, %i.fn
  store double %i.fo, ptr %i.fk, align 8, !tbaa !225
  %i.fp = fadd double %.02777.epil.init, %i.fn
  br label %.lr.ph.split.preheader.split.i

.lr.ph.split.preheader.split.i:                   ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.epil, %.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa, %.lr.ph.split.preheader.split.i.loopexit.unr-lcssa, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil
  %.027.lcssa111 = phi double [ %i.fj, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil ], [ %i.fi, %.lr.ph.split.preheader.split.i.loopexit.unr-lcssa ], [ %i.hp, %.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa ], [ %i.fp, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.epil ] ; 2 uses
  %.fr95110 = phi i64 [ %.fr, %.lr.ph.split.preheader.split.i.loopexit.unr-lcssa ], [ %.fr, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.us.epil ], [ %.fr92, %.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa ], [ %.fr92, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.epil ] ; 3 uses
  %.pre.i = load ptr, ptr %i.cb, align 8, !tbaa !224 ; 9 uses
  %xtraiter128 = and i64 %.fr95110, 7             ; 3 uses
  %i.fq = icmp ult i64 %.fr95110, 8
  br i1 %i.fq, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.preheader.split.i.new

.lr.ph.split.preheader.split.i.new:               ; preds = %.lr.ph.split.preheader.split.i
  %unroll_iter133 = and i64 %.fr95110, -8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.split.i.new
  %.012.i = phi double [ 0.000000e+00, %.lr.ph.split.preheader.split.i.new ], [ %i.gv, %.lr.ph.split.i ]
  %.sroa.4.011.i = phi i64 [ 0, %.lr.ph.split.preheader.split.i.new ], [ %i.gw, %.lr.ph.split.i ] ; 9 uses
  %niter134 = phi i64 [ 0, %.lr.ph.split.preheader.split.i.new ], [ %niter134.next.7, %.lr.ph.split.i ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !225
  %i.ft = fadd double %.012.i, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !225
  %i.fx = fadd double %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !225
  %i.gb = fadd double %i.fx, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !225
  %i.gf = fadd double %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !225
  %i.gj = fadd double %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !225
  %i.gn = fadd double %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !225
  %i.gr = fadd double %i.gn, %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !225
  %i.gv = fadd double %i.gr, %i.gu                ; 3 uses
  %i.gw = add nuw i64 %.sroa.4.011.i, 8           ; 2 uses
  %niter134.next.7 = add nuw i64 %niter134, 8     ; 2 uses
  %niter134.ncmp.7 = icmp eq i64 %niter134.next.7, %unroll_iter133
  br i1 %niter134.ncmp.7, label %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !11

_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.split.i
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa, %.lr.ph.split.preheader.split.i
  %.012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.split.preheader.split.i ], [ %i.gv, %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa ]
  %.sroa.4.011.i.epil.init = phi i64 [ 0, %.lr.ph.split.preheader.split.i ], [ %i.gw, %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter128, 0
  call void @llvm.assume(i1 %lcmp.mod132)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %.012.i.epil = phi double [ %i.gz, %.lr.ph.split.i.epil ], [ %.012.i.epil.init, %.lr.ph.split.i.epil.preheader ]
  %.sroa.4.011.i.epil = phi i64 [ %i.ha, %.lr.ph.split.i.epil ], [ %.sroa.4.011.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %epil.iter129 = phi i64 [ %epil.iter129.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.sroa.4.011.i.epil
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !225
  %i.gz = fadd double %.012.i.epil, %i.gy         ; 2 uses
  %i.ha = add nuw i64 %.sroa.4.011.i.epil, 1
  %epil.iter129.next = add i64 %epil.iter129, 1   ; 2 uses
  %epil.iter129.cmp.not = icmp eq i64 %epil.iter129.next, %xtraiter128
  br i1 %epil.iter129.cmp.not, label %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit, label %.lr.ph.split.i.epil, !llvm.loop !862

_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit: ; preds = %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa, %.lr.ph.split.i.epil, %.thread, %bb.ak
  %.027.lcssa105 = phi double [ 0.000000e+00, %bb.ak ], [ 0.000000e+00, %.thread ], [ %.027.lcssa111, %.lr.ph.split.i.epil ], [ %.027.lcssa111, %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa ]
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.ak ], [ 0.000000e+00, %.thread ], [ %i.gv, %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit.loopexit.unr-lcssa ], [ %i.gz, %.lr.ph.split.i.epil ]
  %i.hb = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.hc = call fastcc noundef double @_ZN7xgboost6metric12_GLOBAL__N_18FinalizeEPKNS_7ContextERKNS_8MetaInfoEdd(ptr noundef %i.hb, double noundef %.0.lcssa.i, double noundef %.027.lcssa105)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.al

_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.1, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader.new
  %.02777 = phi double [ 0.000000e+00, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader.new ], [ %i.hp, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.1 ]
  %.02876 = phi i64 [ 0, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader.new ], [ %i.hq, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.1 ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.preheader.new ], [ %niter.next.1, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.1 ]
  %exitcond.not = icmp eq i64 %.02876, %.sroa.0.0.i
  br i1 %exitcond.not, label %.loopexit, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57, !prof !80

.loopexit:                                        ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57, %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit.epil.preheader
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57: ; preds = %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.02876 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !225
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.i, i64 %.02876
  %.in.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i = load float, ptr %i.hf, align 4, !tbaa !123
  %i.hg = fpext float %.in.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i to double ; 2 uses
  %i.hh = fmul double %i.he, %i.hg
  store double %i.hh, ptr %i.hd, align 8, !tbaa !225
  %i.hi = or disjoint i64 %.02876, 1              ; 3 uses
  %exitcond.not.1 = icmp eq i64 %i.hi, %.sroa.0.0.i
  br i1 %exitcond.not.1, label %.loopexit, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.1, !prof !80

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57.1: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i57
  %i.hj = fadd double %.02777, %i.hg
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.hi ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !225
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.i, i64 %i.hi
  %.in.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.1 = load float, ptr %i.hm, align 4, !tbaa !123
  %i.hn = fpext float %.in.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.1 to double ; 2 uses
  %i.ho = fmul double %i.hl, %i.hn
  store double %i.ho, ptr %i.hk, align 8, !tbaa !225
  %i.hp = fadd double %i.hj, %i.hn                ; 3 uses
  %i.hq = add nuw i64 %.02876, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.split.preheader.split.i.loopexit118.unr-lcssa, label %_ZNK7xgboost6common4SpanIdLm18446744073709551615EEixEm.exit, !llvm.loop !860

bb.al:                                            ; preds = %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit, %_ZNSt12__shared_ptrIN7xgboost3ltr8MAPCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0 = phi double [ %i.an, %_ZNSt12__shared_ptrIN7xgboost3ltr8MAPCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.hc, %_ZSt10accumulateIN7xgboost6common6detail12SpanIteratorINS1_4SpanIdLm18446744073709551615EEELb1EEEdET0_T_S8_S7_.exit ]
  ret double %.0

bb.am:                                            ; preds = %bb.ah, %.body
  %.pn30 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %bb.ah ]
  resume { ptr, i32 } %.pn30

bb.an:                                            ; preds = %bb.ag
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #40
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost12DMatrixCacheINS_3ltr8MAPCacheEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt5dequeIS5_SaIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !318  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !319  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !320
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 512) #39
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, !llvm.loop !20

_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !317
  br label %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8, !tbaa !321
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #39
  br label %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt5dequeIS5_SaIS5_EEED2Ev.exit

_ZNSt5queueIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt5dequeIS5_SaIS5_EEED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !322
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_3ltr8MAPCacheEE3KeyENS7_4ItemEELb0EEEEE19_M_deallocate_nodesEPSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef %i.r)
          to label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt5dequeIS5_SaIS5_EEED2Ev.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt5queueIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt5dequeIS5_SaIS5_EEED2Ev.exit
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !314
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !315
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !314  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyENS4_4ItemENS4_4HashESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !315
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #39
  br label %_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyENS4_4ItemENS4_4HashESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit

_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyENS4_4ItemENS4_4HashESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6metric17EvalRankWithCacheINS_3ltr8MAPCacheEED0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyENS4_4ItemENS4_4HashESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN7xgboost12DMatrixCacheINS3_3ltr8MAPCacheEE3KeyENS7_4ItemEELb0EEEEE19_M_deallocate_nodesEPSC_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
          to label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #40
  unreachable

_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !314
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !315
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !314    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN7xgboost12DMatrixCacheINS0_3ltr8MAPCacheEE3KeyESt4pairIKS5_NS4_4ItemEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ENS4_4HashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !315
end_hunk_0
