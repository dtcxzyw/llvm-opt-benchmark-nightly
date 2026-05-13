inline.NumInlined: 260
inline.NumDeleted: 143
begin_hunk_0_@_ZN4geos4util9Interrupt7processEv
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @_ZN4geos9operation7overlay4snap17LineStringSnapper17findSnapForVertexERKNS_4geom10CoordinateERKSt6vectorIPS6_SaIS9_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(18) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %.not25 = icmp eq ptr %i.c, %i.b
  br i1 %.not25, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !37
  %i.f = load double, ptr %1, align 8, !tbaa !45  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.028 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.0.1, %bb.c ]
  %.01527 = phi double [ %i.e, %.lr.ph ], [ %.116, %bb.c ] ; 2 uses
  %.sroa.0.02126 = phi ptr [ %i.c, %.lr.ph ], [ %i.u, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.0.02126, align 8, !tbaa !15 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !45 ; 2 uses
  %i.k = fcmp oeq double %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fcmp oeq double %i.m, %i.h
  %.0.i = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.0.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fsub double %i.j, %i.f                   ; 2 uses
  %i.p = fsub double %i.m, %i.h                   ; 2 uses
  %i.q = fmul double %i.o, %i.o
  %i.r = fmul double %i.p, %i.p
  %i.s = fadd double %i.q, %i.r
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.s) ; 2 uses
  %i.t = fcmp olt double %sqrt.i, %.01527         ; 2 uses
  %.116 = select i1 %i.t, double %sqrt.i, double %.01527
  %.sroa.0.1 = select i1 %i.t, ptr %.sroa.0.02126, ptr %.sroa.0.028 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.02126, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !47

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %spec.select = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.sroa.0.1, %bb.c ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN4geos9operation7overlay4snap17LineStringSnapper17findSegmentToSnapERKNS_4geom10CoordinateESt14_List_iteratorIS5_ES9_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr readonly captures(address, ret: address, provenance) %2, ptr readnone captures(address, ret: address, provenance) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.geos::geom::LineSegment", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %4, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 16, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !48
  %.not33 = icmp eq ptr %2, %3
  br i1 %.not33, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold25
  %.sroa.0.037 = phi ptr [ %3, %.lr.ph ], [ %.sroa.0.2.ph, %select.unfold25 ] ; 3 uses
  %.01536 = phi double [ %i.e, %.lr.ph ], [ %.2.ph, %select.unfold25 ] ; 6 uses
  %.sroa.022.034 = phi ptr [ %2, %.lr.ph ], [ %i.an, %select.unfold25 ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.034, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !24
  %i.h = load ptr, ptr %.sroa.022.034, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !24
  %i.j = load <2 x double>, ptr %4, align 16      ; 2 uses
  %i.k = load <2 x double>, ptr %1, align 8       ; 4 uses
  %i.l = fcmp oeq <2 x double> %i.j, %i.k         ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %.0.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %.0.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load <2 x double>, ptr %i.b, align 8     ; 2 uses
  %i.p = fcmp oeq <2 x double> %i.o, %i.k         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %.0.i19 = select i1 %i.q, i1 %i.r, i1 false
  br i1 %.0.i19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = load i8, ptr %i.f, align 8, !tbaa !49, !range !36, !noundef !13
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %select.unfold25, label %select.unfold

bb.e:                                             ; preds = %bb.c
  %i.u = fsub <2 x double> %i.k, %i.j             ; 2 uses
  %i.v = fsub <2 x double> %i.k, %i.o             ; 2 uses
  %i.w = bitcast <2 x double> %i.u to <2 x i64>
  %i.x = bitcast <2 x double> %i.v to <2 x i64>
  %i.y = xor <2 x i64> %i.x, %i.w
  %i.z = icmp sgt <2 x i64> %i.y, splat (i64 -1)
  %i.aa = uitofp <2 x i1> %i.z to <2 x double>
  %i.ab = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.u) ; 2 uses
  %i.ac = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v) ; 2 uses
  %i.ad = fcmp olt <2 x double> %i.ac, %i.ab
  %i.ae = select <2 x i1> %i.ad, <2 x double> %i.ac, <2 x double> %i.ab
  %i.af = fmul <2 x double> %i.ae, %i.aa          ; 2 uses
  %i.ag = fmul <2 x double> %i.af, %i.af          ; 2 uses
  %shift = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ag, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ai = fmul double %.01536, %.01536
  %i.aj = fcmp ult double %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %select.unfold25

