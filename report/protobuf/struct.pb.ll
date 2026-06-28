inline.NumInlined: 784
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEC2ERKSB_:bb.a
  store i64 %i.b, ptr %0, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !55
  br label %_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 3                  ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #28 ; 7 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46, !noalias !81 ; 4 uses
  %.not12.i.i = icmp eq i32 %i.g, 0
  br i1 %.not12.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32, !noalias !81
  %i.j = zext i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74, !noalias !81 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.j
  br i1 %.not.i.i, label %._crit_edge, label %bb.c, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.c
  %i.n = trunc nuw i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

._crit_edge:                                      ; preds = %bb.d, %.preheader.preheader, %.preheader, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 3 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  invoke void @_ZSt16__introsort_loopIPPKvlN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_T1_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.q, i64 noundef %i.t)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %._crit_edge
  %i.u = icmp ugt i32 %i.a, 16
  br i1 %i.u, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  invoke void @_ZSt16__insertion_sortIPPKvN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.v)
          to label %.lr.ph.i.i.i.i unwind label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ai, %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = load ptr, ptr %.07.i.i.i.i, align 8, !tbaa !64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.g ] ; 3 uses
  %.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i.i.i.i.i, i64 -8 ; 2 uses
  %i.z = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.y) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.af = tail call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.ad, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ag = sub i64 %i.y, %i.ab
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.g, label %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i
  store ptr %i.z, ptr %.09.i.i.i.i.i, align 8, !tbaa !64
  br label %bb.f, !llvm.loop !86

