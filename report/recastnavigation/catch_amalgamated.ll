Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorIN5Catch8TestSpec11FilterMatchESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !19407, !alias.scope !72086, !noalias !72087
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false), !alias.scope !72087, !noalias !72086
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN5Catch8TestSpec11FilterMatchESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !640

_ZNSt6vectorIN5Catch8TestSpec11FilterMatchESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN5Catch8TestSpec11FilterMatchES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN5Catch8TestSpec11FilterMatchESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bd, %_ZNSt6vectorIN5Catch8TestSpec11FilterMatchESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN5Catch8TestSpec11FilterMatchES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN5Catch8TestSpec11FilterMatchESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Catch8TestSpec11FilterMatchESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19403
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cb) #60
  br label %_ZNSt12_Vector_baseIN5Catch8TestSpec11FilterMatchESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5Catch8TestSpec11FilterMatchESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5Catch8TestSpec11FilterMatchESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !19401
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !19402
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !19403
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #45

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20GeneratorUntypedBaseE, i64 16), ptr %0, align 8, !tbaa !3603
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9326 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !9325
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch19AssertionResultDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9321
  %i.b = load ptr, ptr %1, align 8, !tbaa !9326   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9324 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !9356

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !9326
  store i64 %i.d, ptr %i.a, align 8, !tbaa !9325
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !9325
  store i8 %i.k, ptr %i.j, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !9324
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !9325
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !9321
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !9326 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9324 ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.h, label %._crit_edge.i.i4

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, !prof !9356

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5: ; preds = %bb.j
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #59 ; 2 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !9326
  store i64 %i.s, ptr %i.p, align 8, !tbaa !9325
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.s, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit6
  ]

bb.l:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.q, align 1, !tbaa !9325
  store i8 %i.z, ptr %i.y, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit6

bb.m:                                             ; preds = %._crit_edge.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit6: ; preds = %._crit_edge.i.i4, %bb.l, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !9324
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !9325
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, ptr noundef nonnull align 8 dereferenceable(20) %i.ad, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16155 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16176  ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch11MessageInfoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch11MessageInfoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 16, i1 false), !tbaa.struct !16152
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !9321
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !9326 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5Catch11MessageInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9324 ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN5Catch11MessageInfoESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !9326
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !9325
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !9325
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !9324
  br label %_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !9324
  store ptr %i.v, ptr %i.s, align 8, !tbaa !9326
  store i64 0, ptr %i.ad, align 8, !tbaa !9324
  store i8 0, ptr %i.v, align 8, !tbaa !9325
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72096)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !16152, !alias.scope !72097
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !9321, !alias.scope !72095, !noalias !72096
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !9326, !alias.scope !72096, !noalias !72095 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !9324, !alias.scope !72096, !noalias !72095 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !72097
  br label %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !9326, !alias.scope !72095, !noalias !72096
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !9325, !alias.scope !72096, !noalias !72095
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !9325, !alias.scope !72095, !noalias !72096
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !9324, !alias.scope !72096, !noalias !72095
  br label %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store i64 %i.as, ptr %i.au, align 8, !tbaa !9324, !alias.scope !72095, !noalias !72096
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !9326, !alias.scope !72096, !noalias !72095
  store i64 0, ptr %i.at, align 8, !tbaa !9324, !alias.scope !72096, !noalias !72095
  store i8 0, ptr %i.al, align 8, !tbaa !9325, !alias.scope !72096, !noalias !72095
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !alias.scope !72097
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !868

