Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_follower?download=true
inline.NumInlined: 2735
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt12construct_atIN7rocksdb19SuperVersionContextEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !475
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cv) #21
  br label %_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt12construct_atIN7rocksdb19SuperVersionContextEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !870
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !474
  %i.cw = getelementptr inbounds nuw [536 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !475
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(424) ptr @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !770
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !781  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !780  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !871
  %i.j = load <2 x ptr>, ptr %i.c, align 8, !tbaa !1115
  store <2 x ptr> %i.j, ptr %i.d, align 8, !tbaa !1115
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !871
  store ptr %i.l, ptr %i.h, align 8, !tbaa !871
  %.not4.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !37
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.u) #21
  br label %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.b
  %i.v = load i64, ptr %1, align 8, !tbaa !498    ; 3 uses
  store i64 %i.v, ptr %0, align 8, !tbaa !498
  store i64 0, ptr %1, align 8, !tbaa !498
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 392
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit, %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit
  ret ptr %0

bb.c:                                             ; preds = %.lr.ph, %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit ] ; 4 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !770
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.011 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !39
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !770 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.011 ; 11 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !770 ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %.011 ; 10 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  br i1 %i.al, label %bb.d, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !39 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %.not21.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not21.i.i.i, label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit, label %bb.e, !prof !718

