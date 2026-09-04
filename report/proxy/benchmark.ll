Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark?download=true
inline.NumInlined: 1686
inline.NumDeleted: 817
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !55
  %i.z = load i64, ptr %i.t, align 8, !tbaa !57
  store i64 %i.z, ptr %i.r, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !56
  store ptr %i.t, ptr %2, align 8, !tbaa !55
  store i64 0, ptr %i.ab, align 8, !tbaa !56
  store i8 0, ptr %i.t, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !104
  store double %i.af, ptr %i.ad, align 8, !tbaa !104
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !54, !alias.scope !302, !noalias !303
  %i.ah = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !303, !noalias !302 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !56, !alias.scope !303, !noalias !302 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false), !alias.scope !304
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !55, !alias.scope !302, !noalias !303
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !57, !alias.scope !303, !noalias !302
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !57, !alias.scope !302, !noalias !303
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !56, !alias.scope !303, !noalias !302
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ap = phi i64 [ %i.al, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !56, !alias.scope !302, !noalias !303
  store ptr %i.ai, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !303, !noalias !302
  store i64 0, ptr %i.aq, align 8, !tbaa !56, !alias.scope !303, !noalias !302
  store i8 0, ptr %i.ai, align 8, !tbaa !57, !alias.scope !303, !noalias !302
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.au = load double, ptr %i.at, align 8, !tbaa !104, !alias.scope !303, !noalias !302
  store double %i.au, ptr %i.as, align 8, !tbaa !104, !alias.scope !302, !noalias !303
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !298

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ], [ %i.aw, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !54, !alias.scope !305, !noalias !306
  %i.az = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !306, !noalias !305 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !56, !alias.scope !306, !noalias !305 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !307
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.az, ptr %.012.i.i.i18, align 8, !tbaa !55, !alias.scope !305, !noalias !306
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !57, !alias.scope !306, !noalias !305
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !57, !alias.scope !305, !noalias !306
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !56, !alias.scope !306, !noalias !305
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !56, !alias.scope !305, !noalias !306
  store ptr %i.ba, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !306, !noalias !305
  store i64 0, ptr %i.bi, align 8, !tbaa !56, !alias.scope !306, !noalias !305
  store i8 0, ptr %i.ba, align 8, !tbaa !57, !alias.scope !306, !noalias !305
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !104, !alias.scope !306, !noalias !305
  store double %i.bm, ptr %i.bk, align 8, !tbaa !104, !alias.scope !305, !noalias !306
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !298

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bo, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !108
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #36
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !109
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !107
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !108
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9benchmark7Barrier4waitEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.benchmark::MutexLock", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %0, ptr %1, align 8, !tbaa !311
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #32 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #34
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit:       ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !312
  %i.c = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, !prof !14

bb.c:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #32
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !64
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #32
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i

_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i: ; preds = %bb.d, %bb.c, %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !313
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !313
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !314
  %i.k = icmp slt i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !315  ; 3 uses
  br i1 %i.k, label %.lr.ph.preheader, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i

.lr.ph.preheader:                                 ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph

_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i: ; preds = %.noexc
  %i.o = load i32, ptr %i.f, align 8, !tbaa !313
  %i.p = load i32, ptr %i.i, align 8, !tbaa !314
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i, label %.lr.ph, !llvm.loop !308

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.lr.ph
  %i.r = load i32, ptr %i.l, align 4, !tbaa !315  ; 3 uses
  %i.s = icmp sgt i32 %i.r, %i.m
  br i1 %i.s, label %.noexc._ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i_crit_edge, label %_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i, !llvm.loop !308

.noexc._ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i_crit_edge: ; preds = %.noexc
  br label %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i, !llvm.loop !308

_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i: ; preds = %_ZZN9benchmark7Barrier13createBarrierERNS_9MutexLockEENKUlvE_clEv.exit.i.i, %.noexc._ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i_crit_edge
  %.not.i = icmp sgt i32 %i.r, %i.m
  br i1 %.not.i, label %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i

_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i: ; preds = %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i
  %i.t = phi i32 [ %i.r, %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i ], [ %i.m, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i ]
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.l, align 4, !tbaa !315
  store i32 0, ptr %i.f, align 8, !tbaa !313
  br label %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit

_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i, %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i
  %.1.i = phi i1 [ true, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit._crit_edge.i ], [ false, %_ZNSt18condition_variable4waitIZN9benchmark7Barrier13createBarrierERNS1_9MutexLockEEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.i ] ; 2 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !312, !range !84, !noundef !85
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN9benchmark9MutexLockD2Ev.exit

bb.e:                                             ; preds = %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !311    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN9benchmark9MutexLockD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #32 ; 0 uses
  br label %_ZN9benchmark9MutexLockD2Ev.exit

_ZN9benchmark9MutexLockD2Ev.exit:                 ; preds = %_ZN9benchmark7Barrier13createBarrierERNS_9MutexLockE.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.1.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN9benchmark9MutexLockD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.z) #32
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %i.a, align 8, !tbaa !312, !range !84, !noundef !85
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %_ZN9benchmark9MutexLockD2Ev.exit5

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %1, align 8, !tbaa !311   ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i4, label %_ZN9benchmark9MutexLockD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #32 ; 0 uses
  br label %_ZN9benchmark9MutexLockD2Ev.exit5

