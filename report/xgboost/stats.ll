Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/stats?download=true
inline.NumInlined: 1559
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7xgboost6common6MedianEPKNS_7ContextERKNS_6linalg6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNS5_IfLi1EEE:bb.a
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.bc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bc, ptr noundef nonnull @.str, i32 noundef 41)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.q

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.r ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.2, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bg = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !45
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bh, i64 noundef %i.bj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.r

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %common.resume

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %.pr73 = load ptr, ptr %10, align 8, !tbaa !40  ; 4 uses
  %.not.i46 = icmp eq ptr %.pr73, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %.pr73, align 8, !tbaa !44 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pr73, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr73, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.t, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %.sroa.01.0.copyload = load i64, ptr %8, align 8, !tbaa !31
  %.sroa.22.0.copyload = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.bt = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !53 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.01.0.copyload, ptr %4, align 8
  store ptr %.sroa.22.0.copyload, ptr %i.ar, align 8
  %i.bu = sitofp i64 %i.bt to double              ; 3 uses
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %"_ZN7xgboost6common16WeightedQuantileINS0_18IndexTransformIterIZNS_6linalg6cbeginIKfLi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EENS2_IZNS0_6MedianEPKNS_7ContextERKNS3_6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNSG_IfLi1EEEE3$_0EEfEET1_SF_dS7_S7_T0_.exit", label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bw = fptoui double %i.bu to i64              ; 8 uses
  %i.bx = icmp ugt i64 %i.bw, 1152921504606846975
  br i1 %i.bx, label %.noexc.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #31
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.v
  %.not.i.i.i.i.i = icmp eq i64 %i.bw, 0          ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.i, label %.noexc45.i

.noexc45.i:                                       ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.by = shl nuw nsw i64 %i.bw, 3
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #32 ; 8 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bw
  store i64 0, ptr %i.bz, align 8, !tbaa !31
  %i.cc = getelementptr i8, ptr %i.bz, i64 8      ; 3 uses
  %i.cd = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.preheader.i.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i:             ; preds = %.noexc45.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cd, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cc, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i, %.noexc45.i
  %.0.i.i.i.i.i51.i = phi ptr [ %i.cf, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i ], [ %i.cc, %.noexc45.i ] ; 3 uses
  %.0.i.i.i.i.i51.i127 = ptrtoaddr ptr %.0.i.i.i.i.i51.i to i64
  %i.cg = add i64 %.0.i.i.i.i.i51.i127, -8
  %i.ch = sub i64 %i.cg, %i.ca                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 4 uses
  %i.ck = shl i64 %n.vec, 3
  %i.cl = getelementptr i8, ptr %i.bz, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cm = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.cn, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.bz, %.lr.ph.preheader.i.i ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i64 %indvars.iv.i.i, ptr %.sroa.02.06.i.i, align 8, !tbaa !31
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cp, %.0.i.i.i.i.i51.i
  br i1 %.not.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !125

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %i.cq = ptrtoint ptr %i.cb to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.i

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.i: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit.i, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i42.i = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.0.i.i.i.i.i51.i, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit.i ] ; 6 uses
  %.sroa.16.03141.i = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cq, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit.i ] ; 2 uses
  %.sroa.0.036.i = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.bz, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.loopexit.i ] ; 15 uses
  %i.cr = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %0)
          to label %.noexc46.i unwind label %bb.ag ; 0 uses

.noexc46.i:                                       ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.i
  %i.cs = icmp eq ptr %.sroa.0.036.i, %.0.i.i.i.i.i42.i
  br i1 %i.cs, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc46.i
  %i.ct = ptrtoint ptr %.0.i.i.i.i.i42.i to i64   ; 2 uses
  %i.cu = ptrtoint ptr %.sroa.0.036.i to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3                 ; 2 uses
  %i.cx = add nsw i64 %i.cw, 1
  %i.cy = sdiv i64 %i.cx, 2                       ; 4 uses
  %i.cz = icmp sgt i64 %i.cw, 0
  br i1 %i.cz, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.de, %select.unfold.i.i.i.i ], [ %i.cy, %bb.w ] ; 4 uses
  %i.da = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.db = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.da, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #33 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.dc = icmp eq i64 %.010.i.i.i.i, 1
  %i.dd = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.de = lshr i64 %i.dd, 1
  br i1 %i.dc, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.w
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.w ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %.sroa.12.0.i.i = phi ptr [ null, %bb.w ], [ %i.db, %.lr.ph.i.i.i.i ], [ %i.db, %select.unfold.i.i.i.i ] ; 7 uses
  %i.df = icmp eq i64 %i.cy, %.sroa.5.0.i.i
  br i1 %i.df, label %bb.x, label %bb.z, !prof !35

bb.x:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i
  %i.dg = getelementptr inbounds [8 x i8], ptr %.sroa.0.036.i, i64 %i.cy ; 4 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_"(ptr %.sroa.0.036.i, ptr %i.dg, ptr noundef %.sroa.12.0.i.i, ptr nonnull %4)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_"(ptr %i.dg, ptr %.0.i.i.i.i.i42.i, ptr noundef %.sroa.12.0.i.i, ptr nonnull %4)
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.ct, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_SH_S13_S13_S12_T2_"(ptr %.sroa.0.036.i, ptr %i.dg, ptr %.0.i.i.i.i.i42.i, i64 noundef %i.cy, i64 noundef %i.dj, ptr noundef %.sroa.12.0.i.i, i64 %i.as)
  br label %bb.ac

bb.y:                                             ; preds = %bb.ab, %bb.aa
  %.sroa.12.0.i.i.lcssa = phi ptr [ %.sroa.12.0.i.i, %bb.ab ], [ null, %bb.aa ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = shl i64 %.sroa.5.0.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i.lcssa, i64 noundef %i.dl) #8
  br label %.body

bb.z:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i
  %i.dm = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.dm, label %bb.aa, label %bb.ab, !prof !34

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_"(ptr %.sroa.0.036.i, ptr %.0.i.i.i.i.i42.i, ptr nonnull %4)
          to label %bb.ac unwind label %bb.y

bb.ab:                                            ; preds = %bb.z
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common16WeightedQuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EENSC_IZNSA_6MedianEPKNS9_7ContextERKNSD_6TensorIfLi2EEERKNS9_16HostDeviceVectorIfEEPNSQ_IfLi1EEEE3$_0EEfEET1_SP_dSH_SH_T0_EUlmmE_EEEvSH_SH_S13_S12_T2_"(ptr %.sroa.0.036.i, ptr %.0.i.i.i.i.i42.i, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i, ptr nonnull %4)
          to label %bb.ac unwind label %bb.y

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.x
  %i.dn = shl i64 %.sroa.5.0.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.dn) #8
  br label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.ac, %.noexc46.i
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.do = shl nuw nsw i64 %i.bw, 2
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #32
          to label %.noexc52.i unwind label %bb.ag ; 5 uses