bb.e:                                             ; preds = %bb.d
  switch i64 %i.an, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !37
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !39
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !37
  %.pre.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !36
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !39
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !39
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !37
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !37
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !37
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !39
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !37
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !36
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !37
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !36
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.h, %bb.i
  %i.bd = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ag, %bb.h ], [ %i.ak, %bb.i ], [ %i.aj, %bb.d ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !39
  store i8 0, ptr %i.bd, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1116
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !1116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !787
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !787
  %i.bl = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1114
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 9 uses
  %.0911.i.i = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.b = getelementptr i8, ptr %.012.i.i, i64 8   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72
  store ptr %i.b, ptr %i.c, align 8, !tbaa !482, !alias.scope !1128
  %i.d = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !483, !alias.scope !1129
  store <2 x ptr> %i.g, ptr %i.a, align 8, !tbaa !483, !alias.scope !1128
  %i.h = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !484, !alias.scope !1129
  store ptr %i.i, ptr %i.e, align 8, !tbaa !484, !alias.scope !1128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !alias.scope !1129
  %i.j = load i64, ptr %.0911.i.i, align 8, !tbaa !481, !alias.scope !1129 ; 13 uses
  store i64 %i.j, ptr %.012.i.i, align 8, !tbaa !481, !alias.scope !1128
  store i64 0, ptr %.0911.i.i, align 8, !tbaa !481, !alias.scope !1129
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !482, !alias.scope !1129 ; 13 uses
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = shl i64 %i.j, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.m
  %scevgep8 = getelementptr i8, ptr %i.l, i64 %i.m
  %bound0 = icmp ult ptr %i.b, %scevgep8
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.o, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  store <4 x ptr> splat (ptr null), ptr %i.p, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  store <4 x ptr> splat (ptr null), ptr %i.q, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  store <4 x ptr> splat (ptr null), ptr %i.r, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %wide.load = load <4 x ptr>, ptr %i.s, align 8, !tbaa !486, !alias.scope !1131, !noalias !1129
  %wide.load10 = load <4 x ptr>, ptr %i.t, align 8, !tbaa !486, !alias.scope !1131, !noalias !1129
  %wide.load11 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !486, !alias.scope !1131, !noalias !1129
  %wide.load12 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !486, !alias.scope !1131, !noalias !1129
  store <4 x ptr> %wide.load, ptr %i.o, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  store <4 x ptr> %wide.load10, ptr %i.p, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  store <4 x ptr> %wide.load11, ptr %i.q, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  store <4 x ptr> %wide.load12, ptr %i.r, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !490

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.j, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index14 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.x, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index14
  %wide.load15 = load <4 x ptr>, ptr %i.y, align 8, !tbaa !486, !alias.scope !1131, !noalias !1129
  store <4 x ptr> %wide.load15, ptr %i.x, align 8, !tbaa !486, !alias.scope !1130, !noalias !1131
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.j, %n.vec13
  br i1 %cmp.n17, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 4 uses
  %i.aa = sub i64 %i.j, %.011.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.011.i.i.i.i.i.i.i.prol = phi i64 [ %i.ae, %vec.epilog.scalar.ph.prol ], [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i.prol ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !486, !alias.scope !1128
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !486, !noalias !1129
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !486, !alias.scope !1128
  %i.ae = add nuw i64 %.011.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1125

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.011.i.i.i.i.i.i.i.unr = phi i64 [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %i.af = sub i64 %.011.i.i.i.i.i.i.i.ph, %i.j
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bm, %vec.epilog.scalar.ph ], [ %.011.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !486, !alias.scope !1128
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !486, !noalias !1129
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !486, !alias.scope !1128
  %i.ak = add nuw i64 %.011.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !486, !alias.scope !1128
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !486, !noalias !1129
  store ptr %i.an, ptr %i.al, align 8, !tbaa !486, !alias.scope !1128
  %i.ao = add nuw i64 %.011.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !486, !alias.scope !1128
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !486, !noalias !1129
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !486, !alias.scope !1128
  %i.as = add nuw i64 %.011.i.i.i.i.i.i.i, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !486, !alias.scope !1128
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !486, !noalias !1129
  store ptr %i.av, ptr %i.at, align 8, !tbaa !486, !alias.scope !1128
  %i.aw = add nuw i64 %.011.i.i.i.i.i.i.i, 4      ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !486, !alias.scope !1128
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !486, !noalias !1129
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !486, !alias.scope !1128
  %i.ba = add nuw i64 %.011.i.i.i.i.i.i.i, 5      ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !486, !alias.scope !1128
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !486, !noalias !1129
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !486, !alias.scope !1128
  %i.be = add nuw i64 %.011.i.i.i.i.i.i.i, 6      ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !486, !alias.scope !1128
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !486, !noalias !1129
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !486, !alias.scope !1128
  %i.bi = add nuw i64 %.011.i.i.i.i.i.i.i, 7      ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !486, !alias.scope !1128
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !486, !noalias !1129
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !486, !alias.scope !1128
  %i.bm = add nuw i64 %.011.i.i.i.i.i.i.i, 8      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.bm, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i.i.7, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1126

_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !498, !alias.scope !1128
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !alias.scope !1128
  %i.bq = tail call noundef nonnull align 8 dereferenceable(424) ptr @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(424) %i.bn, ptr noundef nonnull align 8 dereferenceable(424) %i.bo) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 528
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 528 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !486, !alias.scope !1129
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !486, !alias.scope !1128
  store ptr null, ptr %i.bs, align 8, !tbaa !486, !alias.scope !1129
  tail call void @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.bo) #22
  %.pr.i.i.i.i.i.i.i = load i64, ptr %.0911.i.i, align 8, !tbaa !481, !alias.scope !1129
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  store i64 0, ptr %.0911.i.i, align 8, !tbaa !481, !alias.scope !1129
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !499, !alias.scope !1129 ; 5 uses
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !500, !alias.scope !1129
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !500, !alias.scope !1129
  br label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i

_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !484, !alias.scope !1129
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #21
  br label %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.c, %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 536 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 536 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1127

_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb15ManagedSnapshotD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !1132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !717  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !717
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !1132
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN7rocksdb12AllocTracker14DoneAllocatingEv(ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #4

declare void @_ZN7rocksdb4port7RWMutex9WriteLockEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb12TableFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !713  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !715
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !716
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !717
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !718

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN7rocksdb14SliceTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !713  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !715
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !716
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !717
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !718

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !713  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !715
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !716
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

end_hunk_0
