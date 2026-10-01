Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/GenMesh?download=true
inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  %i.axl = ashr exact i64 %i.axj, 2               ; 3 uses
  %.sroa.speculated.i.i.i618 = call i64 @llvm.umax.i64(i64 %i.axl, i64 1)
  %i.axm = add nsw i64 %.sroa.speculated.i.i.i618, %i.axl ; 2 uses
  %i.axn = icmp ult i64 %i.axm, %i.axl
  %i.axo = call i64 @llvm.umin.i64(i64 %i.axm, i64 2305843009213693951)
  %i.axp = select i1 %i.axn, i64 2305843009213693951, i64 %i.axo ; 3 uses
  %.not.i.i.i619 = icmp ne i64 %i.axp, 0
  call void @llvm.assume(i1 %.not.i.i.i619)
  %i.axq = shl nuw nsw i64 %i.axp, 2
  %i.axr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.axq) #19
          to label %.noexc624 unwind label %bb.ix ; 4 uses

.noexc624:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617
  %i.axs = getelementptr inbounds i8, ptr %i.axr, i64 %i.axj ; 2 uses
  store i32 %i.avf, ptr %i.axs, align 4, !tbaa !9
  %i.axt = icmp sgt i64 %i.axj, 0
  br i1 %i.axt, label %bb.io, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620

bb.io:                                            ; preds = %.noexc624
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.axr, ptr align 4 %i.axg, i64 %i.axj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620: ; preds = %bb.io, %.noexc624
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axs, i64 4
  %.not.i17.i.i621 = icmp eq ptr %i.axg, null
  br i1 %.not.i17.i.i621, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622, label %bb.ip

bb.ip:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620
  %i.axv = load ptr, ptr %i.axd, align 8, !tbaa !41
  %i.axw = ptrtoint ptr %i.axv to i64
  %i.axx = sub i64 %i.axw, %i.axi
  call void @_ZdlPvm(ptr noundef nonnull %i.axg, i64 noundef %i.axx) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622: ; preds = %bb.ip, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620
  store ptr %i.axr, ptr %8, align 8, !tbaa !42
  store ptr %i.axu, ptr %i.axb, align 8, !tbaa !43
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %i.axp
  store ptr %i.axy, ptr %i.axd, align 8, !tbaa !41
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625

_ZNSt6vectorIiSaIiEE9push_backERKi.exit625:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622, %bb.il
  %i.axz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !43 ; 4 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !41
  %.not.i.i626 = icmp eq ptr %i.aya, %i.ayc
  br i1 %.not.i.i626, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625
  store i32 2, ptr %i.aya, align 4, !tbaa !9
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.aya, i64 4
  store ptr %i.ayd, ptr %i.axz, align 8, !tbaa !43
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635

bb.ir:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625
  %i.aye = load ptr, ptr %9, align 8, !tbaa !42   ; 4 uses
  %i.ayf = ptrtoint ptr %i.aya to i64
  %i.ayg = ptrtoint ptr %i.aye to i64             ; 2 uses
  %i.ayh = sub i64 %i.ayf, %i.ayg                 ; 5 uses
  %i.ayi = icmp eq i64 %i.ayh, 9223372036854775804
  br i1 %i.ayi, label %bb.is, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc633 unwind label %bb.iy

.noexc633:                                        ; preds = %bb.is
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627: ; preds = %bb.ir
  %i.ayj = ashr exact i64 %i.ayh, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i628 = call i64 @llvm.umax.i64(i64 %i.ayj, i64 1)
  %i.ayk = add nsw i64 %.sroa.speculated.i.i.i.i628, %i.ayj ; 2 uses
  %i.ayl = icmp ult i64 %i.ayk, %i.ayj
  %i.aym = call i64 @llvm.umin.i64(i64 %i.ayk, i64 2305843009213693951)
  %i.ayn = select i1 %i.ayl, i64 2305843009213693951, i64 %i.aym ; 3 uses
  %.not.i.i.i.i629 = icmp ne i64 %i.ayn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i629)
  %i.ayo = shl nuw nsw i64 %i.ayn, 2
  %i.ayp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ayo) #19
          to label %.noexc634 unwind label %bb.iy ; 4 uses

.noexc634:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627
  %i.ayq = getelementptr inbounds i8, ptr %i.ayp, i64 %i.ayh ; 2 uses
  store i32 2, ptr %i.ayq, align 4, !tbaa !9
  %i.ayr = icmp sgt i64 %i.ayh, 0
  br i1 %i.ayr, label %bb.it, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630

