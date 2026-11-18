Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/fit_stump?download=true
inline.NumInlined: 684
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7xgboost4tree8cpu_impl12SumGradientsEPKNS_7ContextENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS6_INS8_IdEELi1EEE:bb.a

bb.m:                                             ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ca = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc.i.i unwind label %bb.n

.noexc.i.i:                                       ; preds = %bb.m
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ca, ptr noundef nonnull @.str.27, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i:        ; preds = %.noexc.i.i
  %i.cb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.28, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.ce = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !25
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.cf, i64 noundef %i.ch)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i, %.noexc.i.i, %bb.m
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.ck, %bb.n ], [ %i.cl, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.body

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.pr127.i.i = load ptr, ptr %3, align 8, !tbaa !20 ; 4 uses
  %.not.i64.i.i = icmp eq ptr %.pr127.i.i, null
  br i1 %.not.i64.i.i, label %.preheader135.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %.pr127.i.i, align 8, !tbaa !24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pr127.i.i, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.r
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr127.i.i, i64 noundef 32) #25
  br label %.preheader135.i.i

.preheader135.i.i:                                ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.q, %.noexc27, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.not156.i.i = icmp eq i64 %i.an, 0
  br i1 %.not156.i.i, label %bb.t, label %.lr.ph145.i.i

.lr.ph145.i.i:                                    ; preds = %.preheader135.i.i
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !18  ; 6 uses
  %.not.i.i75.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i75.i.i, label %bb.t, label %.lr.ph145.split.i.i

.lr.ph145.split.i.i:                              ; preds = %.lr.ph145.i.i
  %i.cs = load i64, ptr %1, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37
  %i.cx = add i64 %i.cr, -1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 14
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = icmp eq i64 %i.cy, 4294967295
  %i.da = icmp ugt i64 %i.cx, 4294967295
  %i.db = or i1 %i.cz, %i.da
  %ident.check = icmp ne i64 %.sroa.7.0, 1
  %mul.result = shl i64 %i.cx, 4
  %i.dc = getelementptr i8, ptr %i.ag, i64 %mul.result
  %i.dd = icmp ult ptr %i.dc, %i.ag
  %ident.check84 = icmp ne i64 %i.cu, 1
  %i.de = or i1 %i.db, %ident.check
  %i.df = or i1 %i.dd, %i.de
  %i.dg = or i1 %i.df, %ident.check84
  %n.vec = and i64 %i.cr, 8589934590              ; 3 uses
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br label %.lr.ph.i.i76.i.i