.noexc52.i:                                       ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.bw ; 2 uses
  store float 0.000000e+00, ptr %i.dp, align 4, !tbaa !58
  %i.dr = getelementptr i8, ptr %i.dp, i64 4      ; 3 uses
  %i.ds = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.ae, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc52.i
  %.idx.i.i.i.i.i.i.i49.i = shl nuw nsw i64 %i.ds, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dr, i8 0, i64 %.idx.i.i.i.i.i.i.i49.i, i1 false), !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i.i.i.i.i.i.i49.i
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc52.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
  %.sroa.07.0.i = phi ptr [ %i.dp, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.dp, %.noexc52.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 5 uses
  %.sroa.16.0.i = phi ptr [ %i.dq, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.dq, %.noexc52.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.0.i.i.i.i.i50.i = phi ptr [ %i.du, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.dr, %.noexc52.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.dv = load i64, ptr %.sroa.0.036.i, align 8, !tbaa !31 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.t
  br i1 %i.dw, label %.thread69.i, label %bb.af, !prof !35

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt9terminatev() #29
  unreachable

.thread69.i:                                      ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dv
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !58
  store float %i.dy, ptr %.sroa.07.0.i, align 4, !tbaa !58
  %i.dz = icmp sgt i64 %i.bt, 1
  br i1 %i.dz, label %.lr.ph.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i, %.thread69.i
  %i.ea = getelementptr inbounds i8, ptr %.0.i.i.i.i.i50.i, i64 -4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !58
  %i.ec = fmul float %i.eb, 5.000000e-01
  %i.ed = ptrtoint ptr %.0.i.i.i.i.i50.i to i64
  %i.ee = ptrtoint ptr %.sroa.07.0.i to i64       ; 4 uses
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %._crit_edge.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.eg, %._crit_edge.i ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.sroa.07.0.i, %._crit_edge.i ] ; 2 uses
  %i.ei = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.ei ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !58
  %i.el = fcmp olt float %i.ek, %i.ec             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.en = xor i64 %i.ei, -1
  %i.eo = add nsw i64 %.016.i.i.i, %i.en
  %.sroa.011.1.i.i.i = select i1 %i.el, ptr %i.em, ptr %.sroa.011.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.el, i64 %i.eo, i64 %i.ei ; 2 uses
  %i.ep = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ep, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.i, !llvm.loop !126

bb.ag:                                            ; preds = %bb.ad, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.eq, %bb.ag ], [ %i.dk, %bb.y ] ; 2 uses
  %.not.i.i.i56.i = icmp eq ptr %.sroa.0.036.i, null
  br i1 %.not.i.i.i56.i, label %common.resume, label %.thread.i

.lr.ph.split.i:                                   ; preds = %.thread69.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i
  %.02460.i = phi i64 [ %i.fa, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i ], [ 1, %.thread69.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.036.i, i64 %.02460.i
  %i.es = load i64, ptr %i.er, align 8, !tbaa !31 ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.t
  br i1 %i.et, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i, label %bb.ah, !prof !35

bb.ah:                                            ; preds = %.lr.ph.split.i
  call void @_ZSt9terminatev() #29
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i: ; preds = %.lr.ph.split.i
  %i.eu = getelementptr [4 x i8], ptr %.sroa.07.0.i, i64 %.02460.i ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 -4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !58
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.es
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !58
  %i.ez = fadd float %i.ew, %i.ey
  store float %i.ez, ptr %i.eu, align 4, !tbaa !58
  %i.fa = add i64 %.02460.i, 1                    ; 2 uses
  %i.fb = uitofp i64 %i.fa to double
  %i.fc = fcmp olt double %i.fb, %i.bu
  br i1 %i.fc, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !127

_ZNSt6vectorImSaImEED2Ev.exit.loopexit.i:         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.pre.i = ptrtoint ptr %.sroa.011.1.i.i.i to i64
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.i ], [ %i.ee, %._crit_edge.i ]
  %i.fd = sub i64 %.pre-phi.i, %i.ee
  %i.fe = ashr exact i64 %i.fd, 2
  %i.ff = fadd double %i.bu, -1.000000e+00
  %i.fg = fptoui double %i.ff to i64
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.fg)
  %.val42.val.i = load i64, ptr %4, align 8, !tbaa !31
  %.val42.val44.i = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.036.i, i64 %.sroa.speculated.i
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !31
  %i.fj = add i64 %i.fi, %.val42.val.i
  %i.fk = load i64, ptr %.val42.val44.i, align 8, !tbaa !31
  %i.fl = mul i64 %i.fk, %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %.val42.val44.i, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !59
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fl
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !58
  %i.fq = ptrtoint ptr %.sroa.16.0.i to i64
  %i.fr = sub i64 %i.fq, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.0.i, i64 noundef %i.fr) #30
  %i.fs = ptrtoint ptr %.sroa.0.036.i to i64
  %i.ft = sub i64 %.sroa.16.03141.i, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.036.i, i64 noundef %i.ft) #30
  br label %"_ZN7xgboost6common16WeightedQuantileINS0_18IndexTransformIterIZNS_6linalg6cbeginIKfLi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EENS2_IZNS0_6MedianEPKNS_7ContextERKNS3_6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNSG_IfLi1EEEE3$_0EEfEET1_SF_dS7_S7_T0_.exit"

.thread.i:                                        ; preds = %.body
  %i.fu = ptrtoint ptr %.sroa.0.036.i to i64
  %i.fv = sub i64 %.sroa.16.03141.i, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.036.i, i64 noundef %i.fv) #30
  br label %common.resume

