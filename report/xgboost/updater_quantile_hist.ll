Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN7xgboost6common13ParallelFor2dIZNS_4tree22MultiTargetHistBuilder14ExpandTreeLeafERKNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEPNS_7RegTreeEEUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_:bb.a
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.46, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !111    ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !113
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.n

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.pr23 = load ptr, ptr %4, align 8, !tbaa !111  ; 4 uses
  %.not.i17 = icmp eq ptr %.pr23, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %.pr23, align 8, !tbaa !112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pr23, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !114
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr23, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %7, align 8, !tbaa !562
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.ac, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.ad, align 8, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.ae, align 8, !tbaa !739
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree22MultiTargetHistBuilder14ExpandTreeLeafERKNS2_6linalg6TensorINS2_6detail20GradientPairInternalIfEELi2EEEPNS2_7RegTreeEEUlmNS3_7Range1dEE_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSM_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull byval(%class.anon.803) align 8 %7)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = load ptr, ptr %6, align 8, !tbaa !591   ; 2 uses
  %.not.i18 = icmp eq ptr %i.af, null
  br i1 %.not.i18, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.h
  store ptr %i.af, ptr %3, align 8, !tbaa !591
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #37
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !591
  %.not.i2.i = icmp eq ptr %i.ah, null
  br i1 %.not.i2.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret void

bb.l:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  %i.aj = load ptr, ptr %6, align 8, !tbaa !591
  %.not.i.i20 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i20, label %_ZN4dmlc12OMPExceptionD2Ev.exit22, label %bb.m

bb.m:                                             ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #11
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit22

_ZN4dmlc12OMPExceptionD2Ev.exit22:                ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.n

bb.n:                                             ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit22, %bb.e
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit22 ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  resume { ptr, i32 } %.pn7

bb.o:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree12ReduceToRowsINS_6detail20GradientPairInternalIdEEEENS_6linalg6TensorIT_Li2EEEPKNS_7ContextERKNS5_10TensorViewIS7_Li3EEE(ptr dead_on_unwind noalias writable sret(%"class.xgboost::linalg::Tensor") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(84) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91
  store i64 %i.e, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91
  store i64 %i.g, ptr %i.b, align 8, !tbaa !91
  call void @_ZN7xgboost6linalg8ConstantINS_6detail20GradientPairInternalIdEEJmmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind writable sret(%"class.xgboost::linalg::Tensor") align 8 %0, ptr noundef %1, double 0.000000e+00, double 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !301, !noalias !3113 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !417, !noalias !3113
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !91, !noalias !3113
  switch i8 %i.k, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !91, !noalias !3113
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @_ZSt9terminatev() #40, !noalias !3113
  unreachable

bb.d:                                             ; preds = %bb.b, %.noexc
  %.sroa.6.0 = phi i64 [ %i.o, %bb.b ], [ 1, %.noexc ] ; 4 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %i.m, %.noexc ] ; 3 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge26.split, label %.preheader21.lr.ph

.preheader21.lr.ph:                               ; preds = %bb.d
  %i.q = load i64, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  %.not28 = icmp eq i64 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  br i1 %.not28, label %._crit_edge26.split, label %.preheader21.lr.ph.split

.preheader21.lr.ph.split:                         ; preds = %.preheader21.lr.ph
  %i.u = load i64, ptr %i.f, align 8, !tbaa !91   ; 9 uses
  %.not29 = icmp eq i64 %i.u, 0
  br i1 %.not29, label %._crit_edge26.split, label %.preheader21.lr.ph.split.split