.lr.ph.i.i76.i.i:                                 ; preds = %"_ZN4dmlc12OMPException3RunIZN7xgboost4tree8cpu_impl12SumGradientsEPKNS2_7ContextENS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS9_INSB_IdEELi1EEEE3$_0JmEEEvT_DpT0_.exit79.loopexit.i.i", %.lr.ph145.split.i.i
  %.041144.i.i = phi i64 [ 0, %.lr.ph145.split.i.i ], [ %i.ea, %"_ZN4dmlc12OMPException3RunIZN7xgboost4tree8cpu_impl12SumGradientsEPKNS2_7ContextENS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS9_INSB_IdEELi1EEEE3$_0JmEEEvT_DpT0_.exit79.loopexit.i.i" ] ; 2 uses
  %i.dh = mul i64 %.041144.i.i, %i.cs
  %i.di = getelementptr [8 x i8], ptr %i.cw, i64 %i.dh ; 2 uses
  %brmerge150 = select i1 %min.iters.check, i1 true, i1 %i.dg
  br i1 %brmerge150, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i76.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i76.i.i ] ; 3 uses
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %index
  %wide.vec = load <4 x float>, ptr %i.dj, align 4, !tbaa !39 ; 2 uses
  %strided.vec = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec85 = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.dk = fpext <2 x float> %strided.vec to <2 x double>
  %i.dl = fpext <2 x float> %strided.vec85 to <2 x double>
  %i.dm = getelementptr [16 x i8], ptr %i.ag, i64 %index ; 2 uses
  %wide.vec86 = load <4 x double>, ptr %i.dm, align 8, !tbaa !41 ; 2 uses
  %strided.vec87 = shufflevector <4 x double> %wide.vec86, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec88 = shufflevector <4 x double> %wide.vec86, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.dn = fadd <2 x double> %strided.vec87, %i.dk
  %i.do = fadd <2 x double> %strided.vec88, %i.dl
  %interleaved.vec = shufflevector <2 x double> %i.dn, <2 x double> %i.do, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.dm, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZN4dmlc12OMPException3RunIZN7xgboost4tree8cpu_impl12SumGradientsEPKNS2_7ContextENS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS9_INSB_IdEELi1EEEE3$_0JmEEEvT_DpT0_.exit79.loopexit.i.i", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i76.i.i, %middle.block
  %indvars.iv.i.i77.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i76.i.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i77.i.i = phi i64 [ %indvars.iv.next.i.i78.i.i, %scalar.ph ], [ %indvars.iv.i.i77.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dq = mul i64 %indvars.iv.i.i77.i.i, %i.cu
  %i.dr = getelementptr [8 x i8], ptr %i.di, i64 %i.dq
  %i.ds = mul i64 %indvars.iv.i.i77.i.i, %.sroa.7.0
  %i.dt = getelementptr [16 x i8], ptr %i.ag, i64 %i.ds ; 2 uses
  %i.du = load <2 x float>, ptr %i.dr, align 4, !tbaa !39
  %i.dv = fpext <2 x float> %i.du to <2 x double>
  %i.dw = load <2 x double>, ptr %i.dt, align 8, !tbaa !41
  %i.dx = fadd <2 x double> %i.dw, %i.dv
  store <2 x double> %i.dx, ptr %i.dt, align 8, !tbaa !41
  %indvars.iv.next.i.i78.i.i = add i64 %indvars.iv.i.i77.i.i, 1 ; 2 uses
  %i.dy = and i64 %indvars.iv.next.i.i78.i.i, 4294967295
  %i.dz = icmp ugt i64 %i.cr, %i.dy
  br i1 %i.dz, label %scalar.ph, label %"_ZN4dmlc12OMPException3RunIZN7xgboost4tree8cpu_impl12SumGradientsEPKNS2_7ContextENS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS9_INSB_IdEELi1EEEE3$_0JmEEEvT_DpT0_.exit79.loopexit.i.i", !llvm.loop !80

"_ZN4dmlc12OMPException3RunIZN7xgboost4tree8cpu_impl12SumGradientsEPKNS2_7ContextENS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS9_INSB_IdEELi1EEEE3$_0JmEEEvT_DpT0_.exit79.loopexit.i.i": ; preds = %scalar.ph, %middle.block
  %i.ea = add nuw i64 %.041144.i.i, 1             ; 2 uses
  %exitcond168.not.i.i = icmp eq i64 %i.ea, %i.an
  br i1 %exitcond168.not.i.i, label %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi2EE5SliceIJiNS0_6detail6AllTagEEEEDaDpOT_.exit, label %.lr.ph.i.i76.i.i, !llvm.loop !81

bb.s:                                             ; preds = %bb.o
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #26
  unreachable

bb.t:                                             ; preds = %.preheader.i.i, %.lr.ph153.i.i, %.preheader135.i.i, %.lr.ph145.i.i
  %i.ed = icmp ne ptr %i.ag, null
  %i.ee = icmp eq ptr %i.af, null
  %i.ef = or i1 %i.ee, %i.ed
  br i1 %i.ef, label %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi2EE5SliceIJiNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.u, !prof !92

bb.u:                                             ; preds = %bb.t
  call void @_ZSt9terminatev() #26, !noalias !93
  unreachable

_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi2EE5SliceIJiNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %"_ZN4dmlc12OMPException3RunIZN7xgboost4tree8cpu_impl12SumGradientsEPKNS2_7ContextENS2_6linalg10TensorViewIKNS2_6detail20GradientPairInternalIfEELi2EEENS9_INSB_IdEELi1EEEE3$_0JmEEEvT_DpT0_.exit79.loopexit.i.i", %"_ZZN7xgboost4tree8cpu_impl12SumGradientsEPKNS_7ContextENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEENS6_INS8_IdEELi1EEEENK3$_0clImEEDaT_.exit.loopexit.i.i", %bb.t
  %i.eg = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %0)
          to label %.preheader55 unwind label %bb.v ; 2 uses

