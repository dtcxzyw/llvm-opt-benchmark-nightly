inline.NumInlined: 409
inline.NumDeleted: 248
begin_hunk_0_@_ZN5cppgc8internal23HeapStatisticsCollector14VisitLargePageERNS0_9LargePageE:bb.a
  %i.w = tail call noundef i64 @_ZN5cppgc8internal9LargePage14AllocationSizeEm(i64 noundef %i.v) #14 ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit

bb.d:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  tail call void @_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.z)
  %.pre.i = load ptr, ptr %i.y, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit

_ZN5cppgc8internal12_GLOBAL__N_114InitializePageEPNS_14HeapStatistics15SpaceStatisticsE.exit: ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.ad, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48 ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  store i64 %i.w, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.w, ptr %i.ai, align 8
  ret i1 false
}

declare noundef i64 @_ZN5cppgc8internal9LargePage14AllocationSizeEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN5cppgc8internal23HeapStatisticsCollector21VisitHeapObjectHeaderERNS0_16HeapObjectHeaderE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i16, ptr %i.a, align 4
  %i.c = icmp ult i16 %i.b, 4
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = icmp ult i16 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %1 to i64
  %i.h = and i64 %i.g, -131072
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = lshr i16 %i.e, 1
  %i.m = zext nneg i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i64 [ %i.k, %bb.c ], [ %i.n, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.o
  store i64 %i.t, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i1 true
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc14HeapStatistics15SpaceStatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i

_ZNSt6vectorImSaImEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.p = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #18
  br label %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit

_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit, %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i ], [ %i.w, %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #18
  br label %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.y
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5cppgc14HeapStatistics14PageStatisticsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.v, align 8
  br label %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i

_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i, %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exitthread-pre-split.i ], [ %i.w, %_ZN5cppgc14HeapStatistics18FreeListStatisticsD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #18
  br label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit

_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5cppgc14HeapStatistics14PageStatisticsEEvT_S4_.exit.i, %bb.f
  %i.an = load ptr, ptr %0, align 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775752
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 152                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %2        ; 2 uses
  %4 = icmp ult i64 %3, %2
  %5 = tail call i64 @llvm.umin.i64(i64 %3, i64 60680079189834051)
  %6 = select i1 %4, i64 60680079189834051, i64 %5 ; 3 uses
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %i.e
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit, label %9

9:                                                ; preds = %_ZNKSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12_M_check_lenEmPKc.exit
  %10 = mul nuw nsw i64 %6, 152
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #15
  br label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12_M_check_lenEmPKc.exit, %9
  %12 = phi ptr [ %11, %9 ], [ null, %_ZNKSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 %8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, i8 0, i64 120, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %12, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit ] ; 14 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.012.i.i.i, align 8, !alias.scope !26, !noalias !29
  %i.m = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !29, !noalias !26 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !29, !noalias !26 ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false), !alias.scope !31
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.m, ptr %.012.i.i.i, align 8, !alias.scope !26, !noalias !29
  %i.t = load i64, ptr %i.n, align 8, !alias.scope !29, !noalias !26
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !26, !noalias !29
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !29, !noalias !26
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.u = phi i64 [ %i.q, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !alias.scope !26, !noalias !29
  store ptr %i.n, ptr %.0911.i.i.i, align 8, !alias.scope !29, !noalias !26
  store i64 0, ptr %i.v, align 8, !alias.scope !29, !noalias !26
  store i8 0, ptr %i.n, align 8, !alias.scope !29, !noalias !26
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !31
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !alias.scope !26, !noalias !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !29, !noalias !26
  store ptr %i.ae, ptr %i.ac, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !alias.scope !26, !noalias !29
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !29, !noalias !26
  store ptr %i.ak, ptr %i.ai, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.an, ptr %i.al, align 8, !alias.scope !26, !noalias !29
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !29, !noalias !26
  store ptr %i.aq, ptr %i.ao, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !29, !noalias !26
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !alias.scope !26, !noalias !29
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !29, !noalias !26
  store ptr %i.aw, ptr %i.au, align 8, !alias.scope !26, !noalias !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false), !alias.scope !29, !noalias !26
  tail call void @_ZN5cppgc14HeapStatistics15SpaceStatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.0911.i.i.i) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !32