_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN5Catch11MessageInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.ay, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.br, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.az, %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72099)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !16152, !alias.scope !72100
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !9321, !alias.scope !72098, !noalias !72099
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !9326, !alias.scope !72099, !noalias !72098 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !9324, !alias.scope !72099, !noalias !72098 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false), !alias.scope !72100
  br label %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !9326, !alias.scope !72098, !noalias !72099
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !9325, !alias.scope !72099, !noalias !72098
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !9325, !alias.scope !72098, !noalias !72099
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !9324, !alias.scope !72099, !noalias !72098
  br label %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bl = phi i64 [ %i.bh, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !9324, !alias.scope !72098, !noalias !72099
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !9326, !alias.scope !72099, !noalias !72098
  store i64 0, ptr %i.bm, align 8, !tbaa !9324, !alias.scope !72099, !noalias !72098
  store i8 0, ptr %i.be, align 8, !tbaa !9325, !alias.scope !72099, !noalias !72098
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !alias.scope !72100
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !868

_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.az, %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.br, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN5Catch11MessageInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16156
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #60
  br label %_ZNSt12_Vector_baseIN5Catch11MessageInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5Catch11MessageInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !16176
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !16155
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !16156
  ret void
}

; Function Attrs: nounwind
declare void @llvm.debugtrap() #49

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9324 ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9326   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.012.i.i.i = phi ptr [ %i.bs, %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN5Catch19ReporterDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5Catch19ReporterDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72160)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i, align 8, !tbaa !9321, !alias.scope !72159, !noalias !72160
  %i.as = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !9326, !alias.scope !72160, !noalias !72159 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9324, !alias.scope !72160, !noalias !72159 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !72161
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.as, ptr %.012.i.i.i, align 8, !tbaa !9326, !alias.scope !72159, !noalias !72160
  %i.az = load i64, ptr %i.at, align 8, !tbaa !9325, !alias.scope !72160, !noalias !72159
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !9325, !alias.scope !72159, !noalias !72160
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !9324, !alias.scope !72160, !noalias !72159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ba = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.aw, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !9324, !alias.scope !72159, !noalias !72160
  store ptr %i.at, ptr %.0911.i.i.i, align 8, !tbaa !9326, !alias.scope !72160, !noalias !72159
  store i64 0, ptr %i.bb, align 8, !tbaa !9324, !alias.scope !72160, !noalias !72159
  store i8 0, ptr %i.at, align 8, !tbaa !9325, !alias.scope !72160, !noalias !72159
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !9321, !alias.scope !72159, !noalias !72160
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !9326, !alias.scope !72160, !noalias !72159 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9324, !alias.scope !72160, !noalias !72159 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !72161
  br label %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !9326, !alias.scope !72159, !noalias !72160
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !9325, !alias.scope !72160, !noalias !72159
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !9325, !alias.scope !72159, !noalias !72160
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !9324, !alias.scope !72160, !noalias !72159
  br label %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.f
  %i.bo = phi i64 [ %i.bk, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !9324, !alias.scope !72159, !noalias !72160
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !9326, !alias.scope !72160, !noalias !72159
  store i64 0, ptr %i.bp, align 8, !tbaa !9324, !alias.scope !72160, !noalias !72159
  store i8 0, ptr %i.bh, align 8, !tbaa !9325, !alias.scope !72160, !noalias !72159
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !879

_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5Catch19ReporterDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN5Catch19ReporterDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.bs, %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.cv, %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bt, %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.cu, %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72163)
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.bu, ptr %.012.i.i.i18, align 8, !tbaa !9321, !alias.scope !72162, !noalias !72163
  %i.bv = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !9326, !alias.scope !72163, !noalias !72162 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !9324, !alias.scope !72163, !noalias !72162 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false), !alias.scope !72164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bv, ptr %.012.i.i.i18, align 8, !tbaa !9326, !alias.scope !72162, !noalias !72163
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !9325, !alias.scope !72163, !noalias !72162
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !9325, !alias.scope !72162, !noalias !72163
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !9324, !alias.scope !72163, !noalias !72162
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.g
  %i.cd = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ], [ %i.bz, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !9324, !alias.scope !72162, !noalias !72163
  store ptr %i.bw, ptr %.0911.i.i.i19, align 8, !tbaa !9326, !alias.scope !72163, !noalias !72162
  store i64 0, ptr %i.ce, align 8, !tbaa !9324, !alias.scope !72163, !noalias !72162
  store i8 0, ptr %i.bw, align 8, !tbaa !9325, !alias.scope !72163, !noalias !72162
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !9321, !alias.scope !72162, !noalias !72163
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !9326, !alias.scope !72163, !noalias !72162 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !9324, !alias.scope !72163, !noalias !72162 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false), !alias.scope !72164
  br label %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i23
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !9326, !alias.scope !72162, !noalias !72163
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !9325, !alias.scope !72163, !noalias !72162
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !9325, !alias.scope !72162, !noalias !72163
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !9324, !alias.scope !72163, !noalias !72162
  br label %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i24, %bb.h
  %i.cr = phi i64 [ %i.cn, %bb.h ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i24 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !9324, !alias.scope !72162, !noalias !72163
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !9326, !alias.scope !72163, !noalias !72162
  store i64 0, ptr %i.cs, align 8, !tbaa !9324, !alias.scope !72163, !noalias !72162
  store i8 0, ptr %i.ck, align 8, !tbaa !9325, !alias.scope !72163, !noalias !72162
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cu, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30, label %.lr.ph.i.i.i17, !llvm.loop !879

_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30: ; preds = %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.bt, %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cv, %_ZSt19__relocate_object_aIN5Catch19ReporterDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN5Catch19ReporterDescriptionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !19432
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cz) #60
  br label %_ZNSt12_Vector_baseIN5Catch19ReporterDescriptionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5Catch19ReporterDescriptionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5Catch19ReporterDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit30, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !19430
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !19431
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.da, ptr %i.cw, align 8, !tbaa !19432
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19442 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19441  ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 16, i1 false), !tbaa.struct !16152
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !9321
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !9326 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9324 ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !9326
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !9325
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !9325
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !9324
  br label %_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !9324
  store ptr %i.v, ptr %i.s, align 8, !tbaa !9326
  store i64 0, ptr %i.ad, align 8, !tbaa !9324
  store i8 0, ptr %i.v, align 8, !tbaa !9325
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72173)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !16152, !alias.scope !72174
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !9321, !alias.scope !72172, !noalias !72173
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !9326, !alias.scope !72173, !noalias !72172 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9324, !alias.scope !72173, !noalias !72172 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !72174
  br label %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !9326, !alias.scope !72172, !noalias !72173
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !9325, !alias.scope !72173, !noalias !72172
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !9325, !alias.scope !72172, !noalias !72173
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !9324, !alias.scope !72173, !noalias !72172
  br label %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !9324, !alias.scope !72172, !noalias !72173
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !9326, !alias.scope !72173, !noalias !72172
  store i64 0, ptr %i.ar, align 8, !tbaa !9324, !alias.scope !72173, !noalias !72172
  store i8 0, ptr %i.aj, align 8, !tbaa !9325, !alias.scope !72173, !noalias !72172
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !72168

