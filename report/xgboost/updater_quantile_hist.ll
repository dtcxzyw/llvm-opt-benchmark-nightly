Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN7xgboost6common20ParallelGHistBuilder5ResetEmmRKNS0_14BlockedSpace2dERKSt6vectorINS0_4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEESaISA_EE:bb.a

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.78, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !113
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %i.be, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.pr20 = load ptr, ptr %5, align 8, !tbaa !111  ; 4 uses
  %.not.i18 = icmp eq ptr %.pr20, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %.pr20, align 8, !tbaa !112 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pr20, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !114
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr20, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !91
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !732
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %1, ptr %i.bm, align 8, !tbaa !733
  call void @_ZN7xgboost6common20ParallelGHistBuilder19MatchThreadsToNodesERKNS0_14BlockedSpace2dE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !732 ; 3 uses
  %.not.i19 = icmp eq i64 %i.bn, 0
  br i1 %.not.i19, label %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit, label %.preheader20.lr.ph.i

.preheader20.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !733 ; 2 uses
  %.not27.i = icmp eq i64 %i.bo, 0
  %i.bp = load ptr, ptr %i.af, align 8
  br i1 %.not27.i, label %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit, label %.preheader20.us.i

.preheader20.us.i:                                ; preds = %.preheader20.lr.ph.i, %._crit_edge.us.i
  %.01524.us.i = phi i64 [ %i.cf, %._crit_edge.us.i ], [ 0, %.preheader20.lr.ph.i ] ; 2 uses
  %.01623.us.i = phi i64 [ %i.ce, %._crit_edge.us.i ], [ 0, %.preheader20.lr.ph.i ]
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader20.us.i
  %.01322.us.i = phi i64 [ 0, %.preheader20.us.i ], [ %i.cb, %bb.k ] ; 2 uses
  %.01421.us.i = phi i32 [ 0, %.preheader20.us.i ], [ %spec.select.us.i, %bb.k ]
  %i.bq = mul i64 %.01322.us.i, %i.bn
  %i.br = add i64 %i.bq, %.01524.us.i             ; 3 uses
  %i.bs = sdiv i64 %i.br, 64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = and i64 %i.br, -9223372036854775745
  %i.bv = icmp ugt i64 %i.bu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.us.i = select i1 %i.bv, i64 -8, i64 0
  %storemerge.i.i.i.i.i.us.i = getelementptr inbounds i8, ptr %i.bt, i64 %storemerge.idx.i.i.i.i.i.us.i
  %i.bw = and i64 %i.br, 63
  %i.bx = load i64, ptr %storemerge.i.i.i.i.i.us.i, align 8, !tbaa !91
  %i.by = lshr i64 %i.bx, %i.bw
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bz, 1
  %spec.select.us.i = add nuw nsw i32 %i.ca, %.01421.us.i ; 2 uses
  %i.cb = add nuw i64 %.01322.us.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %i.bo
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.k, !llvm.loop !1812

._crit_edge.us.i:                                 ; preds = %bb.k
  %i.cc = call i32 @llvm.smax.i32(i32 %spec.select.us.i, i32 1)
  %.sroa.speculated.us.i = add nsw i32 %i.cc, -1
  %i.cd = zext nneg i32 %.sroa.speculated.us.i to i64
  %i.ce = add i64 %.01623.us.i, %i.cd             ; 3 uses
  %i.cf = add nuw i64 %.01524.us.i, 1             ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond30.not.i, label %.preheader.i, label %.preheader20.us.i, !llvm.loop !1813

