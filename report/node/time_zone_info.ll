inline.NumInlined: 1272
inline.NumDeleted: 541
begin_hunk_0_@_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_default_appendEm:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %.not.i.i.i28.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !133

_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i31 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !alias.scope !134
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i32 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #27
  br label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !33

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_"(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [4 x ptr], align 8                ; 7 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca [24 x i8], align 16               ; 16 uses
  %i.d = alloca [52 x i8], align 16               ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !150 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 5)
  %i.h = load ptr, ptr %2, align 8, !noalias !150
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr nonnull @.str.17, i64 %spec.select.i.i.i.i.i.i), !noalias !150
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.f, 5
  %i.i = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !150
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 14 uses
  store ptr %i.j, ptr %11, align 8, !noalias !150
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !noalias !150
  store i8 0, ptr %i.j, align 8, !noalias !150
  %i.l = icmp eq i64 %.0.i.i.i.i.i, %i.f
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !noalias !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !noalias !150
  %.not.i.i.i.i = icmp eq i8 %i.o, 47
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = call ptr @getenv(ptr noundef nonnull @.str.19) #24, !noalias !150 ; 3 uses
  %.not12.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not12.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 1, !noalias !150
  %.not13.i.i.i.i = icmp eq i8 %i.q, 0
  %spec.select.i.i.i.i = select i1 %.not13.i.i.i.i, ptr @.str.18, ptr %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.18, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 4 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #24, !noalias !150 ; 10 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.r, 15
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  switch i64 %i.r, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %.0.i.i.i.i, align 1, !noalias !150
  store i8 %i.t, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.u = icmp samesign ult i64 %i.r, 30
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i64 %i.r, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, !prof !151