_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclIPKvPSG_EEbRT_T0_.exit.i.i.i.i.i
  store ptr %i.w, ptr %.09.i.i.i.i.i, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.q
  br i1 %.not.i.i.i.i, label %_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !87

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIPPKvN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_SI_T0_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.q)
          to label %_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %._crit_edge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_PKvSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph56, %.lr.ph
  %.028.ph = phi ptr [ %i.e, %.lr.ph ], [ %i.am, %.lr.ph56 ]
  %.sroa.12.027.ph = phi i32 [ %i.n, %.lr.ph ], [ %.0.i.i55, %.lr.ph56 ]
  %.sroa.019.026.ph = phi ptr [ %i.l, %.lr.ph ], [ %i.as, %.lr.ph56 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.028 = phi ptr [ %i.am, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.028.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 2 uses
  %.sroa.019.026 = phi ptr [ %i.an, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.sroa.019.026.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  store ptr %i.al, ptr %.028, align 8, !tbaa !64
  %i.an = load ptr, ptr %.sroa.019.026, align 8, !tbaa !78 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.an, null
  br i1 %.not.i.i18, label %.preheader.preheader, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

.preheader.preheader:                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.0.i.i54 = add i32 %.sroa.12.027.ph, 1         ; 2 uses
  %i.ao = icmp ult i32 %.0.i.i54, %i.g
  br i1 %i.ao, label %.lr.ph56, label %._crit_edge

.preheader:                                       ; preds = %.lr.ph56
  %.0.i.i = add i32 %.0.i.i55, 1                  ; 2 uses
  %i.ap = icmp ult i32 %.0.i.i, %i.g
  br i1 %i.ap, label %.lr.ph56, label %._crit_edge, !llvm.loop !80

.lr.ph56:                                         ; preds = %.preheader.preheader, %.preheader
  %.0.i.i55 = phi i32 [ %.0.i.i, %.preheader ], [ %.0.i.i54, %.preheader.preheader ] ; 3 uses
  %i.aq = zext i32 %.0.i.i55 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !74 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.preheader, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80

_ZSt4sortIPPKvN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SE_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPPKvN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf8internal20MapSorterPtrLessThanINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEvT_T0_.exit.i.i.i.i, %bb.h, %.thread
  ret void

_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #27
  br label %_ZNSt10unique_ptrIA_PKvSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_PKvSt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIA_PKvEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal13MapEntryFuncsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE17InternalSerializeEiRKS8_RKS9_PhPNS0_2io19EpsCopyOutputStreamE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !88
  %.not.i = icmp ult ptr %3, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %3)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %i.c = shl i32 %0, 3                            ; 2 uses
  %i.d = or disjoint i32 %i.c, 2                  ; 2 uses
  %i.e = icmp ugt i32 %i.c, 127
  br i1 %i.e, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !90

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.i, %.lr.ph.i ], [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i32 %.07.i1.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i, align 1, !tbaa !39
  %i.h = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.j = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.j, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !91, !llvm.loop !92

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.k = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.k, ptr %.0.i.lcssa.i, align 1, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = or i32 %i.o, 1
  %i.q = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = xor i32 %i.q, 31
  %i.s = mul nuw nsw i32 %i.r, 9
  %i.t = add nuw nsw i32 %i.s, 73
  %i.u = lshr i32 %i.t, 6
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = or i32 %i.w, 1
  %i.y = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = xor i32 %i.y, 31
  %i.aa = mul nuw nsw i32 %i.z, 9
  %i.ab = add nuw nsw i32 %i.aa, 73
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = add i32 %i.w, 2
  %i.ae = add i32 %i.ad, %i.o
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = add i32 %i.af, %i.u                     ; 3 uses
  %i.ah = icmp ugt i32 %i.ag, 127
  br i1 %i.ah, label %.lr.ph.i14, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17, !prof !90

.lr.ph.i14:                                       ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %.lr.ph.i14
  %.0.i2.i15 = phi ptr [ %i.al, %.lr.ph.i14 ], [ %i.l, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %.07.i1.i16 = phi i32 [ %i.ak, %.lr.ph.i14 ], [ %i.ag, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 3 uses
  %i.ai = trunc i32 %.07.i1.i16 to i8
  %i.aj = or i8 %i.ai, -128
  store i8 %i.aj, ptr %.0.i2.i15, align 1, !tbaa !39
  %i.ak = lshr i32 %.07.i1.i16, 7                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i2.i15, i64 1 ; 2 uses
  %i.am = icmp ugt i32 %.07.i1.i16, 16383
  br i1 %i.am, label %.lr.ph.i14, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17, !prof !91, !llvm.loop !92

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17: ; preds = %.lr.ph.i14, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %.07.i.lcssa.i12 = phi i32 [ %i.ag, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.ak, %.lr.ph.i14 ]
  %.0.i.lcssa.i13 = phi ptr [ %i.l, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.al, %.lr.ph.i14 ] ; 2 uses
  %i.an = trunc nuw nsw i32 %.07.i.lcssa.i12 to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i13, i64 1 ; 3 uses
  store i8 %i.an, ptr %.0.i.lcssa.i13, align 1, !tbaa !39
  %i.ap = load ptr, ptr %4, align 8, !tbaa !88
  %.not.i.i = icmp ult ptr %i.ao, %i.ap
  br i1 %.not.i.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i, label %bb.c, !prof !89

bb.c:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17
  %i.aq = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull %i.ao)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i: ; preds = %bb.c, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17
  %.0.i5.i = phi ptr [ %i.aq, %bb.c ], [ %i.ao, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit17 ] ; 5 uses
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !68  ; 6 uses
  %i.as = icmp sgt i64 %i.ar, 127
  br i1 %i.as, label %.critedge.i.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %i.at = load ptr, ptr %4, align 8, !tbaa !88
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %.0.i5.i to i64
  %reass.sub = sub i64 %i.au, %i.av
  %i.aw = add i64 %reass.sub, 14
  %i.ax = icmp slt i64 %i.aw, %i.ar
  br i1 %i.ax, label %.critedge.i.i, label %bb.e, !prof !42

.critedge.i.i:                                    ; preds = %bb.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %i.ay = load ptr, ptr %1, align 8, !tbaa !65
  %i.az = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, i32 noundef 1, i64 %i.ar, ptr %i.ay, ptr noundef %.0.i5.i)
  br label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i5.i, i64 1
  store i8 10, ptr %.0.i5.i, align 1, !tbaa !39
  %i.bb = trunc i64 %i.ar to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i5.i, i64 2 ; 2 uses
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !39
  %i.bd = load ptr, ptr %1, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.bd, i64 %i.ar, i1 false)
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.ar
  br label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit

_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit: ; preds = %.critedge.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.az, %.critedge.i.i ], [ %i.be, %bb.e ] ; 3 uses
  %i.bf = load ptr, ptr %4, align 8, !tbaa !88
  %.not.i.i18 = icmp ult ptr %.0.i.i, %i.bf
  br i1 %.not.i.i18, label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE11ENS0_5ValueEE5WriteEiRKS5_PhPNS0_2io19EpsCopyOutputStreamE.exit, label %bb.f, !prof !89