bb.it:                                            ; preds = %.noexc634
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ayp, ptr align 4 %i.aye, i64 %i.ayh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630: ; preds = %bb.it, %.noexc634
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayq, i64 4
  %.not.i17.i.i.i631 = icmp eq ptr %i.aye, null
  br i1 %.not.i17.i.i.i631, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630
  %i.ayt = load ptr, ptr %i.ayb, align 8, !tbaa !41
  %i.ayu = ptrtoint ptr %i.ayt to i64
  %i.ayv = sub i64 %i.ayu, %i.ayg
  call void @_ZdlPvm(ptr noundef nonnull %i.aye, i64 noundef %i.ayv) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632: ; preds = %bb.iu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630
  store ptr %i.ayp, ptr %9, align 8, !tbaa !42
  store ptr %i.ays, ptr %i.axz, align 8, !tbaa !43
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %i.ayn
  store ptr %i.ayw, ptr %i.ayb, align 8, !tbaa !41
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635

bb.iv:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i597, %bb.id
  %i.ayx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.iw:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i607, %bb.ii
  %i.ayy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.ix:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617, %bb.in
  %i.ayz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.iy:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627, %bb.is
  %i.aza = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

_ZNSt6vectorIiSaIiEE9push_backEOi.exit635:        ; preds = %bb.iq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit595, %bb.hz, %._crit_edge910
  %.not.i.i.i636 = icmp eq ptr %.sroa.0802.01262, null
  br i1 %.not.i.i.i636, label %_ZNSt6vectorIiSaIiEED2Ev.exit637, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635
  %i.azb = ptrtoint ptr %.sroa.15.01258 to i64
  %i.azc = ptrtoint ptr %.sroa.0802.01262 to i64
  %i.azd = sub i64 %i.azb, %i.azc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0802.01262, i64 noundef %i.azd) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit637

_ZNSt6vectorIiSaIiEED2Ev.exit637:                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635, %bb.iz
  ret void

