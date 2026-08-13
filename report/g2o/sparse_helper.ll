inline.NumInlined: 356
inline.NumDeleted: 160
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3g2o11writeVectorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdi:_ZNSolsEPFRSt8ios_baseS0_E.exit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSolsEPFRSt8ios_baseS0_E.exit
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %_ZNSolsEPFRSt8ios_baseS0_E.exit ]
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %i.q

.lr.ph:                                           ; preds = %_ZNSolsEPFRSt8ios_baseS0_E.exit, %_ZNSolsEPFRSoS_E.exit
  %.015 = phi i32 [ %i.ak, %_ZNSolsEPFRSoS_E.exit ], [ 0, %_ZNSolsEPFRSt8ios_baseS0_E.exit ]
  %.0814 = phi ptr [ %i.r, %_ZNSolsEPFRSoS_E.exit ], [ %1, %_ZNSolsEPFRSt8ios_baseS0_E.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0814, i64 8
  %i.s = load double, ptr %.0814, align 8, !tbaa !27
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.s)
          to label %_ZNSolsEd.exit unwind label %.loopexit ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.a, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.a:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEd.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !37
  %.not.i1.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i1.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.z)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %bb.c
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !44

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc10, %bb.b
  %.0.i.i.i = phi i8 [ %i.ad, %bb.b ], [ %i.ah, %.noexc10 ]
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext %.0.i.i.i)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc12
  %i.ak = add nuw nsw i32 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.noexc10, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc12
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o14writeCCSMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPKiS9_PKdb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i1 noundef zeroext %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %3, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %.not166 = icmp eq i32 %i.c, 0
  br i1 %.not166, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.d, 4
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #15
          to label %_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.e ; 4 uses