_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN5Catch19ListenerDescriptionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72176)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !16152, !alias.scope !72177
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !9321, !alias.scope !72175, !noalias !72176
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !9326, !alias.scope !72176, !noalias !72175 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !9324, !alias.scope !72176, !noalias !72175 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !72177
  br label %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !9326, !alias.scope !72175, !noalias !72176
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !9325, !alias.scope !72176, !noalias !72175
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !9325, !alias.scope !72175, !noalias !72176
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !9324, !alias.scope !72176, !noalias !72175
  br label %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !9324, !alias.scope !72175, !noalias !72176
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !9326, !alias.scope !72176, !noalias !72175
  store i64 0, ptr %i.bi, align 8, !tbaa !9324, !alias.scope !72176, !noalias !72175
  store i8 0, ptr %i.ba, align 8, !tbaa !9325, !alias.scope !72176, !noalias !72175
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !72168

_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN5Catch19ListenerDescriptionES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN5Catch19ListenerDescriptionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19443
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #60
  br label %_ZNSt12_Vector_baseIN5Catch19ListenerDescriptionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5Catch19ListenerDescriptionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5Catch19ListenerDescriptionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !19441
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !19442
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !19443
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #45

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #45

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #22

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch6Detail10unique_ptrINS0_20EventListenerFactoryEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19437 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19438  ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch6Detail10unique_ptrINS0_20EventListenerFactoryEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch6Detail10unique_ptrINS0_20EventListenerFactoryEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 10 uses
end_hunk_1
begin_hunk_2_@_ZN5Catch12TablePrinter4openEv:bb.a
  %.not4.i.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bo, %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i ], [ %i.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7 ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !9325
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #60
  br label %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !666

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5Catch8TextFlow6ColumnEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !21808
  br label %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7
  %i.bp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exitthread-pre-split.i.i ], [ %i.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i.i, label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21807
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #60
  br label %_ZN5Catch8TextFlow7ColumnsD2Ev.exit

_ZN5Catch8TextFlow7ColumnsD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN5Catch8TextFlow6ColumnEEvT_S4_.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  br label %bb.q

bb.l:                                             ; preds = %.lr.ph, %_ZN5Catch8TextFlow6ColumnD2Ev.exit14
  %.sroa.016.020 = phi ptr [ %i.t, %.lr.ph ], [ %i.df, %_ZN5Catch8TextFlow6ColumnD2Ev.exit14 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @_ZN5Catch8TextFlow18AnsiSkippingStringC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.020)
  store i64 0, ptr %i.y, align 8, !tbaa !19289
  store i64 -1, ptr %i.z, align 8, !tbaa !19288
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.016.020, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !23653
  %i.bx = add i64 %i.bw, -2
  store i64 %i.bx, ptr %i.x, align 8, !tbaa !19287
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !21806 ; 9 uses
  %i.bz = load ptr, ptr %i.ab, align 8, !tbaa !21807
  %.not.i.i.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i.i, label %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !9321
  %i.cb = load ptr, ptr %2, align 8, !tbaa !9326  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ac
  br i1 %i.cc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cd = load i64, ptr %i.ad, align 8, !tbaa !9324 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add nuw nsw i64 %i.cd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.cf, i1 false)
  br label %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !9326
  %i.cg = load i64, ptr %i.ac, align 8, !tbaa !9325
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !9325
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !9324
  br label %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit.thread

