inline.NumInlined: 9895
inline.NumDeleted: 4272
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt12construct_atIN7rocksdb19SuperVersionContextEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1719
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ct) #33
  br label %_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt12construct_atIN7rocksdb19SuperVersionContextEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1202
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !1718
  %i.cu = getelementptr inbounds nuw [536 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !1719
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(424) ptr @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !1458
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1706 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1705 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2150
  %i.j = load <2 x ptr>, ptr %i.c, align 8, !tbaa !2433
  store <2 x ptr> %i.j, ptr %i.d, align 8, !tbaa !2433
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2150
  store ptr %i.l, ptr %i.h, align 8, !tbaa !2150
  %.not4.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1888

_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.u) #33
  br label %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.b
  %i.v = load i64, ptr %1, align 8, !tbaa !1704   ; 3 uses
  store i64 %i.v, ptr %0, align 8, !tbaa !1704
  store i64 0, ptr %1, align 8, !tbaa !1704
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 392
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit, %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit
  ret ptr %0

bb.c:                                             ; preds = %.lr.ph, %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit ] ; 4 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1458
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.011 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !629
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !630
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !1458 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.011 ; 11 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !1458 ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %.011 ; 10 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9  ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !9  ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  br i1 %i.al, label %bb.d, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !630 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %.not21.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not21.i.i.i, label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit, label %bb.e, !prof !631