"_ZN7xgboost6common16WeightedQuantileINS0_18IndexTransformIterIZNS_6linalg6cbeginIKfLi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EENS2_IZNS0_6MedianEPKNS_7ContextERKNS3_6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNSG_IfLi1EEEE3$_0EEfEET1_SF_dS7_S7_T0_.exit": ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %.0.i = phi float [ %i.fp, %_ZNSt6vectorImSaImEED2Ev.exit.i ], [ +qnan, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit

_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit: ; preds = %"_ZN7xgboost6common16WeightedQuantileINS0_18IndexTransformIterIZNS_6linalg6cbeginIKfLi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EENS2_IZNS0_6MedianEPKNS_7ContextERKNS3_6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNSG_IfLi1EEEE3$_0EEfEET1_SF_dS7_S7_T0_.exit", %bb.n
  %.0 = phi float [ %i.bb, %bb.n ], [ %.0.i, %"_ZN7xgboost6common16WeightedQuantileINS0_18IndexTransformIterIZNS_6linalg6cbeginIKfLi1EEEDaRKNS3_10TensorViewIT_XT0_EEEEUlmE_EENS2_IZNS0_6MedianEPKNS_7ContextERKNS3_6TensorIfLi2EEERKNS_16HostDeviceVectorIfEEPNSG_IfLi1EEEE3$_0EEfEET1_SF_dS7_S7_T0_.exit" ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %storemerge84
  store float %.0, ptr %i.fw, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.fx = add nuw i64 %storemerge84, 1            ; 2 uses
  %i.fy = load i64, ptr %i.ag, align 8, !tbaa !31
  %i.fz = icmp ult i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.j, label %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit._crit_edge, !llvm.loop !128

_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit._crit_edge: ; preds = %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit, %_ZN7xgboost6linalg6TensorIfLi1EE8HostViewEv.exit.preheader, %_ZN7xgboost6common9cuda_impl6MedianEPKNS_7ContextENS_6linalg10TensorViewIKfLi2EEENS0_15OptionalWeightsEPNS5_6TensorIfLi1EEE.exit
  ret void

bb.ai:                                            ; preds = %bb.r
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #29
  unreachable
}

declare void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare { i64, ptr } @_ZNK7xgboost16HostDeviceVectorIfE15ConstDeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind noalias writable sret(%"class.xgboost::linalg::TensorView") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %2, 65535
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
begin_hunk_1_@_ZN4dmlc8DemangleB5cxx11EPKc:bb.a
bb.am:                                            ; preds = %.noexc.i96
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.al
  %i.gf = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.i
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.an
  %i.gh = load i64, ptr %i.i, align 8, !tbaa !36
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void

bb.ao:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn31 = phi { ptr, i32 } [ %i.ge, %bb.am ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %i.gj = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.i
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ao
  %i.gl = load i64, ptr %i.i, align 8, !tbaa !36
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  resume { ptr, i32 } %.pn31
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

declare ptr @__cxa_demangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc5ErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare { i64, ptr } @_ZN7xgboost16HostDeviceVectorIfE10DeviceSpanEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6linalg8ConstantIfJRKmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.xgboost::linalg::Tensor.0") align 8 %0, ptr noundef %1, float noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.xgboost::linalg::Tensor.0", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef 0, float noundef 0.000000e+00, i32 -65536)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8
  invoke void @_ZNK7xgboost16HostDeviceVectorIfE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(17) %4, i32 %.sroa.0.0.copyload.i)
          to label %_ZNK7xgboost6linalg6TensorIfLi1EE9SetDeviceENS_9DeviceOrdE.exit unwind label %bb.d

_ZNK7xgboost6linalg6TensorIfLi1EE9SetDeviceENS_9DeviceOrdE.exit: ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !31     ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !31
  invoke void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef %i.d)
          to label %_ZN7xgboost6linalg6TensorIfLi1EE7ReshapeIJRKmETnPNSt9enable_ifIXsr13IsAllIntegralIDpT_EE5valueEvE4typeELPv0EEEvDpOS7_.exit unwind label %bb.d

_ZN7xgboost6linalg6TensorIfLi1EE7ReshapeIJRKmETnPNSt9enable_ifIXsr13IsAllIntegralIDpT_EE5valueEvE4typeELPv0EEEvDpOS7_.exit: ; preds = %_ZNK7xgboost6linalg6TensorIfLi1EE9SetDeviceENS_9DeviceOrdE.exit
  invoke void @_ZN7xgboost16HostDeviceVectorIfE4FillEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7xgboost6linalg6TensorIfLi1EE7ReshapeIJRKmETnPNSt9enable_ifIXsr13IsAllIntegralIDpT_EE5valueEvE4typeELPv0EEEvDpOS7_.exit
  invoke void @_ZN7xgboost16HostDeviceVectorIfEC1EOS1_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(17) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 8 dereferenceable(9) %i.a, i64 9, i1 false)
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.d:                                             ; preds = %bb.b, %_ZNK7xgboost6linalg6TensorIfLi1EE9SetDeviceENS_9DeviceOrdE.exit, %bb.a, %_ZN7xgboost6linalg6TensorIfLi1EE7ReshapeIJRKmETnPNSt9enable_ifIXsr13IsAllIntegralIDpT_EE5valueEvE4typeELPv0EEEvDpOS7_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %i.f
}

declare void @_ZN7xgboost16HostDeviceVectorIfE4FillEf(ptr noundef nonnull align 8 dereferenceable(8), float noundef) local_unnamed_addr #1

declare void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, float noundef, i32) unnamed_addr #1

declare void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZN7xgboost16HostDeviceVectorIfEC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost16HostDeviceVectorIfEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #8, !inline_history !1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #30, !inline_history !1
  br label %_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !68
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !36
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7xgboost10collective6detail10ResultImplESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 3
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #33 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %select.unfold.i.i ], [ %i.j, %.lr.ph.i.i ] ; 5 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !35

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_T1_(ptr %0, ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = shl i64 %.sroa.5.0, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.q) #8
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit
  %i.r = icmp eq ptr %.sroa.12.0, null
  br i1 %i.r, label %bb.f, label %bb.g, !prof !34

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_(ptr %0, ptr %1, ptr %2)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.s = shl i64 %.sroa.5.0, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_(ptr %0, ptr %1, i64 noundef 7, ptr %4)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.020.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.020.i, ptr %4)
  %i.g = shl nuw nsw i64 %.020.i, 1
  tail call void @_ZSt17__merge_sort_loopIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEElNS1_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g, ptr %4)
  %i.h = shl nsw i64 %.020.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit, !llvm.loop !268

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_(ptr %1, ptr %2, i64 noundef 7, ptr %4)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit15