_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ch = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.cd, %bb.n ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !9324
  store ptr %i.ac, ptr %2, align 8, !tbaa !9326
  store i64 0, ptr %i.ad, align 8, !tbaa !9324
  store i8 0, ptr %i.ac, align 8, !tbaa !9325
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ck = load i64, ptr %i.ae, align 8, !tbaa !21803
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !21803
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  store ptr %i.cm, ptr %i.aa, align 8, !tbaa !21806
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit: ; preds = %bb.l
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.by, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %.pre21 = load ptr, ptr %2, align 8, !tbaa !9326 ; 2 uses
  %i.cn = icmp eq ptr %.pre21, %i.ac
  br i1 %i.cn, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !9325
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.cp) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit

_ZN5Catch8TextFlow6ColumnD2Ev.exit:               ; preds = %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit, %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr %i.af, ptr %3, align 8, !tbaa !9321, !alias.scope !72403
  store i8 0, ptr %i.af, align 8, !alias.scope !72403
  store i64 0, ptr %i.ag, align 8, !tbaa !9324, !alias.scope !72403
  store i64 0, ptr %i.ah, align 8, !tbaa !21803, !alias.scope !72403
  store i64 0, ptr %i.aj, align 8, !tbaa !19289, !alias.scope !72403
  store i64 -1, ptr %i.ak, align 8, !tbaa !19288, !alias.scope !72403
  store i64 2, ptr %i.ai, align 8, !tbaa !19287, !alias.scope !72403
  %i.cq = load ptr, ptr %i.aa, align 8, !tbaa !21806 ; 9 uses
  %i.cr = load ptr, ptr %i.ab, align 8, !tbaa !21807
  %.not.i.i.i8 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i.i8, label %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11, label %bb.o