bb.e:                                             ; preds = %bb.d
  switch i64 %i.an, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !15
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !630 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !630
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !9
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !630
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !630
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !15
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !15
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !15
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !630
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !630
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !15
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !9
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !15
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !9
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.h, %bb.i
  %i.bd = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ag, %bb.h ], [ %i.ak, %bb.i ], [ %i.aj, %bb.d ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !630
  store i8 0, ptr %i.bd, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1892
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !1892
  %i.bl = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !2434
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 9 uses
  %.0911.i.i = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.b = getelementptr i8, ptr %.012.i.i, i64 8   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1457, !alias.scope !2435, !noalias !2438
  %i.d = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1720, !alias.scope !2438, !noalias !2435
  store <2 x ptr> %i.g, ptr %i.a, align 8, !tbaa !1720, !alias.scope !2435, !noalias !2438
  %i.h = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1679, !alias.scope !2438, !noalias !2435
  store ptr %i.i, ptr %i.e, align 8, !tbaa !1679, !alias.scope !2435, !noalias !2438
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !alias.scope !2438, !noalias !2435
  %i.j = load i64, ptr %.0911.i.i, align 8, !tbaa !1451, !alias.scope !2438, !noalias !2435 ; 13 uses
  store i64 %i.j, ptr %.012.i.i, align 8, !tbaa !1451, !alias.scope !2435, !noalias !2438
  store i64 0, ptr %.0911.i.i, align 8, !tbaa !1451, !alias.scope !2438, !noalias !2435
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1457, !alias.scope !2438, !noalias !2435 ; 13 uses
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = shl i64 %i.j, 3                          ; 2 uses
  %scevgep8.a = getelementptr i8, ptr %i.b, i64 %i.m
  %scevgep9 = getelementptr i8, ptr %i.l, i64 %i.m
  %bound0 = icmp ult ptr %i.b, %scevgep9
  %bound1 = icmp ult ptr %i.l, %scevgep8.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.o, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  store <4 x ptr> splat (ptr null), ptr %i.p, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  store <4 x ptr> splat (ptr null), ptr %i.q, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  store <4 x ptr> splat (ptr null), ptr %i.r, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %wide.load = load <4 x ptr>, ptr %i.s, align 8, !tbaa !911, !alias.scope !2445, !noalias !2438
  %wide.load11.a = load <4 x ptr>, ptr %i.t, align 8, !tbaa !911, !alias.scope !2445, !noalias !2438
  %wide.load12.a = load <4 x ptr>, ptr %i.u, align 8, !tbaa !911, !alias.scope !2445, !noalias !2438
  %wide.load13 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !911, !alias.scope !2445, !noalias !2438
  store <4 x ptr> %wide.load, ptr %i.o, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  store <4 x ptr> %wide.load11.a, ptr %i.p, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  store <4 x ptr> %wide.load12.a, ptr %i.q, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  store <4 x ptr> %wide.load13, ptr %i.r, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !2446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1015

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.j, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index15 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.x, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index15
  %wide.load16 = load <4 x ptr>, ptr %i.y, align 8, !tbaa !911, !alias.scope !2445, !noalias !2438
  store <4 x ptr> %wide.load16, ptr %i.x, align 8, !tbaa !911, !alias.scope !2440, !noalias !2443
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2447

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.j, %n.vec14
  br i1 %cmp.n18, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 4 uses
  %i.aa = sub i64 %i.j, %.011.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.011.i.i.i.i.i.i.i.prol = phi i64 [ %i.ae, %vec.epilog.scalar.ph.prol ], [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i.prol ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !911, !noalias !2438
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.ae = add nuw i64 %.011.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2448

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.011.i.i.i.i.i.i.i.unr = phi i64 [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %i.af = sub i64 %.011.i.i.i.i.i.i.i.ph, %i.j
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bm, %vec.epilog.scalar.ph ], [ %.011.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !911, !noalias !2438
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.ak = add nuw i64 %.011.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !911, !noalias !2438
  store ptr %i.an, ptr %i.al, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.ao = add nuw i64 %.011.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !911, !noalias !2438
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.as = add nuw i64 %.011.i.i.i.i.i.i.i, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !911, !noalias !2438
  store ptr %i.av, ptr %i.at, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.aw = add nuw i64 %.011.i.i.i.i.i.i.i, 4      ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !911, !noalias !2438
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.ba = add nuw i64 %.011.i.i.i.i.i.i.i, 5      ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !911, !noalias !2438
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.be = add nuw i64 %.011.i.i.i.i.i.i.i, 6      ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !911, !noalias !2438
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.bi = add nuw i64 %.011.i.i.i.i.i.i.i, 7      ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !911, !noalias !2438
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  %i.bm = add nuw i64 %.011.i.i.i.i.i.i.i, 8      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.bm, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i.i.7, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !2449

_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !1704, !alias.scope !2435, !noalias !2438
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !alias.scope !2435, !noalias !2438
  %i.bq = tail call noundef nonnull align 8 dereferenceable(424) ptr @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(424) %i.bn, ptr noundef nonnull align 8 dereferenceable(424) %i.bo) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 528
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 528 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !911, !alias.scope !2438, !noalias !2435
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !911, !alias.scope !2435, !noalias !2438
  store ptr null, ptr %i.bs, align 8, !tbaa !911, !alias.scope !2438, !noalias !2435
  tail call void @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.bo) #34
  %.pr.i.i.i.i.i.i.i = load i64, ptr %.0911.i.i, align 8, !tbaa !1451, !alias.scope !2438, !noalias !2435
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  store i64 0, ptr %.0911.i.i, align 8, !tbaa !1451, !alias.scope !2438, !noalias !2435
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !1677, !alias.scope !2438, !noalias !2435 ; 5 uses
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !1678, !alias.scope !2438, !noalias !2435
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !1678, !alias.scope !2438, !noalias !2435
  br label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i

_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !1679, !alias.scope !2438, !noalias !2435
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #33
  br label %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.c, %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 536 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 536 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !2450

_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb3log6WriterD1Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_emplace_uniqueIJRiRmEEES0_ISt17_Rb_tree_iteratorIS1_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %1, align 4, !tbaa !628    ; 7 uses
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1787
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i64, ptr %2, align 8, !tbaa !753    ; 4 uses
  store i64 %i.e, ptr %i.d, align 8, !tbaa !1789
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02123.i = load ptr, ptr %i.f, align 8, !tbaa !1790 ; 2 uses
  %.not24.i = icmp eq ptr %.02123.i, null
  br i1 %.not24.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02125.i = phi ptr [ %.021.i, %.lr.ph.i ], [ %.02123.i, %bb.a ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02125.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !628  ; 3 uses
  %i.j = icmp eq i32 %i.c, %i.i
  %i.k = icmp slt i32 %i.c, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02125.i, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.e, %i.m
  %.sroa.05.0.i.i.i = select i1 %i.j, i1 %i.n, i1 %i.k ; 2 uses
  %.in.v.i = select i1 %.sroa.05.0.i.i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02125.i, i64 %.in.v.i
  %.021.i = load ptr, ptr %.in.i, align 8, !tbaa !1790 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1791

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %.sroa.05.0.i.i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.020.lcssa30.i = phi ptr [ %.02125.i, %._crit_edge.i ], [ %i.g, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !662
  %i.q = icmp eq ptr %.020.lcssa30.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i) #38 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !628
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.pre33 = load i64, ptr %.phi.trans.insert32, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.s = phi i64 [ %.pre33, %bb.b ], [ %i.m, %._crit_edge.i ]
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.i, %._crit_edge.i ] ; 2 uses
  %.020.lcssa29.i = phi ptr [ %.020.lcssa30.i, %bb.b ], [ %.02125.i, %._crit_edge.i ]
  %.sroa.06.0.i = phi ptr [ %i.r, %bb.b ], [ %.02125.i, %._crit_edge.i ]
  %i.u = icmp eq i32 %i.t, %i.c
  %i.v = icmp slt i32 %i.t, %i.c
  %i.w = icmp ult i64 %i.s, %i.e
  %.sroa.05.0.i.i5.i = select i1 %i.u, i1 %i.w, i1 %i.v
  br i1 %.sroa.05.0.i.i5.i, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.020.lcssa30.i, %._crit_edge.thread.i ], [ %.020.lcssa29.i, %bb.c ] ; 4 uses
  %i.x = icmp eq ptr %.sroa.4.0.i.ph, %i.g
  br i1 %i.x, label %.thread25, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !628  ; 2 uses
  %i.aa = icmp eq i32 %i.c, %i.z
  %i.ab = icmp slt i32 %i.c, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ult i64 %i.e, %i.ad
  %.sroa.05.0.i.i.i.i = select i1 %i.aa, i1 %i.ae, i1 %i.ab
  br label %.thread25