.preheader55:                                     ; preds = %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi2EE5SliceIJiNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.eh = icmp sgt i32 %i.eg, 1
  %.pre = load i64, ptr %i.c, align 8, !tbaa !18  ; 12 uses
  br i1 %i.eh, label %.preheader54.lr.ph, label %.preheader

.preheader54.lr.ph:                               ; preds = %.preheader55
  %.not61 = icmp eq i64 %.pre, 0
  br i1 %.not61, label %._crit_edge60, label %.preheader54.preheader

.preheader54.preheader:                           ; preds = %.preheader54.lr.ph
  %wide.trip.count = zext nneg i32 %i.eg to i64   ; 2 uses
  %i.ei = add i64 %.pre, -1                       ; 3 uses
  %i.ej = shl nuw nsw i64 %wide.trip.count, 4
  %i.ek = add nsw i64 %i.ej, -16
  %i.el = mul i64 %.sroa.0.0, %i.ek               ; 2 uses
  %i.em = shl i64 %.pre, 4                        ; 4 uses
  %8 = getelementptr i8, ptr %i.ag, i64 %i.el
  %scevgep = getelementptr i8, ptr %8, i64 %i.em
  %9 = shl i64 %.sroa.0.0, 4                      ; 3 uses
  %i.en = getelementptr i8, ptr %i.ag, i64 %9
  %scevgep126 = getelementptr i8, ptr %i.en, i64 8
  %scevgep127 = getelementptr i8, ptr %i.ag, i64 %i.em
  %scevgep128 = getelementptr i8, ptr %i.ag, i64 8
  %10 = getelementptr i8, ptr %i.ag, i64 %i.el
  %i.eo = getelementptr i8, ptr %10, i64 %i.em
  %scevgep129 = getelementptr i8, ptr %i.eo, i64 -8
  %scevgep130 = getelementptr i8, ptr %i.ag, i64 %9
  %i.ep = getelementptr i8, ptr %i.ag, i64 %i.em
  %scevgep131 = getelementptr i8, ptr %i.ep, i64 -8
  %min.iters.check133 = icmp ult i64 %.pre, 18
  %i.eq = and i64 %i.ei, 4294967295
  %i.er = icmp eq i64 %i.eq, 4294967295
  %i.es = icmp ugt i64 %i.ei, 4294967295
  %i.et = or i1 %i.er, %i.es
  %ident.check113 = icmp ne i64 %.sroa.7.0, 1
  %mul.result115 = shl i64 %i.ei, 4
  %i.eu = or i1 %i.et, %ident.check113
  %bound0 = icmp ult ptr %i.ag, %scevgep129
  %bound1 = icmp ult ptr %scevgep130, %scevgep131
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %9, 0
  %i.ev = or i1 %found.conflict, %stride.check
  %bound0134 = icmp ult ptr %scevgep128, %scevgep
  %bound1135 = icmp ult ptr %scevgep126, %scevgep127
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx = or i1 %i.ev, %found.conflict136
  %n.vec138 = and i64 %.pre, 8589934590           ; 3 uses
  %cmp.n146 = icmp eq i64 %.pre, %n.vec138
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.preheader, %._crit_edge
  %indvars.iv65 = phi i64 [ 1, %.preheader54.preheader ], [ %indvars.iv.next66, %._crit_edge ] ; 2 uses
  %i.ew = mul i64 %.sroa.0.0, %indvars.iv65
  %i.ex = getelementptr [16 x i8], ptr %i.ag, i64 %i.ew ; 5 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 %mul.result115
  %i.ez = icmp ult ptr %i.ey, %i.ex
  %i.fa = or i1 %i.ez, %i.eu
  %or.cond = select i1 %min.iters.check133, i1 true, i1 %i.fa
  %brmerge153 = select i1 %or.cond, i1 true, i1 %conflict.rdx
  br i1 %brmerge153, label %scalar.ph132.preheader, label %vector.body139