.preheader.i:                                     ; preds = %._crit_edge.us.i
  %.not28.i = icmp eq i64 %i.ce, 0
  br i1 %.not28.i, label %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.026.i = phi i64 [ %i.ch, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.cg = trunc i64 %.026.i to i32
  call void @_ZN7xgboost6common14HistCollection10AddHistRowEj(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i32 noundef %i.cg)
  %i.ch = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ch, %i.ce
  br i1 %exitcond31.not.i, label %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit, label %.lr.ph.i, !llvm.loop !1814

_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit: ; preds = %.lr.ph.i, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %.preheader20.lr.ph.i, %.preheader.i
  call void @_ZN7xgboost6common20ParallelGHistBuilder22MatchNodeNidPairToHistEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cj = load i64, ptr %i.bl, align 8, !tbaa !732
  %i.ck = mul i64 %i.cj, %1                       ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 4 uses
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !93 ; 5 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  %i.cs = icmp ugt i64 %i.ck, %i.cr
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit
  %i.ct = sub nuw i64 %i.ck, %i.cr
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 noundef %i.ct)
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !115
  %.pre22 = load ptr, ptr %i.cl, align 8, !tbaa !115
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit
  %i.cu = icmp ult i64 %i.ck, %i.cr
  br i1 %i.cu, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ck ; 3 uses
  %.not.i.i = icmp eq ptr %i.cm, %i.cv
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.cv, ptr %i.cl, align 8, !tbaa !92
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.cw = phi ptr [ %.pre22, %bb.l ], [ %i.cm, %bb.m ], [ %i.cm, %bb.n ], [ %i.cv, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.cx = phi ptr [ %.pre, %bb.l ], [ %i.cn, %bb.m ], [ %i.cn, %bb.n ], [ %i.cn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cx, %i.cw
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.cy = ptrtoaddr ptr %i.cw to i64
  %i.cz = ptrtoaddr ptr %i.cx to i64
  %i.da = add i64 %i.cy, -4
  %i.db = sub i64 %i.da, %i.cz
  %i.dc = and i64 %i.db, -4
  %i.dd = add i64 %i.dc, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.cx, i8 0, i64 %i.dd, i1 false), !tbaa !109
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  ret void

bb.o:                                             ; preds = %bb.g
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712
  %i.c = load ptr, ptr %1, align 8, !tbaa !287    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !288
  %i.i = load ptr, ptr %0, align 8, !tbaa !287    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !170

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !287      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !288
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #39
  br label %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !287
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !288
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !712
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !194

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !734
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !194

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !734
  br label %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8, !tbaa !287
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !712 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !287
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !712 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !734
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1816

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !287
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !712
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20ParallelGHistBuilder19MatchThreadsToNodesERKNS0_14BlockedSpace2dE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !726
  %i.c = load ptr, ptr %1, align 8, !tbaa !414
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !733  ; 3 uses
  %i.j = udiv i64 %i.g, %i.i
  %i.k = urem i64 %i.g, %i.i
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add i64 %i.j, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !732
  %i.r = mul i64 %i.q, %i.i                       ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !290  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !640  ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !290  ; 2 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = zext i32 %i.v to i64
  %i.ac = add nsw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp ult i64 %i.r, %i.ac
  br i1 %i.ad, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.thread, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit.thread:       ; preds = %bb.a
  %i.ae = sdiv i64 %i.r, 64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ae
  %i.ag = and i64 %i.r, -9223372036854775745
  %i.ah = icmp ugt i64 %i.ag, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.ah, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.af, i64 %storemerge.idx.i.i.i.i
  %i.ai = trunc i64 %i.r to i32
  %i.aj = and i32 %i.ai, 63
  store ptr %storemerge.i.i.i.i, ptr %i.s, align 8
  store i32 %i.aj, ptr %i.u, align 8
  br label %.lr.ph28.preheader

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.a
  %i.ak = sub nuw i64 %i.r, %i.ac
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr %i.t, i32 %i.v, i64 noundef %i.ak, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.h, align 8, !tbaa !733
  %i.al = icmp eq i64 %.pre, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.thread, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  br label %.lr.ph28

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  ret void

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %.loopexit
  %.01826 = phi i64 [ %i.bf, %.loopexit ], [ 0, %.lr.ph28.preheader ] ; 3 uses
  %i.am = mul i64 %.01826, %i.n                   ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.g
  br i1 %i.an, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph28
  %i.ao = add i64 %i.am, %i.n
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.ao)
  %i.ap = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.am) ; 2 uses
  %i.aq = add i64 %.sroa.speculated, -1
  %i.ar = tail call noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.aq) ; 2 uses
  %.not24 = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !290
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.025 = phi i64 [ %i.ap, %.lr.ph ], [ %i.be, %bb.c ] ; 2 uses
  %i.at = load i64, ptr %i.p, align 8, !tbaa !732
  %i.au = mul i64 %i.at, %.01826
  %i.av = add i64 %i.au, %.025                    ; 3 uses
  %i.aw = sdiv i64 %i.av, 64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aw
  %i.ay = and i64 %i.av, -9223372036854775745
  %i.az = icmp ugt i64 %i.ay, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.az, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ax, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.ba = and i64 %i.av, 63
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !91
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !91
  %i.be = add i64 %.025, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.be, %i.ar
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1817