bb.f:                                             ; preds = %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit
  %i.bg = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %.0.i.i)
  br label %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE11ENS0_5ValueEE5WriteEiRKS5_PhPNS0_2io19EpsCopyOutputStreamE.exit

_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE11ENS0_5ValueEE5WriteEiRKS5_PhPNS0_2io19EpsCopyOutputStreamE.exit: ; preds = %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit, %bb.f
  %.0.i.i20 = phi ptr [ %i.bg, %bb.f ], [ %.0.i.i, %_ZN6google8protobuf8internal14MapTypeHandlerILNS1_14WireFormatLite9FieldTypeE9ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5WriteEiRKSA_PhPNS0_2io19EpsCopyOutputStreamE.exit ]
  %i.bh = load atomic i32, ptr %i.v monotonic, align 8
  %i.bi = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.bh, ptr noundef %.0.i.i20, ptr noundef nonnull %4)
  ret ptr %i.bi
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf6Struct12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3
  %i.n = and i32 %i.m, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !48
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46, !noalias !93 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.t, 0
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32, !noalias !93
  %i.w = zext i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74, !noalias !93 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %.not.i.i, label %.loopexit, label %bb.b, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.b
  %i.aa = trunc nuw i64 %indvars.iv.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph52, %.lr.ph
  %.025.ph = phi i64 [ %i.r, %.lr.ph ], [ %i.bj, %.lr.ph52 ]
  %.sroa.11.024.ph = phi i32 [ %i.aa, %.lr.ph ], [ %.0.i.i51, %.lr.ph52 ]
  %.sroa.015.023.ph = phi ptr [ %i.y, %.lr.ph ], [ %i.br, %.lr.ph52 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %.025 = phi i64 [ %i.bj, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.025.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ]
  %.sroa.015.023 = phi ptr [ %i.bk, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit ], [ %.sroa.015.023.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = or i32 %i.af, 1
  %i.ah = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ag, i1 true)
  %i.ai = xor i32 %i.ah, 31
  %i.aj = mul nuw nsw i32 %i.ai, 9
  %i.ak = add nuw nsw i32 %i.aj, 73
  %i.al = lshr i32 %i.ak, 6
  %i.am = add i32 %i.af, 2
  %i.an = add i32 %i.am, %i.al
  %i.ao = sext i32 %i.an to i64
  %i.ap = tail call noundef i64 @_ZNK6google8protobuf5Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac), !inline_history !98 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = or i32 %i.aq, 1
  %i.as = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ar, i1 true)
  %i.at = xor i32 %i.as, 31
  %i.au = mul nuw nsw i32 %i.at, 9
  %i.av = add nuw nsw i32 %i.au, 73
  %i.aw = lshr i32 %i.av, 6
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add i64 %i.ap, %i.ax
  %i.az = add i64 %i.ay, %i.ao                    ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = or i32 %i.ba, 1
  %i.bc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bb, i1 true)
  %i.bd = xor i32 %i.bc, 31
  %i.be = mul nuw nsw i32 %i.bd, 9
  %i.bf = add nuw nsw i32 %i.be, 73
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = add i64 %i.az, %.025
  %i.bj = add i64 %i.bi, %i.bh                    ; 4 uses
  %i.bk = load ptr, ptr %.sroa.015.023, align 8, !tbaa !78 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i14, label %bb.d, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.bl = load i32, ptr %i.s, align 4, !tbaa !46  ; 2 uses
  %i.bm = load ptr, ptr %i.ab, align 8
  %.0.i.i50 = add i32 %.sroa.11.024.ph, 1         ; 2 uses
  %i.bn = icmp ult i32 %.0.i.i50, %i.bl
  br i1 %i.bn, label %.lr.ph52, label %.loopexit

bb.e:                                             ; preds = %.lr.ph52
  %.0.i.i = add i32 %.0.i.i51, 1                  ; 2 uses
  %i.bo = icmp ult i32 %.0.i.i, %i.bl
  br i1 %i.bo, label %.lr.ph52, label %.loopexit, !llvm.loop !80