bb.f:                                             ; preds = %bb.e
  %i.ak = call noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 3 uses
  %i.al = fcmp ult double %i.ak, %.01536
  br i1 %i.al, label %bb.g, label %select.unfold25

bb.g:                                             ; preds = %bb.f
  %i.am = fcmp oeq double %i.ak, 0.000000e+00
  br i1 %i.am, label %select.unfold, label %select.unfold25

select.unfold25:                                  ; preds = %bb.d, %bb.e, %bb.g, %bb.f
  %.2.ph = phi double [ %.01536, %bb.e ], [ %.01536, %bb.f ], [ %i.ak, %bb.g ], [ %.01536, %bb.d ]
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.037, %bb.e ], [ %.sroa.0.037, %bb.f ], [ %.sroa.022.034, %bb.g ], [ %.sroa.0.037, %bb.d ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.022.034, align 8, !tbaa !20 ; 2 uses
  %.not = icmp eq ptr %i.an, %3
  br i1 %.not, label %select.unfold, label %bb.b, !llvm.loop !50

select.unfold:                                    ; preds = %select.unfold25, %bb.d, %bb.g, %bb.a
  %.sroa.013.3 = phi ptr [ %3, %bb.a ], [ %3, %bb.d ], [ %.sroa.022.034, %bb.g ], [ %.sroa.0.2.ph, %select.unfold25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret ptr %.sroa.013.3
}

declare noundef double @_ZNK4geos4geom11LineSegment16projectionFactorERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #14
  br label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit

_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader.i:
  %.not13.i = icmp eq ptr %1, %2
  br i1 %.not13.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %.preheader.i
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.015.i = phi i64 [ %i.d, %.lr.ph.i ], [ 0, %.preheader.i ] ; 4 uses
  %.sroa.010.014.i = phi ptr [ %i.c, %.lr.ph.i ], [ %1, %.preheader.i ]
  %i.c = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !20 ; 2 uses
  %i.d = add nuw nsw i64 %.015.i, 1               ; 3 uses
  %.not.i = icmp eq ptr %i.c, %2
  br i1 %.not.i, label %_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !53

_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = load ptr, ptr %0, align 8, !tbaa !51     ; 6 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %.not67 = icmp ult i64 %.015.i, %i.k
  br i1 %.not67, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit
  %i.l = icmp samesign ugt i64 %.015.i, 384307168202282324
  br i1 %i.l, label %bb.b, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.m = mul nuw nsw i64 %i.d, 24
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #13 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !24
  %i.p = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i18 = icmp eq ptr %i.g, null
  br i1 %.not.i18, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #14
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !56
  store ptr %i.s, ptr %i.e, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.i                       ; 3 uses
  %i.x = sdiv exact i64 %i.w, 24                  ; 8 uses
  %.not.not = icmp ugt i64 %i.x, %.015.i
  br i1 %.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.y = phi ptr [ %i.b, %.thread ], [ %i.t, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.d ] ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not6.i.i.i.i.i, label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i19 ], [ %i.z, %bb.e ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i19 ], [ %1, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !24
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %.sroa.03.07.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ac, %2
  br i1 %.not.i.i.i.i.i20, label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !57

_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i19, %bb.e
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ab, %.lr.ph.i.i.i.i.i19 ] ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !56
  %.not.i21 = icmp eq ptr %i.ad, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i21, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !56
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %.preheader.i24.preheader, label %.preheader7.i

.preheader.i24.preheader:                         ; preds = %bb.f
  %xtraiter73 = and i64 %i.x, 7                   ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.preheader.i24.prol.loopexit, label %.preheader.i24.prol

.preheader.i24.prol:                              ; preds = %.preheader.i24.preheader, %.preheader.i24.prol
  %.013.i.prol = phi i64 [ %i.ag, %.preheader.i24.prol ], [ %i.x, %.preheader.i24.preheader ]
  %i.af = phi ptr [ %i.ah, %.preheader.i24.prol ], [ %1, %.preheader.i24.preheader ]
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.preheader.i24.prol ], [ 0, %.preheader.i24.preheader ]
  %i.ag = add nsw i64 %.013.i.prol, -1            ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !20 ; 3 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.preheader.i24.prol.loopexit, label %.preheader.i24.prol, !llvm.loop !58