.loopexit873:                                     ; preds = %.loopexit828.loopexit, %.loopexit843.loopexit, %.loopexit843.loopexit.split-lp, %.loopexit873.loopexit, %.loopexit873.loopexit.split-lp, %.loopexit823, %.loopexit.split-lp824, %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp829, %.loopexit.split-lp844, %.loopexit868, %.loopexit.split-lp869, %.loopexit863, %.loopexit.split-lp864, %.loopexit.split-lp874, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.hx, %bb.hy, %bb.gr, %bb.gs, %bb.fl, %bb.fm, %bb.ef, %bb.eg, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.av, %_ZNSt6vectorIiSaIiEED2Ev.exit348, %bb.an
  %.pn269.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.an ], [ %lpad.loopexit.split-lp846, %.loopexit.split-lp844 ], [ %i.vp, %bb.cx ], [ %lpad.loopexit.split-lp876, %.loopexit.split-lp874 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.aza, %bb.iy ], [ %lpad.loopexit.split-lp831, %.loopexit.split-lp829 ], [ %i.lp, %bb.av ], [ %lpad.loopexit.split-lp994, %.loopexit843.loopexit.split-lp ], [ %lpad.loopexit999, %.loopexit ], [ %lpad.loopexit, %.loopexit823 ], [ %lpad.loopexit957, %.loopexit873.loopexit ], [ %i.auw, %bb.hy ], [ %.pn256, %_ZNSt6vectorIiSaIiEED2Ev.exit348 ], [ %i.vs, %bb.da ], [ %i.vr, %bb.cz ], [ %i.vq, %bb.cy ], [ %i.abt, %bb.ef ], [ %i.abu, %bb.eg ], [ %lpad.loopexit993, %.loopexit843.loopexit ], [ %lpad.loopexit.split-lp866, %.loopexit.split-lp864 ], [ %i.ahw, %bb.fl ], [ %i.ahx, %bb.fm ], [ %i.ayz, %bb.ix ], [ %i.ayy, %bb.iw ], [ %i.aom, %bb.gr ], [ %i.aon, %bb.gs ], [ %lpad.loopexit.split-lp871, %.loopexit.split-lp869 ], [ %i.ayx, %bb.iv ], [ %i.auv, %bb.hx ], [ %lpad.loopexit1006, %.loopexit828.loopexit ], [ %lpad.loopexit.split-lp826, %.loopexit.split-lp824 ], [ %lpad.loopexit950, %.loopexit863 ], [ %lpad.loopexit953, %.loopexit868 ], [ %lpad.loopexit.split-lp958, %.loopexit873.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i638 = icmp eq ptr %.sroa.0802.01262, null
  br i1 %.not.i.i.i638, label %_ZNSt6vectorIiSaIiEED2Ev.exit639, label %.thread814

.thread814:                                       ; preds = %.loopexit828.loopexit.split-lp, %.loopexit889, %.loopexit.split-lp890, %bb.ai, %bb.aa, %bb.u, %bb.ah, %.loopexit858.loopexit, %.loopexit858.loopexit.split-lp, %.loopexit838, %.loopexit.split-lp839, %.loopexit833, %.loopexit.split-lp834, %.loopexit853, %.loopexit.split-lp854, %.loopexit848, %.loopexit.split-lp849, %.loopexit.split-lp859, %.loopexit873
  %.sroa.0802.01259 = phi ptr [ %.sroa.0802.01262, %.loopexit873 ], [ %.sroa.0802.01262, %.loopexit.split-lp834 ], [ %.sroa.0802.01262, %.loopexit.split-lp849 ], [ %.sroa.0802.01262, %.loopexit.split-lp859 ], [ %.sroa.0802.01262, %.loopexit.split-lp854 ], [ %.sroa.0802.01262, %.loopexit.split-lp839 ], [ %.sroa.0802.01262, %.loopexit848 ], [ %.sroa.0802.01262, %.loopexit853 ], [ %.sroa.0802.01262, %.loopexit833 ], [ %.sroa.0802.01262, %.loopexit838 ], [ %.sroa.0802.01262, %.loopexit858.loopexit.split-lp ], [ %.sroa.0802.01262, %.loopexit858.loopexit ], [ %.sroa.0802.01262, %.loopexit828.loopexit.split-lp ], [ %i.bo, %.loopexit889 ], [ %i.bo, %.loopexit.split-lp890 ], [ %i.bo, %bb.ai ], [ %i.bo, %bb.aa ], [ %i.bo, %bb.u ], [ %i.bo, %bb.ah ] ; 2 uses
  %.sroa.15.01255 = phi ptr [ %.sroa.15.01258, %.loopexit873 ], [ %.sroa.15.01258, %.loopexit.split-lp834 ], [ %.sroa.15.01258, %.loopexit.split-lp849 ], [ %.sroa.15.01258, %.loopexit.split-lp859 ], [ %.sroa.15.01258, %.loopexit.split-lp854 ], [ %.sroa.15.01258, %.loopexit.split-lp839 ], [ %.sroa.15.01258, %.loopexit848 ], [ %.sroa.15.01258, %.loopexit853 ], [ %.sroa.15.01258, %.loopexit833 ], [ %.sroa.15.01258, %.loopexit838 ], [ %.sroa.15.01258, %.loopexit858.loopexit.split-lp ], [ %.sroa.15.01258, %.loopexit858.loopexit ], [ %.sroa.15.01258, %.loopexit828.loopexit.split-lp ], [ %i.bp, %.loopexit889 ], [ %i.bp, %.loopexit.split-lp890 ], [ %i.bp, %bb.ai ], [ %i.bp, %bb.aa ], [ %i.bp, %bb.u ], [ %i.bp, %bb.ah ]
  %.pn269.pn.pn817 = phi { ptr, i32 } [ %.pn269.pn.pn, %.loopexit873 ], [ %lpad.loopexit.split-lp836, %.loopexit.split-lp834 ], [ %lpad.loopexit.split-lp851, %.loopexit.split-lp849 ], [ %lpad.loopexit.split-lp861, %.loopexit.split-lp859 ], [ %lpad.loopexit.split-lp856, %.loopexit.split-lp854 ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp839 ], [ %lpad.loopexit967, %.loopexit848 ], [ %lpad.loopexit971, %.loopexit853 ], [ %lpad.loopexit985, %.loopexit833 ], [ %lpad.loopexit989, %.loopexit838 ], [ %lpad.loopexit.split-lp976, %.loopexit858.loopexit.split-lp ], [ %lpad.loopexit975, %.loopexit858.loopexit ], [ %lpad.loopexit.split-lp1007, %.loopexit828.loopexit.split-lp ], [ %lpad.loopexit891, %.loopexit889 ], [ %lpad.loopexit.split-lp892, %.loopexit.split-lp890 ], [ %i.hk, %bb.ai ], [ %i.gy, %bb.aa ], [ %i.gq, %bb.u ], [ %i.hj, %bb.ah ]
  %i.aze = ptrtoint ptr %.sroa.15.01255 to i64
  %i.azf = ptrtoint ptr %.sroa.0802.01259 to i64
  %i.azg = sub i64 %i.aze, %i.azf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0802.01259, i64 noundef %i.azg) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit639