.lr.ph52:                                         ; preds = %bb.d, %bb.e
  %.0.i.i51 = phi i32 [ %.0.i.i, %bb.e ], [ %.0.i.i50, %bb.d ] ; 3 uses
  %i.bp = zext i32 %.0.i.i51 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.e, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ], [ %i.bj, %bb.d ], [ %i.r, %bb.a ], [ %i.bj, %bb.e ], [ %i.r, %bb.c ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bu = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.bt)
  ret i64 %i.bu
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Struct8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf6Struct9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf6Struct5ClearEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3    ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e), !inline_history !99
  %i.g = load atomic ptr, ptr %i.e acquire, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i.i, label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i

_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = inttoptr i64 %i.j to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store atomic i32 0, ptr %i.m monotonic, align 4
  br label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i

_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i: ; preds = %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f), !inline_history !99
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN6google8protobuf8internal12MapMergeFromIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEvRNS0_3MapIDpT_EERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o), !inline_history !100
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3
  %i.r = or i32 %i.q, %i.c
  store i32 %i.r, ptr %i.p, align 8, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf6Struct9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = add nsw i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.y), !inline_history !99
  br label %_ZN6google8protobuf6Struct9MergeFromERKS1_.exit

_ZN6google8protobuf6Struct9MergeFromERKS1_.exit:  ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Struct12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !101
  %i.d = load i64, ptr %i.b, align 8, !tbaa !101
  store i64 %i.d, ptr %i.a, align 8, !tbaa !101
  store i64 %i.c, ptr %i.b, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN6google8protobuf8internal12MapFieldBase12InternalSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  ret void
}

declare void @_ZN6google8protobuf8internal12MapFieldBase12InternalSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf6Struct11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf6Struct12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5Value26set_allocated_struct_valueEPNS0_6StructE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 7 uses
  %i.c = trunc i64 %i.b to i1                     ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  switch i32 %i.j, label %_ZN6google8protobuf5Value10clear_kindEv.exit [
    i32 6, label %bb.j
    i32 5, label %bb.e
    i32 3, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  br i1 %i.c, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %i.b, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.n = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  %i.o = icmp eq ptr %.0.i.i.i, null
  br i1 %i.o, label %bb.h, label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !39   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN6google8protobuf5Value10clear_kindEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6google8protobuf6StructD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 56) #27
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  br i1 %i.c, label %bb.k, label %bb.l, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i64 %i.b, -1
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf5Value18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !88
  %.not.i = icmp ult ptr %1, %i.c
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, !prof !89

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1) ; 3 uses
  %.pre49 = load i32, ptr %i.a, align 4, !tbaa !39
  %.pre49.fr = freeze i32 %.pre49
  %i.e = icmp eq i32 %.pre49.fr, 1
  br i1 %i.e, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread, label %.thread