bb.l:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !150
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.x = phi i64 [ %i.v, %bb.k ], [ 31, %bb.j ]
  %.0.i525.i.i.i = phi i64 [ %i.r, %bb.k ], [ 30, %bb.j ]
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26, !noalias !150 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  store ptr %i.y, ptr %11, align 8, !noalias !150
  store i64 %.0.i525.i.i.i, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, %bb.i, %bb.h, %bb.g
  %i.z = phi ptr [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i ]
  store i64 %i.r, ptr %i.k, align 8, !noalias !150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !noalias !150
  %i.ab = load i64, ptr %i.k, align 8, !noalias !150 ; 4 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j                 ; 2 uses
  br i1 %i.ae, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.af = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ag = load i64, ptr %i.j, align 8, !noalias !150
  %i.ah = select i1 %i.ae, i64 15, i64 %i.ag
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ab, i64 noundef 0, ptr noundef null, i64 noundef 1), !noalias !150
  %.pre.i.i.i.i.i.i = load ptr, ptr %11, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i8 47, ptr %i.ak, align 1, !noalias !150
  store i64 %i.ac, ptr %i.k, align 8, !noalias !150
  %i.al = load ptr, ptr %11, align 8, !noalias !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac
  store i8 0, ptr %i.am, align 1, !noalias !150
  %.pre26.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !150
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.an = phi i64 [ %.pre26.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.ao = icmp ugt i64 %.0.i.i.i.i.i, %i.an
  br i1 %i.ao, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.an) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ap = load ptr, ptr %2, align 8, !noalias !150
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.0.i.i.i.i.i ; 3 uses
  %i.ar = sub nuw i64 %i.an, %.0.i.i.i.i.i        ; 5 uses
  %i.as = load i64, ptr %i.k, align 8, !noalias !150 ; 5 uses
  %i.at = sub i64 9223372036854775807, %i.as
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.av = add i64 %i.as, %i.ar                    ; 3 uses
  %i.aw = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.j                 ; 2 uses
  br i1 %i.ax, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.ay = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.az = load i64, ptr %i.j, align 8, !noalias !150
  %i.ba = select i1 %i.ax, i64 15, i64 %i.az
  %.not.i.i.i17.i.i.i.i = icmp ugt i64 %i.av, %i.ba
  br i1 %.not.i.i.i17.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i
  %.not8.i.i.i18.i.i.i.i = icmp eq i64 %i.an, %.0.i.i.i.i.i
  br i1 %.not8.i.i.i18.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as ; 2 uses
  %cond.i.i.i19.i.i.i.i = icmp eq i64 %i.ar, 1
  br i1 %cond.i.i.i19.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = load i8, ptr %i.aq, align 1, !noalias !150
  store i8 %i.bc, ptr %i.bb, align 1, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.aq, i64 %i.ar, i1 false), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.as, i64 noundef 0, ptr noundef %i.aq, i64 noundef %i.ar), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  store i64 %i.av, ptr %i.k, align 8, !noalias !150
  %i.bd = load ptr, ptr %11, align 8, !noalias !150
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  store i8 0, ptr %i.be, align 1, !noalias !150
  %i.bf = load ptr, ptr %11, align 8, !noalias !150
  %i.bg = call noalias ptr @fopen64(ptr noundef readonly %i.bf, ptr noundef nonnull @.str.20), !noalias !152 ; 2 uses
  %.not.i20.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i20.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit23.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i
  %i.bh = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26, !noalias !150 ; 5 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %i.bh, align 8, !noalias !150
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.bj, align 8, !noalias !150
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bi, ptr %i.bk, align 8, !noalias !150
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 -1, ptr %i.bl, align 8, !noalias !150
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit23.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit23.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i
  %storemerge.i.i.i.i = phi ptr [ %i.bh, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i.i.i.i, ptr %0, align 8, !alias.scope !150
  %i.bm = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.j
  br i1 %i.bn, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit23.i.i.i.i
  %i.bo = load i64, ptr %i.j, align 8, !noalias !150
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27, !noalias !150
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit23.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !150
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i, label %bb.x, label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.x:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !158
  %i.bq = load i64, ptr %i.e, align 8, !noalias !159 ; 3 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i: ; preds = %bb.x
  %spec.select.i.i.i15.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 5)
  %i.bs = load ptr, ptr %2, align 8, !noalias !159
  %bcmp122.i.i.i.i = call i32 @bcmp(ptr %i.bs, ptr nonnull @.str.17, i64 %spec.select.i.i.i15.i.i.i), !noalias !159
  %.not.i.i16.i.i.i = icmp eq i32 %bcmp122.i.i.i.i, 0
  br i1 %.not.i.i16.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i, %bb.x
  %.inv.i24.i.i.i = icmp ult i64 %i.bq, 5
  %i.bt = select i1 %.inv.i24.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i
  %.0.i.i18.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i ], [ %i.bt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 45
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 46
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 47
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i
  %.0.idx132.i.i.i.i = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i ], [ %.0.add.i.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i ] ; 2 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr @constinit.26, i64 %.0.idx132.i.i.i.i
  %i.cl = load ptr, ptr %.0.ptr.i.i.i.i, align 8, !noalias !159
  %i.cm = call noalias ptr @fopen64(ptr noundef readonly %i.cl, ptr noundef nonnull @.str.20), !noalias !160 ; 7 uses
  %.not.i50.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i50.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !159
  %i.cn = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %i.cm), !noalias !159
  %.not43.i.i.i.i = icmp eq i64 %i.cn, 24
  br i1 %.not43.i.i.i.i, label %bb.aa, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.co = load i32, ptr %i.c, align 16
  %i.cp = xor i32 %i.co, 1633974900
  %i.cq = getelementptr i8, ptr %i.c, i64 4
  %i.cr = load i16, ptr %i.cq, align 4
  %i.cs = zext i16 %i.cr to i32
  %i.ct = xor i32 %i.cs, 24948
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not44.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not44.i.i.i.i, label %bb.ab, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load i8, ptr %i.bu, align 1, !noalias !159
  %.07.val.i.i.i.i.i = load i8, ptr %i.bv, align 4, !noalias !159 ; 2 uses
  %i.cy = zext i8 %.07.val.i.i.i.i.i to i64
  %.07.val.1.i.i.i.i.i = load i8, ptr %i.bw, align 1, !noalias !159
  %i.cz = zext i8 %.07.val.1.i.i.i.i.i to i64
  %.07.val.2.i.i.i.i.i = load i8, ptr %i.bx, align 2, !noalias !159
  %i.da = zext i8 %.07.val.2.i.i.i.i.i to i64
  %i.db = shl nuw nsw i64 %i.cy, 24
  %i.dc = shl nuw nsw i64 %i.cz, 16
  %i.dd = shl nuw nsw i64 %i.da, 8
  %.07.val.3.i.i.i.i.i = load i8, ptr %i.by, align 1, !noalias !159
  %i.de = zext i8 %.07.val.3.i.i.i.i.i to i64
  %i.df = or disjoint i64 %i.dc, %i.db
  %i.dg = or disjoint i64 %i.df, %i.dd
  %i.dh = or disjoint i64 %i.dg, %i.de            ; 4 uses
  %i.di = or disjoint i64 %i.dh, -4294967296
  %i.dj = icmp slt i8 %.07.val.i.i.i.i.i, 0       ; 2 uses
  %.0.i51.i.i.i.i = select i1 %i.dj, i64 %i.di, i64 %i.dh
  %.07.val.i52.i.i.i.i = load i8, ptr %i.bz, align 16, !noalias !159 ; 2 uses
  %i.dk = zext i8 %.07.val.i52.i.i.i.i to i64
  %.07.val.1.i53.i.i.i.i = load i8, ptr %i.ca, align 1, !noalias !159
  %i.dl = zext i8 %.07.val.1.i53.i.i.i.i to i64
  %.07.val.2.i54.i.i.i.i = load i8, ptr %i.cb, align 2, !noalias !159
  %i.dm = zext i8 %.07.val.2.i54.i.i.i.i to i64
  %i.dn = shl nuw nsw i64 %i.dk, 24
  %i.do = shl nuw nsw i64 %i.dl, 16
  %i.dp = shl nuw nsw i64 %i.dm, 8
  %.07.val.3.i55.i.i.i.i = load i8, ptr %i.cc, align 1, !noalias !159
  %i.dq = zext i8 %.07.val.3.i55.i.i.i.i to i64
  %i.dr = or disjoint i64 %i.do, %i.dn
  %i.ds = or disjoint i64 %i.dr, %i.dp
  %i.dt = or disjoint i64 %i.ds, %i.dq            ; 2 uses
  %i.du = or disjoint i64 %i.dt, -4294967296
  %i.dv = icmp slt i8 %.07.val.i52.i.i.i.i, 0
  %.0.i56.i.i.i.i = select i1 %i.dv, i64 %i.du, i64 %i.dt ; 3 uses
  %i.dw = icmp slt i64 %.0.i56.i.i.i.i, %.0.i51.i.i.i.i
  %or.cond.i.i.i.i = or i1 %i.dj, %i.dw
  br i1 %or.cond.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = call i32 @fseek(ptr noundef nonnull %i.cm, i64 noundef %i.dh, i32 noundef 0), !noalias !159
  %.not45.i.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not45.i.i.i.i, label %bb.ad, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !159
  %i.dy = sub nsw i64 %.0.i56.i.i.i.i, %i.dh      ; 3 uses
  %i.dz = udiv i64 %i.dy, 52                      ; 2 uses
  %i.ea = mul nuw i64 %i.dz, 52
  %.not46.i.i.i.i = icmp ne i64 %i.ea, %i.dy
  %.not47125.i.i.i.i = icmp ult i64 %i.dy, 52
  %or.cond146.i.i.i.i = or i1 %.not47125.i.i.i.i, %.not46.i.i.i.i
  br i1 %or.cond146.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ae:                                            ; preds = %bb.ag
  %i.eb = add i64 %.038126.i.i.i.i, 1             ; 2 uses
  %.not47.i.i.i.i = icmp eq i64 %i.eb, %i.dz
  br i1 %.not47.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !163

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ae
  %.038126.i.i.i.i = phi i64 [ %i.eb, %bb.ae ], [ 0, %bb.ad ]
  %i.ec = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.cm), !noalias !159
  %.not48.i.i.i.i = icmp eq i64 %i.ec, 52
  br i1 %.not48.i.i.i.i, label %bb.af, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %.07.val.i57.i.i.i.i = load i8, ptr %i.cd, align 8, !noalias !159 ; 2 uses
  %i.ed = zext i8 %.07.val.i57.i.i.i.i to i64
  %.07.val.1.i58.i.i.i.i = load i8, ptr %i.ce, align 1, !noalias !159
  %i.ee = zext i8 %.07.val.1.i58.i.i.i.i to i64
  %.07.val.2.i59.i.i.i.i = load i8, ptr %i.cf, align 2, !noalias !159
  %i.ef = zext i8 %.07.val.2.i59.i.i.i.i to i64
  %i.eg = shl nuw nsw i64 %i.ed, 24
  %i.eh = shl nuw nsw i64 %i.ee, 16
  %i.ei = shl nuw nsw i64 %i.ef, 8
  %.07.val.3.i60.i.i.i.i = load i8, ptr %i.cg, align 1, !noalias !159
  %i.ej = zext i8 %.07.val.3.i60.i.i.i.i to i64
  %i.ek = or disjoint i64 %i.eh, %i.eg
  %i.el = or disjoint i64 %i.ek, %i.ei
  %i.em = or disjoint i64 %i.el, %i.ej            ; 2 uses
  %i.en = or disjoint i64 %i.em, -4294967296
  %i.eo = icmp slt i8 %.07.val.i57.i.i.i.i, 0
  %.0.i61.i.i.i.i = select i1 %i.eo, i64 %i.en, i64 %i.em
  %i.ep = add nsw i64 %.0.i61.i.i.i.i, %.0.i56.i.i.i.i ; 2 uses
  %.07.val.i62.i.i.i.i = load i8, ptr %i.ch, align 4, !noalias !159 ; 2 uses
  %i.eq = zext i8 %.07.val.i62.i.i.i.i to i64
  %.07.val.1.i63.i.i.i.i = load i8, ptr %i.ci, align 1, !noalias !159
  %i.er = zext i8 %.07.val.1.i63.i.i.i.i to i64
  %.07.val.2.i64.i.i.i.i = load i8, ptr %i.cj, align 2, !noalias !159
  %i.es = zext i8 %.07.val.2.i64.i.i.i.i to i64
  %i.et = shl nuw nsw i64 %i.eq, 24
  %i.eu = shl nuw nsw i64 %i.er, 16
  %i.ev = shl nuw nsw i64 %i.es, 8
  %.07.val.3.i65.i.i.i.i = load i8, ptr %i.ck, align 1, !noalias !159
  %i.ew = zext i8 %.07.val.3.i65.i.i.i.i to i64
  %i.ex = or disjoint i64 %i.eu, %i.et
  %i.ey = or disjoint i64 %i.ex, %i.ev
  %i.ez = or disjoint i64 %i.ey, %i.ew            ; 2 uses
  %i.fa = or disjoint i64 %i.ez, -4294967296
  %i.fb = icmp slt i8 %.07.val.i62.i.i.i.i, 0
  %.0.i66.i.i.i.i = select i1 %i.fb, i64 %i.fa, i64 %i.ez ; 2 uses
  %i.fc = or i64 %.0.i66.i.i.i.i, %i.ep
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.fc, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.ag, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.cd, align 8, !noalias !159
  %i.fd = load ptr, ptr %2, align 8, !noalias !159
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.0.i.i18.i.i.i
  %i.ff = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fe, ptr noundef nonnull dereferenceable(1) %i.d) #29, !noalias !159
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.fh = call i32 @fseek(ptr noundef nonnull %i.cm, i64 noundef %i.ep, i32 noundef 0), !noalias !159
  %.not49.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not49.i.i.i.i, label %bb.ai, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fi = icmp eq i8 %i.cx, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.fk = select i1 %i.fi, ptr %i.fj, ptr @.str.28 ; 3 uses
  %i.fl = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !159 ; 8 uses
  %i.fm = ptrtoint ptr %i.cm to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fn, ptr %10, align 8, !noalias !159
  %i.fo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #24, !noalias !159 ; 8 uses
  %i.fp = icmp ugt i64 %i.fo, 15
  br i1 %i.fp, label %bb.aj, label %._crit_edge.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fq = icmp slt i64 %i.fo, 0
  br i1 %i.fq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !159
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fr = add nuw i64 %i.fo, 1                    ; 2 uses
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !23

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !159
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.ft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #26, !noalias !159 ; 2 uses
  store ptr %i.ft, ptr %10, align 8, !noalias !159
  store i64 %i.fo, ptr %i.fn, align 8, !noalias !159
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.ai
  %i.fu = phi ptr [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.fn, %bb.ai ] ; 3 uses
  switch i64 %i.fo, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fv = load i8, ptr %i.fk, align 1, !noalias !159
  store i8 %i.fv, ptr %i.fu, align 1, !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fu, ptr nonnull align 1 %i.fk, i64 %i.fo, i1 false), !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.fo, ptr %i.fw, align 8, !noalias !159
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fo
  store i8 0, ptr %i.fx, align 1, !noalias !159
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.fy, align 8, !noalias !159
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i64 %i.fm, ptr %i.fz, align 8, !noalias !159
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i64 %.0.i66.i.i.i.i, ptr %i.ga, align 8, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.fl, align 8, !noalias !159
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 3 uses
  store ptr %i.gc, ptr %i.gb, align 8, !noalias !159
  %i.gd = load ptr, ptr %10, align 8, !noalias !159 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fn
  br i1 %i.ge, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  %i.gf = load i64, ptr %i.fw, align 8, !noalias !159 ; 3 uses
  %i.gg = icmp ult i64 %i.gf, 16
  call void @llvm.assume(i1 %i.gg)
  %i.gh = add nuw nsw i64 %i.gf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gc, ptr noundef nonnull align 8 dereferenceable(1) %i.fn, i64 %i.gh, i1 false), !noalias !159
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  store ptr %i.gd, ptr %i.gb, align 8, !noalias !159
  %i.gi = load i64, ptr %i.fn, align 8, !noalias !159
  store i64 %i.gi, ptr %i.gc, align 8, !noalias !159
  %.pre.i22.i.i.i = load i64, ptr %i.fw, align 8, !noalias !159
  br label %bb.aq

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i.i, %bb.ae, %bb.ah, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  %i.gj = call noundef i32 @fclose(ptr noundef nonnull %i.cm) #24, !noalias !159, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i, %bb.y
  %.0.add.i.i.i.i = add nuw nsw i64 %.0.idx132.i.i.i.i, 8 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %.0.add.i.i.i.i, 24
  br i1 %.not.i19.i.i.i, label %bb.ar, label %bb.y

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.ap
  %i.gk = phi i64 [ %.pre.i22.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ], [ %i.gf, %bb.ap ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i64 %i.gk, ptr %i.gl, align 8, !noalias !159
  store ptr %i.fl, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.ar:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i
  store ptr null, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !158
  %i.gm = load i64, ptr %i.e, align 8, !noalias !168 ; 4 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i: ; preds = %bb.ar
  %spec.select.i.i.i29.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gm, i64 5)
  %i.go = load ptr, ptr %2, align 8, !noalias !168
  %bcmp.i30.i.i.i = call i32 @bcmp(ptr %i.go, ptr nonnull @.str.17, i64 %spec.select.i.i.i29.i.i.i), !noalias !168
  %.not.i.i31.i.i.i = icmp eq i32 %bcmp.i30.i.i.i, 0
  br i1 %.not.i.i31.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i, %bb.ar
  %.inv.i48.i.i.i = icmp ult i64 %i.gm, 5
  %i.gp = select i1 %.inv.i48.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i
  %.0.i.i33.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i ], [ %i.gp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @constinit.34, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !168
  store ptr @.str.28, ptr %i.b, align 8, !noalias !168
  %.not.i34.i.i.i = icmp eq i64 %.0.i.i33.i.i.i, %i.gm
  br i1 %.not.i34.i.i.i, label %.thread.i.i.i.i, label %bb.as

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph.i35.i.i.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %i.gr = load ptr, ptr %2, align 8, !noalias !168
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.0.i.i33.i.i.i
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !168
  %i.gu = icmp eq i8 %i.gt, 47                    ; 2 uses
  %i.gv = select i1 %i.gu, ptr %i.b, ptr %i.a     ; 2 uses
  %.sroa.5.0.copyload.pre.i.sroa.speculated.i.i.i = select i1 %i.gu, i64 8, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.5.0.copyload.pre.i.sroa.speculated.i.i.i
  br label %.lr.ph.i35.i.i.i

.lr.ph.i35.i.i.i:                                 ; preds = %bb.as, %.thread.i.i.i.i
  %i.gx = phi ptr [ %i.gq, %.thread.i.i.i.i ], [ %i.gw, %bb.as ]
  %.sroa.060.0.copyload136.i.i.i.i = phi ptr [ %i.a, %.thread.i.i.i.i ], [ %i.gv, %bb.as ]
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i, %.lr.ph.i35.i.i.i
  %.01690.i.i.i.i = phi ptr [ %.sroa.060.0.copyload136.i.i.i.i, %.lr.ph.i35.i.i.i ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !168
  %i.hc = load ptr, ptr %.01690.i.i.i.i, align 8, !noalias !168 ; 4 uses
  store ptr %i.gy, ptr %4, align 8, !noalias !168
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #25, !noalias !168
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.he = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hc) #24, !noalias !168 ; 8 uses
  %i.hf = icmp ugt i64 %i.he, 15
  br i1 %i.hf, label %bb.aw, label %._crit_edge.i.i.i36.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hg = icmp slt i64 %i.he, 0
  br i1 %i.hg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.hh = add nuw i64 %i.he, 1                    ; 2 uses
  %i.hi = icmp slt i64 %i.hh, 0
  br i1 %i.hi, label %bb.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, !prof !23

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i: ; preds = %bb.ay
  %i.hj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #26, !noalias !168 ; 2 uses
  store ptr %i.hj, ptr %4, align 8, !noalias !168
  store i64 %i.he, ptr %i.gy, align 8, !noalias !168
  br label %._crit_edge.i.i.i36.i.i.i

._crit_edge.i.i.i36.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, %bb.av
  %i.hk = phi ptr [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i ], [ %i.gy, %bb.av ] ; 3 uses
  switch i64 %i.he, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  %i.hl = load i8, ptr %i.hc, align 1, !noalias !168
  store i8 %i.hl, ptr %i.hk, align 1, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr nonnull align 1 %i.hc, i64 %i.he, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i: ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i36.i.i.i
  store i64 %i.he, ptr %i.gz, align 8, !noalias !168
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.he
  store i8 0, ptr %i.hm, align 1, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !168
  store ptr %i.ha, ptr %5, align 8, !noalias !168
  %i.hn = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.ho = load i64, ptr %i.gz, align 8, !noalias !168 ; 8 uses
  %i.hp = icmp ugt i64 %i.ho, 15
  br i1 %i.hp, label %bb.bc, label %._crit_edge.i.i21.i.i.i.i

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.hq = icmp slt i64 %i.ho, 0
  br i1 %i.hq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.hr = add nuw i64 %i.ho, 1                    ; 2 uses
  %i.hs = icmp slt i64 %i.hr, 0
  br i1 %i.hs, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, !prof !23

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i: ; preds = %bb.be
  %i.ht = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #26, !noalias !168 ; 2 uses
  store ptr %i.ht, ptr %5, align 8, !noalias !168
  store i64 %i.ho, ptr %i.ha, align 8, !noalias !168
  br label %._crit_edge.i.i21.i.i.i.i

._crit_edge.i.i21.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.hu = phi ptr [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i ] ; 4 uses
  switch i64 %i.ho, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  %i.hv = load i8, ptr %i.hn, align 1, !noalias !168
  store i8 %i.hv, ptr %i.hu, align 1, !noalias !168
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr align 1 %i.hn, i64 %i.ho, i1 false), !noalias !168
  br label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %._crit_edge.i.i21.i.i.i.i
  store i64 0, ptr %i.hb, align 8, !noalias !168
  store i8 0, ptr %i.hu, align 1, !noalias !168
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i64 %i.ho, ptr %i.hb, align 8, !noalias !168
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ho
  store i8 0, ptr %i.hw, align 1, !noalias !168
  %i.hx = load i64, ptr %i.hb, align 8, !noalias !168 ; 5 uses
  %i.hy = icmp sgt i64 %i.hx, 9223372036854775792
  br i1 %i.hy, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bi
  %i.hz = add nsw i64 %i.hx, 15                   ; 3 uses
  %i.ia = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.ha                ; 2 uses
  br i1 %i.ib, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.ic = icmp ult i64 %i.hx, 16
  call void @llvm.assume(i1 %i.ic)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.id = load i64, ptr %i.ha, align 8, !noalias !168
  %i.ie = select i1 %i.ib, i64 15, i64 %i.id
  %.not.i.i.i.i44.i.i.i = icmp ugt i64 %i.hz, %i.ie
  br i1 %.not.i.i.i.i44.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.if, ptr noundef nonnull align 1 dereferenceable(15) @.str.35, i64 15, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.hx, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 15), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i: ; preds = %bb.bm, %bb.bl
  store i64 %i.hz, ptr %i.hb, align 8, !noalias !168
  %i.ig = load ptr, ptr %5, align 8, !noalias !168
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_":bb.a
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !168
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.jq = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.jp) #29, !noalias !168
  br i1 %i.jq, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.jr = load ptr, ptr %7, align 8, !noalias !168
  %i.js = getelementptr i8, ptr %i.jr, i64 -24
  %i.jt = load i64, ptr %i.js, align 8, !noalias !168
  %i.ju = getelementptr inbounds i8, ptr %7, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 240
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !168 ; 6 uses
  %.not.i.i.i30.i.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i30.i.i.i.i, label %bb.bz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt16__throw_bad_castv() #25, !noalias !168
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i: ; preds = %bb.by
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.jy = load i8, ptr %i.jx, align 8, !noalias !168
  %.not.i1.i.i.i.i.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 67
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !168
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jw) #24, !noalias !168
  %i.kb = load ptr, ptr %i.jw, align 8, !noalias !168
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !168
  %i.ke = call noundef signext i8 %i.kd(ptr noundef nonnull align 8 dereferenceable(570) %i.jw, i8 noundef signext 10) #24, !noalias !168, !inline_history !175
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i.i = phi i8 [ %i.ka, %bb.ca ], [ %i.ke, %bb.cb ]
  %i.kf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext %.0.i.i.i.i.i.i.i) #24, !noalias !168 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.kg = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8, !noalias !168 ; 2 uses
  store ptr %i.kg, ptr %7, align 8, !noalias !168
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8, !noalias !168
  %i.ki = getelementptr i8, ptr %i.kg, i64 -24
  %i.kj = load i64, ptr %i.ki, align 8, !noalias !168
  %i.kk = getelementptr inbounds i8, ptr %7, i64 %i.kj
  store ptr %i.kh, ptr %i.kk, align 8, !noalias !168
  %i.kl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.kl, align 8, !noalias !168
  %i.km = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.kl) #24, !noalias !168 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.jp) #24, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kl, align 8, !noalias !168
  %i.kn = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kn) #24, !noalias !168
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8, !noalias !168 ; 2 uses
  store ptr %i.ko, ptr %7, align 8, !noalias !168
  %i.kp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8, !noalias !168
  %i.kq = getelementptr i8, ptr %i.ko, i64 -24
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !168
  %i.ks = getelementptr inbounds i8, ptr %7, i64 %i.kr
  store ptr %i.kp, ptr %i.ks, align 8, !noalias !168
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.kt, align 8, !noalias !168
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ku) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !168
  %.pre.i41.i.i.i = load ptr, ptr %6, align 8, !noalias !168 ; 3 uses
  %i.kv = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !168 ; 2 uses
  %i.kw = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.kx, ptr %9, align 8, !noalias !168
  %i.ky = icmp eq ptr %.pre.i41.i.i.i, %i.jc
  %.pre.i.i.i = load i64, ptr %i.jd, align 8, !noalias !168 ; 2 uses
  br i1 %i.ky, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc, %.thread137.i.i.i.i
  %i.kz = phi i64 [ 0, %.thread137.i.i.i.i ], [ %.pre.i.i.i, %bb.cc ] ; 3 uses
  %i.la = phi ptr [ %i.ji, %.thread137.i.i.i.i ], [ %i.kx, %bb.cc ] ; 3 uses
  %i.lb = phi i64 [ %i.jh, %.thread137.i.i.i.i ], [ %i.kw, %bb.cc ]
  %i.lc = phi ptr [ %i.jg, %.thread137.i.i.i.i ], [ %i.kv, %bb.cc ]
  %i.ld = icmp ult i64 %i.kz, 16
  call void @llvm.assume(i1 %i.ld)
  %i.le = add nuw nsw i64 %i.kz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.la, ptr noundef nonnull align 8 dereferenceable(1) %i.jc, i64 %i.le, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cc
  store ptr %.pre.i41.i.i.i, ptr %9, align 8, !noalias !168
  %i.lf = load i64, ptr %i.jc, align 8, !noalias !168
  store i64 %i.lf, ptr %i.kx, align 8, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.cd
  %i.lg = phi ptr [ %i.la, %bb.cd ], [ %i.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 5 uses
  %i.lh = phi i64 [ %i.lb, %bb.cd ], [ %i.kw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %.pr.i.i.i = phi ptr [ %i.lc, %bb.cd ], [ %i.kv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 8 uses
  %i.li = phi ptr [ %i.la, %bb.cd ], [ %.pre.i41.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 2 uses
  %i.lj = phi i64 [ %i.kz, %bb.cd ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.lj, ptr %i.lk, align 8, !noalias !168
  store ptr %i.jc, ptr %6, align 8, !noalias !168
  store i64 0, ptr %i.jd, align 8, !noalias !168
  store i8 0, ptr %i.jc, align 8, !noalias !168
  %i.ll = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ll, align 8, !noalias !168
  %i.lm = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 16
  store i64 %i.lh, ptr %i.lm, align 8, !noalias !168
  %i.ln = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 24
  store i64 -1, ptr %i.ln, align 8, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %.pr.i.i.i, align 8, !noalias !168
  %i.lo = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 32 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 48 ; 3 uses
  store ptr %i.lp, ptr %i.lo, align 8, !noalias !168
  %i.lq = icmp eq ptr %i.li, %i.lg
  br i1 %i.lq, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.lr = icmp ult i64 %i.lj, 16
  call void @llvm.assume(i1 %i.lr)
  %i.ls = add nuw nsw i64 %i.lj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lp, ptr noundef nonnull align 8 dereferenceable(1) %i.lg, i64 %i.ls, i1 false), !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.li, ptr %i.lo, align 8, !noalias !168
  %i.lt = load i64, ptr %i.lg, align 8, !noalias !168
  store i64 %i.lt, ptr %i.lp, align 8, !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i, %bb.ce
  %i.lu = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 40
  store i64 %i.lj, ptr %i.lu, align 8, !noalias !168
  store ptr %i.lg, ptr %9, align 8, !noalias !168
  store i64 0, ptr %i.lk, align 8, !noalias !168
  store i8 0, ptr %i.lg, align 1, !noalias !168
  store ptr %.pr.i.i.i, ptr %0, align 8, !alias.scope !168
  %.pre103.i.i.i.i = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !168
  %i.lv = icmp eq ptr %.pre103.i.i.i.i, %i.ha
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i
  %i.lw = load i64, ptr %i.ha, align 8, !noalias !168
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %.pre103.i.i.i.i, i64 noundef %i.lx) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.ly = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.gy
  br i1 %i.lz, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i
  %i.ma = load i64, ptr %i.gy, align 8, !noalias !168
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #27, !noalias !168
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i39.i.i.i
  %i.mc = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ha
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i
  %i.me = load i64, ptr %i.ha, align 8, !noalias !168
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.mg = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.gy
  br i1 %i.mh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i
  %i.mi = load i64, ptr %i.gy, align 8, !noalias !168
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #27, !noalias !168
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  %i.mk = getelementptr inbounds nuw i8, ptr %.01690.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i.i = icmp eq ptr %i.mk, %i.gx
  br i1 %.not18.i.i.i.i, label %bb.cf, label %bb.at

_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  store ptr null, ptr %0, align 8, !alias.scope !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit": ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.aq, %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.cf
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i64 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %.sroa.speculated, ptr noundef %i.d) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = sub i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @fseek(ptr noundef %i.d, i64 noundef %.sroa.speculated, i32 noundef 1) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8
  %i.h = sub i64 %i.g, %.sroa.speculated
  store i64 %i.h, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %i.h) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
end_hunk_1
begin_hunk_2_@llvm.umin.i64
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!11 = distinct !{!11, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!12 = distinct !{!12, !11, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!13 = distinct !{!13, !8}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!16 = distinct !{!16, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!17 = distinct !{!17, !16, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!18 = distinct !{!18, !8}
!19 = !{!20, !22}
!20 = distinct !{!20, !21, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!21 = distinct !{!21, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!22 = distinct !{!22, !21, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!26 = distinct !{!26, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!29 = distinct !{!29, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!32 = distinct !{!32, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{null}
!40 = distinct !{!40, !8}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!45 = distinct !{!45, !8}
!46 = distinct !{null}
!47 = distinct !{null, null}
!48 = !{ptr @_ZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE}
!49 = distinct !{ptr @_ZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, null}
!50 = distinct !{ptr @_ZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, null, null}
!51 = distinct !{null, null, null}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!54 = distinct !{!54, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE: argument 0"}
!57 = distinct !{!57, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE: argument 0"}
!60 = distinct !{!60, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE"}
!61 = distinct !{!61, !8}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE: argument 0"}
!64 = distinct !{!64, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE"}
!65 = distinct !{!65, !8}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!68 = distinct !{!68, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!71 = distinct !{!71, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!72 = distinct !{!72, !73, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl: argument 0"}
!73 = distinct !{!73, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!76 = distinct !{!76, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9TimeLocalERKNS1_6detail10civil_timeINS3_10second_tagEEEl: argument 0"}
!79 = distinct !{!79, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9TimeLocalERKNS1_6detail10civil_timeINS3_10second_tagEEEl"}
!80 = !{ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo9TimeLocalERKNS1_6detail10civil_timeINS3_10second_tagEEEl}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!83 = distinct !{!83, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!86 = distinct !{!86, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!87 = distinct !{!87, !88, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl: argument 0"}
!88 = distinct !{!88, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!91 = distinct !{!91, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!94 = distinct !{!94, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!97 = distinct !{!97, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!98 = !{!99, !101}
!99 = distinct !{!99, !100, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!100 = distinct !{!100, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!101 = distinct !{!101, !102, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl: argument 0"}
!102 = distinct !{!102, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!105 = distinct !{!105, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!108 = distinct !{!108, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!109 = !{!107, !104}
!110 = distinct !{!110, !8}
!111 = distinct !{!111, !8}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!115 = distinct !{!115, !114, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!119 = distinct !{!119, !118, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!120 = distinct !{!120, !8}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!123 = distinct !{!123, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!124 = distinct !{!124, !123, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!131 = distinct !{!131, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!132 = distinct !{!132, !131, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !8}
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_: argument 0"}
!140 = distinct !{!140, !"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZSt13__invoke_implISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!143 = distinct !{!143, !"_ZSt13__invoke_implISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EET_St14__invoke_otherOT0_DpOT1_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_: argument 0"}
!146 = distinct !{!146, !"_ZZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!149 = distinct !{!149, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!150 = !{!148, !145, !142, !139}
!151 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!152 = !{!153, !148, !145, !142, !139}
!153 = distinct !{!153, !154, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_: argument 0"}
!154 = distinct !{!154, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!157 = distinct !{!157, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!158 = !{!145, !142, !139}
!159 = !{!156, !145, !142, !139}
!160 = !{!161, !156, !145, !142, !139}
!161 = distinct !{!161, !162, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_: argument 0"}
!162 = distinct !{!162, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_"}
!163 = distinct !{!163, !8}
!164 = distinct !{null}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!167 = distinct !{!167, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!168 = !{!166, !145, !142, !139}
!169 = !{!170, !166, !145, !142, !139}
!170 = distinct !{!170, !171, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_: argument 0"}
!171 = distinct !{!171, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_"}
!172 = !{!173, !166, !145, !142, !139}
!173 = distinct !{!173, !174, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!174 = distinct !{!174, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!175 = distinct !{null, null, null, null, null, null, null}
!176 = distinct !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev, null}
!177 = !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev}
!178 = !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev}
!179 = distinct !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev, null}
!180 = !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev}
!181 = !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev}
!182 = distinct !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev, null}
!183 = !{ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev}
end_hunk_2
