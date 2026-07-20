inline.NumInlined: 11292
inline.NumDeleted: 4278
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EEEN7VisitorclEOS3_PS3_:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #38, !inline_history !1522
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.al, %_ZNSt6vectorIiSaIiEED2Ev.exit59, %_ZN5arrow9FieldPathD2Ev.exit7.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i, %bb.az, %bb.d
  %.pn46 = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit59 ], [ %i.ab, %bb.d ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i.i.i ], [ %i.hj, %bb.az ], [ %i.em, %bb.al ], [ %.pn.i.i.i.i.i.i.i.i.i, %_ZN5arrow9FieldPathD2Ev.exit7.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEEaSIS8_IiSaIiEEEENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S7_SB_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSC_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %1, align 8, !tbaa !1078   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1082 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1081 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.a, align 8, !tbaa !1509
  switch i8 %i.i, label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke [
    i8 0, label %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !1533

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.b
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.invoke:  ; preds = %bb.b, %_ZSt26__throw_bad_variant_accessb.exit.i
  %.str.225.sink = phi ptr [ @.str.224, %_ZSt26__throw_bad_variant_accessb.exit.i ], [ @.str.225, %bb.b ]
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.j, align 8, !tbaa !331
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.str.225.sink, ptr %i.k, align 8, !tbaa !1523
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.cont unwind label %bb.d

_ZSt26__throw_bad_variant_accessb.exit.i.cont:    ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  unreachable

_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !1078   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1081
  store ptr %i.d, ptr %0, align 8, !tbaa !1078
  store ptr %i.f, ptr %i.m, align 8, !tbaa !1082
  store ptr %i.h, ptr %i.n, align 8, !tbaa !1081
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.d:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit15 unwind label %bb.f

_ZNSt6vectorIiSaIiEED2Ev.exit15:                  ; preds = %bb.e
  store ptr %i.d, ptr %0, align 8, !tbaa !1078
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.t, align 8, !tbaa !1082
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.u, align 8, !tbaa !1081
  store i8 0, ptr %i.a, align 8, !tbaa !1509
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %_ZSt3getILm0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_8FieldRefESaIS9_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSG_.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit15
  ret ptr %0

_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split:       ; preds = %bb.f, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.v, %bb.f ]
  %i.w = ptrtoint ptr %i.h to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.y) #38
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.v, %bb.f ], [ %.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit10.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1516   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1518 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i3.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i) #37, !inline_history !1534
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1516
  br label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1519
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #38
  br label %_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow8FieldRefESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.302") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.4.i = alloca %union.anon, align 8        ; 4 uses
  %4 = alloca %"class.arrow::FieldRef", align 8   ; 5 uses
  %5 = alloca %"class.std::vector.287", align 8   ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::FieldRef", align 16  ; 20 uses
  %10 = alloca %"class.std::vector.287", align 8  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit, label %bb.b