_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE11_M_allocateEm.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.h, ptr %7, align 8, !tbaa !48
  store ptr %i.h, ptr %i.i, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !52
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.promoted88143 = phi ptr [ null, %bb.c ], [ %i.h, %_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 3 uses
  %.promoted141 = phi ptr [ null, %bb.c ], [ %i.j, %_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph107, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit

.lr.ph107:                                        ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %wide.trip.count = zext nneg i32 %2 to i64
  %.pre = load i32, ptr %3, align 4, !tbaa !47
  br label %bb.f

..loopexit_crit_edge:                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59
  store ptr %i.cj, ptr %i.l, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.f
  %.promoted96145 = phi ptr [ %i.cj, %..loopexit_crit_edge ], [ %.promoted96, %bb.f ] ; 5 uses
  %i.m = phi i32 [ %i.cm, %..loopexit_crit_edge ], [ %i.x, %bb.f ]
  %.lcssa89 = phi ptr [ %i.ck, %..loopexit_crit_edge ], [ %.promoted88, %bb.f ] ; 8 uses
  %.lcssa83 = phi ptr [ %i.cl, %..loopexit_crit_edge ], [ %.promoted, %bb.f ] ; 2 uses
  store ptr %.lcssa83, ptr %i.f, align 8
  store ptr %.lcssa89, ptr %7, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !53

._crit_edge:                                      ; preds = %.loopexit
  %.not.i.i = icmp eq ptr %.lcssa89, %.promoted96145
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = ptrtoint ptr %.promoted96145 to i64
  %i.o = ptrtoint ptr %.lcssa89 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_T1_(ptr %.lcssa89, ptr %.promoted96145, i64 noundef %i.t)
          to label %.noexc40 unwind label %bb.e

.noexc40:                                         ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_(ptr %.lcssa89, ptr %.promoted96145)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc40, %bb.d, %_ZNSt12_Vector_baseIN3g2o12TripletEntryESaIS1_EE11_M_allocateEm.exit.i, %bb.b, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %.pre146 = load ptr, ptr %7, align 8, !tbaa !48
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph107, %.loopexit
  %.promoted96 = phi ptr [ %.promoted88143, %.lr.ph107 ], [ %.promoted96145, %.loopexit ] ; 2 uses
  %.promoted88 = phi ptr [ %.promoted88143, %.lr.ph107 ], [ %.lcssa89, %.loopexit ] ; 2 uses
  %.promoted = phi ptr [ %.promoted141, %.lr.ph107 ], [ %.lcssa83, %.loopexit ] ; 2 uses
  %i.v = phi i32 [ %.pre, %.lr.ph107 ], [ %i.m, %.loopexit ] ; 2 uses
  %indvars.iv137 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next138, %.loopexit ] ; 7 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv137
  %8 = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.x = load i32, ptr %8, align 4, !tbaa !47     ; 2 uses
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.z = sext i32 %i.v to i64
  %i.aa = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.ab = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.ac = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.ad = trunc nuw nsw i64 %indvars.iv137 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59
  %indvars.iv = phi i64 [ %i.z, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59 ] ; 3 uses
  %i.ae = phi ptr [ %.promoted96, %.lr.ph ], [ %i.cj, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59 ] ; 8 uses
  %i.af = phi ptr [ %.promoted, %.lr.ph ], [ %i.cl, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59 ] ; 4 uses
  %i.ag = phi ptr [ %.promoted88, %.lr.ph ], [ %i.ck, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59 ] ; 8 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !47 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !47
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.aa, ptr %.sroa.670.0..sroa_idx, align 4, !tbaa !47
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.ak, ptr %.sroa.773.0..sroa_idx, align 8, !tbaa !27
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775792
  br i1 %i.ao, label %bb.j, label %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.af, ptr %i.f, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #14
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ap = ashr exact i64 %i.an, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #15
          to label %.noexc43 unwind label %.loopexit76 ; 5 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an ; 3 uses
  store i32 %i.ai, ptr %i.aw, align 8, !tbaa !47
  %.sroa.670.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.ab, ptr %.sroa.670.0..sroa_idx71, align 4, !tbaa !47
  %.sroa.773.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store double %i.ak, ptr %.sroa.773.0..sroa_idx74, align 8, !tbaa !27
  %.not10.i.i.i.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc43, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.av, %.noexc43 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc43 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !54, !alias.scope !55
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !59

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc43
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.av, %.noexc43 ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.an) #16
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ae, %bb.h ] ; 6 uses
  %i.ba = phi ptr [ %i.av, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ag, %bb.h ] ; 11 uses
  %i.bb = phi ptr [ %i.az, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.af, %bb.h ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn231 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 4 uses
  br i1 %6, label %bb.l, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59

bb.l:                                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.bd = load i32, ptr %i.ah, align 4, !tbaa !47 ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %.not = icmp eq i64 %indvars.iv137, %i.be
  br i1 %.not, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load double, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %.not.i44 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ac, ptr %i.bc, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 20
  store i32 %i.bd, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  store double %i.bf, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 32
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59

bb.o:                                             ; preds = %bb.m
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775792
  br i1 %i.bk, label %bb.p, label %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i45

bb.p:                                             ; preds = %bb.o
  store ptr %i.bb, ptr %i.f, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #14
          to label %.noexc57 unwind label %.loopexit.split-lp78

.noexc57:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i45: ; preds = %bb.o
  %i.bl = ashr exact i64 %i.bj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i46, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 576460752303423487)
  %i.bp = select i1 %i.bn, i64 576460752303423487, i64 %i.bo ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i47)
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #15
          to label %.noexc58 unwind label %.loopexit77 ; 6 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj ; 3 uses
  store i32 %i.ad, ptr %i.bs, align 8, !tbaa !47
  %.sroa.6.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %i.bd, ptr %.sroa.6.0..sroa_idx64, align 4, !tbaa !47
  %.sroa.7.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store double %i.bf, ptr %.sroa.7.0..sroa_idx66, align 8, !tbaa !27
  %.not10.i.i.i.i.i48 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not10.i.i.i.i.i48, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i53, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %.noexc58
  %i.bt = sub i64 %.0.lcssa.i.i.i.i.i.pn231, %i.bi ; 2 uses
  %i.bu = lshr i64 %i.bt, 4
  %i.bv = add nuw nsw i64 %i.bu, 1
  %xtraiter = and i64 %i.bv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i49.prol.loopexit, label %.lr.ph.i.i.i.i.i49.prol