.lr.ph.i13:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit, %.lr.ph.i13
  %.020.i14 = phi i64 [ %i.p, %.lr.ph.i13 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.020.i14, ptr %4)
  %i.o = shl nuw nsw i64 %.020.i14, 1
  tail call void @_ZSt17__merge_sort_loopIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEElNS1_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o, ptr %4)
  %i.p = shl nsw i64 %.020.i14, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit15, !llvm.loop !268

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit15: ; preds = %.lr.ph.i13, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_.exit
  %i.r = ptrtoint ptr %4 to i64
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_SN_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3, i64 %i.r)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret26, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %1
  br i1 %.not19.i, label %common.ret26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.pre23.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.6.0.copyload.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.pre23.i, %.lr.ph.i ], [ %.sroa.6.0.copyload.i.i.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 7 uses
  %.sroa.0.021.i = phi ptr [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 6 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %i.g = load i64, ptr %.sroa.0.021.i, align 8, !tbaa !31 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %2, align 8, !tbaa !31 ; 3 uses
  %i.i = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g
  %i.j = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 3 uses
  %i.k = mul i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  %i.o = load float, ptr %i.n, align 4, !tbaa !58 ; 2 uses
  %i.p = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.h
  %i.q = mul i64 %i.j, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !58
  %i.t = fcmp olt float %i.o, %i.s
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %.sroa.0.021.i to i64
  %i.v = sub i64 %i.u, %i.b                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.z = sub nsw i64 0, %i.w
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.v, i1 false)
  %.sroa.6.0.copyload.i.i.i.pre.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !47
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %i.v, 8
  br i1 %i.ab, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.h, ptr %i.ac, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %.pn20.i, align 8, !tbaa !31 ; 2 uses
  %i.ae = add i64 %i.ad, %.sroa.0.0.copyload1.i.i.i.i
  %i.af = mul i64 %i.ae, %i.j
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !58
  %i.ai = fcmp olt float %i.o, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.aj = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %i.ad, %bb.h ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.h ] ; 3 uses
  %.sroa.05.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.h ]
  store i64 %i.aj, ptr %.sroa.05.010.i.i, align 8, !tbaa !31
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -8 ; 2 uses
  %i.ak = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !31 ; 2 uses
  %i.al = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.g
  %i.am = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.an = mul i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !58
  %i.aq = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.ak
  %i.ar = mul i64 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !58
  %i.au = fcmp olt float %i.ap, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.021.i, %bb.h ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  %.sroa.6.0.copyload.i.i.i24.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i, %bb.g ], [ %.sroa.6.0.copyload.i.i.i.pre.i, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.h ], [ %.sroa.6.0.copyload.i.i.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sink.i, align 8, !tbaa !31
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret26, label %bb.c, !llvm.loop !4

common.ret26:                                     ; preds = %.preheader.i, %bb.b, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %bb.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.av = lshr i64 %i.d, 1                        ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_(ptr %0, ptr %i.aw, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_(ptr %i.aw, ptr %1, ptr %2)
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.a, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_SN_T1_(ptr %0, ptr %i.aw, ptr %1, i64 noundef %i.av, i64 noundef %i.az, ptr %2)
  br label %common.ret26
end_hunk_1
begin_hunk_2_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_:bb.a
  %i.k = load i64, ptr %.sroa.0.021.i, align 8, !tbaa !31 ; 3 uses
  %i.l = load i64, ptr %.sroa.031.035, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !31 ; 3 uses
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.k
  %i.n = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 3 uses
  %i.o = mul i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59   ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %i.s = load float, ptr %i.r, align 4, !tbaa !58 ; 2 uses
  %i.t = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l
  %i.u = mul i64 %i.n, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = fcmp olt float %i.s, %i.w
  br i1 %i.x, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.y = ptrtoint ptr %.sroa.0.021.i to i64
  %i.z = sub i64 %i.y, %i.i                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ad = sub nsw i64 0, %i.aa
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.035, i64 %i.z, i1 false)
  %.sroa.6.0.copyload.i.i.i.pre.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.af = icmp eq i64 %i.z, 8
  br i1 %i.af, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.l, ptr %i.ag, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %.pn20.i, align 8, !tbaa !31 ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.0.0.copyload1.i.i.i.i
  %i.aj = mul i64 %i.ai, %i.n
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !58
  %i.am = fcmp olt float %i.s, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.an = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %i.ah, %bb.g ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 3 uses
  %.sroa.05.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.g ]
  store i64 %i.an, ptr %.sroa.05.010.i.i, align 8, !tbaa !31
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -8 ; 2 uses
  %i.ao = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %i.ap = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.k
  %i.aq = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ar = mul i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !58
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.ao
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !58
  %i.ay = fcmp olt float %i.at, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.6.0.copyload.i.i.i.pre23.i43 = phi ptr [ %.sroa.6.0.copyload.i.i.i.pre23.i44, %bb.f ], [ %.sroa.6.0.copyload.i.i.i.pre.i, %bb.d ], [ %.sroa.6.0.copyload.i.i.i.pre23.i44, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.pre23.i44, %bb.g ], [ %.sroa.6.0.copyload.i.i.i.pre23.i44, %.lr.ph.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %.sroa.031.035, %bb.f ], [ %.sroa.031.035, %bb.d ], [ %.sroa.031.035, %bb.e ], [ %.sroa.0.021.i, %bb.g ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  %.sroa.6.0.copyload.i.i.i24.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.6.0.copyload.i.i.i.pre.i, %bb.d ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.g ], [ %.sroa.6.0.copyload.i.i.i.i, %.lr.ph.i.i ]
  store i64 %i.k, ptr %.sink.i, align 8, !tbaa !31
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit, label %bb.b, !llvm.loop !4

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %i.az = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ba = sub i64 %i.a, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %.not = icmp slt i64 %i.bb, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !271

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.us, %bb.a
  %.sroa.031.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit ] ; 8 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.us ], [ %i.az, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit.loopexit ]
  %i.bc = icmp eq ptr %.sroa.031.0.lcssa, %1
  br i1 %i.bc, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit30, label %.preheader.i9

.preheader.i9:                                    ; preds = %._crit_edge
  %.sroa.0.018.i10 = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 8 ; 2 uses
  %.not19.i11 = icmp eq ptr %.sroa.0.018.i10, %1
  br i1 %.not19.i11, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit30, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.preheader.i9
  %.sroa.6.0..sroa_idx.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.pre23.i14 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i13, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19, %.lr.ph.i12
  %.sroa.6.0.copyload.i.i.i.i15 = phi ptr [ %.sroa.6.0.copyload.i.i.i.pre23.i14, %.lr.ph.i12 ], [ %.sroa.6.0.copyload.i.i.i24.i21, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19 ] ; 7 uses
  %.sroa.0.021.i16 = phi ptr [ %.sroa.0.018.i10, %.lr.ph.i12 ], [ %.sroa.0.0.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19 ] ; 6 uses
  %.pn20.i17 = phi ptr [ %.sroa.031.0.lcssa, %.lr.ph.i12 ], [ %.sroa.0.021.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19 ] ; 4 uses
  %i.bd = load i64, ptr %.sroa.0.021.i16, align 8, !tbaa !31 ; 3 uses
  %i.be = load i64, ptr %.sroa.031.0.lcssa, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i18 = load i64, ptr %3, align 8, !tbaa !31 ; 3 uses
  %i.bf = add i64 %.sroa.0.0.copyload1.i.i.i.i18, %i.bd
  %i.bg = load i64, ptr %.sroa.6.0.copyload.i.i.i.i15, align 8, !tbaa !31 ; 3 uses
  %i.bh = mul i64 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i15, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !59 ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !58 ; 2 uses
  %i.bm = add i64 %.sroa.0.0.copyload1.i.i.i.i18, %i.be
  %i.bn = mul i64 %i.bg, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !58
  %i.bq = fcmp olt float %i.bl, %i.bp
  br i1 %i.bq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.br = ptrtoint ptr %.sroa.0.021.i16 to i64
  %i.bs = sub i64 %i.br, %.lcssa                  ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.j, label %bb.k, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn20.i17, i64 16
  %i.bw = sub nsw i64 0, %i.bt
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.0.lcssa, i64 %i.bs, i1 false)
  %.sroa.6.0.copyload.i.i.i.pre.i29 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i13, align 8, !tbaa !47
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19