_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 24, i1 false)
  store i8 0, ptr %i.g, align 8, !tbaa !1509
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #37, !inline_history !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.cb

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 25 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.bp
  %.sroa.0.0172 = phi i64 [ %i.c, %bb.b ], [ %.sroa.0.1, %bb.bp ]
  %.sroa.15.0171 = phi ptr [ %i.h, %bb.b ], [ %.sroa.15.1, %bb.bp ] ; 2 uses
  %i.m = load i8, ptr %.sroa.15.0171, align 1, !tbaa !43
  %i.n = add i64 %.sroa.0.0172, -1                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.15.0171, i64 1 ; 5 uses
  switch i8 %i.m, label %bb.bj [
    i8 46, label %bb.d
    i8 91, label %bb.ay
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %i.k, ptr %6, align 8, !tbaa !38, !alias.scope !1535
  store i64 0, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  store i8 0, ptr %i.k, align 8, !tbaa !43, !alias.scope !1535
  %.not531.i = icmp eq i64 %i.n, 0
  br i1 %.not531.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.15.2 = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %i.o, %bb.d ] ; 14 uses
  %.sroa.0.2 = phi i64 [ %i.dc, %.lr.ph.i.i.i ], [ %i.n, %bb.d ] ; 15 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i
  %.0111420.i.i.i = phi i64 [ %i.r, %bb.e ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i ] ; 21 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 %.0111420.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43    ; 2 uses
  switch i8 %i.q, label %bb.e [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.r = add i64 %.0111420.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %.sroa.0.2
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.s = icmp eq i64 %.0111420.i.i.i, -1
  br i1 %i.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, label %bb.l

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i, %bb.e
  %i.t = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 2 uses
  %i.u = sub i64 9223372036854775807, %i.t
  %i.v = icmp ult i64 %i.u, %.sroa.0.2
  br i1 %i.v, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.invoke.i:                                        ; preds = %bb.x, %bb.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #39
          to label %.cont.i unwind label %.loopexit.split-lp.i.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i
  %i.w = phi i64 [ %i.t, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ 0, %bb.d ], [ %.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 4 uses
  %i.x = phi i64 [ %.sroa.0.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ 0, %bb.d ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 5 uses
  %i.y = phi ptr [ %.sroa.15.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.i ], [ %i.o, %bb.d ], [ %i.dd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit ] ; 3 uses
  %i.z = add i64 %i.x, %i.w                       ; 3 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.k
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ac = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !43, !alias.scope !1535
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i19.i = icmp ugt i64 %i.z, %i.ae
  br i1 %.not.i.i19.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not8.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.x, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !43
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !43
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.y, i64 %i.x, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.w, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.x)
          to label %bb.k unwind label %.loopexit.split-lp.i.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.z, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.ah = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !43
  br label %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"

.loopexit.i.loopexit:                             ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i.loopexit.split-lp:                    ; preds = %bb.ak, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit:                    ; preds = %bb.j, %bb.r, %bb.ab
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.i
  %.not.i = icmp eq i8 %i.q, 92
  br i1 %.not.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 %.0111420.i.i.i
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535 ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %.0111420.i.i.i
  br i1 %i.am, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i: ; preds = %bb.m
  %i.an = add i64 %i.ak, %.0111420.i.i.i          ; 3 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.k
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21.i
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !43, !alias.scope !1535
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i27.i ]
  %.not.i.i24.i = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i24.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i
  %.not8.i.i25.i = icmp eq i64 %.0111420.i.i.i, 0
  br i1 %.not8.i.i25.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i26.i = icmp eq i64 %.0111420.i.i.i, 1
  br i1 %cond.i.i26.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = load i8, ptr %.sroa.15.2, align 1, !tbaa !43
  store i8 %i.au, ptr %i.at, align 1, !tbaa !43
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.sroa.15.2, i64 %.0111420.i.i.i, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i23.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %.sroa.15.2, i64 noundef %.0111420.i.i.i)
          to label %bb.s unwind label %.loopexit.split-lp.i.loopexit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  store i64 %i.an, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.av = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !43
  %i.ax = icmp ugt i64 %.0111420.i.i.i, %.sroa.0.2
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %.0111420.i.i.i, i64 noundef %.sroa.0.2) #39
          to label %.noexc31.i unwind label %bb.v

.noexc31.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ay = sub nuw i64 %.sroa.0.2, %.0111420.i.i.i
  br label %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"

bb.v:                                             ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #39
          to label %.noexc75 unwind label %.loopexit.i.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cm = icmp ugt i64 %i.cd, %i.ck
  br i1 %i.cm, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cn = shl nuw i64 %i.ck, 1                    ; 2 uses
  %i.co = icmp ult i64 %i.cd, %i.cn
  br i1 %i.co, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.cn, i64 9223372036854775807)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.0.i = phi i64 [ %spec.store.select.i.i, %bb.an ], [ %i.cd, %bb.am ], [ %i.cd, %bb.al ] ; 2 uses
  %i.cp = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !335

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt17__throw_bad_allocv() #39
          to label %.noexc76 unwind label %.loopexit.i.loopexit.split-lp

.noexc76:                                         ; preds = %bb.ap
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.ao
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #36
          to label %.noexc77 unwind label %.loopexit.i.loopexit ; 4 uses

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  switch i64 %i.cc, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %.noexc77
  %i.cs = load i8, ptr %i.ce, align 1, !tbaa !43
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.ar:                                            ; preds = %.noexc77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr align 1 %i.ce, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc77, %bb.aq, %bb.ar
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.ct = icmp samesign ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ct)
  br label %.noexc52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.cu = load i64, ptr %i.k, align 8, !tbaa !43
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cv) #38
  br label %.noexc52.i

