inline.NumInlined: 939
inline.NumDeleted: 457
begin_hunk_0_@_ZNK4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15printOptionDiffERKNS0_6OptionENS_9StringRefERKNS0_11OptionValueIS7_EEm

declare void @_ZN4llvh14raw_fd_ostreamC1Eibb(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN4llvh14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZN4llvh18format_object_base4homeEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJddEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !85
  %i.g = load double, ptr %i.d, align 8, !tbaa !85
  %i.h = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, double noundef %i.f, double noundef %i.g) #22
  ret i32 %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJlEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82
  %i.f = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i64 noundef %i.e) #22
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  tail call void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(13) %i.a, i1 noundef zeroext true) #22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !214
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(13) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

declare noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !163
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !132
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.h, ptr %i.b, align 8, !tbaa !82
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !14
  %i.k = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.k, ptr %i.e, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !19
  store i8 %i.m, ptr %i.l, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !132
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.w, ptr %i.a, align 8, !tbaa !82
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i4

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !14
  %i.z = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.z, ptr %i.t, align 8, !tbaa !19
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5
  ]

bb.f:                                             ; preds = %._crit_edge.i.i4
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !19
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

bb.g:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5: ; preds = %._crit_edge.i.i4, %bb.f, %bb.g
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE17_M_realloc_insertIJRKNS0_10TimeRecordENS0_9StringRefES9_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !143    ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775776
  br i1 %i.k, label %bb.b, label %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
  unreachable

_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.l = sdiv exact i64 %i.j, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i, %i.l    ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 96076792050570581)
  %i.p = select i1 %i.n, i64 96076792050570581, i64 %i.o ; 2 uses
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.q, %i.i
  %7 = mul nuw nsw i64 %i.p, 96
  %8 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %7) #24 ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %i.r ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %10 = load ptr, ptr %3, align 8, !tbaa !152, !noalias !221 ; 3 uses
  %.not.i = icmp eq ptr %10, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !132, !alias.scope !221
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !20, !alias.scope !221
  store i8 0, ptr %i.s, align 8, !tbaa !19, !alias.scope !221
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !155, !noalias !221 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !132, !alias.scope !221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !221
  store i64 %i.v, ptr %i.d, align 8, !tbaa !82, !noalias !221
  %i.x = icmp ugt i64 %i.v, 15
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #22 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !14, !alias.scope !221
  %i.z = load i64, ptr %i.d, align 8, !tbaa !82, !noalias !221
  store i64 %i.z, ptr %i.w, align 8, !tbaa !19, !alias.scope !221
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %i.y, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  switch i64 %i.v, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %10, align 1, !tbaa !19
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %10, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !82, !noalias !221 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20, !alias.scope !221
  %i.ae = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !221
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !221
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !152, !noalias !228 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ah, ptr %6, align 8, !tbaa !132, !alias.scope !228
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !20, !alias.scope !228
  store i8 0, ptr %i.ah, align 8, !tbaa !19, !alias.scope !228
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23

bb.i:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !155, !noalias !228 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !132, !alias.scope !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !228
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !82, !noalias !228
  %i.am = icmp ugt i64 %i.ak, 15
  br i1 %i.am, label %bb.j, label %._crit_edge.i.i.i.i21

bb.j:                                             ; preds = %bb.i
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #22 ; 2 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !14, !alias.scope !228
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !228
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !19, !alias.scope !228
  br label %._crit_edge.i.i.i.i21

._crit_edge.i.i.i.i21:                            ; preds = %bb.j, %bb.i
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.al, %bb.i ] ; 2 uses
  switch i64 %i.ak, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i21
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !19
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22

bb.l:                                             ; preds = %._crit_edge.i.i.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i21
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !228 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !20, !alias.scope !228
  %i.at = load ptr, ptr %6, align 8, !tbaa !14, !alias.scope !228
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !228
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !163
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !132
  %i.ax = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.az, ptr %i.b, align 8, !tbaa !82
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %bb.m, label %._crit_edge.i.i.i

bb.m:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !14
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.m, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23
  %i.bd = phi ptr [ %i.bb, %bb.m ], [ %i.aw, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23 ] ; 2 uses
  switch i64 %i.az, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !19
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !20
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !132
  %i.bl = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !82
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %bb.p, label %._crit_edge.i.i4.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !14
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !19
  br label %._crit_edge.i.i4.i