_ZNSt6vectorIiSaIiEED2Ev.exit639:                 ; preds = %.thread814, %.loopexit873
  %.pn269.pn.pn.pn = phi { ptr, i32 } [ %.pn269.pn.pn817, %.thread814 ], [ %.pn269.pn.pn, %.loopexit873 ]
  resume { ptr, i32 } %.pn269.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 13 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x double>, ptr %2, align 8, !tbaa !19
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !19
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -16
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 368
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %3 = and i64 %i.t, -16                          ; 2 uses
  %4 = or disjoint i64 %3, 8                      ; 2 uses
  %5 = getelementptr i8, ptr %i.p, i64 %4
  %6 = getelementptr i8, ptr %i.c, i64 %4
  %7 = getelementptr i8, ptr %i.p, i64 8
  %8 = add i64 %3, 16                             ; 2 uses
  %9 = getelementptr i8, ptr %i.p, i64 %8
  %10 = getelementptr i8, ptr %i.c, i64 8
  %11 = getelementptr i8, ptr %i.c, i64 %8
  %bound0 = icmp ult ptr %i.p, %6
  %bound1 = icmp ult ptr %i.c, %5
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %7, %11
  %bound158 = icmp ult ptr %10, %9
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 2305843009213693950      ; 3 uses
  %i.w = shl i64 %n.vec, 4                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 4                        ; 3 uses
  %i.aa = or disjoint i64 %i.z, 16                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z
  %next.gep60 = getelementptr i8, ptr %i.p, i64 %i.aa
  %next.gep61 = getelementptr i8, ptr %i.c, i64 %i.z
  %next.gep62 = getelementptr i8, ptr %i.c, i64 %i.aa
  %wide.load = load <2 x double>, ptr %next.gep61, align 8
  %wide.load63 = load <2 x double>, ptr %next.gep62, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load63, ptr %next.gep60, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader104

.lr.ph.i.i.i.i.i.preheader104:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader104, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader104 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader104 ] ; 2 uses
  %i.ac = load <2 x double>, ptr %.01214.i.i.i.i.i, align 8, !tbaa !19
  store <2 x double> %i.ac, ptr %.015.i.i.i.i.i, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.af = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.ag = add i64 %i.d, -16
  %i.ah = sub i64 %i.ag, %i.m                     ; 3 uses
  %i.ai = lshr i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.ah, 432
  br i1 %min.iters.check79, label %.lr.ph.i.i.i.i.i29.preheader103, label %vector.memcheck80

vector.memcheck80:                                ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.ak = and i64 %i.ah, -16                      ; 4 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = getelementptr i8, ptr %1, i64 %i.ak
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %i.aq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.ak
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = getelementptr i8, ptr %1, i64 8
  %i.at = getelementptr i8, ptr %1, i64 %i.ak
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %bound081 = icmp ult ptr %i.af, %i.ao
  %bound182 = icmp ult ptr %1, %i.am
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %i.ap, %i.au
  %bound185 = icmp ult ptr %i.as, %i.ar
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %.lr.ph.i.i.i.i.i29.preheader103, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck80
  %n.vec89 = and i64 %i.aj, 2305843009213693950   ; 3 uses
  %i.av = shl i64 %n.vec89, 4                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.af, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.ay = shl i64 %index91, 4                     ; 3 uses
  %i.az = or disjoint i64 %i.ay, 16               ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.af, i64 %i.ay
  %next.gep93 = getelementptr i8, ptr %i.af, i64 %i.az
  %next.gep94 = getelementptr i8, ptr %1, i64 %i.ay
  %next.gep95 = getelementptr i8, ptr %1, i64 %i.az
  %wide.load96 = load <2 x double>, ptr %next.gep94, align 8
  %wide.load97 = load <2 x double>, ptr %next.gep95, align 8
  store <2 x double> %wide.load96, ptr %next.gep92, align 8
  store <2 x double> %wide.load97, ptr %next.gep93, align 8
  %index.next98 = add nuw i64 %index91, 2         ; 2 uses
  %i.ba = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.ba, label %middle.block99, label %vector.body90, !llvm.loop !111

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.aj, %n.vec89
  br i1 %cmp.n100, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader103