.lr.ph.i.i.i.i.i49.prol:                          ; preds = %.lr.ph.i.i.i.i.i49.preheader, %.lr.ph.i.i.i.i.i49.prol
  %.012.i.i.i.i.i50.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i49.prol ], [ %i.br, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %.0911.i.i.i.i.i51.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i49.prol ], [ %i.ba, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i49.prol ], [ 0, %.lr.ph.i.i.i.i.i49.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i50.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i51.prol, i64 16, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i51.prol, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i49.prol.loopexit, label %.lr.ph.i.i.i.i.i49.prol, !llvm.loop !64

.lr.ph.i.i.i.i.i49.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i49.prol, %.lr.ph.i.i.i.i.i49.preheader
  %.lcssa210.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.bx, %.lr.ph.i.i.i.i.i49.prol ]
  %.012.i.i.i.i.i50.unr = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.bx, %.lr.ph.i.i.i.i.i49.prol ]
  %.0911.i.i.i.i.i51.unr = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i49.prol ]
  %i.by = icmp ult i64 %i.bt, 48
  br i1 %i.by, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i53, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.prol.loopexit, %.lr.ph.i.i.i.i.i49
  %.012.i.i.i.i.i50 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i49 ], [ %.012.i.i.i.i.i50.unr, %.lr.ph.i.i.i.i.i49.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i51 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i49 ], [ %.0911.i.i.i.i.i51.unr, %.lr.ph.i.i.i.i.i49.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i50, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i51, i64 16, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i51, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i51, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i51, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !54, !alias.scope !60
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i51, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50, i64 64 ; 2 uses
  %.not.i.i.i.i.i52.3 = icmp eq ptr %i.cd, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i52.3, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i53, label %.lr.ph.i.i.i.i.i49, !llvm.loop !59

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i53: ; preds = %.lr.ph.i.i.i.i.i49.prol.loopexit, %.lr.ph.i.i.i.i.i49, %.noexc58
  %.0.lcssa.i.i.i.i.i54 = phi ptr [ %i.br, %.noexc58 ], [ %.lcssa210.unr, %.lr.ph.i.i.i.i.i49.prol.loopexit ], [ %i.cg, %.lr.ph.i.i.i.i.i49 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i54, i64 16
  %.not.i23.i.i55 = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i55, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i53
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bj) #16
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56: ; preds = %bb.q, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i53
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59

.loopexit76:                                      ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.af, ptr %i.f, align 8
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit77:                                      ; preds = %_ZNKSt6vectorIN3g2o12TripletEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i45
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bb, ptr %i.f, align 8
  br label %bb.t

.loopexit.split-lp78:                             ; preds = %bb.p
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit59: ; preds = %bb.n, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %bb.l
  %i.cj = phi ptr [ %i.bg, %bb.n ], [ %i.ch, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56 ], [ %i.bc, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %i.ck = phi ptr [ %i.ba, %bb.n ], [ %i.br, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56 ], [ %i.ba, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.ba, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ %i.bb, %bb.n ], [ %i.ci, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56 ], [ %i.bb, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.bb, %bb.l ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cm = load i32, ptr %8, align 4, !tbaa !47    ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.g, label %..loopexit_crit_edge, !llvm.loop !66

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit: ; preds = %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE7reserveEm.exit, %._crit_edge, %.noexc40
  %i.cp = phi ptr [ %.lcssa89, %.noexc40 ], [ %.lcssa89, %._crit_edge ], [ %.promoted88143, %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.cq = invoke fastcc noundef zeroext i1 @_ZN3g2oL19writeTripletEntriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiRKSt6vectorINS_12TripletEntryESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.r unwind label %bb.e

bb.r:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS2_14TripletColSortEEvT_SA_T0_.exit
  %.not.i.i.i60 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #16
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret i1 %i.cq

bb.t:                                             ; preds = %.loopexit77, %.loopexit.split-lp78, %.loopexit76, %.loopexit.split-lp, %bb.e
  %i.cv = phi ptr [ %.pre146, %bb.e ], [ %i.ag, %.loopexit.split-lp ], [ %i.ag, %.loopexit76 ], [ %i.ba, %.loopexit77 ], [ %i.ba, %.loopexit.split-lp78 ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit76 ], [ %lpad.loopexit79, %.loopexit77 ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp78 ]
  %.not.i.i.i61 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit62, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !52
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #16
  br label %_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit62

_ZNSt6vectorIN3g2o12TripletEntryESaIS1_EED2Ev.exit62: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN3g2oL19writeTripletEntriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiRKSt6vectorINS_12TripletEntryESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %5 = alloca %"class.std::basic_ofstream", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 46, i64 noundef -1) #13, !noalias !67 ; 2 uses
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73, !noalias !74
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !75, !alias.scope !74
  %i.g = load ptr, ptr %0, align 8, !tbaa !8, !noalias !74 ; 2 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.e) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !74
  store i64 %spec.select.i.i.i.i, ptr %i.b, align 8, !tbaa !76, !noalias !74
  %i.h = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.h, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !8, !alias.scope !74
  %i.j = load i64, ptr %i.b, align 8, !tbaa !76, !noalias !74
  store i64 %i.j, ptr %i.f, align 8, !tbaa !43, !alias.scope !74
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc10.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.g, align 1, !tbaa !43
  store i8 %i.l, ptr %i.k, align 1, !tbaa !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.g, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !76, !noalias !74 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !73, !alias.scope !74
  %i.o = load ptr, ptr %4, align 8, !tbaa !8, !alias.scope !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !74
  br label %"_ZZN3g2oL19writeTripletEntriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiRKSt6vectorINS_12TripletEntryESaIS9_EEENK3$_0clB5cxx11Ev.exit"

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !75, !alias.scope !67
  %i.r = load ptr, ptr %0, align 8, !tbaa !8, !noalias !67 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !73, !noalias !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !67
  store i64 %i.t, ptr %i.a, align 8, !tbaa !76, !noalias !67
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !8, !alias.scope !67
  %i.w = load i64, ptr %i.a, align 8, !tbaa !76, !noalias !67
  store i64 %i.w, ptr %i.q, align 8, !tbaa !43, !alias.scope !67
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.e
  %i.x = phi ptr [ %i.v, %.noexc.i.i ], [ %i.q, %bb.e ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !43
  store i8 %i.y, ptr %i.x, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !76, !noalias !67 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !73, !alias.scope !67
  %i.ab = load ptr, ptr %4, align 8, !tbaa !8, !alias.scope !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !67
  br label %"_ZZN3g2oL19writeTripletEntriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiRKSt6vectorINS_12TripletEntryESaIS9_EEENK3$_0clB5cxx11Ev.exit"

"_ZZN3g2oL19writeTripletEntriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiRKSt6vectorINS_12TripletEntryESaIS9_EEENK3$_0clB5cxx11Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %i.ad, i32 noundef 16)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %"_ZZN3g2oL19writeTripletEntriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiRKSt6vectorINS_12TripletEntryESaIS9_EEENK3$_0clB5cxx11Ev.exit"
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.af = load ptr, ptr %4, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !73
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.y ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !37
  %.not.i1.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 67
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ao)
          to label %.noexc31 unwind label %bb.y

.noexc31:                                         ; preds = %bb.j
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.ao, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.y, !inline_history !44

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc31, %bb.i
  %.0.i.i.i = phi i8 [ %i.as, %bb.i ], [ %i.aw, %.noexc31 ]
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext %.0.i.i.i)
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_:bb.a
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.g
  %i.s = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !79
  %i.t = icmp slt i32 %.sroa.03.0.copyload.i.pre.i, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !54
  br label %bb.f, !llvm.loop !98

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i, %bb.g
  store i32 %.sroa.03.0.copyload.i.pre.i, ptr %.sroa.09.0.i.i, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 4
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx5.i.i, align 4, !tbaa !47
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !99

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.u, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i17
  %.sroa.0.07.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i17 ], [ %i.u, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit ] ; 5 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8, !tbaa !47 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !47 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.6.0.copyload.i.i14 = load double, ptr %.sroa.6.0..sroa_idx.i.i13, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i22, %.lr.ph.i12
  %.sroa.09.0.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i16, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i22 ] ; 6 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -16 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = icmp slt i32 %.sroa.5.0.copyload.i.i, %i.w
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp eq i32 %.sroa.5.0.copyload.i.i, %i.w
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i17

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i21: ; preds = %bb.j
  %i.z = load i32, ptr %.sroa.0.0.i.i16, align 8, !tbaa !79
  %i.aa = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.z
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i17

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i22: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i21, %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.0.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i16, i64 16, i1 false), !tbaa.struct !54
  br label %bb.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i17: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i21, %bb.j
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.09.0.i.i15, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx5.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i15, i64 4
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i18, align 4, !tbaa !47
  %.sroa.6.0..sroa_idx7.i.i19 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i15, i64 8
  store double %.sroa.6.0.copyload.i.i14, ptr %.sroa.6.0..sroa_idx7.i.i19, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ab, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, label %.lr.ph.i12, !llvm.loop !100