.thread:                                          ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 8, ptr %i.d, align 1, !tbaa !39
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread: ; preds = %bb.b, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.0.i3355 = phi ptr [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %1, %bb.b ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %.in, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i3355, i64 1 ; 2 uses
  store i8 8, ptr %.0.i3355, align 1, !tbaa !39
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = icmp ugt i32 %i.g, 127
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !107

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ] ; 3 uses
  %i.k = trunc i64 %.07.i1.i.i to i8
  %i.l = or i8 %i.k, -128
  store i8 %i.l, ptr %.0.i2.i.i, align 1, !tbaa !39
  %i.m = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.o = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.o, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !91, !llvm.loop !108

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %.thread, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread
  %.07.i.lcssa.i.i = phi i64 [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ], [ 0, %.thread ], [ %i.m, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ], [ %i.f, %.thread ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %i.p = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.p, ptr %.0.i.lcssa.i.i, align 1, !tbaa !39
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %2, align 8, !tbaa !88
  %.not.i35 = icmp ult ptr %1, %i.r
  br i1 %.not.i35, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37.thread, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37, !prof !89

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37.thread: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8
  store i8 17, ptr %1, align 1, !tbaa !39
  br label %bb.d

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37: ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1) ; 2 uses
  %.pre48 = load i32, ptr %i.a, align 4, !tbaa !39
  %.pre48.fr = freeze i32 %.pre48
  %i.v = icmp eq i32 %.pre48.fr, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8
  store i8 17, ptr %i.u, align 1, !tbaa !39
  %spec.select = select i1 %i.v, i64 %i.x, i64 0
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37.thread
  %.0.i3661 = phi ptr [ %i.u, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37 ], [ %1, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37.thread ] ; 2 uses
  %i.y = phi i64 [ %spec.select, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37 ], [ %i.t, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i3661, i64 1
  store i64 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i3661, i64 9
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.ag, i32 noundef %i.aj, i32 noundef 1, i64 34, ptr nonnull @.str.6) ; 0 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !68 ; 6 uses
  %i.an = icmp sgt i64 %i.am, 127
  br i1 %i.an, label %.critedge.i, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %2, align 8, !tbaa !88
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.ap, %i.aq
  %i.ar = add i64 %reass.sub, 14
  %i.as = icmp slt i64 %i.ar, %i.am
  br i1 %i.as, label %.critedge.i, label %bb.g, !prof !42

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.at = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 3, i64 %i.am, ptr %i.al, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 26, ptr %1, align 1, !tbaa !39
  %i.av = trunc i64 %i.am to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.av, ptr %i.au, align 1, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.al, i64 %i.am, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.am
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.h:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %2, align 8, !tbaa !88
  %.not.i42 = icmp ult ptr %1, %i.ay
  br i1 %.not.i42, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44.thread, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44, !prof !89

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44.thread: ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !range !53
  br label %bb.i

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44: ; preds = %bb.h
  %i.bb = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !39
  %.pre.fr = freeze i32 %.pre
  %i.bc = icmp eq i32 %.pre.fr, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !range !53
  %spec.select69 = select i1 %i.bc, i8 %i.be, i8 0
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44.thread
  %.0.i4366 = phi ptr [ %i.bb, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44 ], [ %1, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44.thread ] ; 3 uses
  %i.bf = phi i8 [ %spec.select69, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44 ], [ %i.ba, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44.thread ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i4366, i64 1
  store i8 32, ptr %.0.i4366, align 1, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i4366, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !39
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.j:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4
  %i.bm = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i32 noundef %i.bl, ptr noundef %1, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.k:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = load atomic i32, ptr %i.bp monotonic, align 4
  %i.br = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i32 noundef %i.bq, ptr noundef %1, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.g, %.critedge.i, %bb.a, %bb.k, %bb.j, %bb.i, %bb.d, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %.0 = phi ptr [ %1, %bb.a ], [ %i.q, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %i.aa, %bb.d ], [ %i.br, %bb.k ], [ %i.bh, %bb.i ], [ %i.bm, %bb.j ], [ %i.at, %.critedge.i ], [ %i.ax, %bb.g ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10 ; 2 uses
  %i.bu = trunc i64 %i.bt to i1
  br i1 %i.bu, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.l, !prof !42

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.bv = add nsw i64 %i.bt, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef %.0, ptr noundef %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %i.by, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ]
  ret ptr %.1
}

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf5Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  switch i32 %i.b, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = or i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 73
  %i.k = lshr i64 %i.j, 6
  %i.l = add nuw nsw i64 %i.k, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68   ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = or i32 %i.t, 1
  %i.v = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.u, i1 true)
  %i.w = xor i32 %i.v, 31
  %i.x = mul nuw nsw i32 %i.w, 9
  %i.y = add nuw nsw i32 %i.x, 73
  %i.z = lshr i32 %i.y, 6
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = add i64 %i.s, 1
  %i.ac = add i64 %i.ab, %i.aa
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = tail call noundef i64 @_ZNK6google8protobuf6Struct12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ae), !inline_history !109 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = or i32 %i.ag, 1
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = mul nuw nsw i32 %i.aj, 9
  %i.al = add nuw nsw i32 %i.ak, 73
  %i.am = lshr i32 %i.al, 6
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add i64 %i.af, 1
  %i.ap = add i64 %i.ao, %i.an
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 6 uses
  %i.as = ptrtoint ptr %i.ar to i64               ; 5 uses
  %i.at = add i64 %i.as, 448
  %i.au = inttoptr i64 %i.at to ptr
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = add i64 %i.as, 512
  %i.aw = inttoptr i64 %i.av to ptr
  tail call void @llvm.prefetch.p0(ptr %i.aw, i32 0, i32 3, i32 1)
  %i.ax = add i64 %i.as, 576
  %i.ay = inttoptr i64 %i.ax to ptr
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = add i64 %i.as, 640
  %i.ba = inttoptr i64 %i.az to ptr
  tail call void @llvm.prefetch.p0(ptr %i.ba, i32 0, i32 3, i32 1)
  %i.bb = add i64 %i.as, 704
  %i.bc = inttoptr i64 %i.bb to ptr
  tail call void @llvm.prefetch.p0(ptr %i.bc, i32 0, i32 3, i32 1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = and i32 %i.be, 1
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %_ZNK6google8protobuf9ListValue12ByteSizeLongEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !110 ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !112
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = add i64 %i.bl, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = select i1 %i.bn, ptr %i.bj, ptr %i.bq   ; 2 uses
  %.idx.i = shl nsw i64 %i.bi, 3
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i
  %.not1618.i = icmp eq i32 %i.bh, 0
  br i1 %.not1618.i, label %_ZNK6google8protobuf9ListValue12ByteSizeLongEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi i64 [ %i.ce, %.lr.ph.i ], [ %i.bi, %bb.h ]
  %.sroa.013.019.i = phi ptr [ %i.cf, %.lr.ph.i ], [ %i.br, %bb.h ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !64
  %i.bu = tail call noundef i64 @_ZNK6google8protobuf5Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bt), !inline_history !113 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = or i32 %i.bv, 1
  %i.bx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = xor i32 %i.bx, 31
  %i.bz = mul nuw nsw i32 %i.by, 9
  %i.ca = add nuw nsw i32 %i.bz, 73
  %i.cb = lshr i32 %i.ca, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = add i64 %i.bu, %.020.i
  %i.ce = add i64 %i.cd, %i.cc                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.cf, %i.bs
  br i1 %.not16.i, label %_ZNK6google8protobuf9ListValue12ByteSizeLongEv.exit, label %.lr.ph.i

_ZNK6google8protobuf9ListValue12ByteSizeLongEv.exit: ; preds = %.lr.ph.i, %bb.g, %bb.h
  %.1.i = phi i64 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ce, %.lr.ph.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.ch = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 noundef %.1.i, ptr noundef nonnull %i.cg), !inline_history !114 ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = or i32 %i.ci, 1
  %i.ck = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cj, i1 true)
  %i.cl = xor i32 %i.ck, 31
  %i.cm = mul nuw nsw i32 %i.cl, 9
  %i.cn = add nuw nsw i32 %i.cm, 73
  %i.co = lshr i32 %i.cn, 6
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = add i64 %i.ch, 1
  %i.cr = add i64 %i.cq, %i.cp
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf9ListValue12ByteSizeLongEv.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ], [ 9, %bb.c ], [ %i.ac, %bb.d ], [ 2, %bb.e ], [ %i.ap, %bb.f ], [ %i.cr, %_ZNK6google8protobuf9ListValue12ByteSizeLongEv.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.0, ptr noundef nonnull %i.cs)
  ret i64 %i.ct
}

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5Value8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf5Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  tail call void @_ZN6google8protobuf5Value9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !115
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf5Value12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load double, ptr %i.d, align 8, !tbaa !39
  %i.f = load <2 x i64>, ptr %i.b, align 8, !tbaa !39
  store i64 %i.c, ptr %i.b, align 8, !tbaa !101
  store <2 x i64> %i.f, ptr %i.a, align 8, !tbaa !39
  store double %.sroa.0.0.copyload.i, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  store i32 %i.i, ptr %i.h, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf5Value11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf5Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf9ListValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9ListValueE, i64 16), ptr %0, align 8, !tbaa !21
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9ListValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9ListValueE, i64 16), ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc7, label %.noexc13