bb.k:                                             ; preds = %bb.i
  %i.by = icmp eq i64 %i.bs, 8
  br i1 %i.by, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn20.i17, i64 8
  store i64 %i.be, ptr %i.bz, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19

bb.m:                                             ; preds = %bb.h
  %i.ca = load i64, ptr %.pn20.i17, align 8, !tbaa !31 ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.0.copyload1.i.i.i.i18
  %i.cc = mul i64 %i.cb, %i.bg
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !58
  %i.cf = fcmp olt float %i.bl, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i24, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19

.lr.ph.i.i24:                                     ; preds = %bb.m, %.lr.ph.i.i24
  %i.cg = phi i64 [ %i.ch, %.lr.ph.i.i24 ], [ %i.ca, %bb.m ]
  %.sroa.0.011.i.i25 = phi ptr [ %.sroa.0.0.i.i27, %.lr.ph.i.i24 ], [ %.pn20.i17, %bb.m ] ; 3 uses
  %.sroa.05.010.i.i26 = phi ptr [ %.sroa.0.011.i.i25, %.lr.ph.i.i24 ], [ %.sroa.0.021.i16, %bb.m ]
  store i64 %i.cg, ptr %.sroa.05.010.i.i26, align 8, !tbaa !31
  %.sroa.0.0.i.i27 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i25, i64 -8 ; 2 uses
  %i.ch = load i64, ptr %.sroa.0.0.i.i27, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i28 = load i64, ptr %3, align 8, !tbaa !31 ; 2 uses
  %i.ci = add i64 %.sroa.0.0.copyload1.i.i.i.i.i28, %i.bd
  %i.cj = load i64, ptr %.sroa.6.0.copyload.i.i.i.i15, align 8, !tbaa !31 ; 2 uses
  %i.ck = mul i64 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !58
  %i.cn = add i64 %.sroa.0.0.copyload1.i.i.i.i.i28, %i.ch
  %i.co = mul i64 %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58
  %i.cr = fcmp olt float %i.cm, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i24, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19, !llvm.loop !3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19: ; preds = %.lr.ph.i.i24, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i20 = phi ptr [ %.sroa.031.0.lcssa, %bb.l ], [ %.sroa.031.0.lcssa, %bb.j ], [ %.sroa.031.0.lcssa, %bb.k ], [ %.sroa.0.021.i16, %bb.m ], [ %.sroa.0.011.i.i25, %.lr.ph.i.i24 ]
  %.sroa.6.0.copyload.i.i.i24.i21 = phi ptr [ %.sroa.6.0.copyload.i.i.i.i15, %bb.l ], [ %.sroa.6.0.copyload.i.i.i.pre.i29, %bb.j ], [ %.sroa.6.0.copyload.i.i.i.i15, %bb.k ], [ %.sroa.6.0.copyload.i.i.i.i15, %bb.m ], [ %.sroa.6.0.copyload.i.i.i.i15, %.lr.ph.i.i24 ]
  store i64 %i.bd, ptr %.sink.i20, align 8, !tbaa !31
  %.sroa.0.0.i22 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i16, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %.sroa.0.0.i22, %1
  br i1 %.not.i23, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit30, label %bb.h, !llvm.loop !4

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_.exit30: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i19, %._crit_edge, %.preheader.i9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SN_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not56 = icmp slt i64 %i.e, %i.a
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 10 uses
  %.idx50 = shl i64 %3, 4                         ; 2 uses
  %.not51 = icmp eq i64 %.idx, %.idx50
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not51, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 8
  %i.g = icmp eq i64 %.idx, 8
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us
  %.058.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.042.057.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.042.057.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !35

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.sroa.042.057.us, align 8, !tbaa !31
  store i64 %i.i, ptr %.058.us, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %.058.us, i64 8
  %i.k = load i64, ptr %i.h, align 8, !tbaa !31
  store i64 %i.k, ptr %i.j, align 8, !tbaa !31
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058.us, ptr align 8 %.sroa.042.057.us, i64 %.idx, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.058.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.m = getelementptr inbounds i8, ptr %.058.us, i64 %.idx
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.idx ; 2 uses
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !272

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit
  %.058 = phi ptr [ %i.ax, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.042.057 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.042.057, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.042.057, i64 %.idx50 ; 4 uses
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi ptr [ %.058, %.lr.ph.i ], [ %i.ah, %bb.e ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %.sroa.042.057, %.lr.ph.i ], [ %.sroa.015.1.i, %bb.e ] ; 2 uses
  %.sroa.011.019.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.e ] ; 2 uses
  %i.v = load i64, ptr %.sroa.011.019.i, align 8, !tbaa !31 ; 2 uses
  %i.w = load i64, ptr %.sroa.015.020.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %4, align 8, !tbaa !31 ; 2 uses
  %i.x = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.v
  %i.y = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.z = mul i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !58
  %i.ac = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.w
  %i.ad = mul i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58
  %i.ag = fcmp olt float %i.ab, %i.af             ; 3 uses
  %.sink.i = select i1 %i.ag, i64 %i.v, i64 %i.w
  %.sroa.011.1.idx.i = select i1 %i.ag, i64 8, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ag, i64 0, i64 8
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i64 %.sink.i, ptr %.021.i, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 4 uses
  %i.ai = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.aj = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !273

.critedge.i.loopexit:                             ; preds = %bb.e
  %i.ak = ptrtoint ptr %i.r to i64
  %i.al = ptrtoint ptr %.sroa.015.1.i to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %.sroa.015.1.i, i64 %i.am, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %.critedge.i.loopexit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.h, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %.sroa.015.1.i, align 8, !tbaa !31
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !31
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 %i.am ; 3 uses
  %i.ar = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.as = ptrtoint ptr %.sroa.011.1.i to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 8
  br i1 %i.au, label %bb.i, label %bb.j, !prof !35

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %.sroa.011.1.i, i64 %i.at, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit

bb.j:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i
  %i.av = icmp eq i64 %i.at, 8
  br i1 %i.av, label %bb.k, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %.sroa.011.1.i, align 8, !tbaa !31
  store i64 %i.aw, ptr %i.aq, align 8, !tbaa !31
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ax = getelementptr inbounds i8, ptr %i.aq, i64 %i.at ; 2 uses
  %i.ay = sub i64 %i.b, %i.ar
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %.not = icmp slt i64 %i.az, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !272

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us, %bb.a
  %.sroa.042.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %i.ax, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ] ; 2 uses
  %.lcssa54 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit.us ], [ %i.az, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa54) ; 2 uses
  %.idx52 = shl nsw i64 %.sroa.speculated, 3
  %i.ba = getelementptr inbounds i8, ptr %.sroa.042.0.lcssa, i64 %.idx52 ; 5 uses
  %i.bb = icmp ne i64 %.sroa.speculated, 0
  %i.bc = icmp ne ptr %i.ba, %1
  %or.cond18.i15 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond18.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %.sroa.6.0..sroa_idx.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0.copyload.i.i.i.i23 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i22, align 8, !tbaa !47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i23, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i21
  %.021.i24 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.br, %bb.l ] ; 2 uses
  %.sroa.015.020.i25 = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i32, %bb.l ] ; 2 uses
  %.sroa.011.019.i26 = phi ptr [ %i.ba, %.lr.ph.i21 ], [ %.sroa.011.1.i30, %bb.l ] ; 2 uses
  %i.bf = load i64, ptr %.sroa.011.019.i26, align 8, !tbaa !31 ; 2 uses
  %i.bg = load i64, ptr %.sroa.015.020.i25, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i27 = load i64, ptr %4, align 8, !tbaa !31 ; 2 uses
  %i.bh = add i64 %.sroa.0.0.copyload1.i.i.i.i27, %i.bf
  %i.bi = load i64, ptr %.sroa.6.0.copyload.i.i.i.i23, align 8, !tbaa !31 ; 2 uses
  %i.bj = mul i64 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !58
  %i.bm = add i64 %.sroa.0.0.copyload1.i.i.i.i27, %i.bg
  %i.bn = mul i64 %i.bi, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !58
  %i.bq = fcmp olt float %i.bl, %i.bp             ; 3 uses
  %.sink.i28 = select i1 %i.bq, i64 %i.bf, i64 %i.bg
  %.sroa.011.1.idx.i29 = select i1 %i.bq, i64 8, i64 0
  %.sroa.011.1.i30 = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i26, i64 %.sroa.011.1.idx.i29 ; 3 uses
  %.sroa.015.1.idx.i31 = select i1 %i.bq, i64 0, i64 8
  %.sroa.015.1.i32 = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i25, i64 %.sroa.015.1.idx.i31 ; 3 uses
  store i64 %.sink.i28, ptr %.021.i24, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %.021.i24, i64 8 ; 2 uses
  %i.bs = icmp ne ptr %.sroa.015.1.i32, %i.ba
  %i.bt = icmp ne ptr %.sroa.011.1.i30, %1
  %or.cond.i33 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i33, label %bb.l, label %.critedge.i16, !llvm.loop !273

.critedge.i16:                                    ; preds = %bb.l, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.ba, %._crit_edge ], [ %.sroa.011.1.i30, %bb.l ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.042.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i32, %bb.l ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.br, %bb.l ] ; 3 uses
  %i.bu = ptrtoint ptr %i.ba to i64
  %i.bv = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp sgt i64 %i.bw, 8
  br i1 %i.bx, label %bb.m, label %bb.n, !prof !35

bb.m:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i19, ptr align 8 %.sroa.015.0.lcssa.i18, i64 %i.bw, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20

bb.n:                                             ; preds = %.critedge.i16
  %i.by = icmp eq i64 %i.bw, 8
  br i1 %i.by, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20

bb.o:                                             ; preds = %bb.n
  %i.bz = load i64, ptr %.sroa.015.0.lcssa.i18, align 8, !tbaa !31
  store i64 %i.bz, ptr %.0.lcssa.i19, align 8, !tbaa !31
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.o, %bb.n, %bb.m
  %i.ca = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bw ; 2 uses
  %i.cb = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cc = sub i64 %i.b, %i.cb                     ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 8
  br i1 %i.cd, label %bb.p, label %bb.q, !prof !35

bb.p:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %.sroa.011.0.lcssa.i17, i64 %i.cc, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34

bb.q:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_ET0_T_S8_S7_.exit.i20
  %i.ce = icmp eq i64 %i.cc, 8
  br i1 %i.ce, label %bb.r, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34