vector.body139:                                   ; preds = %.preheader54, %vector.body139
  %index140 = phi i64 [ %index.next144, %vector.body139 ], [ 0, %.preheader54 ] ; 4 uses
  %i.fb = or disjoint i64 %index140, 1            ; 2 uses
  %i.fc = getelementptr [16 x i8], ptr %i.ex, i64 %index140
  %i.fd = getelementptr [16 x i8], ptr %i.ex, i64 %i.fb
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index140 ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.fb ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fc, align 8
  %wide.load141 = load <2 x double>, ptr %i.fd, align 8
  %wide.load142 = load <2 x double>, ptr %i.fe, align 8
  %wide.load143 = load <2 x double>, ptr %i.ff, align 8
  %i.fg = fadd <2 x double> %wide.load, %wide.load142
  %i.fh = fadd <2 x double> %wide.load141, %wide.load143
  store <2 x double> %i.fg, ptr %i.fe, align 8
  store <2 x double> %i.fh, ptr %i.ff, align 8
  %index.next144 = add nuw i64 %index140, 2       ; 2 uses
  %i.fi = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.fi, label %middle.block145, label %vector.body139, !llvm.loop !84

middle.block145:                                  ; preds = %vector.body139
  br i1 %cmp.n146, label %._crit_edge, label %scalar.ph132.preheader

scalar.ph132.preheader:                           ; preds = %.preheader54, %middle.block145
  %indvars.iv.ph = phi i64 [ 0, %.preheader54 ], [ %n.vec138, %middle.block145 ]
  br label %scalar.ph132

.preheader:                                       ; preds = %._crit_edge, %.preheader55
  %.not62 = icmp eq i64 %.pre, 0
  br i1 %.not62, label %._crit_edge60, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fj = load i64, ptr %2, align 8, !tbaa !18    ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !45 ; 3 uses
  %xtraiter = and i64 %.pre, 1
  %i.fm = icmp eq i64 %.pre, 1
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.pre, -2
  br label %bb.w

bb.v:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i, %bb.j, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi2EE5SliceIJiNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %scalar.ph132, %middle.block145
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader54, !llvm.loop !85

scalar.ph132:                                     ; preds = %scalar.ph132.preheader, %scalar.ph132
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph132 ], [ %indvars.iv.ph, %scalar.ph132.preheader ] ; 2 uses
  %i.fo = mul i64 %indvars.iv, %.sroa.7.0         ; 2 uses
  %i.fp = getelementptr [16 x i8], ptr %i.ex, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.fo ; 2 uses
  %i.fr = load <2 x double>, ptr %i.fp, align 8, !tbaa !41
  %i.fs = load <2 x double>, ptr %i.fq, align 8, !tbaa !41
  %i.ft = fadd <2 x double> %i.fr, %i.fs
  store <2 x double> %i.ft, ptr %i.fq, align 8, !tbaa !41
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.fu = and i64 %indvars.iv.next, 4294967295
  %i.fv = icmp ugt i64 %.pre, %i.fu
  br i1 %i.fv, label %scalar.ph132, label %._crit_edge, !llvm.loop !86

._crit_edge60.loopexit.unr-lcssa:                 ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge60, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge60.loopexit.unr-lcssa, %.lr.ph
  %storemerge59.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.gj, %._crit_edge60.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod149 = trunc i64 %.pre to i1
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.fw = mul i64 %storemerge59.epil.init, %.sroa.7.0
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.fw
  %i.fy = mul i64 %i.fj, %storemerge59.epil.init
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !tbaa.struct !94
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %.epil.preheader, %._crit_edge60.loopexit.unr-lcssa, %.preheader54.lr.ph, %.preheader
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret void

bb.w:                                             ; preds = %bb.w, %.lr.ph.new
  %storemerge59 = phi i64 [ 0, %.lr.ph.new ], [ %i.gj, %bb.w ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.w ]
  %i.ga = mul i64 %storemerge59, %.sroa.7.0
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ga
  %i.gc = mul i64 %i.fj, %storemerge59
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !94
  %i.ge = or disjoint i64 %storemerge59, 1        ; 2 uses
  %i.gf = mul i64 %i.ge, %.sroa.7.0
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.gf
  %i.gh = mul i64 %i.fj, %i.ge
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !94
  %i.gj = add nuw i64 %storemerge59, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge60.loopexit.unr-lcssa, label %bb.w, !llvm.loop !87

.body:                                            ; preds = %bb.v, %bb.p
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn.i.i, %bb.p ], [ %i.fn, %bb.v ]
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.e
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %.body ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  resume { ptr, i32 } %.pn13.pn.pn.pn

bb.y:                                             ; preds = %bb.d
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.21) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4dmlc18LogStackTraceLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.a) #9
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4dmlc18LogStackTraceLevelEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !26
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
end_hunk_0