._crit_edge.i.i4.i:                               ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.br = phi ptr [ %i.bp, %bb.p ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  switch i64 %i.bn, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i4.i
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !19
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !19
  br label %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit

bb.r:                                             ; preds = %._crit_edge.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit

_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit: ; preds = %._crit_edge.i.i4.i, %bb.q, %bb.r
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !20
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bx = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !19
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.cc = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.not9.i.i.i.i.i = icmp eq ptr %i.g, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 2 uses
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i)
  %i.ch = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 96 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.ci, %.lr.ph.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96 ; 2 uses
  %.not9.i.i.i.i.i27 = icmp eq ptr %1, %i.f
  br i1 %.not9.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i28
  %.011.i.i.i.i.i29 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i28 ], [ %i.cj, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i30 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i28 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i30)
  %i.ck = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i30, i64 96 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i29, i64 96 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.f
  br i1 %.not.i.i.i.i.i31, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, label %.lr.ph.i.i.i.i.i28, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33: ; preds = %.lr.ph.i.i.i.i.i28, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.cj, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.cl, %.lr.ph.i.i.i.i.i28 ]
  %.not4.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i ], [ %i.g, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33 ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !19
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !14 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !19
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #23
  br label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.cy, %i.f
  br i1 %.not.i.i34, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !145

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.g, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !71
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.dc) #23
  br label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, %bb.s
  store ptr %8, ptr %0, align 8, !tbaa !143
  store ptr %.0.lcssa.i.i.i.i.i32, ptr %i.e, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.p
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !163
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !132
  %i.e = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.g, ptr %i.b, align 8, !tbaa !82
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !14
  %i.j = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.j, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !132
  %i.s = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.u, ptr %i.a, align 8, !tbaa !82
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.e, label %._crit_edge.i.i4

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !14
  %i.x = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.x, ptr %i.r, align 8, !tbaa !19
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5
  ]

bb.f:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !19
  store i8 %i.z, ptr %i.y, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

bb.g:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5: ; preds = %._crit_edge.i.i4, %bb.f, %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE17_M_realloc_insertIJRNS0_10TimeRecordERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !143    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
  unreachable

_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 96
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96 ; 2 uses
  %.not9.i.i.i.i.i20 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i20, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i21
  %.011.i.i.i.i.i22 = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i21 ], [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i23 = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i21 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i23)
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i23, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 96 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, label %.lr.ph.i.i.i.i.i21, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26: ; preds = %.lr.ph.i.i.i.i.i21, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.v, %.lr.ph.i.i.i.i.i21 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26 ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !145

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #23
  br label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !143
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.a, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1536
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph21

bb.b:                                             ; preds = %.lr.ph21
  %i.g = icmp eq i64 %i.m, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph21, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge13.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge13.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %.lr.ph.i8.i ], [ %storemerge13.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -96 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr nonnull %i.h, ptr nonnull %i.h, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 96
  br i1 %i.k, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !230

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph21:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1320 = phi ptr [ %i.q, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01419 = phi i64 [ %i.m, %bb.b ], [ %2, %.lr.ph ]
  %i.l = phi i64 [ %i.s, %bb.b ], [ %i.c, %.lr.ph ]
  %i.m = add nsw i64 %.01419, -1                  ; 3 uses
  %i.n = udiv i64 %i.l, 192
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %storemerge1320, i64 -96
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr nonnull %i.e, ptr %i.o, ptr nonnull %i.p)
  %i.q = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_SC_T0_(ptr nonnull %i.e, ptr %storemerge1320, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.q, ptr %storemerge1320, i64 noundef %i.m)
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1536
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !229

.loopexit:                                        ; preds = %.lr.ph21, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %4 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 6 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 96                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 192
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13, %bb.b
  %.07 = phi i64 [ %i.g, %bb.b ], [ %i.y, %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.p = getelementptr inbounds [96 x i8], ptr %0, i64 %.07
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.p)
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %3)
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %.07, i64 noundef %i.d, ptr noundef nonnull %4)
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.i
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.i, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.k
  br i1 %i.v, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load i64, ptr %i.k, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
end_hunk_0