bb.o:                                             ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !9321
  %i.ct = load ptr, ptr %3, align 8, !tbaa !9326  ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.af
  br i1 %i.cu, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9

bb.p:                                             ; preds = %bb.o
  %i.cv = load i8, ptr %i.af, align 8
  store i8 %i.cv, ptr %i.cs, align 8
  br label %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9: ; preds = %bb.o
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !9326
  %i.cw = load i64, ptr %i.af, align 8, !tbaa !9325
  store i64 %i.cw, ptr %i.cs, align 8, !tbaa !9325
  br label %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11.thread

_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !9324
  store ptr %i.af, ptr %3, align 8, !tbaa !9326
  store i64 0, ptr %i.ag, align 8, !tbaa !9324
  store i8 0, ptr %i.af, align 8, !tbaa !9325
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cz = load i64, ptr %i.ah, align 8, !tbaa !21803
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !21803
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  store ptr %i.db, ptr %i.aa, align 8, !tbaa !21806
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit14

_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11: ; preds = %_ZN5Catch8TextFlow6ColumnD2Ev.exit
  call void @_ZNSt6vectorIN5Catch8TextFlow6ColumnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %.pre22 = load ptr, ptr %3, align 8, !tbaa !9326 ; 2 uses
  %i.dc = icmp eq ptr %.pre22, %i.af
  br i1 %i.dc, label %_ZN5Catch8TextFlow6ColumnD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12: ; preds = %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11
  %i.dd = load i64, ptr %i.af, align 8, !tbaa !9325
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.pre22, i64 noundef %i.de) #60
  br label %_ZN5Catch8TextFlow6ColumnD2Ev.exit14

_ZN5Catch8TextFlow6ColumnD2Ev.exit14:             ; preds = %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11, %_ZN5Catch8TextFlowpLERNS0_7ColumnsEONS0_6ColumnE.exit11.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.016.020, i64 48 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.v
  br i1 %i.dg, label %._crit_edge, label %bb.l

bb.q:                                             ; preds = %_ZN5Catch8TextFlow7ColumnsD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE17_M_realloc_insertIJRKNS0_14BenchmarkStatsINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23705 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27195  ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 440                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 20962209174669945)
  %i.l = select i1 %i.j, i64 20962209174669945, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 440
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !23681
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 248 ; 2 uses
  tail call void @_ZN5Catch14BenchmarkStatsINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(192) %i.s, ptr noundef nonnull align 8 dereferenceable(192) %2)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !23684
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.t = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !23681 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.u, ptr noundef nonnull align 8 dereferenceable(232) %i.t, i64 56, i1 false), !tbaa.struct !9361
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  tail call void @_ZN5Catch19AssertionResultDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %i.v, ptr noundef nonnull align 8 dereferenceable(84) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  tail call void @_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false), !tbaa.struct !21623
  br label %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i