.noexc7:                                          ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %.noexc13

.noexc13:                                         ; preds = %.noexc7, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39
  store i32 %i.k, ptr %i.i, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !110
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf9ListValue5Impl_C2ENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS2_RKS1_.exit, label %bb.a

bb.a:                                             ; preds = %.noexc13
  %i.s = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_5ValueEEEPvPS1_PKv), !inline_history !116
  br label %_ZN6google8protobuf9ListValue5Impl_C2ENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS2_RKS1_.exit

_ZN6google8protobuf9ListValue5Impl_C2ENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS2_RKS1_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE8GetArenaEv.exit.i, %.noexc13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf9ListValueD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN6google8protobuf9ListValue10SharedDtorERNS0_11MessageLiteE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN6google8protobuf9ListValue10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN6google8protobuf9ListValue10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.c, %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf9ListValueD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf9ListValueD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9ListValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3    ; 2 uses
  %i.j = and i32 %i.i, 1
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !110
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_5ValueEEEPvPS1_PKv), !inline_history !117
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit: ; preds = %bb.e, %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3
  %i.r = or i32 %i.q, %i.i
  store i32 %i.r, ptr %i.p, align 8, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit
  %i.v = add nsw i64 %i.t, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf9ListValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf21ListValue_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf21ListValue_class_data_E, i64 8), align 8, !tbaa !23
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf21ListValue_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMtR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf9ListValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %.not = trunc i32 %i.b to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit: ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf9ListValue18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not20 = icmp eq i32 %i.e, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.019 = phi ptr [ %1, %.lr.ph ], [ %i.s, %bb.c ]
  %.01718 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = add i64 %i.h, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = sext i32 %.01718 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %.0.i.i.i.i = select i1 %i.j, ptr %i.f, ptr %i.o
  %i.p = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %i.r, ptr noundef %.019, ptr noundef %2) ; 2 uses
  %i.t = add nuw i32 %.01718, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !118

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %1, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !10   ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.d, !prof !42

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %.loopexit
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef %.1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %.loopexit
  %.2 = phi ptr [ %i.aa, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.1, %.loopexit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf9ListValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3
  %i.n = and i32 %i.m, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !110  ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = select i1 %i.v, ptr %i.r, ptr %i.y       ; 2 uses
  %.idx = shl nsw i64 %i.q, 3
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %.idx
  %.not1618 = icmp eq i32 %i.p, 0
  br i1 %.not1618, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.020 = phi i64 [ %i.am, %.lr.ph ], [ %i.q, %bb.a ]
  %.sroa.013.019 = phi ptr [ %i.an, %.lr.ph ], [ %i.z, %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.013.019, align 8, !tbaa !64
  %i.ac = tail call noundef i64 @_ZNK6google8protobuf5Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab), !inline_history !119 ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = or i32 %i.ad, 1
  %i.af = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %i.ag = xor i32 %i.af, 31
  %i.ah = mul nuw nsw i32 %i.ag, 9
  %i.ai = add nuw nsw i32 %i.ah, 73
  %i.aj = lshr i32 %i.ai, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = add i64 %i.ac, %.020
  %i.am = add i64 %i.al, %i.ak                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8 ; 2 uses
  %.not16 = icmp eq ptr %i.an, %i.aa
  br i1 %.not16, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ], [ 0, %bb.a ], [ %i.am, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ap = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.ao)
  ret i64 %i.ap
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9ListValue8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf9ListValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.c to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3    ; 2 uses
  %i.k = and i32 %i.j, 1
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %.0.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_5ValueEEEPvPS1_PKv), !inline_history !105
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i: ; preds = %bb.e, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !3
  %i.s = or i32 %i.r, %i.j
  store i32 %i.s, ptr %i.q, align 8, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !10   ; 2 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.y), !inline_history !106
  br label %_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit

_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf9ListValue12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !101
  %i.d = load i64, ptr %i.b, align 8, !tbaa !101
  store i64 %i.d, ptr %i.a, align 8, !tbaa !101
  store i64 %i.c, ptr %i.b, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !39, !alias.scope !131, !noalias !126
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !39, !alias.scope !126, !noalias !131
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !39, !alias.scope !126, !noalias !131
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !39, !alias.scope !131, !noalias !126
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !39, !alias.scope !131, !noalias !126
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !39, !alias.scope !126, !noalias !131
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !39, !alias.scope !126, !noalias !131
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !39, !alias.scope !131, !noalias !126
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf9ListValue11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf9ListValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread, !prof !42

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread: ; preds = %bb.a
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.d

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc1
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !136
  br label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.c, %.noexc1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf27Struct_FieldsEntry_DoNotUseD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread.i, !prof !42

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread.i: ; preds = %bb.a
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i.i, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev.exit

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i.i unwind label %bb.d, !inline_history !137
end_hunk_1