.noexc52.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i
  store ptr %i.cr, ptr %6, align 8, !tbaa !48
  store i64 %.0.i, ptr %i.k, align 8, !tbaa !43
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %.noexc52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cw = phi ptr [ %i.cr, %.noexc52.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cc
  store i8 %i.cb, ptr %i.cx, align 1, !tbaa !43
  store i64 %i.cd, ptr %i.l, align 8, !tbaa !41, !alias.scope !1535
  %i.cy = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cd
  store i8 0, ptr %i.cz, align 1, !tbaa !43
  %i.da = add i64 %.0111420.i.i.i, 2              ; 4 uses
  %i.db = icmp ugt i64 %i.da, %.sroa.0.2
  br i1 %i.db, label %bb.at, label %.lr.ph.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %i.da, i64 noundef %.sroa.0.2) #39
          to label %.noexc55.i unwind label %bb.au

.noexc55.i:                                       ; preds = %bb.at
  unreachable

.lr.ph.i.i.i:                                     ; preds = %bb.as
  %i.dc = sub nuw i64 %.sroa.0.2, %i.da           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 %i.da ; 2 uses
  %.not5.i = icmp eq i64 %i.dc, 0
  br i1 %.not5.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread.i.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader.i

bb.au:                                            ; preds = %bb.at
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i.loopexit, %.loopexit.i.loopexit.split-lp, %bb.au, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.de, %bb.au ], [ %i.az, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.i.loopexit ], [ %lpad.loopexit101, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %i.df = load ptr, ptr %6, align 8, !tbaa !48, !alias.scope !1535 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.k
  br i1 %i.dg, label %.body, label %.body.sink.split

"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit": ; preds = %bb.ac, %bb.u, %bb.k
  %.sink.i = phi i64 [ 0, %bb.k ], [ %i.ay, %bb.u ], [ 0, %bb.ac ]
  %.str.53.sink.i = phi ptr [ @.str.53, %bb.k ], [ %i.aj, %bb.u ], [ @.str.53, %bb.ac ]
  %i.dh = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 8 uses
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !1519
  %.not.i27 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i27, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.dj = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.k
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %bb.av
  %i.dl = load i64, ptr %i.l, align 8, !tbaa !41  ; 3 uses
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.dm, i1 false)
  store i8 0, ptr %i.k, align 8, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.do = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, i64 %i.dm, i1 false)
  br label %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %bb.av
  %i.dp = load i64, ptr %i.k, align 8, !tbaa !43
  %.pre.i.i28 = load i64, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.k, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !43
  br label %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i29 = phi ptr [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.dr = phi i64 [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store ptr %i.k, ptr %6, align 8, !tbaa !48
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store ptr %.sink.i29, ptr %i.dh, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i8 1, ptr %i.dt, align 8, !tbaa !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store ptr %i.du, ptr %i.i, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit

bb.aw:                                            ; preds = %"_ZZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev.exit"
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit unwind label %bb.ax

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit: ; preds = %bb.aw, %_ZSt12construct_atIN5arrow8FieldRefEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  %i.dv = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.k
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit
  %i.dx = load i64, ptr %i.k, align 8, !tbaa !43
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS1_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bp, !llvm.loop !1538

bb.ax:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.k
  br i1 %i.eb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ax, %.loopexit.i
  %.sink = phi ptr [ %i.df, %.loopexit.i ], [ %i.ea, %bb.ax ]
  %.pn20.ph = phi { ptr, i32 } [ %.pn.i, %.loopexit.i ], [ %i.dz, %bb.ax ]
  %i.ec = load i64, ptr %i.k, align 8, !tbaa !43
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ed) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ax, %.loopexit.i
  %.pn20 = phi { ptr, i32 } [ %.pn.i, %.loopexit.i ], [ %i.dz, %bb.ax ], [ %.pn20.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ca

bb.ay:                                            ; preds = %bb.c
  %.not96 = icmp eq i64 %i.n, 0
  br i1 %.not96, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.ay, %bb.az
  %.0710.i.i = phi i64 [ %i.ej, %bb.az ], [ 0, %bb.ay ] ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0710.i.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !43  ; 3 uses
  %i.eg = zext nneg i8 %i.ef to i64
  %memchr.bounds = icmp ugt i8 %i.ef, 63
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, 287948901175001088
  %memchr.bits = icmp eq i64 %i.ei, 0
  %memchr.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ej = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ej, %i.n
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !1539

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ek = icmp ne i64 %.0710.i.i, -1
  %.not = icmp eq i8 %i.ef, 93
  %or.cond = and i1 %i.ek, %.not
  br i1 %or.cond, label %bb.bf, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.ay, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !1540
  invoke void @_ZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(11) @.str.151, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(34) @.str.152)
          to label %.noexc36 unwind label %bb.be

.noexc36:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc36
  %i.el = load ptr, ptr %3, align 8, !tbaa !48, !noalias !1540 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34: ; preds = %bb.ba
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !43, !noalias !1540
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35

bb.bb:                                            ; preds = %.noexc36
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %3, align 8, !tbaa !48, !noalias !1540 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.bb
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !43, !noalias !1540
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1540
  br label %.body37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !1540
  call void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  %i.ew = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %.not.i39 = icmp eq ptr %i.ew, null
  br i1 %.not.i39, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bc, !prof !47

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !50, !range !59, !noundef !60
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #37
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %.critedge

bb.be:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.body37:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.be
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.fa, %bb.be ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ca

bb.bf:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.fb = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #37, !inline_history !1545
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  store i32 %i.fc, ptr %i.a, align 4, !tbaa !3
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 7 uses
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !1519
  %.not.i40 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i40, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #36
          to label %.noexc42 unwind label %bb.bi  ; 3 uses

.noexc42:                                         ; preds = %bb.bg
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !3
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !1078
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !1082
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !1081
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i8 0, ptr %i.fj, align 8, !tbaa !1509
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store ptr %i.fk, ptr %i.i, align 8, !tbaa !1518
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.bh:                                            ; preds = %bb.bf
  invoke void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.fd, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit unwind label %bb.bi

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.bh, %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.fl = add nuw i64 %.0710.i.i, 1               ; 3 uses
  %.not97 = icmp ult i64 %.0710.i.i, %i.n
  br i1 %.not97, label %12, label %11

11:                                               ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.227, i64 noundef %i.fl, i64 noundef %i.n) #39
          to label %.noexc46 unwind label %15