_ZN9benchmark9MutexLockD2Ev.exit5:                ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.g, %_ZN9benchmark9MutexLockD2Ev.exit
  ret i1 %.1.i
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #15

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

declare noundef zeroext i1 @_ZN9benchmark15IsColorTerminalEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9benchmark17IsTruthyFlagValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare void @_ZN9benchmark17BenchmarkReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN9benchmark17BenchmarkReporter7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind writable sret(%"class.std::vector.11") align 8, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #1

declare void @_ZN9benchmark8internal23PerfCountersMeasurementC1ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(640), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 64051194700380387
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.d = load ptr, ptr %0, align 8, !tbaa !154
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 144
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 144
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #35 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !145  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !157, !alias.scope !320, !noalias !319
  store <2 x ptr> %i.r, ptr %.012.i.i.i, align 8, !tbaa !157, !alias.scope !319, !noalias !320
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !158, !alias.scope !320, !noalias !319
  store ptr %i.u, ptr %i.s, align 8, !tbaa !158, !alias.scope !319, !noalias !320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !320, !noalias !319
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !157, !alias.scope !320, !noalias !319
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !157, !alias.scope !319, !noalias !320
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !158, !alias.scope !320, !noalias !319
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !158, !alias.scope !319, !noalias !320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !320, !noalias !319
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ad = load i16, ptr %i.ac, align 8, !alias.scope !320, !noalias !319
  store i16 %i.ad, ptr %i.ab, align 8, !alias.scope !319, !noalias !320
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false), !alias.scope !321
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !174, !alias.scope !320, !noalias !319
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !174, !alias.scope !319, !noalias !320
  store ptr null, ptr %i.ah, align 8, !tbaa !174, !alias.scope !320, !noalias !319
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !321
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %.not.i.i.i = icmp eq ptr %i.al, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, label %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, !llvm.loop !2

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal15BenchmarkRunnerES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !154
  br label %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit
  %i.an = phi ptr [ %.pr, %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.an, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #36
  br label %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal15BenchmarkRunnerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !154
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.as, ptr %i.j, align 8, !tbaa !145
  %i.at = getelementptr inbounds nuw [144 x i8], ptr %i.o, i64 %1
  store ptr %i.at, ptr %i.b, align 8, !tbaa !146
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN9benchmark8internal15BenchmarkRunnerESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(5000) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %5 = alloca %"class.std::uniform_int_distribution", align 8 ; 5 uses
  %6 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = udiv i64 4294967295, %i.e
  %.not = icmp ult i64 %i.f, %i.e
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = and i64 %i.d, 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i64 0, ptr %4, align 8, !tbaa !176
end_hunk_0