.preheader.i24.prol.loopexit:                     ; preds = %.preheader.i24.prol, %.preheader.i24.preheader
  %.lcssa69.unr = phi ptr [ poison, %.preheader.i24.preheader ], [ %i.ah, %.preheader.i24.prol ]
  %.013.i.unr = phi i64 [ %i.x, %.preheader.i24.preheader ], [ %i.ag, %.preheader.i24.prol ]
  %.unr76 = phi ptr [ %1, %.preheader.i24.preheader ], [ %i.ah, %.preheader.i24.prol ]
  %i.ai = icmp ult i64 %i.w, 192
  br i1 %i.ai, label %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i24

.preheader7.i:                                    ; preds = %bb.f
  %.not9.i = icmp eq ptr %i.u, %i.g
  br i1 %.not9.i, label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31, label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %.preheader7.i
  %i.aj = sub nsw i64 0, %i.x
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader, %.lr.ph.i22.prol
  %.110.i.prol = phi i64 [ %i.al, %.lr.ph.i22.prol ], [ %i.x, %.lr.ph.i22.preheader ]
  %i.ak = phi ptr [ %i.an, %.lr.ph.i22.prol ], [ %1, %.lr.ph.i22.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i22.prol ], [ 0, %.lr.ph.i22.preheader ]
  %i.al = add nsw i64 %.110.i.prol, 1             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol, !llvm.loop !60

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader
  %.lcssa71.unr = phi ptr [ poison, %.lr.ph.i22.preheader ], [ %i.an, %.lr.ph.i22.prol ]
  %.110.i.unr = phi i64 [ %i.x, %.lr.ph.i22.preheader ], [ %i.al, %.lr.ph.i22.prol ]
  %.unr = phi ptr [ %1, %.lr.ph.i22.preheader ], [ %i.an, %.lr.ph.i22.prol ]
  %i.ao = icmp ugt i64 %i.x, -8
  br i1 %i.ao, label %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i22

.preheader.i24:                                   ; preds = %.preheader.i24.prol.loopexit, %.preheader.i24
  %.013.i = phi i64 [ %i.ax, %.preheader.i24 ], [ %.013.i.unr, %.preheader.i24.prol.loopexit ]
  %i.ap = phi ptr [ %i.ay, %.preheader.i24 ], [ %.unr76, %.preheader.i24.prol.loopexit ]
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ax = add nsw i64 %.013.i, -8                 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %.not6.i.7 = icmp eq i64 %i.ax, 0
  br i1 %.not6.i.7, label %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i24, !llvm.loop !61

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %.110.i = phi i64 [ %i.bo, %.lr.ph.i22 ], [ %.110.i.unr, %.lr.ph.i22.prol.loopexit ]
  %i.az = phi ptr [ %i.bq, %.lr.ph.i22 ], [ %.unr, %.lr.ph.i22.prol.loopexit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17
  %i.bo = add nsw i64 %.110.i, 8                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %.not.i23.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i23.7, label %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i22, !llvm.loop !62

_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %.preheader.i24.prol.loopexit, %.preheader.i24
  %.sroa.0.0 = phi ptr [ %i.ay, %.preheader.i24 ], [ %.lcssa69.unr, %.preheader.i24.prol.loopexit ], [ %.lcssa71.unr, %.lr.ph.i22.prol.loopexit ], [ %i.bq, %.lr.ph.i22 ] ; 4 uses
  %.not6.i.i.i.i.i25 = icmp eq ptr %1, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i25, label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph.i.i.i.i.i26
  %.08.i.i.i.i.i27 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i26 ], [ %i.g, %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i28 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i26 ], [ %1, %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i27, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !24
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 24
  %i.bt = load ptr, ptr %.sroa.03.07.i.i.i.i.i28, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.bt, %.sroa.0.0
  br i1 %.not.i.i.i.i.i29, label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit, label %.lr.ph.i.i.i.i.i26, !llvm.loop !57

_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit: ; preds = %.lr.ph.i.i.i.i.i26
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !56
  br label %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31

_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31: ; preds = %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit, %.preheader7.i, %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.bu = phi ptr [ %i.u, %.preheader7.i ], [ %i.u, %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.pre, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit ] ; 2 uses
  %.sroa.0.039 = phi ptr [ %1, %.preheader7.i ], [ %.sroa.0.0, %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.0.0, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31.loopexit ] ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %.sroa.0.039, %2
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.bu, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.0.039, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !24
  %i.bw = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bu, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit31 ], [ %i.bx, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.t, align 8, !tbaa !56
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt4copyISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aISt20_List_const_iteratorIN4geos4geom10CoordinateEEPS3_S3_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef double @_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

end_hunk_0