.lr.ph.i.i.i.i.i29.preheader103:                  ; preds = %vector.memcheck80, %.lr.ph.i.i.i.i.i29.preheader, %middle.block99
  %.015.i.i.i.i.i30.ph = phi ptr [ %i.af, %vector.memcheck80 ], [ %i.af, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.aw, %middle.block99 ]
  %.01214.i.i.i.i.i31.ph = phi ptr [ %1, %vector.memcheck80 ], [ %1, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.ax, %middle.block99 ]
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.preheader103, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i29 ], [ %.015.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i29.preheader103 ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i29 ], [ %.01214.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i29.preheader103 ] ; 2 uses
  %i.bb = load <2 x double>, ptr %.01214.i.i.i.i.i31, align 8, !tbaa !19
  store <2 x double> %i.bb, ptr %.015.i.i.i.i.i30, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !112

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %middle.block99, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit ], [ %i.aw, %middle.block99 ], [ %i.bd, %.lr.ph.i.i.i.i.i29 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !35
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !9
  store i32 %i.u, ptr %i.h, align 4, !tbaa !9
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !43
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !9
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !9
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !49

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4, !tbaa !9
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !49

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4, !tbaa !9
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !42
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !41
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !7, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!14, !11, i64 0}
!18 = !{!"double", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTS7GenMesh", !14, i64 0, !8, i64 32, !8, i64 36, !18, i64 40, !18, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84}
!21 = !{!20, !8, i64 32}
!22 = !{!20, !8, i64 36}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!20, !8, i64 56}
!25 = !{!20, !8, i64 60}
!26 = !{!20, !8, i64 64}
!27 = !{!20, !8, i64 68}
!28 = !{!20, !8, i64 80}
!29 = !{!20, !8, i64 72}
!30 = !{!20, !8, i64 84}
!31 = !{!20, !8, i64 76}
!32 = !{!"p1 _ZTS7double2", !10, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseI7double2SaIS0_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 16}
!35 = !{!33, !32, i64 0}
!36 = !{!33, !32, i64 8}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"p1 int", !10, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 16}
!42 = !{!40, !39, i64 0}
!43 = !{!40, !39, i64 8}
!44 = !{!"_ZTS7double2", !18, i64 0, !18, i64 8}
!45 = !{!44, !18, i64 0}
!46 = !{!44, !18, i64 8}
!47 = !{!"llvm.loop.unswitch.partial.disable"}
!48 = !{!"llvm.loop.peeled.count", i32 1}
!49 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!50 = distinct !{null}
!51 = !{!12, !11, i64 0}
!52 = !{!"p1 double", !10, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!53, !52, i64 0}
!55 = !{!53, !52, i64 16}
!56 = !{!52, !52, i64 0}
!57 = !{!20, !18, i64 40}
!58 = !{!20, !18, i64 48}
!59 = distinct !{!59, !23, !37, !38}
!60 = distinct !{!60, !23, !37}
!61 = distinct !{!61, !23, !37, !38}
!62 = distinct !{!62, !23, !37}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23, !47}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !23, !48}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23, !48}
!72 = distinct !{!72, !23, !37, !38}
!73 = distinct !{!73, !23, !37}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23, !37, !38}
!76 = distinct !{!76, !23, !37}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23, !47}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23, !48}
!81 = distinct !{!81, !23, !48}
!82 = distinct !{!82, !23, !48}
!83 = distinct !{!83, !23, !48}
!84 = distinct !{!84, !23, !37, !38}
!85 = distinct !{!85, !23, !37}
!86 = distinct !{!86, !23}
!87 = distinct !{!87, !23, !37, !38}
!88 = distinct !{!88, !23, !37}
!89 = distinct !{!89, !"_Z12make_double2RKdS0_"}
!90 = distinct !{!90, !89, !"_Z12make_double2RKdS0_: argument 0"}
!91 = distinct !{!91, !"_Z12make_double2RKdS0_"}
!92 = distinct !{!92, !91, !"_Z12make_double2RKdS0_: argument 0"}
!93 = distinct !{!93, !"_Z12make_double2RKdS0_"}
!94 = distinct !{!94, !93, !"_Z12make_double2RKdS0_: argument 0"}
!95 = distinct !{!95, !"_Z12make_double2RKdS0_"}
!96 = distinct !{!96, !95, !"_Z12make_double2RKdS0_: argument 0"}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, !23, !48}
!101 = distinct !{!101, !23, !48}
!102 = distinct !{!102, !23, !48}
!103 = distinct !{!103, !23, !48}
!104 = !{!90}
!105 = !{!92}
!106 = !{!94}
!107 = !{!96}
!108 = !{!39, !39, i64 0}
!109 = distinct !{!109, !23, !37, !38}
!110 = distinct !{!110, !23, !37}
!111 = distinct !{!111, !23, !37, !38}
!112 = distinct !{!112, !23, !37}
end_hunk_1
