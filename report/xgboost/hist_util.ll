Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/hist_util?download=true
inline.NumInlined: 2975
inline.NumDeleted: 854
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZNK7xgboost13BatchIteratorINS_13SortedCSCPageEEdeEv:bb.a
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.a
  %i.g = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  ret ptr %i.k

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #30
  unreachable
}

declare void @_ZN7xgboost6common19HostSketchContainer11PushColPageERKNS_10SparsePageERKNS_8MetaInfoENS0_4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(248), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !251    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !140

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull @.str.37, i32 noundef 469)
  %i.c = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.38, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %.pre = load ptr, ptr %0, align 8, !tbaa !251
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.a
  %i.g = phi ptr [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  ret ptr %0

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !138
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !254
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !254
  br label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !140

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost8BatchSetINS_13SortedCSCPageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !138
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !226
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !226
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit, !prof !140

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN7xgboost6common13IncrementHistENS0_4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEENS1_IKS4_Lm18446744073709551615EEEmm(i64 %0, ptr nofree captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #11 {
bb.a:
  %i.a = shl i64 %4, 1                            ; 5 uses
  %i.b = shl i64 %5, 1                            ; 4 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sub i64 %5, %4
  %6 = shl i64 %i.d, 1                            ; 3 uses
  %min.iters.check = icmp ult i64 %6, 8
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.e
  %i.f = shl i64 %5, 4                            ; 2 uses
  %scevgep11 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep12 = getelementptr i8, ptr %3, i64 %i.e
  %scevgep13 = getelementptr i8, ptr %3, i64 %i.f
  %bound0 = icmp ult ptr %scevgep, %scevgep13
  %bound1 = icmp ult ptr %scevgep12, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.g = add i64 %i.a, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = add nuw i64 %i.a, %index                 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x double>, ptr %i.i, align 8, !tbaa !255, !alias.scope !257
  %wide.load14 = load <2 x double>, ptr %i.j, align 8, !tbaa !255, !alias.scope !257
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load15 = load <2 x double>, ptr %i.k, align 8, !tbaa !255, !alias.scope !260, !noalias !257
  %wide.load16 = load <2 x double>, ptr %i.l, align 8, !tbaa !255, !alias.scope !260, !noalias !257
  %i.m = fadd <2 x double> %wide.load, %wide.load15
  %i.n = fadd <2 x double> %wide.load14, %wide.load16
  store <2 x double> %i.m, ptr %i.k, align 8, !tbaa !255, !alias.scope !260, !noalias !257
  store <2 x double> %i.n, ptr %i.l, align 8, !tbaa !255, !alias.scope !260, !noalias !257
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.g, %middle.block ] ; 4 uses
  %i.p = sub i64 %i.b, %.09.ph
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17, %.lr.ph.prol
  %.09.prol = phi i64 [ %i.v, %.lr.ph.prol ], [ %.09.ph, %.lr.ph.preheader17 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader17 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.prol
  %i.r = load double, ptr %i.q, align 8, !tbaa !255
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.prol ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !255
  %i.u = fadd double %i.r, %i.t
  store double %i.u, ptr %i.s, align 8, !tbaa !255
  %i.v = add nuw i64 %.09.prol, 1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !263

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader17 ], [ %i.v, %.lr.ph.prol ]
  %i.w = sub i64 %.09.ph, %i.b
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.av, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09
  %i.z = load double, ptr %i.y, align 8, !tbaa !255
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !255
  %i.ac = fadd double %i.z, %i.ab
  store double %i.ac, ptr %i.aa, align 8, !tbaa !255
  %i.ad = add nuw i64 %.09, 1                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !255
  %i.ai = fadd double %i.af, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !255
  %i.aj = add nuw i64 %.09, 2                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !255
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !255
  %i.ao = fadd double %i.al, %i.an
  store double %i.ao, ptr %i.am, align 8, !tbaa !255
  %i.ap = add nuw i64 %.09, 3                     ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !255
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !255
  %i.au = fadd double %i.ar, %i.at
  store double %i.au, ptr %i.as, align 8, !tbaa !255
  %i.av = add nuw i64 %.09, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.av, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !264
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN7xgboost6common8CopyHistENS0_4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEES5_mm(i64 %0, ptr nofree writeonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #11 {
bb.a:
  %i.a = shl i64 %4, 1                            ; 4 uses
  %i.b = shl i64 %5, 1                            ; 4 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64
  %i.e = ptrtoaddr ptr %3 to i64
  %i.f = sub i64 %5, %4
  %6 = shl i64 %i.f, 1                            ; 3 uses
  %min.iters.check = icmp ult i64 %6, 8
  %i.g = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %6, -4                         ; 3 uses
  %i.h = add i64 %i.a, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add nuw i64 %i.a, %index                 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <2 x double>, ptr %i.j, align 8, !tbaa !255
  %wide.load12 = load <2 x double>, ptr %i.k, align 8, !tbaa !255
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x double> %wide.load, ptr %i.l, align 8, !tbaa !255
  store <2 x double> %wide.load12, ptr %i.m, align 8, !tbaa !255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 4 uses
  %i.o = sub i64 %i.b, %.09.ph
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13, %.lr.ph.prol
  %.09.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.09.ph, %.lr.ph.preheader13 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader13 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.prol
  %i.q = load double, ptr %i.p, align 8, !tbaa !255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.prol
  store double %i.q, ptr %i.r, align 8, !tbaa !255
  %i.s = add nuw i64 %.09.prol, 1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !266

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader13 ], [ %i.s, %.lr.ph.prol ]
  %i.t = sub i64 %.09.ph, %i.b
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.ak, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09
  %i.w = load double, ptr %i.v, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09
  store double %i.w, ptr %i.x, align 8, !tbaa !255
  %i.y = add nuw i64 %.09, 1                      ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  store double %i.aa, ptr %i.ab, align 8, !tbaa !255
  %i.ac = add nuw i64 %.09, 2                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !255
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !tbaa !255
  %i.ag = add nuw i64 %.09, 3                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !255
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ag
  store double %i.ai, ptr %i.aj, align 8, !tbaa !255
  %i.ak = add nuw i64 %.09, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ak, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !267
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN7xgboost6common15SubtractionHistENS0_4SpanINS_6detail20GradientPairInternalIdEELm18446744073709551615EEES5_S5_mm(i64 %0, ptr nofree writeonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree readonly captures(none) %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = shl i64 %6, 1                            ; 5 uses
  %i.e = shl i64 %7, 1                            ; 4 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = sub i64 %7, %6
  %8 = shl i64 %i.g, 1                            ; 3 uses
  %min.iters.check = icmp ult i64 %8, 10
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.h, -32
  %i.i = sub i64 %i.a, %i.c
  %diff.check15 = icmp ugt i64 %i.i, -32
  %conflict.rdx = or i1 %diff.check, %diff.check15
  br i1 %conflict.rdx, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %8, -4                         ; 3 uses
  %i.j = add i64 %i.d, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = add nuw i64 %i.d, %index                 ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x double>, ptr %i.l, align 8, !tbaa !255
  %wide.load16 = load <2 x double>, ptr %i.m, align 8, !tbaa !255
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load17 = load <2 x double>, ptr %i.n, align 8, !tbaa !255
  %wide.load18 = load <2 x double>, ptr %i.o, align 8, !tbaa !255
  %i.p = fsub <2 x double> %wide.load, %wide.load17
  %i.q = fsub <2 x double> %wide.load16, %wide.load18
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %i.r, align 8, !tbaa !255
  store <2 x double> %i.q, ptr %i.s, align 8, !tbaa !255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.013.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %i.u = sub i64 %i.e, %.013.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19, %.lr.ph.prol
  %.013.prol = phi i64 [ %i.ab, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader19 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader19 ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.013.prol
  %i.w = load double, ptr %i.v, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.013.prol
  %i.y = load double, ptr %i.x, align 8, !tbaa !255
  %i.z = fsub double %i.w, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.prol
  store double %i.z, ptr %i.aa, align 8, !tbaa !255
  %i.ab = add nuw i64 %.013.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !269

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %.013.unr = phi i64 [ %.013.ph, %.lr.ph.preheader19 ], [ %i.ab, %.lr.ph.prol ]
  %i.ac = sub i64 %.013.ph, %i.e
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i64 [ %i.bf, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.013
  %i.af = load double, ptr %i.ae, align 8, !tbaa !255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.013
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !255
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013
  store double %i.ai, ptr %i.aj, align 8, !tbaa !255
  %i.ak = add nuw i64 %.013, 1                    ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !255
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ak
  %i.ao = load double, ptr %i.an, align 8, !tbaa !255
  %i.ap = fsub double %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  store double %i.ap, ptr %i.aq, align 8, !tbaa !255
  %i.ar = add nuw i64 %.013, 2                    ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !255
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ar
  %i.av = load double, ptr %i.au, align 8, !tbaa !255
  %i.aw = fsub double %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ar
  store double %i.aw, ptr %i.ax, align 8, !tbaa !255
  %i.ay = add nuw i64 %.013, 3                    ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !255
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ay
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !255
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  store double %i.bd, ptr %i.be, align 8, !tbaa !255
  %i.bf = add nuw i64 %.013, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bf, %i.e
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !270
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal5Entry11ThreadLocalEv()
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.tm, align 8                 ; 3 uses
  %4 = alloca %"class.dmlc::DateLogger", align 1  ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !92
  store i8 0, ptr %i.b, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !92
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull %i.b, i64 noundef 0)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !272
  %i.k = and i32 %i.j, 3
  %.not.i.i.i = icmp eq i32 %i.k, 0
  %i.l = load i64, ptr %i.e, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.l
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !89
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef %i.m, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.c

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc6
  %i.n = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.p = load i64, ptr %i.b, align 8, !tbaa !93
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !103
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.u, i32 noundef 0)
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.w = call i64 @time(ptr noundef null) #12
  store i64 %i.w, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.x = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !278
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !280
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !281
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(9) %4, i64 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ac) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #12
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %4, i64 noundef %i.ae) ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !103
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !282
  %i.an = or i32 %i.am, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ak, i32 noundef %i.an)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ao) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a, %bb.b
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2)
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

bb.c:                                             ; preds = %.noexc6, %._crit_edge.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.b
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.c
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !93
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal5Entry11ThreadLocalEv() local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !289

bb.b:                                             ; preds = %bb.a
end_hunk_0
