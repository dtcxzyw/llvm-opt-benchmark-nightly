Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_approx?download=true
inline.NumInlined: 9700
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7xgboost6common20ParallelGHistBuilder5ResetEmmRKNS0_14BlockedSpace2dERKSt6vectorINS0_4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEESaISA_EE:bb.a

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.79, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.12, i64 noundef 2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.pr20 = load ptr, ptr %5, align 8, !tbaa !69   ; 4 uses
  %.not.i18 = icmp eq ptr %.pr20, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %.pr20, align 8, !tbaa !60 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pr20, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !66
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr20, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !596
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %1, ptr %i.bm, align 8, !tbaa !597
  call void @_ZN7xgboost6common20ParallelGHistBuilder19MatchThreadsToNodesERKNS0_14BlockedSpace2dE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !596 ; 3 uses
  %.not.i19 = icmp eq i64 %i.bn, 0
  br i1 %.not.i19, label %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit, label %.preheader20.lr.ph.i

.preheader20.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !597 ; 2 uses
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
  %i.bx = load i64, ptr %storemerge.i.i.i.i.i.us.i, align 8, !tbaa !76
  %i.by = lshr i64 %i.bx, %i.bw
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bz, 1
  %spec.select.us.i = add nuw nsw i32 %i.ca, %.01421.us.i ; 2 uses
  %i.cb = add nuw i64 %.01322.us.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %i.bo
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.k, !llvm.loop !1343

._crit_edge.us.i:                                 ; preds = %bb.k
  %i.cc = call i32 @llvm.smax.i32(i32 %spec.select.us.i, i32 1)
  %.sroa.speculated.us.i = add nsw i32 %i.cc, -1
  %i.cd = zext nneg i32 %.sroa.speculated.us.i to i64
  %i.ce = add i64 %.01623.us.i, %i.cd             ; 3 uses
  %i.cf = add nuw i64 %.01524.us.i, 1             ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond30.not.i, label %.preheader.i, label %.preheader20.us.i, !llvm.loop !1344

.preheader.i:                                     ; preds = %._crit_edge.us.i
  %.not28.i = icmp eq i64 %i.ce, 0
  br i1 %.not28.i, label %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.026.i = phi i64 [ %i.ch, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.cg = trunc i64 %.026.i to i32
  call void @_ZN7xgboost6common14HistCollection10AddHistRowEj(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i32 noundef %i.cg)
  %i.ch = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ch, %i.ce
  br i1 %exitcond31.not.i, label %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit, label %.lr.ph.i, !llvm.loop !1345

_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit: ; preds = %.lr.ph.i, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %.preheader20.lr.ph.i, %.preheader.i
  call void @_ZN7xgboost6common20ParallelGHistBuilder22MatchNodeNidPairToHistEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cj = load i64, ptr %i.bl, align 8, !tbaa !596
  %i.ck = mul i64 %i.cj, %1                       ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !406 ; 4 uses
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !213 ; 5 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  %i.cs = icmp ugt i64 %i.ck, %i.cr
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit
  %i.ct = sub nuw i64 %i.ck, %i.cr
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 noundef %i.ct)
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !315
  %.pre22 = load ptr, ptr %i.cl, align 8, !tbaa !315
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %_ZN7xgboost6common20ParallelGHistBuilder28AllocateAdditionalHistogramsEv.exit
  %i.cu = icmp ult i64 %i.ck, %i.cr
  br i1 %i.cu, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ck ; 3 uses
  %.not.i.i = icmp eq ptr %i.cm, %i.cv
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.cv, ptr %i.cl, align 8, !tbaa !406
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
  call void @llvm.memset.p0.i64(ptr align 4 %i.cx, i8 0, i64 %i.dd, i1 false), !tbaa !122
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  ret void

bb.o:                                             ; preds = %bb.g
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !580  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !204    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.i = load ptr, ptr %0, align 8, !tbaa !204    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE11_M_allocateEm.exit.i, !prof !123

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit

_ZNSt6vectorIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit: ; preds = %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !204      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #37
  br label %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !204
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !205
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !580
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !1348
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !140

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !1348
  br label %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8, !tbaa !204
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !580 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !204
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !580 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !1348
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1347

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEES7_ET0_T_S9_S8_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN7xgboost6common4SpanINS0_6detail20GradientPairInternalIdEELm18446744073709551615EEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !580
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost6common4SpanINS2_6detail20GradientPairInternalIdEELm18446744073709551615EEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20ParallelGHistBuilder19MatchThreadsToNodesERKNS0_14BlockedSpace2dE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593
  %i.c = load ptr, ptr %1, align 8, !tbaa !474
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !597  ; 3 uses
  %i.j = udiv i64 %i.g, %i.i
  %i.k = urem i64 %i.g, %i.i
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add i64 %i.j, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !596
  %i.r = mul i64 %i.q, %i.i                       ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !207  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !544  ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !207  ; 2 uses
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
  %.pre = load i64, ptr %i.h, align 8, !tbaa !597
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
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.025 = phi i64 [ %i.ap, %.lr.ph ], [ %i.be, %bb.c ] ; 2 uses
  %i.at = load i64, ptr %i.p, align 8, !tbaa !596
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
  %i.bc = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !76
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !76
  %i.be = add i64 %.025, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.be, %i.ar
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1349

.loopexit:                                        ; preds = %bb.c, %bb.b, %.lr.ph28
  %i.bf = add nuw i64 %.01826, 1                  ; 2 uses
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !597
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph28, label %._crit_edge, !llvm.loop !1350
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20ParallelGHistBuilder22MatchNodeNidPairToHistEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !596  ; 2 uses
  %.not50 = icmp eq i64 %i.b, 0
  br i1 %.not50, label %._crit_edge49, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !597
end_hunk_0