bb.k:                                             ; preds = %bb.a
  %i.ac = icmp eq ptr %0, %1
  br i1 %i.ac, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.k
  %.sroa.0.017.i24 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not18.i25 = icmp eq ptr %.sroa.0.017.i24, %1
  br i1 %.not18.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i26
  %.sroa.0.020.i27 = phi ptr [ %.sroa.0.017.i24, %.lr.ph.i26 ], [ %.sroa.0.0.i38, %bb.s ] ; 6 uses
  %.pn19.i28 = phi ptr [ %0, %.lr.ph.i26 ], [ %.sroa.0.020.i27, %bb.s ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn19.i28, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !81 ; 5 uses
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !81 ; 2 uses
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i43, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i32 %i.af, %i.ag
  %.sroa.03.0.copyload.i.pre.i29 = load i32, ptr %.sroa.0.020.i27, align 8, !tbaa !47 ; 3 uses
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i42, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i42: ; preds = %bb.m
  %i.aj = load i32, ptr %0, align 8, !tbaa !79
  %i.ak = icmp slt i32 %.sroa.03.0.copyload.i.pre.i29, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i43, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i43: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i42, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.020.i27, i64 16, i1 false), !tbaa.struct !54
  %i.al = ptrtoint ptr %.sroa.0.020.i27 to i64
  %i.am = sub i64 %i.al, %i.b                     ; 3 uses
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.n, label %bb.o, !prof !97

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i43
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn19.i28, i64 32
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i43
  %i.as = icmp eq i64 %i.am, 16
  br i1 %i.as, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i42, %bb.m
  %.sroa.6.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn19.i28, i64 24
  %.sroa.6.0.copyload.i.i32 = load double, ptr %.sroa.6.0..sroa_idx.i.i31, align 8, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30
  %.sroa.09.0.i.i33 = phi ptr [ %.sroa.0.020.i27, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30 ], [ %.sroa.0.0.i.i34, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41 ] ; 6 uses
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i33, i64 -16 ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.09.0.i.i33, i64 -12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !81 ; 2 uses
  %i.aw = icmp slt i32 %i.af, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = icmp eq i32 %i.af, %i.av
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40: ; preds = %bb.r
  %i.ay = load i32, ptr %.sroa.0.0.i.i34, align 8, !tbaa !79
  %i.az = icmp slt i32 %.sroa.03.0.copyload.i.pre.i29, %i.ay
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40, %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.0.i.i33, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i34, i64 16, i1 false), !tbaa.struct !54
  br label %bb.q, !llvm.loop !98

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40, %bb.r
  store i32 %.sroa.03.0.copyload.i.pre.i29, ptr %.sroa.09.0.i.i33, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx5.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i33, i64 4
  store i32 %i.af, ptr %.sroa.5.0..sroa_idx5.i.i36, align 4, !tbaa !47
  %.sroa.6.0..sroa_idx7.i.i37 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i33, i64 8
  store double %.sroa.6.0.copyload.i.i32, ptr %.sroa.6.0..sroa_idx7.i.i37, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44
  %.sroa.0.0.i38 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i27, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %.sroa.0.0.i38, %1
  br i1 %.not.i39, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, label %bb.l, !llvm.loop !99

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i17, %.preheader.i23, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.h, 2
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i
  %.040.i.i = phi i64 [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.040.i.i, 1                     ; 3 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %0, i64 %i.l ; 4 uses
  %3 = getelementptr i8, ptr %i.n, i64 32
  %i.o = or disjoint i64 %i.l, 1
  %4 = getelementptr i8, ptr %i.n, i64 16
  %i.p = getelementptr i8, ptr %i.n, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81   ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !81   ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq i32 %i.q, %i.s
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.v = load i32, ptr %3, align 8, !tbaa !79
  %i.w = load i32, ptr %4, align 8, !tbaa !79
  %i.x = icmp slt i32 %i.v, %i.w
  %cond.fr.i.i = freeze i1 %i.x
  br i1 %cond.fr.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %bb.b
  %i.y = phi i64 [ %i.o, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i ], [ %i.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ], [ %i.m, %bb.b ] ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.040.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !54
  %i.ab = icmp slt i64 %i.y, %i.j
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !101

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i ] ; 5 uses
  %i.ac = and i64 %i.g, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.h, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = shl nsw i64 %.0.lcssa.i.i, 1            ; 2 uses
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = getelementptr [16 x i8], ptr %0, i64 %i.ah
  %5 = getelementptr i8, ptr %i.aj, i64 16
  %i.ak = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ai, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.012.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.03.0.copyload.i to i32
  %.sroa.012.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.03.0.copyload.i, 32
  %.sroa.012.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.012.sroa.3.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.al = icmp sgt i64 %.1.i.i, 0
  br i1 %i.al, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i
  %.020.i.i.i = phi i64 [ %.0921.i.i89.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.e ] ; 4 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i89.i = lshr i64 %.0921.in.i.i.i, 1    ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i89.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !81 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %.sroa.012.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = icmp eq i32 %i.ao, %.sroa.012.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i: ; preds = %bb.f
  %i.ar = load i32, ptr %i.am, align 8, !tbaa !79
  %i.as = icmp slt i32 %i.ar, %.sroa.012.sroa.0.0.extract.trunc.i.i.i
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !54
  %.not.i = icmp eq i64 %.0921.i.i89.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !102

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.020.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i ], [ %.020.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i, ptr %i.au, align 8
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !27
  %i.av = icmp sgt i64 %i.g, 16
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1
  %3 = getelementptr i8, ptr %0, i64 %i.c
  %4 = getelementptr i8, ptr %3, i64 -16
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.at, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.o, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  %i.p = icmp slt i64 %.010, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i
  %.040.i = phi i64 [ %i.ad, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i ], [ %.010, %bb.c ] ; 2 uses
  %i.q = shl i64 %.040.i, 1                       ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %0, i64 %i.q ; 4 uses
  %5 = getelementptr i8, ptr %i.s, i64 32
  %i.t = or disjoint i64 %i.q, 1
  %6 = getelementptr i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %i.s, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !81   ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !81   ; 2 uses
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = icmp eq i32 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.aa = load i32, ptr %5, align 8, !tbaa !79
  %i.ab = load i32, ptr %6, align 8, !tbaa !79
  %i.ac = icmp slt i32 %i.aa, %i.ab
  %cond.fr.i = freeze i1 %i.ac
  br i1 %cond.fr.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %.lr.ph.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %bb.d
  %i.ad = phi i64 [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %i.r, %bb.d ] ; 4 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %.040.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !54
  %i.ag = icmp slt i64 %i.ad, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !101

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %i.ad, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.012.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.03.0.copyload to i32
  %.sroa.012.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload, 32
  %.sroa.012.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.012.sroa.3.0.extract.shift.i.i to i32 ; 2 uses
  %i.ai = icmp sgt i64 %.1.i, %.010
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i
  %.020.i.i = phi i64 [ %.0921.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i ], [ %.1.i, %bb.f ] ; 4 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0921.i.i ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81 ; 2 uses
  %i.am = icmp slt i32 %i.al, %.sroa.012.sroa.3.0.extract.trunc.i.i
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.an = icmp eq i32 %i.al, %.sroa.012.sroa.3.0.extract.trunc.i.i
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !79
  %i.ap = icmp slt i32 %i.ao, %.sroa.012.sroa.0.0.extract.trunc.i.i
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, %.lr.ph.i.i
  %i.aq = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !54
  %i.ar = icmp sgt i64 %.0921.i.i, %.010
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit, !llvm.loop !102

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.020.i.i, %bb.g ], [ %.0921.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i ], [ %.020.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i ]
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload, ptr %i.as, align 8
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store double %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !27
  %.not = icmp eq i64 %.010, 0
  %i.at = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !104

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %5 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %6 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %7 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %8 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %9 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !81   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81   ; 6 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, %i.d
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !79
  %i.h = load i32, ptr %2, align 8, !tbaa !79
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !81   ; 4 uses
  %i.l = icmp slt i32 %i.d, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread
  %i.m = icmp eq i32 %i.d, %i.k
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26: ; preds = %bb.c
  %i.n = load i32, ptr %2, align 8, !tbaa !79
  %i.o = load i32, ptr %3, align 8, !tbaa !79
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26
  %i.q = icmp slt i32 %i.b, %i.k
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31
  %i.r = icmp eq i32 %i.b, %i.k
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread32

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27: ; preds = %bb.d
  %i.s = load i32, ptr %1, align 8, !tbaa !79
  %i.t = load i32, ptr %3, align 8, !tbaa !79
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread32

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread32: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 4 uses
  %i.x = icmp slt i32 %i.b, %i.w
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30
  %i.y = icmp eq i32 %i.b, %i.w
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28: ; preds = %bb.e
  %i.z = load i32, ptr %1, align 8, !tbaa !79
  %i.aa = load i32, ptr %3, align 8, !tbaa !79
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread33: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28
  %i.ac = icmp slt i32 %i.d, %i.w
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread33
  %i.ad = icmp eq i32 %i.d, %i.w
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread34

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29: ; preds = %bb.f
  %i.ae = load i32, ptr %2, align 8, !tbaa !79
  %i.af = load i32, ptr %3, align 8, !tbaa !79
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread34

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread34: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread34, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit29.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread32, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_1