.thread25:                                        ; preds = %select.unfold, %bb.d
  %i.af = phi i1 [ %.sroa.05.0.i.i.i.i, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !880
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !880
  br label %_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #33
  br label %_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread25, %bb.e
  %.sroa.3.031 = phi i8 [ 1, %.thread25 ], [ 0, %bb.e ]
  %.sroa.017.030 = phi ptr [ %i.a, %.thread25 ], [ %.sroa.06.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.017.030, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.031, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE17_M_realloc_insertIJRiS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(417) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !796  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !795    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
  unreachable

_ZNKSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 432                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 21350398233460129)
  %i.l = select i1 %i.j, i64 21350398233460129, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 432                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !628
  store i32 %i.r, ptr %i.q, align 8, !tbaa !1793
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  invoke void @_ZN7rocksdb12FileMetaDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.s, ptr noundef nonnull align 8 dereferenceable(417) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN7rocksdb12FileMetaDataEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit, %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit ] ; 5 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit ] ; 3 uses
  %i.t = load i32, ptr %.01215.i.i.i.i.i, align 8, !tbaa !1793
  store i32 %i.t, ptr %.016.i.i.i.i.i, align 8, !tbaa !1793
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8
  invoke void @_ZN7rocksdb12FileMetaDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.u, ptr noundef nonnull align 8 dereferenceable(417) %i.v)
          to label %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 432 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 432 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN7rocksdb12FileMetaDataEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2451

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #34 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  tail call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.ab) #34
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 432 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !797

_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