.noexc46:                                         ; preds = %11
  unreachable

12:                                               ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  %13 = sub nuw i64 %i.n, %i.fl
  %14 = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.fl
  br label %bb.bp, !llvm.loop !1538

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.ca

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !1546
  invoke void @_ZN5arrow8internal12JoinToStringIJRA43_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(43) @.str.153, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.154)
          to label %.noexc53 unwind label %bb.bo

.noexc53:                                         ; preds = %bb.bj
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %.noexc53
  %i.fn = load ptr, ptr %2, align 8, !tbaa !48, !noalias !1546 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51: ; preds = %bb.bk
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !43, !noalias !1546
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52

bb.bl:                                            ; preds = %.noexc53
  %i.fs = landingpad { ptr, i32 }
          cleanup
  %i.ft = load ptr, ptr %2, align 8, !tbaa !48, !noalias !1546 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i48: ; preds = %bb.bl
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !43, !noalias !1546
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !1546
  br label %.body54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !1546
  call void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #37
  %i.fy = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %.not.i56 = icmp eq ptr %i.fy, null
  br i1 %.not.i56, label %_ZN5arrow6StatusD2Ev.exit57, label %bb.bm, !prof !47

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !50, !range !59, !noundef !60
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %_ZN5arrow6StatusD2Ev.exit57, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #37
  br label %_ZN5arrow6StatusD2Ev.exit57

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i52, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %.critedge

bb.bo:                                            ; preds = %bb.bj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49, %bb.bo
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.gc, %bb.bo ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ca