_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i = phi ptr [ %12, %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_M_allocateEm.exit ], [ %i.ay, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 152 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.cn, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.az, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 14 uses
  %.0911.i.i.i18 = phi ptr [ %i.cm, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.012.i.i.i17, align 8, !alias.scope !33, !noalias !36
  %i.bb = load ptr, ptr %.0911.i.i.i18, align 8, !alias.scope !36, !noalias !33 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !36, !noalias !33 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !38
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.bb, ptr %.012.i.i.i17, align 8, !alias.scope !33, !noalias !36
  %i.bi = load i64, ptr %i.bc, align 8, !alias.scope !36, !noalias !33
  store i64 %i.bi, ptr %i.ba, align 8, !alias.scope !33, !noalias !36
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !alias.scope !36, !noalias !33
  br label %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19, %bb.d
  %i.bj = phi i64 [ %i.bf, %bb.d ], [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !alias.scope !33, !noalias !36
  store ptr %i.bc, ptr %.0911.i.i.i18, align 8, !alias.scope !36, !noalias !33
  store i64 0, ptr %i.bk, align 8, !alias.scope !36, !noalias !33
  store i8 0, ptr %i.bc, align 8, !alias.scope !36, !noalias !33
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !alias.scope !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 56 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.bq, ptr %i.bo, align 8, !alias.scope !33, !noalias !36
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !36, !noalias !33
  store ptr %i.bt, ptr %i.br, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 80 ; 2 uses
  %i.bw = load <2 x ptr>, ptr %i.bv, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.bw, ptr %i.bu, align 8, !alias.scope !33, !noalias !36
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !36, !noalias !33
  store ptr %i.bz, ptr %i.bx, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 104 ; 2 uses
  %i.cc = load <2 x ptr>, ptr %i.cb, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.cc, ptr %i.ca, align 8, !alias.scope !33, !noalias !36
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 120
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !36, !noalias !33
  store ptr %i.cf, ptr %i.cd, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 128 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8, !alias.scope !36, !noalias !33
  store <2 x ptr> %i.ci, ptr %i.cg, align 8, !alias.scope !33, !noalias !36
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 144
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !36, !noalias !33
  store ptr %i.cl, ptr %i.cj, align 8, !alias.scope !33, !noalias !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !alias.scope !36, !noalias !33
  tail call void @_ZN5cppgc14HeapStatistics15SpaceStatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.0911.i.i.i18) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 152 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 152 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.cm, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i16, !llvm.loop !32

_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25: ; preds = %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.az, %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cn, %_ZSt19__relocate_object_aIN5cppgc14HeapStatistics15SpaceStatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cr) #18
  br label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics15SpaceStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, %bb.e
  store ptr %12, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8
  %i.cs = getelementptr inbounds nuw [152 x i8], ptr %12, i64 %6
  store ptr %i.cs, ptr %i.co, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 24, i1 false), !alias.scope !44
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !42, !noalias !39
  store <2 x ptr> %i.t, ptr %i.r, align 8, !alias.scope !39, !noalias !42
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !42, !noalias !39
  store ptr %i.w, ptr %i.u, align 8, !alias.scope !39, !noalias !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !alias.scope !42, !noalias !39
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ah, %.lr.ph.i.i.i16 ], [ %i.z, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i18, i64 24, i1 false), !alias.scope !51
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !49, !noalias !46
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !alias.scope !46, !noalias !49
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !49, !noalias !46
  store ptr %i.af, ptr %i.ad, align 8, !alias.scope !46, !noalias !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !49, !noalias !46
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !45

_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.z, %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ah, %.lr.ph.i.i.i16 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #18
  br label %_ZNSt12_Vector_baseIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cppgc8internal11HeapVisitorINS0_23HeapStatisticsCollectorEE8TraverseERNS0_8BasePageE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.cppgc::internal::NormalPage::IteratorImpl", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.h = load i64, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i

_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i: ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = tail call noundef i64 @_ZN5cppgc8internal9LargePage14AllocationSizeEm(i64 noundef %i.y) #14 ; 2 uses
  %i.aa = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  store ptr %i.ag, ptr %i.ab, align 8
  br label %bb.f

bb.e:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_112FinalizePageEPNS_14HeapStatistics15SpaceStatisticsEPPNS2_14PageStatisticsE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  tail call void @_ZNSt6vectorIN5cppgc14HeapStatistics14PageStatisticsESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr %i.ac)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi ptr [ %i.ag, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -48 ; 2 uses
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.z, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.z, ptr %i.al, align 8
  %i.am = tail call noundef ptr @_ZN5cppgc8internal9LargePage12ObjectHeaderEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #14 ; 3 uses
end_hunk_0