.preheader21.lr.ph.split.split:                   ; preds = %.preheader21.lr.ph.split
  %i.v = load i64, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !91   ; 3 uses
  %i.x = load i64, ptr %i.s, align 8, !tbaa !91   ; 4 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !407  ; 4 uses
  %i.z = add i64 %i.u, -1                         ; 2 uses
  %i.aa = add i64 %i.q, -1                        ; 2 uses
  %i.ab = mul i64 %i.w, %i.aa
  %i.ac = shl i64 %i.ab, 4                        ; 2 uses
  %i.ad = shl i64 %i.u, 4                         ; 4 uses
  %i.ae = shl i64 %i.v, 4
  %i.af = mul i64 %.sroa.0.0, %i.aa
  %3 = shl i64 %i.af, 4                           ; 2 uses
  %4 = getelementptr i8, ptr %i.i, i64 %3
  %scevgep47 = getelementptr i8, ptr %4, i64 %i.ad
  %scevgep48 = getelementptr i8, ptr %i.i, i64 8
  %5 = getelementptr i8, ptr %i.i, i64 %3
  %i.ag = getelementptr i8, ptr %5, i64 %i.ad
  %scevgep50 = getelementptr i8, ptr %i.ag, i64 -8
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.y, i64 %i.ac
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ad
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %min.iters.check = icmp ult i64 %i.u, 20
  %ident.check = icmp ne i64 %.sroa.6.0, 1
  %ident.check36 = icmp ne i64 %i.x, 1
  %mul.result = shl i64 %i.z, 4                   ; 2 uses
  %mul.overflow = icmp ugt i64 %i.z, 1152921504606846975
  %i.am = or i1 %ident.check, %ident.check36
  %invariant.op = or i1 %mul.overflow, %i.am
  %i.an = or i64 %i.w, %.sroa.0.0
  %i.ao = and i64 %i.an, 576460752303423488
  %i.ap = icmp ne i64 %i.ao, 0
  %n.vec = and i64 %i.u, 2305843009213693950      ; 3 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.lr.ph.split.split, %._crit_edge24
  %storemerge25 = phi i64 [ 0, %.preheader21.lr.ph.split.split ], [ %i.bw, %._crit_edge24 ] ; 3 uses
  %i.aq = mul i64 %i.ae, %storemerge25            ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.aq
  %i.ar = getelementptr i8, ptr %i.y, i64 %i.aq
  %scevgep46 = getelementptr i8, ptr %i.ar, i64 8
  %scevgep49 = getelementptr i8, ptr %i.al, i64 %i.aq
  %i.as = mul i64 %i.v, %storemerge25
  %i.at = getelementptr [16 x i8], ptr %i.y, i64 %i.as ; 2 uses
  %bound0 = icmp ult ptr %i.i, %scevgep49
  %bound1 = icmp ult ptr %i.at, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %i.au = or i1 %found.conflict, %i.ap
  %bound052 = icmp ult ptr %scevgep48, %scevgep
  %bound153 = icmp ult ptr %scevgep46, %scevgep47
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %i.au, %found.conflict54
  br label %.preheader

._crit_edge26.split:                              ; preds = %._crit_edge24, %.preheader21.lr.ph, %.preheader21.lr.ph.split, %bb.d
  ret void

bb.e:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %0) #11
  resume { ptr, i32 } %i.av

.preheader:                                       ; preds = %.preheader21, %._crit_edge
  %storemerge1023 = phi i64 [ 0, %.preheader21 ], [ %i.bx, %._crit_edge ] ; 3 uses
  %i.aw = mul i64 %i.w, %storemerge1023
  %i.ax = getelementptr [16 x i8], ptr %i.at, i64 %i.aw ; 7 uses
  %i.ay = mul i64 %storemerge1023, %.sroa.0.0
  %i.az = getelementptr [16 x i8], ptr %i.i, i64 %i.ay ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ba = getelementptr i8, ptr %i.az, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %i.az
  %i.bc = getelementptr i8, ptr %i.ax, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %i.ax
  %.reass = or i1 %i.bb, %invariant.op
  %i.be = or i1 %i.bd, %.reass
  %brmerge = select i1 %i.be, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 4 uses
  %i.bf = or disjoint i64 %index, 1               ; 2 uses
  %i.bg = getelementptr [16 x i8], ptr %i.ax, i64 %index
  %i.bh = getelementptr [16 x i8], ptr %i.ax, i64 %i.bf
  %i.bi = getelementptr [16 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.az, i64 %i.bf ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bg, align 8
  %wide.load55 = load <2 x double>, ptr %i.bh, align 8
  %wide.load56 = load <2 x double>, ptr %i.bi, align 8
  %wide.load57 = load <2 x double>, ptr %i.bj, align 8
  %i.bk = fadd <2 x double> %wide.load, %wide.load56
  %i.bl = fadd <2 x double> %wide.load55, %wide.load57
  store <2 x double> %i.bk, ptr %i.bi, align 8
  store <2 x double> %i.bl, ptr %i.bj, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !3109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %storemerge1122.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ] ; 5 uses
  %.neg = or disjoint i64 %storemerge1122.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bn = mul i64 %i.x, %storemerge1122.ph
  %i.bo = getelementptr [16 x i8], ptr %i.ax, i64 %i.bn
  %i.bp = mul i64 %storemerge1122.ph, %.sroa.6.0
  %i.bq = getelementptr [16 x i8], ptr %i.az, i64 %i.bp ; 2 uses
  %i.br = load <2 x double>, ptr %i.bo, align 8, !tbaa !632
  %i.bs = load <2 x double>, ptr %i.bq, align 8, !tbaa !632
  %i.bt = fadd <2 x double> %i.br, %i.bs
  store <2 x double> %i.bt, ptr %i.bq, align 8, !tbaa !632
  %i.bu = or disjoint i64 %storemerge1122.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %storemerge1122.unr = phi i64 [ %storemerge1122.ph, %scalar.ph.preheader ], [ %i.bu, %scalar.ph.prol ]
  %i.bv = icmp eq i64 %i.u, %.neg
  br i1 %i.bv, label %._crit_edge, label %scalar.ph