_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.ab = phi ptr [ %i.u, %bb.c ], [ null, %.lr.ph.i.i.i.i.i ]
  store ptr %i.ab, ptr %.011.i.i.i.i.i, align 8, !tbaa !23681
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23684 ; 2 uses
  %.not.i3.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i3.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 248 ; 2 uses
  tail call void @_ZN5Catch14BenchmarkStatsINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(192) %i.ae, ptr noundef nonnull align 8 dereferenceable(192) %i.ad)
  br label %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i
  %i.af = phi ptr [ %i.ae, %bb.d ], [ null, %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 240
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23684
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 440 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 440 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !882

_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 440 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25
  %.011.i.i.i.i.i20 = phi ptr [ %i.az, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %i.aj, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 8 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.ay, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !23681 ; 5 uses
  %.not.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i22, label %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i23, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.al, ptr noundef nonnull align 8 dereferenceable(232) %i.ak, i64 56, i1 false), !tbaa.struct !9361
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  tail call void @_ZN5Catch19AssertionResultDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %i.am, ptr noundef nonnull align 8 dereferenceable(84) %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  tail call void @_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 176
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !tbaa.struct !21623
  br label %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i23

_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i23: ; preds = %bb.e, %.lr.ph.i.i.i.i.i19
  %i.as = phi ptr [ %i.al, %bb.e ], [ null, %.lr.ph.i.i.i.i.i19 ]
  store ptr %i.as, ptr %.011.i.i.i.i.i20, align 8, !tbaa !23681
  %i.at = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23684 ; 2 uses
  %.not.i3.i.i.i.i.i.i.i24 = icmp eq ptr %i.au, null
  br i1 %.not.i3.i.i.i.i.i.i.i24, label %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25, label %bb.f

bb.f:                                             ; preds = %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i23
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 248 ; 2 uses
  tail call void @_ZN5Catch14BenchmarkStatsINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(192) %i.av, ptr noundef nonnull align 8 dereferenceable(192) %i.au)
  br label %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25

_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25: ; preds = %bb.f, %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i23
  %i.aw = phi ptr [ %i.av, %bb.f ], [ null, %_ZN5Catch8OptionalINS_14AssertionStatsEEC2ERKS2_.exit.i.i.i.i.i.i.i23 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 240
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !23684
  %i.ay = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 440 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 440 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i.i.i26, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, label %.lr.ph.i.i.i.i.i19, !llvm.loop !882

_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit28: ; preds = %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.aj, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.az, %_ZSt10_ConstructIN5Catch6Detail26AssertionOrBenchmarkResultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i25 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch6Detail26AssertionOrBenchmarkResultEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, %_ZSt8_DestroyIN5Catch6Detail26AssertionOrBenchmarkResultEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bo, %_ZSt8_DestroyIN5Catch6Detail26AssertionOrBenchmarkResultEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23684 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5Catch6Detail26AssertionOrBenchmarkResultEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !9291 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !9293
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #60
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !9326 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt8_DestroyIN5Catch6Detail26AssertionOrBenchmarkResultEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !9325
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #60
  br label %_ZSt8_DestroyIN5Catch6Detail26AssertionOrBenchmarkResultEEvPT_.exit.i.i

_ZSt8_DestroyIN5Catch6Detail26AssertionOrBenchmarkResultEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  tail call void @_ZN5Catch8OptionalINS_14AssertionStatsEE5resetEv(ptr noundef nonnull align 8 dereferenceable(440) %.05.i.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 440 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Catch6Detail26AssertionOrBenchmarkResultEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !883

_ZSt8_DestroyIPN5Catch6Detail26AssertionOrBenchmarkResultEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN5Catch6Detail26AssertionOrBenchmarkResultEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Catch6Detail26AssertionOrBenchmarkResultES3_SaIS2_EET0_T_S6_S5_RT1_.exit28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5Catch6Detail26AssertionOrBenchmarkResultEEvT_S4_.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !23706
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #60
  br label %_ZNSt12_Vector_baseIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5Catch6Detail26AssertionOrBenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5Catch6Detail26AssertionOrBenchmarkResultEEvT_S4_.exit, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !27195
  store ptr %.0.lcssa.i.i.i.i.i27, ptr %i.a, align 8, !tbaa !23705
  %i.bt = getelementptr inbounds nuw [440 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !23706
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch14BenchmarkStatsINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9321
  %i.b = load ptr, ptr %1, align 8, !tbaa !9326   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9324 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !9356

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !9326
  store i64 %i.d, ptr %i.a, align 8, !tbaa !9325
end_hunk_2