bb.r:                                             ; preds = %bb.q
  %i.cf = load i64, ptr %.sroa.011.0.lcssa.i17, align 8, !tbaa !31
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !31
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESN_SH_SH_SH_SH_SN_T1_.exit34: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}
end_hunk_2
begin_hunk_3_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_SN_T1_:bb.a
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit ], [ %i.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit ], [ %.tr8291, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.au = sub i64 %.pre-phi, %i.u
  %i.av = ashr exact i64 %i.au, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.aw = sdiv i64 %.tr8594, 2                    ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.tr8291, i64 %i.aw ; 2 uses
  %i.ay = ptrtoint ptr %.tr90 to i64              ; 3 uses
  %i.az = sub i64 %i.u, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !31
  %.sroa.0.0.copyload1.i.i.i.i58 = load i64, ptr %5, align 8, !tbaa !31 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i60 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i59, align 8, !tbaa !47 ; 2 uses
  %i.bd = add i64 %.sroa.0.0.copyload1.i.i.i.i58, %i.bc
  %i.be = load i64, ptr %.sroa.6.0.copyload.i.i.i.i60, align 8, !tbaa !31 ; 2 uses
  %i.bf = mul i64 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i60, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !59 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !58
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57
  %.017.i62 = phi i64 [ %i.ba, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.1.i67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %.sroa.012.016.i63 = phi ptr [ %.tr90, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.sroa.012.1.i66, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %i.bk = lshr i64 %.017.i62, 1                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i63, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !31
  %i.bn = add i64 %i.bm, %.sroa.0.0.copyload1.i.i.i.i58
  %i.bo = mul i64 %i.bn, %i.be
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !58
  %i.br = fcmp olt float %i.bj, %i.bq             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = xor i64 %i.bk, -1
  %i.bu = add nsw i64 %.017.i62, %i.bt
  %.sroa.012.1.i66 = select i1 %i.br, ptr %.sroa.012.016.i63, ptr %i.bs ; 3 uses
  %.1.i67 = select i1 %i.br, i64 %i.bk, i64 %i.bu ; 2 uses
  %i.bv = icmp sgt i64 %.1.i67, 0
  br i1 %i.bv, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit, !llvm.loop !6

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i61
  %.pre97 = ptrtoint ptr %.sroa.012.1.i66 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi98 = phi i64 [ %.pre97, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit ], [ %i.ay, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.012.0.lcssa.i56 = phi ptr [ %.sroa.012.1.i66, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit ], [ %.tr90, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.bw = sub i64 %.pre-phi98, %i.ay
  %i.bx = ashr exact i64 %i.bw, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit
  %.sroa.070.0 = phi ptr [ %i.w, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ], [ %.sroa.012.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ], [ %i.ax, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.av, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ], [ %i.aw, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ], [ %i.bx, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit ] ; 2 uses
  %i.by = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.070.0, ptr %.tr8291, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_SN_T1_(ptr %.tr90, ptr %.sroa.070.0, ptr %i.by, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.bz = sub nsw i64 %.tr8493, %.0               ; 2 uses
  %i.ca = sub nsw i64 %.tr8594, %.049             ; 2 uses
  %i.cb = icmp eq i64 %i.bz, 0
  %i.cc = icmp eq i64 %i.ca, 0
  %or.cond = or i1 %i.cb, %i.cc
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check165, label %.lr.ph.i.preheader185, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0167 = icmp ult ptr %0, %i.s
  %bound1168 = icmp ult ptr %1, %i.r
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.lr.ph.i.preheader185, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck166
  %n.vec171 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec171, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next180, %vector.body172 ] ; 2 uses
  %i.w = shl i64 %index173, 3                     ; 2 uses
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep175 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep175, i64 16 ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %next.gep175, align 8, !tbaa !31, !alias.scope !294, !noalias !295
  %wide.load177 = load <2 x i64>, ptr %i.x, align 8, !tbaa !31, !alias.scope !294, !noalias !295
  %i.y = getelementptr i8, ptr %next.gep174, i64 16 ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %next.gep174, align 8, !tbaa !31, !alias.scope !295
  %wide.load179 = load <2 x i64>, ptr %i.y, align 8, !tbaa !31, !alias.scope !295
  store <2 x i64> %wide.load178, ptr %next.gep175, align 8, !tbaa !31, !alias.scope !294, !noalias !295
  store <2 x i64> %wide.load179, ptr %i.x, align 8, !tbaa !31, !alias.scope !294, !noalias !295
  store <2 x i64> %wide.load176, ptr %next.gep174, align 8, !tbaa !31, !alias.scope !295
  store <2 x i64> %wide.load177, ptr %i.y, align 8, !tbaa !31, !alias.scope !295
  %index.next180 = add nuw i64 %index173, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next180, %n.vec171
  br i1 %i.z, label %middle.block181, label %vector.body172, !llvm.loop !279

middle.block181:                                  ; preds = %vector.body172
  %cmp.n182 = icmp eq i64 %i.o, %n.vec171
  br i1 %cmp.n182, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader185

.lr.ph.i.preheader185:                            ; preds = %vector.memcheck166, %.lr.ph.i.preheader, %middle.block181
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck166 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block181 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck166 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block181 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader185, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader185 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader185 ] ; 3 uses
  %i.aa = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !31
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !31
  store i64 %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !31
  store i64 %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !280

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.042.0 = phi ptr [ %0, %bb.d ], [ %.sroa.042.0.be, %.backedge ] ; 22 uses
  %.085 = phi i64 [ %i.i, %bb.d ], [ %.085.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.085                  ; 10 uses
  %i.ah = icmp slt i64 %.085, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.085, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load i64, ptr %.sroa.042.0, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 8
  %.idx87 = shl nuw nsw i64 %.0, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.042.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !31
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph100.preheader186, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.085
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ar
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader186, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.042.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.sroa.042.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !31, !alias.scope !296, !noalias !297
  %wide.load130 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !31, !alias.scope !296, !noalias !297
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load131 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !31, !alias.scope !297
  %wide.load132 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !31, !alias.scope !297
  store <2 x i64> %wide.load131, ptr %next.gep129, align 8, !tbaa !31, !alias.scope !296, !noalias !297
  store <2 x i64> %wide.load132, ptr %i.aw, align 8, !tbaa !31, !alias.scope !296, !noalias !297
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !31, !alias.scope !297
  store <2 x i64> %wide.load130, ptr %i.ax, align 8, !tbaa !31, !alias.scope !297
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader186

.lr.ph100.preheader186:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.02998.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph100.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.039.097.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph100.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.042.196.ph = phi ptr [ %.sroa.042.0, %vector.memcheck ], [ %.sroa.042.0, %.lr.ph100.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.085
  %xtraiter194 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader186, %.lr.ph100.prol
  %.02998.prol = phi i64 [ %i.be, %.lr.ph100.prol ], [ %.02998.ph, %.lr.ph100.preheader186 ]
  %.sroa.039.097.prol = phi ptr [ %i.bd, %.lr.ph100.prol ], [ %.sroa.039.097.ph, %.lr.ph100.preheader186 ] ; 3 uses
  %.sroa.042.196.prol = phi ptr [ %i.bc, %.lr.ph100.prol ], [ %.sroa.042.196.ph, %.lr.ph100.preheader186 ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader186 ]
  %i.ba = load i64, ptr %.sroa.042.196.prol, align 8, !tbaa !31
  %i.bb = load i64, ptr %.sroa.039.097.prol, align 8, !tbaa !31
  store i64 %i.bb, ptr %.sroa.042.196.prol, align 8, !tbaa !31
  store i64 %i.ba, ptr %.sroa.039.097.prol, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.196.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.097.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !285

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader186
  %.lcssa.unr = phi ptr [ poison, %.lr.ph100.preheader186 ], [ %i.bc, %.lr.ph100.prol ]
  %.02998.unr = phi i64 [ %.02998.ph, %.lr.ph100.preheader186 ], [ %i.be, %.lr.ph100.prol ]
  %.sroa.039.097.unr = phi ptr [ %.sroa.039.097.ph, %.lr.ph100.preheader186 ], [ %i.bd, %.lr.ph100.prol ]
  %.sroa.042.196.unr = phi ptr [ %.sroa.042.196.ph, %.lr.ph100.preheader186 ], [ %i.bc, %.lr.ph100.prol ]
  %i.bf = sub i64 %.02998.ph, %.0
  %i.bg = add i64 %i.bf, %.085
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %bb.g
  %.sroa.042.1.lcssa = phi ptr [ %.sroa.042.0, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph100.prol.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.bi = srem i64 %.0, %.085                     ; 2 uses
  %.not32 = icmp eq i64 %i.bi, 0
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bz, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.039.097 = phi ptr [ %i.by, %.lr.ph100 ], [ %.sroa.039.097.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.042.196 = phi ptr [ %i.bx, %.lr.ph100 ], [ %.sroa.042.196.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bj = load i64, ptr %.sroa.042.196, align 8, !tbaa !31
  %i.bk = load i64, ptr %.sroa.039.097, align 8, !tbaa !31
  store i64 %i.bk, ptr %.sroa.042.196, align 8, !tbaa !31
  store i64 %i.bj, ptr %.sroa.039.097, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !31
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !31
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !31
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !31
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !31
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 24 ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !31
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !31
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !31
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.196, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.097, i64 32
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !286

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !31
  %.idx = shl nuw nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !35

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr %.sroa.042.0, align 8, !tbaa !31
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !31
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i64 %i.ce, ptr %.sroa.042.0, align 8, !tbaa !31
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.085, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check141 = icmp samesign ult i64 %.085, 6
  br i1 %min.iters.check141, label %.lr.ph.preheader187, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.085
  %i.cq = shl i64 %i.cp, 3
  %scevgep136 = getelementptr i8, ptr %.sroa.042.0, i64 %i.cq
  %bound0137 = icmp ult ptr %.sroa.042.0, %i.cc
  %bound1138 = icmp ult ptr %scevgep136, %i.cn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.preheader187, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec143 = and i64 %.085, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec143, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 2 uses
  %i.cu = mul i64 %index145, -8                   ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep147, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep147, i64 -32 ; 2 uses
  %wide.load148 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !31, !alias.scope !298, !noalias !299
  %wide.load149 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !31, !alias.scope !298, !noalias !299
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load150 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !31, !alias.scope !299
  %wide.load151 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !31, !alias.scope !299
  store <2 x i64> %wide.load150, ptr %i.cv, align 8, !tbaa !31, !alias.scope !298, !noalias !299
  store <2 x i64> %wide.load151, ptr %i.cw, align 8, !tbaa !31, !alias.scope !298, !noalias !299
  store <2 x i64> %wide.load148, ptr %i.cx, align 8, !tbaa !31, !alias.scope !299
  store <2 x i64> %wide.load149, ptr %i.cy, align 8, !tbaa !31, !alias.scope !299
  %index.next152 = add nuw i64 %index145, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.cz, label %middle.block153, label %vector.body144, !llvm.loop !290

middle.block153:                                  ; preds = %vector.body144
  %cmp.n154 = icmp eq i64 %.085, %n.vec143
  br i1 %cmp.n154, label %._crit_edge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %vector.memcheck135, %.lr.ph.preheader, %middle.block153
  %.02895.ph = phi i64 [ 0, %vector.memcheck135 ], [ 0, %.lr.ph.preheader ], [ %n.vec143, %middle.block153 ] ; 3 uses
  %.sroa.0.094.ph = phi ptr [ %i.cc, %vector.memcheck135 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block153 ] ; 2 uses
  %.sroa.042.293.ph = phi ptr [ %i.cn, %vector.memcheck135 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block153 ] ; 2 uses
  %xtraiter = and i64 %.085, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader187, %.lr.ph.prol
  %.02895.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02895.ph, %.lr.ph.preheader187 ]
  %.sroa.0.094.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.094.ph, %.lr.ph.preheader187 ]
  %.sroa.042.293.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.042.293.ph, %.lr.ph.preheader187 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader187 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.042.293.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.094.prol, i64 -8 ; 4 uses
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !31
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !31
  store i64 %i.dd, ptr %i.da, align 8, !tbaa !31
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !31
  %i.de = add nuw nsw i64 %.02895.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !291

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader187
  %.02895.unr = phi i64 [ %.02895.ph, %.lr.ph.preheader187 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.094.unr = phi ptr [ %.sroa.0.094.ph, %.lr.ph.preheader187 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.042.293.unr = phi ptr [ %.sroa.042.293.ph, %.lr.ph.preheader187 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02895.ph, %.085
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block153, %bb.n
  %.sroa.042.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.042.0, %middle.block153 ], [ %.sroa.042.0, %.lr.ph ], [ %.sroa.042.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.042.0.be = phi ptr [ %.sroa.042.1.lcssa, %bb.h ], [ %.sroa.042.2.lcssa, %._crit_edge ]
  %.085.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.085, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !292

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02895 = phi i64 [ %i.dy, %.lr.ph ], [ %.02895.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.094 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.094.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.042.293 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.042.293.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -8 ; 2 uses
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !31
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !31
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !31
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !31
  %i.dm = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -16 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !31
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !31
  store i64 %i.dp, ptr %i.dm, align 8, !tbaa !31
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !31
  %i.dq = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -24 ; 2 uses
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !31
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !31
  store i64 %i.dt, ptr %i.dq, align 8, !tbaa !31
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !31
  %i.du = getelementptr inbounds i8, ptr %.sroa.042.293, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.094, i64 -32 ; 3 uses
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !31
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !31
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !31
  store i64 %i.dw, ptr %i.dv, align 8, !tbaa !31
  %i.dy = add nuw nsw i64 %.02895, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.085
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !293

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %._crit_edge, %._crit_edge101, %.lr.ph.i, %middle.block181, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, %bb.b, %bb.a
  %.sroa.025.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ], [ %1, %middle.block181 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge101 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_SN_T1_SN_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = inttoptr i64 %7 to ptr                   ; 3 uses
  %.not101 = icmp sgt i64 %3, %6
  %.not64102 = icmp sgt i64 %4, %6
  %or.cond103 = and i1 %.not101, %.not64102
  br i1 %or.cond103, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bi, %tailrecurse ]
  %.tr94.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %3, %bb.a ], [ %i.bh, %tailrecurse ]
  %.tr97.lcssa = phi i64 [ %4, %bb.a ], [ %i.bj, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEEvSH_SH_SH_SN_SN_T1_T2_(ptr %.tr.lcssa, ptr %.tr94.lcssa, ptr %2, i64 noundef %.tr96.lcssa, i64 noundef %.tr97.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr97107 = phi i64 [ %4, %.lr.ph ], [ %i.bj, %tailrecurse ] ; 3 uses
  %.tr96106 = phi i64 [ %3, %.lr.ph ], [ %i.bh, %tailrecurse ] ; 3 uses
  %.tr94105 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr104 = phi ptr [ %0, %.lr.ph ], [ %i.bi, %tailrecurse ] ; 5 uses
  %i.c = icmp sgt i64 %.tr96106, %.tr97107
  %i.d = ptrtoint ptr %.tr94105 to i64            ; 4 uses
  br i1 %i.c, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.e = sdiv i64 %.tr96106, 2                    ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.tr104, i64 %i.e ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.j = load i64, ptr %i.f, align 8, !tbaa !31
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i72, align 8, !tbaa !47 ; 2 uses
  %i.k = load i64, ptr %.sroa.6.0.copyload.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 2 uses
  %i.n = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.j
  %i.o = mul i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !58
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr94105, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.r = lshr i64 %.017.i, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = add i64 %i.t, %.sroa.0.0.copyload1.i.i.i.i
  %i.v = mul i64 %i.u, %i.k
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !58
  %i.y = fcmp olt float %i.x, %i.q                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = xor i64 %i.r, -1
  %i.ab = add nsw i64 %.017.i, %i.aa
  %.sroa.012.1.i = select i1 %i.y, ptr %i.z, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.y, i64 %i.ab, i64 %i.r     ; 2 uses
  %i.ac = icmp sgt i64 %.1.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit, !llvm.loop !5

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN7xgboost6common8QuantileINSA_18IndexTransformIterIZNS9_6linalg6cbeginIKfLi1EEEDaRKNSD_10TensorViewIT_XT0_EEEEUlmE_EEfEET0_PKNS9_7ContextEdRKSH_SS_EUlmmE_EEESH_SH_SH_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
end_hunk_3