._crit_edge24:                                    ; preds = %._crit_edge
  %i.bw = add nuw i64 %storemerge25, 1            ; 2 uses
  %exitcond31.not = icmp eq i64 %i.bw, %i.p
  br i1 %exitcond31.not, label %._crit_edge26.split, label %.preheader21, !llvm.loop !3110

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bx = add nuw i64 %storemerge1023, 1          ; 2 uses
  %exitcond30.not = icmp eq i64 %i.bx, %i.q
  br i1 %exitcond30.not, label %._crit_edge24, label %.preheader, !llvm.loop !3111

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %storemerge1122 = phi i64 [ %i.cn, %scalar.ph ], [ %storemerge1122.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.by = mul i64 %i.x, %storemerge1122
  %i.bz = getelementptr [16 x i8], ptr %i.ax, i64 %i.by
  %i.ca = mul i64 %storemerge1122, %.sroa.6.0
  %i.cb = getelementptr [16 x i8], ptr %i.az, i64 %i.ca ; 2 uses
  %i.cc = load <2 x double>, ptr %i.bz, align 8, !tbaa !632
  %i.cd = load <2 x double>, ptr %i.cb, align 8, !tbaa !632
  %i.ce = fadd <2 x double> %i.cc, %i.cd
  store <2 x double> %i.ce, ptr %i.cb, align 8, !tbaa !632
  %i.cf = add nuw i64 %storemerge1122, 1          ; 2 uses
  %i.cg = mul i64 %i.x, %i.cf
  %i.ch = getelementptr [16 x i8], ptr %i.ax, i64 %i.cg
  %i.ci = mul i64 %i.cf, %.sroa.6.0
  %i.cj = getelementptr [16 x i8], ptr %i.az, i64 %i.ci ; 2 uses
  %i.ck = load <2 x double>, ptr %i.ch, align 8, !tbaa !632
  %i.cl = load <2 x double>, ptr %i.cj, align 8, !tbaa !632
  %i.cm = fadd <2 x double> %i.ck, %i.cl
  store <2 x double> %i.cm, ptr %i.cj, align 8, !tbaa !632
  %i.cn = add nuw i64 %storemerge1122, 2          ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cn, %i.u
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !3112
}

declare void @_ZN7xgboost7RegTree9SetLeavesESt6vectorIiSaIiEENS_6common4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef align 8, i64, ptr) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.26, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !109
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.27, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i64, ptr %2, align 8, !tbaa !91
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e)
          to label %_ZNSolsEm.exit unwind label %bb.g

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEm.exit
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %bb.c unwind label %bb.g       ; 8 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !125, !alias.scope !3120
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !113, !alias.scope !3120
  store i8 0, ptr %i.i, align 8, !tbaa !114, !alias.scope !3120
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !3120 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !3120 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

end_hunk_0