bb.bp:                                            ; preds = %12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.15.1 = phi ptr [ %.str.53.sink.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %14, %12 ]
  %.sroa.0.1 = phi i64 [ %.sink.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %13, %12 ] ; 2 uses
  %i.gd = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.gd, label %bb.bq, label %bb.c

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %9, i8 0, i64 24, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 0, ptr %i.ge, align 16, !tbaa !1509
  %i.gf = load ptr, ptr %5, align 8, !tbaa !1516  ; 6 uses
  store ptr %i.gf, ptr %10, align 8, !tbaa !1516
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gh = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 3 uses
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !1518
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !1519 ; 2 uses
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow8FieldRef7FlattenESt6vectorIS0_SaIS0_EE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %10)
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq
  %.not.i2.i.i = icmp eq ptr %i.gf, %i.gh
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %bb.br, %.lr.ph.i.i58
  %.0.i3.i.i = phi ptr [ %i.gk, %.lr.ph.i.i58 ], [ %i.gf, %bb.br ] ; 2 uses
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.i) #37, !inline_history !1520
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gk, %i.gh
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i58, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i58, %bb.br
  %.not.i.i1.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gf to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gn) #38, !inline_history !1522
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i, %bb.bs
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 -1, ptr %i.gp, align 8, !tbaa !1509
  %i.gq = load i8, ptr %i.ge, align 16, !tbaa !1509 ; 2 uses
  switch i8 %i.gq, label %bb.bx [
    i8 0, label %bb.bt
    i8 1, label %bb.bu
    i8 2, label %bb.bw
    i8 -1, label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63
  ]

bb.bt:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  %i.gr = load <2 x ptr>, ptr %9, align 16, !tbaa !1289
  store <2 x ptr> %i.gr, ptr %i.go, align 8, !tbaa !1289
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gu = load ptr, ptr %i.gt, align 16, !tbaa !1081
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !1081
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %9, i8 0, i64 24, i1 false)
  br label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63

bb.bu:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.gv, ptr %i.go, align 8, !tbaa !38
  %i.gw = load ptr, ptr %9, align 16, !tbaa !48   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60

bb.bv:                                            ; preds = %bb.bu
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !41 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gv, ptr noundef nonnull align 16 dereferenceable(1) %i.gx, i64 %i.hc, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %bb.bu
  store ptr %i.gw, ptr %i.go, align 8, !tbaa !48
  %i.hd = load i64, ptr %i.gx, align 16, !tbaa !43
  store i64 %i.hd, ptr %i.gv, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre226 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60, %bb.bv
  %i.he = phi i64 [ %.pre226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i60 ], [ %i.ha, %bb.bv ]
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.he, ptr %i.hg, align 8, !tbaa !41
  store ptr %i.gx, ptr %9, align 16, !tbaa !48
  store i64 0, ptr %i.hf, align 8, !tbaa !41
  store i8 0, ptr %i.gx, align 16, !tbaa !43
  br label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63

bb.bw:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  %i.hh = load <2 x ptr>, ptr %9, align 16, !tbaa !1511
  store <2 x ptr> %i.hh, ptr %i.go, align 8, !tbaa !1511
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hk = load ptr, ptr %i.hj, align 16, !tbaa !1519
  store ptr %i.hk, ptr %i.hi, align 8, !tbaa !1519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %9, i8 0, i64 24, i1 false)
  br label %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63

bb.bx:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit
  unreachable

_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63:    ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit, %bb.bt, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i61, %bb.bw
  store i8 %i.gq, ptr %i.gp, align 8, !tbaa !1509
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #37, !inline_history !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.critedge

bb.by:                                            ; preds = %bb.bq
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #37
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #37, !inline_history !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ca

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit63
  %i.hm = load ptr, ptr %5, align 8, !tbaa !1516  ; 3 uses
  %i.hn = load ptr, ptr %i.i, align 8, !tbaa !1518 ; 2 uses
  %.not.i2.i.i64 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i2.i.i64, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.critedge, %.lr.ph.i.i65
  %.0.i3.i.i66 = phi ptr [ %i.ho, %.lr.ph.i.i65 ], [ %i.hm, %.critedge ] ; 2 uses
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.i66) #37, !inline_history !1520
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i3.i.i66, i64 40 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ho, %i.hn
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68, label %.lr.ph.i.i65, !llvm.loop !1521

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68: ; preds = %.lr.ph.i.i65
  %.pr.i69 = load ptr, ptr %5, align 8, !tbaa !1516
  br label %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70