.loopexit:                                        ; preds = %bb.c, %bb.b, %.lr.ph28
  %i.bf = add nuw i64 %.01826, 1                  ; 2 uses
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !733
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph28, label %._crit_edge, !llvm.loop !1818
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20ParallelGHistBuilder22MatchNodeNidPairToHistEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !732  ; 2 uses
  %.not50 = icmp eq i64 %i.b, 0
  br i1 %.not50, label %._crit_edge49, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !733
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE10_Auto_nodeD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #11, !inline_history !3
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #11, !inline_history !3
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, !prof !170

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #11
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #39
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459
  %i.c = load ptr, ptr %1, align 8, !tbaa !346    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !347
  %i.i = load ptr, ptr %0, align 8, !tbaa !346    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !170

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !194

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !109
  store i32 %i.r, ptr %i.o, align 4, !tbaa !109
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !346    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !347
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #39
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !346
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !347
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !459  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !194

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !109
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !109
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !194

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !346
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !459 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !346
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !459
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !109
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !109
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !194

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !109
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !109
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !346
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !459
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !401
  %i.c = load ptr, ptr %1, align 8, !tbaa !301    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !302
  %i.i = load ptr, ptr %0, align 8, !tbaa !301    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !170

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !301      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !302
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #39
  br label %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !301
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !302
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !401
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !194

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !648
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !194

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !648
  br label %_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8, !tbaa !301
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !401 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !301
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !401 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !648
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1943

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN7xgboost6detail20GradientPairInternalIdEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIdEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !301
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !401
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6detail20GradientPairInternalIdEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree18HistMultiEvaluator14EvaluateSplitsENS3_4SpanIPKNS5_21BoundedHistCollectionELm18446744073709551615EEERKNS3_13HistogramCutsENS7_IKNS2_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS5_16MultiExpandEntryESaISJ_EEEUlmNS3_7Range1dEE_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSS_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.601) align 8 %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1946, !nonnull !185, !align !581
  %i.b = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1947, !nonnull !185, !align !740
  %i.e = load i32, ptr %i.d, align 4, !tbaa !109
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %i.b, %i.f
  %i.h = urem i64 %i.b, %i.f
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.k) ; 2 uses
  %.not.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not.i, label %_ZZN7xgboost6common13ParallelFor2dIZNS_4tree18HistMultiEvaluator14EvaluateSplitsENS0_4SpanIPKNS2_21BoundedHistCollectionELm18446744073709551615EEERKNS0_13HistogramCutsENS4_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS2_16MultiExpandEntryESaISG_EEEUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1948, !nonnull !185, !align !581
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1949, !nonnull !185, !align !581 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc8, %.lr.ph.i
  %.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %.noexc8 ] ; 3 uses
  %i.p = invoke noundef i64 @_ZNK7xgboost6common14BlockedSpace2d17GetFirstDimensionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.q = invoke { i64, i64 } @_ZNK7xgboost6common14BlockedSpace2d8GetRangeEm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %.011.i)
          to label %.noexc7 unwind label %bb.c    ; 2 uses

.noexc7:                                          ; preds = %.noexc
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  invoke void @_ZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS_6common4SpanIPKNS0_21BoundedHistCollectionELm18446744073709551615EEERKNS2_13HistogramCutsENS3_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_16MultiExpandEntryESaISF_EEENKUlmNS2_7Range1dEE_clEmSJ_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef %i.p, i64 %i.r, i64 %i.s)
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %.noexc7
  %i.t = add nuw i64 %.011.i, 1                   ; 2 uses
  %i.u = icmp ult i64 %i.t, %.sroa.speculated.i
  br i1 %i.u, label %bb.b, label %_ZZN7xgboost6common13ParallelFor2dIZNS_4tree18HistMultiEvaluator14EvaluateSplitsENS0_4SpanIPKNS2_21BoundedHistCollectionELm18446744073709551615EEERKNS0_13HistogramCutsENS4_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS2_16MultiExpandEntryESaISG_EEEUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv.exit, !llvm.loop !1944

bb.c:                                             ; preds = %.noexc7, %.noexc, %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.w = extractvalue { ptr, i32 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, i32 } %i.v, 1        ; 2 uses
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #11
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.w) #11 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ac) #37
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %bb.e
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.d
  %i.ad = load ptr, ptr %0, align 8, !tbaa !591
  %.not23 = icmp eq ptr %i.ad, null
  br i1 %.not23, label %bb.f, label %_ZZN7xgboost6common13ParallelFor2dIZNS_4tree18HistMultiEvaluator14EvaluateSplitsENS0_4SpanIPKNS2_21BoundedHistCollectionELm18446744073709551615EEERKNS0_13HistogramCutsENS4_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS2_16MultiExpandEntryESaISG_EEEUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv.exit.sink.split

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ae = load ptr, ptr %5, align 8, !tbaa !591
  store ptr null, ptr %5, align 8, !tbaa !591
  %i.af = load ptr, ptr %0, align 8, !tbaa !591   ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !591
  store ptr %i.ae, ptr %0, align 8, !tbaa !591
  %.not.i.i10 = icmp eq ptr %i.af, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.f
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %.pr = load ptr, ptr %5, align 8, !tbaa !591
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZZN7xgboost6common13ParallelFor2dIZNS_4tree18HistMultiEvaluator14EvaluateSplitsENS0_4SpanIPKNS2_21BoundedHistCollectionELm18446744073709551615EEERKNS0_13HistogramCutsENS4_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS2_16MultiExpandEntryESaISG_EEEUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_ENKUlvE_clEv.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ag = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #11
  %i.ah = icmp eq i32 %i.x, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.w) #11 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #11 ; 2 uses
  %.not.i.i12 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i12, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ak) #37
end_hunk_1