_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68, %.critedge
  %i.hp = phi ptr [ %.pr.i69, %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i68 ], [ %i.hm, %.critedge ] ; 3 uses
  %.not.i.i1.i71 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i1.i71, label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70
  %i.hq = load ptr, ptr %i.j, align 8, !tbaa !1519
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ht) #38, !inline_history !1522
  br label %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72

_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72: ; preds = %_ZSt8_DestroyIPN5arrow8FieldRefES1_EvT_S3_RSaIT0_E.exit.i70, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.cb

bb.ca:                                            ; preds = %.body, %.body54, %15, %bb.bi, %.body37, %bb.by
  %.pn22.pn = phi { ptr, i32 } [ %i.hl, %bb.by ], [ %eh.lpad-body55, %.body54 ], [ %.pn20, %.body ], [ %i.fm, %bb.bi ], [ %eh.lpad-body38, %.body37 ], [ %16, %15 ]
  call void @_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn22.pn

bb.cb:                                            ; preds = %_ZNSt6vectorIN5arrow8FieldRefESaIS1_EED2Ev.exit72, %_ZN5arrow6ResultINS_8FieldRefEEC2EOS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !44
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !335

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.210, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !43
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.m = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !43
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8FieldRef9ToDotPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509, !noalias !1551
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZSt5visitIZNK5arrow8FieldRef9ToDotPathB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37, !noalias !1551 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !331, !noalias !1551
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.223, ptr %i.d, align 8, !tbaa !1523, !noalias !1551
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39, !noalias !1551
  unreachable

_ZSt5visitIZNK5arrow8FieldRef9ToDotPathB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit: ; preds = %bb.a
  tail call fastcc void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZNK5arrow8FieldRef9ToDotPathEvE7VisitorJRKSt7variantIJNSA_9FieldPathES8_St6vectorISB_SaISB_EEEEEEDcOT0_DpOT1_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow8FieldRef4hashEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZSt5visitIZNK5arrow8FieldRef4hashEvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !331
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.223, ptr %i.d, align 8, !tbaa !1523
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
  unreachable

_ZSt5visitIZNK5arrow8FieldRef4hashEvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit: ; preds = %bb.a
  %i.e = tail call fastcc noundef i64 @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZNK5arrow8FieldRef4hashEvE7VisitorJRKSt7variantIJNS4_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(33) %0)
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8FieldRef8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1509, !noalias !1554 ; 2 uses
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %bb.b, label %_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37, !noalias !1554 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !331, !noalias !1554
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.223, ptr %i.d, align 8, !tbaa !1523, !noalias !1554
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39, !noalias !1554
  unreachable

_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  switch i8 %i.b, label %bb.ab [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %._crit_edge.i.i.i.i
  ]

bb.c:                                             ; preds = %_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit
  call void @_ZNK5arrow9FieldPath8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(33) %1), !inline_history !1560
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZNK5arrow8FieldRef8ToStringEvE7VisitorJRKSt7variantIJNSA_9FieldPathES8_St6vectorISB_SaISB_EEEEEEDcOT0_DpOT1_.exit

bb.d:                                             ; preds = %_ZSt5visitIZNK5arrow8FieldRef8ToStringB5cxx11EvE7VisitorJRKSt7variantIJNS0_9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS1_SaIS1_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit
  %.val.i = load ptr, ptr %1, align 8, !tbaa !48, !noalias !1561
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8.i = load i64, ptr %i.e, align 8, !tbaa !41, !noalias !1561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37, !noalias !1576
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !1577
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.230, i64 noundef 5, ptr noundef %.val.i, i64 noundef %.val8.i, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1576, !inline_history !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !1577
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41, !noalias !1583 ; 5 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775807
  br i1 %i.h, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #39
          to label %.noexc.i.i.i.i.i unwind label %bb.i, !noalias !1576, !inline_history !1560

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.d
end_hunk_1
