Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17819
inline.NumDeleted: 4456
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io12WKTFormatter6createERKN7dropbox6oxygen2nnISt10unique_ptrIS2_St14default_deleteIS2_EEEE:bb.a

_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN5osgeo4proj2io12WKTFormatter6createENS2_10ConventionESt10shared_ptrINS1_15DatabaseContextEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn") align 8 %0, i32 noundef %i.c, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !68
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !73
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !73
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i5 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ad = load ptr, ptr %1, align 8, !tbaa !62
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.af = load ptr, ptr %0, align 8, !tbaa !62
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !tbaa.struct !74
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #41
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj2io12WKTFormatterD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj2io12WKTFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io12WKTFormatter7PrivateEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj2io12WKTFormatter7PrivateEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj2io12WKTFormatter7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 488) #44
  br label %_ZNSt10unique_ptrIN5osgeo4proj2io12WKTFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj2io12WKTFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj2io12WKTFormatter7PrivateEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io12WKTFormatter12setMultiLineEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.a, ptr %i.c, align 8, !tbaa !79
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io12WKTFormatter19setIndentationWidthEi(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !80
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io12WKTFormatter13setOutputAxisENS2_14OutputAxisRuleE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %1, ptr %i.b, align 4, !tbaa !81
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io12WKTFormatter9setStrictEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.a, ptr %i.c, align 1, !tbaa !82
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5osgeo4proj2io12WKTFormatter8isStrictEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !82, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io12WKTFormatter38setAllowEllipsoidalHeightAsVerticalCRSEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 %i.a, ptr %i.c, align 2, !tbaa !85
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5osgeo4proj2io12WKTFormatter39isAllowedEllipsoidalHeightAsVerticalCRSEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.c = load i8, ptr %i.b, align 2, !tbaa !85, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io12WKTFormatter19setAllowLINUNITNodeEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  store i8 %i.a, ptr %i.c, align 1, !tbaa !86
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5osgeo4proj2io12WKTFormatter20isAllowedLINUNITNodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.c = load i8, ptr %i.b, align 1, !tbaa !86, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io12WKTFormatterC2ENS2_10ConventionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.a = tail call noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #43, !noalias !87 ; 26 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %i.a, i8 0, i64 488, i1 false), !noalias !87
  invoke void @_ZN5osgeo4proj2io12WKTFormatter7PrivateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.a)
          to label %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !87

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 488) #44, !noalias !87
  resume { ptr, i32 } %i.b

_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !20, !alias.scope !87
  store i32 %1, ptr %i.a, align 8, !tbaa !72
  switch i32 %1, label %bb.i [
    i32 2, label %bb.c
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 1, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 1, ptr %i.e, align 1, !tbaa !92
  br label %bb.i

bb.e:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.f, align 8, !tbaa !90
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.i, align 1, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.j, i8 1, i64 5, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.l, align 1, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 1, ptr %i.m, align 1, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 1, ptr %i.n, align 1, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 2, ptr %i.o, align 4, !tbaa !81
  br label %bb.i

bb.h:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.q, align 1, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 1, ptr %i.r, align 1, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 1, ptr %i.s, align 1, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 1, ptr %i.t, align 1, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %i.u, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 1, ptr %i.v, align 4, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 1, ptr %i.w, align 1, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj2io12WKTFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %bb.h, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io12WKTFormatter11setOutputIdEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt14_Bit_referenceaSEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN5osgeo4proj4util9ExceptionE, ptr nonnull @_ZN5osgeo4proj4util9ExceptionD1Ev) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #41
  resume { ptr, i32 } %i.e

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = and i64 %i.h, -2
  %masksel = zext i1 %1 to i64
  %storemerge = or disjoint i64 %i.i, %masksel
  store i64 %storemerge, ptr %i.g, align 8, !tbaa !18
  ret ptr %0
}

declare hidden void @_ZN5osgeo4proj4util9ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj4util9ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io12WKTFormatter7Private10addNewLineEv(ptr noundef nonnull align 8 dereferenceable(488) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.h = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.h)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.j = phi i64 [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.k = icmp ugt i64 %i.d, %i.j
  br i1 %i.k, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %bb.b ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 10, ptr %i.m, align 1, !tbaa !19
  store i64 %i.d, ptr %i.b, align 8, !tbaa !17
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  store i8 0, ptr %i.o, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io12WKTFormatter7Private14addIndentationEv(ptr noundef nonnull align 8 dereferenceable(488) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g, i8 noundef signext 32)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.j
  br i1 %i.n, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.p = load ptr, ptr %1, align 8, !tbaa !14
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef %i.p, i64 noundef %i.j)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.t = load i64, ptr %i.h, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.y = load i64, ptr %i.h, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZNK5osgeo4proj2io7WKTNode8toStringB5cxx11Ev:bb.a
          to label %bb.t unwind label %.loopexit.split-lp47

bb.t:                                             ; preds = %bb.s
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !17 ; 2 uses
  %i.dx = load i64, ptr %i.dj, align 8, !tbaa !17
  %i.dy = sub i64 4611686018427387903, %i.dx
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %.loopexit51, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.t
  %i.ea = load ptr, ptr %6, align 8, !tbaa !14
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ea, i64 noundef %i.dw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.ec = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.du
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ee = load i64, ptr %i.du, align 8, !tbaa !19
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.eg, %i.dr
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.eh = load i64, ptr %i.dj, align 8, !tbaa !17
  %i.ei = icmp eq i64 %i.eh, 4611686018427387903
  br i1 %i.ei, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17

bb.u:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.noexc18 unwind label %bb.aa

.noexc18:                                         ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17: ; preds = %._crit_edge
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.30, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20 unwind label %bb.aa ; 0 uses

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.r
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.032.038 = phi ptr [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.el = load i64, ptr %i.dj, align 8, !tbaa !17 ; 4 uses
  %i.em = add i64 %i.el, 1                        ; 3 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ds
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22: ; preds = %.peel.next
  %i.ep = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.ep)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %.peel.next
  %i.eq = load i64, ptr %i.ds, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22
  %i.er = phi i64 [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22 ]
  %i.es = icmp ugt i64 %i.em, %i.er
  br i1 %i.es, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.el, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc23 unwind label %bb.x

.noexc23:                                         ; preds = %bb.w
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !14
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %.noexc23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.et = phi ptr [ %.pre.i.i, %.noexc23 ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  store i8 44, ptr %i.eu, align 1, !tbaa !19
  store i64 %i.em, ptr %i.dj, align 8, !tbaa !17
  %i.ev = load ptr, ptr %0, align 8, !tbaa !14
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.em
  store i8 0, ptr %i.ew, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ex = load ptr, ptr %.sroa.032.038, align 8, !tbaa !128
  invoke void @_ZNK5osgeo4proj2io7WKTNode8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
          to label %bb.z unwind label %.loopexit46

bb.z:                                             ; preds = %bb.y
  %i.ey = load i64, ptr %i.dt, align 8, !tbaa !17 ; 2 uses
  %i.ez = load i64, ptr %i.dj, align 8, !tbaa !17
  %i.fa = sub i64 4611686018427387903, %i.ez
  %i.fb = icmp ult i64 %i.fa, %i.ey
  br i1 %i.fb, label %.loopexit51, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit51:                                      ; preds = %bb.z, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %.loopexit51
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.z
  %i.fc = load ptr, ptr %6, align 8, !tbaa !14
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fc, i64 noundef %i.ey)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fe = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.du
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fg = load i64, ptr %i.du, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.032.038, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fi, %i.dr
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !182

.loopexit46:                                      ; preds = %bb.y
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

.loopexit.split-lp47:                             ; preds = %bb.s
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit51
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit52, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp53, %.loopexit.loopexit.split-lp ] ; 2 uses
  %i.fj = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.du
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.loopexit
  %i.fl = load i64, ptr %i.du, align 8, !tbaa !19
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.loopexit, %.loopexit46, %.loopexit.split-lp47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp47 ], [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.phi, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17, %bb.u
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17, %_ZN5osgeo4proj2ioL20escapeIfQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void

bb.ab:                                            ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.aa, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.v ], [ %i.fn, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %lpad.loopexit43, %bb.x ] ; 2 uses
  %i.fo = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io9WKTParserC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #43, !noalias !184 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, i8 0, i64 128, i1 false), !noalias !184
  store i8 1, ptr %i.a, align 8, !tbaa !187, !noalias !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.b, align 1, !tbaa !200, !noalias !184
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !201, !noalias !184
  store ptr %i.c, ptr %i.c, align 8, !tbaa !202, !noalias !184
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !201, !noalias !184
  store ptr %i.e, ptr %i.e, align 8, !tbaa !202, !noalias !184
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false), !noalias !184
  store ptr %i.i, ptr %i.h, align 8, !tbaa !10, !noalias !184
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 113
  store i8 0, ptr %i.j, align 1, !tbaa !203, !noalias !184
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !noalias !184
  store ptr %i.a, ptr %0, align 8, !tbaa !204, !alias.scope !184
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj2io9WKTParserD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj2io9WKTParser7PrivateESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io9WKTParser7PrivateEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj2io9WKTParser7PrivateEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj2io9WKTParser7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.a) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 176) #44
  br label %_ZNSt10unique_ptrIN5osgeo4proj2io9WKTParser7PrivateESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj2io9WKTParser7PrivateESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj2io9WKTParser7PrivateEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser9setStrictEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !204
  store i8 %i.a, ptr %i.b, align 8, !tbaa !187
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser36setUnsetIdentifiersIfIncompatibleDefEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.a, ptr %i.c, align 1, !tbaa !200
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5osgeo4proj2io9WKTParser11warningListB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::list") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !201
  store ptr %0, ptr %0, align 8, !tbaa !202
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !206
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !202  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  invoke void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !202 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i, !llvm.loop !207

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #41
  resume { ptr, i32 } %i.h

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %.noexc.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5osgeo4proj2io9WKTParser16grammarErrorListB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::list") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !201
  store ptr %0, ptr %0, align 8, !tbaa !202
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !206
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !202  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  invoke void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !202 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, label %.lr.ph.i.i, !llvm.loop !207

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #41
  resume { ptr, i32 } %i.h

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %.noexc.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private22emitRecoverableWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !187, !range !83, !noundef !84
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #41
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private16emitGrammarErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !187, !range !83, !noundef !84
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #41
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private11stripQuotesB5cxx11ERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  tail call void @_ZN5osgeo4proj8internal11stripQuotesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret void
}

declare void @_ZN5osgeo4proj8internal11stripQuotesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN5osgeo4proj2io9WKTParser7Private8asDoubleERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = tail call noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret double %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private7buildIdERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_bb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.69") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EED2Ev:bb.a

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEES9_EvT_SB_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1259
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1259
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation15OperationMethodELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14TransformationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1260
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1260
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1261
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1261
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS13primeMeridianEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5osgeo4proj2ioL37createBoundCRSSourceTransformationCRSERKSt10shared_ptrINS0_3crs3CRSEES7_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree readonly %.0.val) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::shared_ptr.406", align 16 ; 17 uses
  %3 = alloca %"class.std::shared_ptr.22", align 8 ; 10 uses
  %4 = alloca %"class.dropbox::oxygen::nn.383", align 8 ; 7 uses
  %5 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.dropbox::oxygen::nn.195", align 8 ; 7 uses
  %8 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.osgeo::proj::util::optional", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.622", align 8 ; 10 uses
  %12 = alloca %"class.dropbox::oxygen::nn.310", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.dropbox::oxygen::nn.621", align 8 ; 7 uses
  %18 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.257", align 8 ; 7 uses
  %20 = alloca %"class.dropbox::oxygen::nn.310", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %.0.val, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #41
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.e = load ptr, ptr %1, align 8, !tbaa !650
  invoke void @_ZNK5osgeo4proj3crs3CRS20extractGeographicCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.22") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.d unwind label %bb.at

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %3, align 8, !tbaa !120    ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  store ptr %i.l, ptr %2, align 16, !tbaa !650
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !65   ; 11 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSINS2_13GeographicCRSEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS4_E4typeESG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.g
  %i.r = load i32, ptr %i.p, align 4, !tbaa !70
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !70
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !65 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !68
  %i.z = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #41, !inline_history !1262
  %i.ac = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #41, !inline_history !1262
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i9.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !71

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !65
  %.pre = load ptr, ptr %3, align 8, !tbaa !120
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSINS2_13GeographicCRSEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS4_E4typeESG_.exit

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSINS2_13GeographicCRSEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS4_E4typeESG_.exit: ; preds = %bb.f, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.aj = phi ptr [ %i.f, %bb.f ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 3 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.bf, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSINS2_13GeographicCRSEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS3_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS4_E4typeESG_.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS5datumEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #45 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !414
  %.not8 = icmp eq ptr %i.al, null
  br i1 %.not8, label %bb.em, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS13primeMeridianEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #45
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !417
  %i.ao = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj5datum13PrimeMeridian9longitudeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.an) #45
  %i.ap = call noundef double @_ZNK5osgeo4proj6common7Measure10getSIValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #45
  %i.aq = fcmp une double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.p, label %bb.em

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.au

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ar = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.av) #45 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14, !noalias !1263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17, !noalias !1263 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ba, ptr %6, align 8, !tbaa !10, !alias.scope !1266
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !17, !alias.scope !1266
  store i8 0, ptr %i.ba, align 8, !tbaa !19, !alias.scope !1266
  %i.bc = add i64 %i.az, 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bc)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !17, !alias.scope !1266
  %i.be = sub i64 4611686018427387903, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.az
  br i1 %i.bf, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.r
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ax, i64 noundef %i.az)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !17, !alias.scope !1266
  %i.bi = and i64 %i.bh, -32
  %i.bj = icmp eq i64 %i.bi, 4611686018427387872
  br i1 %i.bj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.cont.i.i unwind label %bb.s

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.538, i64 noundef 32)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !14, !alias.scope !1266 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bn, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.t unwind label %bb.av

bb.t:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.aw

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.bp = load ptr, ptr %i.ak, align 8, !tbaa !414
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bp) #45 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14, !noalias !1269
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !17, !noalias !1269 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE:bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jr, ptr %i.kd, align 8, !tbaa !65
  %i.ke = load ptr, ptr %i.jq, align 8, !tbaa !65 ; 8 uses
  %.not.i.i.i303 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i303, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs13ParametricCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 4 uses
  %i.kg = load atomic i64, ptr %i.kf acquire, align 8 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 4294967297
  %i.ki = trunc i64 %i.kg to i32                  ; 2 uses
  br i1 %i.kh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.kf, align 8, !tbaa !66
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 0, ptr %i.kj, align 4, !tbaa !68
  %i.kk = load ptr, ptr %i.ke, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #41, !inline_history !1317
  %i.kn = load ptr, ptr %i.ke, align 8, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #41, !inline_history !1317
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev.exit

bb.ck:                                            ; preds = %bb.ci
  %i.kq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i304 = icmp eq i8 %i.kq, 0
  br i1 %.not.i.i.i.i304, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kr = add nsw i32 %i.ki, -1
  store i32 %i.kr, ptr %i.kf, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i305

bb.cm:                                            ; preds = %bb.ck
  %i.ks = atomicrmw volatile add ptr %i.kf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i305

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i305: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i306 = phi i32 [ %i.ki, %bb.cl ], [ %i.ks, %bb.cm ]
  %i.kt = icmp eq i32 %.0.i.i.i.i.i306, 1
  br i1 %i.kt, label %bb.cn, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev.exit, !prof !71

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i305
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev.exit: ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs13ParametricCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, %bb.cj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i305, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.nw

bb.co:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit302.thread
  %i.ku = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.nx

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107
  %bcmp.i307 = call i32 @bcmp(ptr nonnull %.pre, ptr nonnull @.str.326, i64 %i.f)
  %i.kv = icmp eq i32 %bcmp.i307, 0
  br i1 %i.kv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread358

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser8buildCRSINS0_3crs11TemporalCRSEMS2_FN7dropbox6oxygen2nnISt10shared_ptrINS0_5datum13TemporalDatumEEEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSE_14adl_serializerESH_IhSaIhEEEEENS0_2cs10TemporalCSEEENS8_IS9_IT_EEEST_T0_(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.651") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 ptrtoint (ptr @_ZN5osgeo4proj2io10JSONParser18buildTemporalDatumERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE to i64), i64 0)
          to label %bb.cp unwind label %bb.da

bb.cp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308.thread
  %i.kw = load ptr, ptr %12, align 8, !tbaa !773  ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i122 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i122, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 3 uses
  %i.la = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i123 = icmp eq i8 %i.la, 0
  br i1 %.not.i.i.i.i.i.i123, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !70
  %i.lc = add nsw i32 %i.lb, 1
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i

bb.cs:                                            ; preds = %bb.cq
  %i.ld = atomicrmw volatile add ptr %i.kz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i: ; preds = %bb.cs, %bb.cr, %bb.cp
  %i.le = icmp eq ptr %i.kw, null
  br i1 %i.le, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11TemporalCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i
  %i.lf = load ptr, ptr %i.kw, align 8, !tbaa !8
  %i.lg = getelementptr i8, ptr %i.lf, i64 -24
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr inbounds i8, ptr %i.kw, i64 %i.lh
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11TemporalCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11TemporalCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i, %bb.ct
  %i.lj = phi ptr [ %i.li, %bb.ct ], [ null, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i ]
  store ptr %i.lj, ptr %0, align 8, !tbaa !259
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ky, ptr %i.lk, align 8, !tbaa !65
  %i.ll = load ptr, ptr %i.kx, align 8, !tbaa !65 ; 8 uses
  %.not.i.i.i309 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i309, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11TemporalCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 4 uses
  %i.ln = load atomic i64, ptr %i.lm acquire, align 8 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 4294967297
  %i.lp = trunc i64 %i.ln to i32                  ; 2 uses
  br i1 %i.lo, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.lm, align 8, !tbaa !66
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  store i32 0, ptr %i.lq, align 4, !tbaa !68
  %i.lr = load ptr, ptr %i.ll, align 8, !tbaa !8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #41, !inline_history !1305
  %i.lu = load ptr, ptr %i.ll, align 8, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #41, !inline_history !1305
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit

bb.cw:                                            ; preds = %bb.cu
  %i.lx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i310 = icmp eq i8 %i.lx, 0
  br i1 %.not.i.i.i.i310, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ly = add nsw i32 %i.lp, -1
  store i32 %i.ly, ptr %i.lm, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i311

bb.cy:                                            ; preds = %bb.cw
  %i.lz = atomicrmw volatile add ptr %i.lm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i311

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i311: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i312 = phi i32 [ %i.lp, %bb.cx ], [ %i.lz, %bb.cy ]
  %i.ma = icmp eq i32 %.0.i.i.i.i.i312, 1
  br i1 %i.ma, label %bb.cz, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit, !prof !71

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i311
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit: ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11TemporalCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i311, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.nw

bb.da:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308.thread
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.nx

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314: ; preds = %bb.e
  %.pre363 = load ptr, ptr %3, align 8, !tbaa !14
  %bcmp.i313 = call i32 @bcmp(ptr %.pre363, ptr nonnull @.str.327, i64 %i.f)
  %i.mc = icmp eq i32 %bcmp.i313, 0
  br i1 %i.mc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread358

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.328)
          to label %bb.db unwind label %bb.dj

bb.db:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.dc unwind label %bb.dk

bb.dc:                                            ; preds = %bb.db
  %i.md = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.me = load i8, ptr %14, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.md, i8 noundef zeroext %i.me) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.mf = load ptr, ptr %13, align 8, !tbaa !259, !noalias !1439 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %.thread.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mh = call ptr @__dynamic_cast(ptr nonnull %i.mf, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #41, !noalias !1439 ; 2 uses
  %.not.i = icmp eq ptr %i.mh, null
  br i1 %.not.i, label %.thread.i, label %bb.de

.thread.i:                                        ; preds = %bb.dd, %bb.dc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !alias.scope !1439
  br label %bb.dh

bb.de:                                            ; preds = %bb.dd
  store ptr %i.mh, ptr %15, align 16, !tbaa !607, !alias.scope !1439
  %i.mi = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !65, !noalias !1439 ; 3 uses
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !65, !alias.scope !1439
  %.not.i.i.i.i315 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i315, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 3 uses
  %i.mm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1439
  %.not.i.i.i.i.i316 = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i.i.i316, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mn = load i32, ptr %i.ml, align 4, !tbaa !70, !noalias !1439
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr %i.ml, align 4, !tbaa !70, !noalias !1439
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split: ; preds = %bb.df
  %i.mp = atomicrmw volatile add ptr %i.ml, i32 1 acq_rel, align 4, !noalias !1439 ; 0 uses
  %.pr354.pre = load ptr, ptr %15, align 16, !tbaa !607
  %i.mq = icmp eq ptr %.pr354.pre, null
  br i1 %i.mq, label %bb.dh, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

bb.dh:                                            ; preds = %.thread.i, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  %i.mr = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.mr, ptr noundef nonnull @.str.329)
          to label %bb.di unwind label %bb.dm

bb.di:                                            ; preds = %bb.dh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.mr, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.mr, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.nz unwind label %bb.dn

bb.dj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314.thread
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.db
  %i.mt = landingpad { ptr, i32 }
          cleanup
  %i.mu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mv = load i8, ptr %14, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.mu, i8 noundef zeroext %i.mv) #41, !inline_history !1347
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn = phi { ptr, i32 } [ %i.mt, %bb.dk ], [ %i.ms, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.hn

bb.dm:                                            ; preds = %bb.dh
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mr) #41
  br label %bb.hm

bb.dn:                                            ; preds = %bb.di
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.dg, %bb.de, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.330)
          to label %bb.do unwind label %bb.eh

bb.do:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser7buildCSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.dp unwind label %bb.ei

bb.dp:                                            ; preds = %bb.do
  %i.my = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.mz = load i8, ptr %17, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.my, i8 noundef zeroext %i.mz) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.331)
          to label %bb.dq unwind label %bb.ek

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.dr unwind label %bb.el

bb.dr:                                            ; preds = %bb.dq
  %i.na = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.nb = load i8, ptr %19, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.na, i8 noundef zeroext %i.nb) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.nc = load ptr, ptr %16, align 8, !tbaa !610, !noalias !1442 ; 6 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %.critedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !8, !noalias !1442
  %i.nf = icmp eq ptr %i.ne, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj2cs11CartesianCSE, i64 16)
  br i1 %i.nf, label %bb.dt, label %.critedge

.critedge:                                        ; preds = %bb.ds, %bb.dr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !alias.scope !1442
  br label %bb.eq

bb.dt:                                            ; preds = %bb.ds
  store ptr %i.nc, ptr %20, align 8, !tbaa !545, !alias.scope !1442
  %i.ng = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !65, !noalias !1442 ; 3 uses
  store ptr %i.ni, ptr %i.ng, align 8, !tbaa !65, !alias.scope !1442
  %.not.i.i.i.i124 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i.i124, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 3 uses
  %i.nk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1442
  %.not.i.i.i.i.i125 = icmp eq i8 %i.nk, 0
  br i1 %.not.i.i.i.i.i125, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nl = load i32, ptr %i.nj, align 4, !tbaa !70, !noalias !1442
  %i.nm = add nsw i32 %i.nl, 1
  store i32 %i.nm, ptr %i.nj, align 4, !tbaa !70, !noalias !1442
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split: ; preds = %bb.du
  %i.nn = atomicrmw volatile add ptr %i.nj, i32 1 acq_rel, align 4, !noalias !1442 ; 0 uses
  %.pr211.pre = load ptr, ptr %20, align 8, !tbaa !545 ; 2 uses
  %i.no = icmp eq ptr %.pr211.pre, null
  br i1 %i.no, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split._crit_edge, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split._crit_edge: ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %.pre221 = load ptr, ptr %16, align 8, !tbaa !610, !noalias !1445
  br label %bb.eq

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.dv, %bb.dt, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %i.np = phi ptr [ %i.nc, %bb.dv ], [ %i.nc, %bb.dt ], [ %.pr211.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.dw unwind label %bb.en

bb.dw:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs11CartesianCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  %i.nq = load ptr, ptr %i.mi, align 8, !tbaa !65 ; 2 uses
  %i.nr = load <2 x ptr>, ptr %15, align 16, !tbaa !64
  store <2 x ptr> %i.nr, ptr %23, align 16, !tbaa !64
  %.not.i.i.i.i126 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i126, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 3 uses
  %i.nt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i127 = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i.i.i.i127, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nu = load i32, ptr %i.ns, align 4, !tbaa !70
  %i.nv = add nsw i32 %i.nu, 1
  store i32 %i.nv, ptr %i.ns, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.dz:                                            ; preds = %bb.dx
  %i.nw = atomicrmw volatile add ptr %i.ns, i32 1 acq_rel, align 4 ; 0 uses
  %.pre366 = load ptr, ptr %20, align 8, !tbaa !545
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.dw, %bb.dy, %bb.dz
  %i.nx = phi ptr [ %i.np, %bb.dw ], [ %i.np, %bb.dy ], [ %.pre366, %bb.dz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  store ptr %i.nx, ptr %24, align 8, !tbaa !545
  %i.ny = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.nz = load ptr, ptr %i.ng, align 8, !tbaa !65 ; 3 uses
  store ptr %i.nz, ptr %i.ny, align 8, !tbaa !65
  %.not.i.i.i.i128 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i128, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs11CartesianCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 3 uses
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i129 = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i.i.i129, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.oc = load i32, ptr %i.oa, align 4, !tbaa !70
  %i.od = add nsw i32 %i.oc, 1
  store i32 %i.od, ptr %i.oa, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs11CartesianCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ec:                                            ; preds = %bb.ea
  %i.oe = atomicrmw volatile add ptr %i.oa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs11CartesianCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
end_hunk_3
begin_hunk_4_@_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE:bb.a
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !65 ; 8 uses
  %.not.i.i.i.i.i.i.i128 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i.i.i.i128, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEEEvPT_.exit.i.i.i132, label %bb.em

bb.em:                                            ; preds = %.lr.ph.i.i.i126
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 4 uses
  %i.nf = load atomic i64, ptr %i.ne acquire, align 8 ; 2 uses
  %i.ng = icmp eq i64 %i.nf, 4294967297
  %i.nh = trunc i64 %i.nf to i32                  ; 2 uses
  br i1 %i.ng, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.ne, align 8, !tbaa !66
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 0, ptr %i.ni, align 4, !tbaa !68
  %i.nj = load ptr, ptr %i.nd, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #41, !inline_history !688
  %i.nm = load ptr, ptr %i.nd, align 8, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #41, !inline_history !688
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEEEvPT_.exit.i.i.i132

bb.eo:                                            ; preds = %bb.em
  %i.np = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i129 = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i.i.i.i.i.i129, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.nq = add nsw i32 %i.nh, -1
  store i32 %i.nq, ptr %i.ne, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i130

bb.eq:                                            ; preds = %bb.eo
  %i.nr = atomicrmw volatile add ptr %i.ne, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i130

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i130: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i.i.i.i.i131 = phi i32 [ %i.nh, %bb.ep ], [ %i.nr, %bb.eq ]
  %i.ns = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i131, 1
  br i1 %i.ns, label %bb.er, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEEEvPT_.exit.i.i.i132, !prof !71

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i130
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #41
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEEEvPT_.exit.i.i.i132

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEEEvPT_.exit.i.i.i132: ; preds = %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i130, %bb.en, %.lr.ph.i.i.i126
  %i.nt = getelementptr inbounds nuw i8, ptr %.05.i.i.i127, i64 16 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.nt, %i.nb
  br i1 %.not.i.i.i133, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i134, label %.lr.ph.i.i.i126, !llvm.loop !689

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i134: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEEEvPT_.exit.i.i.i132
  %.pr.i135 = load ptr, ptr %10, align 8, !tbaa !684
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i136

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i136: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i134, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14ParameterValueEEEESaIS9_EED2Ev.exit124
  %i.nu = phi ptr [ %.pr.i135, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i134 ], [ %i.na, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14ParameterValueEEEESaIS9_EED2Ev.exit124 ] ; 3 uses
  %.not.i.i1.i137 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i1.i137, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEESaIS9_EED2Ev.exit138, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i136
  %i.nv = load ptr, ptr %i.ck, align 8, !tbaa !690
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef %i.ny) #44
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEESaIS9_EED2Ev.exit138

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEESaIS9_EED2Ev.exit138: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEES9_EvT_SB_RSaIT0_E.exit.i136, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.nz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oa = load i8, ptr %9, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, i8 noundef zeroext %i.oa) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.ex

bb.et:                                            ; preds = %bb.dx, %bb.du, %bb.dk
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.du ], [ %i.lb, %bb.dx ], [ %i.kp, %bb.dk ]
  %i.ob = load ptr, ptr %21, align 8, !tbaa !14   ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.hk
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.et
  %i.od = load i64, ptr %i.hk, align 8, !tbaa !19
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.oe) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  %i.of = load ptr, ptr %20, align 8, !tbaa !14   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.hi
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.oh = load i64, ptr %i.hi, align 8, !tbaa !19
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #41
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.dj
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.ko, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.ch
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.ch ], [ %.pn36.pn.pn.pn.pn, %bb.eu ]
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14ParameterValueEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.oj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ok = load i8, ptr %9, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, i8 noundef zeroext %i.ok) #41, !inline_history !1347
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.ac
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %bb.ev ], [ %i.cs, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.ey

bb.ex:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEESaIS9_EED2Ev.exit138, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEESaIS9_EED2Ev.exit
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.om = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, i8 noundef zeroext %i.om) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret void

bb.ey:                                            ; preds = %bb.ew, %bb.w, %bb.v
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %bb.ew ], [ %i.bm, %bb.w ], [ %i.bl, %bb.v ]
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.u
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn, %bb.ey ], [ %i.bk, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #41
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.t
  %.pn51.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn, %bb.ez ], [ %i.bj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.on = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oo = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.on, i8 noundef zeroext %i.oo) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  resume { ptr, i32 } %.pn51.pn.pn.pn.pn.pn

bb.fb:                                            ; preds = %bb.ah
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs20DerivedGeographicCRSENS4_11GeodeticCRSENS0_2cs13EllipsoidalCSEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSG_14adl_serializerESJ_IhSaIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.449") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.348", align 16 ; 9 uses
  %6 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %7 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.307", align 8 ; 9 uses
  %9 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %10 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %11 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %12 = alloca %"class.dropbox::oxygen::nn.347", align 16 ; 7 uses
  %13 = alloca %"class.dropbox::oxygen::nn.306", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.328)
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %i.c = load ptr, ptr %3, align 8, !tbaa !259, !noalias !1564 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #41, !noalias !1564 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !1564
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %5, align 16, !tbaa !607, !alias.scope !1564
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !1564 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !65, !alias.scope !1564
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1564
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.i, align 4, !tbaa !70, !noalias !1564
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !70, !noalias !1564
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split: ; preds = %bb.e
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !1564 ; 0 uses
  %.pr.pre = load ptr, ptr %5, align 16, !tbaa !607
  %i.n = icmp eq ptr %.pr.pre, null
  br i1 %i.n, label %bb.g, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

bb.g:                                             ; preds = %.thread.i, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.329)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.o, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %i.r) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.cc

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #41
  br label %bb.cb

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.f, %bb.d, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.330)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser7buildCSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.v) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  %i.w = load ptr, ptr %6, align 8, !tbaa !610, !noalias !1567 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !8, !noalias !1567
  %i.z = icmp eq ptr %i.y, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj2cs13EllipsoidalCSE, i64 16)
  br i1 %i.z, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !1567
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  store ptr %i.w, ptr %8, align 8, !tbaa !542, !alias.scope !1567
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65, !noalias !1567 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !65, !alias.scope !1567
  %.not.i.i.i.i28 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i28, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1567
  %.not.i.i.i.i.i29 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i29, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !70, !noalias !1567
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !70, !noalias !1567
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split: ; preds = %bb.p
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4, !noalias !1567 ; 0 uses
  %.pr53.pre = load ptr, ptr %8, align 8, !tbaa !542 ; 2 uses
  %i.ai = icmp eq ptr %.pr53.pre, null
  br i1 %i.ai, label %bb.r, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

bb.r:                                             ; preds = %.critedge, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %i.aj = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull @.str.332)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.aj, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.x

bb.t:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11GeodeticCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef zeroext %i.an) #41, !inline_history !1347
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.ak, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ca

bb.w:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aj) #41
  br label %bb.bz

bb.x:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.q, %bb.o, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %.pr5371 = phi ptr [ %.pr53.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split ], [ %i.w, %bb.o ], [ %i.w, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.331)
          to label %bb.y unwind label %bb.bs

bb.y:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.z unwind label %bb.bt

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef zeroext %i.ar) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.bv

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %i.au = load <2 x ptr>, ptr %5, align 16, !tbaa !64
  store <2 x ptr> %i.au, ptr %12, align 16, !tbaa !64
  %.not.i.i.i.i31 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i31, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i32 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i32, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !70
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !542
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
end_hunk_4
begin_hunk_5_@_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs20DerivedGeographicCRSENS4_11GeodeticCRSENS0_2cs13EllipsoidalCSEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSG_14adl_serializerESJ_IhSaIhEEEE:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !68
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41, !inline_history !633
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41, !inline_history !633
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i46 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i46, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

bb.bk:                                            ; preds = %bb.bi
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i48 = phi i32 [ %i.dz, %bb.bj ], [ %i.ej, %bb.bk ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i48, 1
  br i1 %i.ek, label %bb.bl, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, !prof !71

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs13EllipsoidalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !65  ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.el, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11GeodeticCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.em, align 8, !tbaa !66
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !68
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41, !inline_history !635
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41, !inline_history !635
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11GeodeticCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i50 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i50, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

bb.bq:                                            ; preds = %bb.bo
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i52 = phi i32 [ %i.ep, %bb.bp ], [ %i.ez, %bb.bq ]
  %i.fa = icmp eq i32 %.0.i.i.i.i52, 1
  br i1 %i.fa, label %bb.br, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11GeodeticCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11GeodeticCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs11GeodeticCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.bs:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs13EllipsoidalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.y
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fe = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef zeroext %i.fe) #41, !inline_history !1347
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn17 = phi { ptr, i32 } [ %i.fc, %bb.bt ], [ %i.fb, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.by

bb.bv:                                            ; preds = %bb.z
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs13EllipsoidalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs13EllipsoidalCSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn19 = phi { ptr, i32 } [ %i.fg, %bb.bw ], [ %i.ff, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bx ], [ %.pn17, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.x, %bb.w
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.by ], [ %i.ap, %bb.x ], [ %i.ao, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2cs13EllipsoidalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.v
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.bz ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.k, %bb.j
  %.pn19.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %bb.ca ], [ %i.t, %bb.k ], [ %i.s, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11GeodeticCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.i
  %.pn19.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn.pn, %bb.cb ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn19.pn.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.s, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs19DerivedProjectedCRSENS4_12ProjectedCRSENS0_2cs16CoordinateSystemEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSG_14adl_serializerESJ_IhSaIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.676") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.553", align 16 ; 9 uses
  %6 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %7 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.299", align 8 ; 9 uses
  %9 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %10 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %11 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %12 = alloca %"class.dropbox::oxygen::nn.580", align 16 ; 7 uses
  %13 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.328)
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.c = load ptr, ptr %3, align 8, !tbaa !259, !noalias !1570 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !8, !noalias !1570
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN5osgeo4proj3crs12ProjectedCRSE, i64 208)
  br i1 %i.f, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !1570
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -32
  store ptr %i.g, ptr %5, align 16, !tbaa !744, !alias.scope !1570
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65, !noalias !1570 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !65, !alias.scope !1570
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1570
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 4, !tbaa !70, !noalias !1570
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !70, !noalias !1570
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split: ; preds = %bb.e
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !1570 ; 0 uses
  %.pr.pre = load ptr, ptr %5, align 16, !tbaa !744
  %i.p = icmp eq ptr %.pr.pre, null
  br i1 %i.p, label %bb.g, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

bb.g:                                             ; preds = %.critedge, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  %i.q = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull @.str.329)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.q, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cc unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef zeroext %i.t) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.cb

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #41
  br label %bb.ca

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.f, %bb.d, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.330)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser7buildCSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef zeroext %i.x) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.y = load ptr, ptr %6, align 8, !tbaa !610, !noalias !1573 ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.critedge56, label %bb.n

.critedge56:                                      ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !1573
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  store ptr %i.y, ptr %8, align 8, !tbaa !610, !alias.scope !1573
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65, !noalias !1573 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !65, !alias.scope !1573
  %.not.i.i.i.i28 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i28, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1573
  %.not.i.i.i.i.i29 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i29, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !70, !noalias !1573
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !70, !noalias !1573
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split: ; preds = %bb.o
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4, !noalias !1573 ; 0 uses
  %.pr54.pre = load ptr, ptr %8, align 8, !tbaa !610 ; 2 uses
  %i.ah = icmp eq ptr %.pr54.pre, null
  br i1 %i.ah, label %bb.q, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread

bb.q:                                             ; preds = %.critedge56, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull @.str.332)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.ai, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cc unwind label %bb.w

bb.s:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef zeroext %i.am) #41, !inline_history !1347
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %i.aj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.bz

bb.v:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #41
  br label %bb.by

bb.w:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.p, %bb.n, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split
  %.pr5472 = phi ptr [ %.pr54.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split ], [ %i.y, %bb.n ], [ %i.y, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.331)
          to label %bb.x unwind label %bb.br

bb.x:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.y unwind label %bb.bs

bb.y:                                             ; preds = %bb.x
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef zeroext %i.aq) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.bu

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !65  ; 2 uses
  %i.at = load <2 x ptr>, ptr %5, align 16, !tbaa !64
  store <2 x ptr> %i.at, ptr %12, align 16, !tbaa !64
  %.not.i.i.i.i31 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i31, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i32 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !70
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !610
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.z, %bb.ab, %bb.ac
  %i.az = phi ptr [ %.pr5472, %bb.z ], [ %.pr5472, %bb.ab ], [ %.pre, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
end_hunk_5
begin_hunk_6_@_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs19DerivedProjectedCRSENS4_12ProjectedCRSENS0_2cs16CoordinateSystemEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSG_14adl_serializerESJ_IhSaIhEEEE:bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !68
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #41, !inline_history !633
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #41, !inline_history !633
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit49

bb.bh:                                            ; preds = %bb.bf
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i46 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i46, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

bb.bj:                                            ; preds = %bb.bh
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i48 = phi i32 [ %i.dy, %bb.bi ], [ %i.ei, %bb.bj ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i48, 1
  br i1 %i.ej, label %bb.bk, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit49, !prof !71

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit49

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit49: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs16CoordinateSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.ek = load ptr, ptr %i.h, align 8, !tbaa !65  ; 8 uses
  %.not.i.i50 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i50, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit49
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.el, align 8, !tbaa !66
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !68
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #41, !inline_history !993
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #41, !inline_history !993
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i51 = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i51, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

bb.bp:                                            ; preds = %bb.bn
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i53 = phi i32 [ %i.eo, %bb.bo ], [ %i.ey, %bb.bp ]
  %i.ez = icmp eq i32 %.0.i.i.i.i53, 1
  br i1 %i.ez, label %bb.bq, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit49, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.br:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.x
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fd = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i8 noundef zeroext %i.fd) #41, !inline_history !1347
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.fb, %bb.bs ], [ %i.fa, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.bx

bb.bu:                                            ; preds = %bb.y
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn19 = phi { ptr, i32 } [ %i.ff, %bb.bv ], [ %i.fe, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bw ], [ %.pn17, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.w, %bb.v
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.bx ], [ %i.ao, %bb.w ], [ %i.an, %bb.v ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2cs16CoordinateSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.u
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.by ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.k, %bb.j
  %.pn19.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %bb.bz ], [ %i.v, %bb.k ], [ %i.u, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.i
  %.pn19.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn.pn, %bb.ca ], [ %i.r, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn19.pn.pn.pn.pn.pn.pn.pn

bb.cc:                                            ; preds = %bb.r, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs18DerivedVerticalCRSENS4_11VerticalCRSENS0_2cs10VerticalCSEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSG_14adl_serializerESJ_IhSaIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.634") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.622", align 16 ; 9 uses
  %6 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %7 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.311", align 8 ; 9 uses
  %9 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %10 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %11 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %12 = alloca %"class.dropbox::oxygen::nn.621", align 16 ; 7 uses
  %13 = alloca %"class.dropbox::oxygen::nn.310", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.328)
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  %i.c = load ptr, ptr %3, align 8, !tbaa !259, !noalias !1576 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs11VerticalCRSE, i64 -1) #41, !noalias !1576 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !1576
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %5, align 16, !tbaa !1065, !alias.scope !1576
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !1576 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !65, !alias.scope !1576
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1576
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.i, align 4, !tbaa !70, !noalias !1576
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !70, !noalias !1576
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split: ; preds = %bb.e
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !1576 ; 0 uses
  %.pr.pre = load ptr, ptr %5, align 16, !tbaa !1065
  %i.n = icmp eq ptr %.pr.pre, null
  br i1 %i.n, label %bb.g, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

bb.g:                                             ; preds = %.thread.i, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.329)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.o, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %i.r) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.cc

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #41
  br label %bb.cb

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.f, %bb.d, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.330)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser7buildCSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.v) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  %i.w = load ptr, ptr %6, align 8, !tbaa !610, !noalias !1579 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !8, !noalias !1579
  %i.z = icmp eq ptr %i.y, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj2cs10VerticalCSE, i64 16)
  br i1 %i.z, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !1579
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  store ptr %i.w, ptr %8, align 8, !tbaa !548, !alias.scope !1579
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65, !noalias !1579 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !65, !alias.scope !1579
  %.not.i.i.i.i28 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i28, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1579
  %.not.i.i.i.i.i29 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i29, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !70, !noalias !1579
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !70, !noalias !1579
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split: ; preds = %bb.p
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4, !noalias !1579 ; 0 uses
  %.pr53.pre = load ptr, ptr %8, align 8, !tbaa !548 ; 2 uses
  %i.ai = icmp eq ptr %.pr53.pre, null
  br i1 %i.ai, label %bb.r, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

bb.r:                                             ; preds = %.critedge, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %i.aj = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull @.str.332)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.aj, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.x

bb.t:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef zeroext %i.an) #41, !inline_history !1347
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.ak, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ca

bb.w:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aj) #41
  br label %bb.bz

bb.x:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.q, %bb.o, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %.pr5371 = phi ptr [ %.pr53.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split ], [ %i.w, %bb.o ], [ %i.w, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.331)
          to label %bb.y unwind label %bb.bs

bb.y:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.z unwind label %bb.bt

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef zeroext %i.ar) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.bv

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %i.au = load <2 x ptr>, ptr %5, align 16, !tbaa !64
  store <2 x ptr> %i.au, ptr %12, align 16, !tbaa !64
  %.not.i.i.i.i31 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i31, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i32 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i32, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !70
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !548
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
end_hunk_6
begin_hunk_7_@_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs18DerivedVerticalCRSENS4_11VerticalCRSENS0_2cs10VerticalCSEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSG_14adl_serializerESJ_IhSaIhEEEE:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !68
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41, !inline_history !633
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41, !inline_history !633
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i46 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i46, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

bb.bk:                                            ; preds = %bb.bi
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i48 = phi i32 [ %i.dz, %bb.bj ], [ %i.ej, %bb.bk ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i48, 1
  br i1 %i.ek, label %bb.bl, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, !prof !71

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs10VerticalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !65  ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.el, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.em, align 8, !tbaa !66
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !68
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41, !inline_history !1261
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41, !inline_history !1261
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i50 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i50, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

bb.bq:                                            ; preds = %bb.bo
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i52 = phi i32 [ %i.ep, %bb.bp ], [ %i.ez, %bb.bq ]
  %i.fa = icmp eq i32 %.0.i.i.i.i52, 1
  br i1 %i.fa, label %bb.br, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.bs:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.y
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fe = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef zeroext %i.fe) #41, !inline_history !1347
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn17 = phi { ptr, i32 } [ %i.fc, %bb.bt ], [ %i.fb, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.by

bb.bv:                                            ; preds = %bb.z
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10VerticalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10VerticalCSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn19 = phi { ptr, i32 } [ %i.fg, %bb.bw ], [ %i.ff, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bx ], [ %.pn17, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.x, %bb.w
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.by ], [ %i.ap, %bb.x ], [ %i.ao, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2cs10VerticalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.v
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.bz ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.k, %bb.j
  %.pn19.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %bb.ca ], [ %i.t, %bb.k ], [ %i.s, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.i
  %.pn19.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn.pn, %bb.cb ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn19.pn.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.s, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs18DerivedCRSTemplateINS4_27DerivedEngineeringCRSTraitsEEENS4_14EngineeringCRSENS0_2cs16CoordinateSystemEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSI_14adl_serializerESL_IhSaIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.664") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.660", align 16 ; 9 uses
  %6 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %7 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.299", align 8 ; 9 uses
  %9 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %10 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %11 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %12 = alloca %"class.dropbox::oxygen::nn.659", align 16 ; 7 uses
  %13 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.328)
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %i.c = load ptr, ptr %3, align 8, !tbaa !259, !noalias !1582 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs14EngineeringCRSE, i64 -1) #41, !noalias !1582 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !1582
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %5, align 16, !tbaa !791, !alias.scope !1582
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !1582 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !65, !alias.scope !1582
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1582
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.i, align 4, !tbaa !70, !noalias !1582
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !70, !noalias !1582
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split: ; preds = %bb.e
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !1582 ; 0 uses
  %.pr.pre = load ptr, ptr %5, align 16, !tbaa !791
  %i.n = icmp eq ptr %.pr.pre, null
  br i1 %i.n, label %bb.g, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

bb.g:                                             ; preds = %.thread.i, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.329)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.o, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cc unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %i.r) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.cb

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #41
  br label %bb.ca

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.f, %bb.d, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.330)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser7buildCSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.v) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %i.w = load ptr, ptr %6, align 8, !tbaa !610, !noalias !1585 ; 4 uses
  %.not.i28 = icmp eq ptr %i.w, null
  br i1 %.not.i28, label %.critedge, label %bb.n

.critedge:                                        ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !1585
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  store ptr %i.w, ptr %8, align 8, !tbaa !610, !alias.scope !1585
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65, !noalias !1585 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !65, !alias.scope !1585
  %.not.i.i.i.i29 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i29, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1585
  %.not.i.i.i.i.i30 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i30, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !70, !noalias !1585
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !70, !noalias !1585
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split: ; preds = %bb.o
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4, !noalias !1585 ; 0 uses
  %.pr55.pre = load ptr, ptr %8, align 8, !tbaa !610 ; 2 uses
  %i.af = icmp eq ptr %.pr55.pre, null
  br i1 %i.af, label %bb.q, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread

bb.q:                                             ; preds = %.critedge, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split
  %i.ag = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull @.str.332)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.ag, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cc unwind label %bb.w

bb.s:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs14EngineeringCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i8 noundef zeroext %i.ak) #41, !inline_history !1347
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.t ], [ %i.ah, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.bz

bb.v:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #41
  br label %bb.by

bb.w:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.p, %bb.n, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split
  %.pr5573 = phi ptr [ %.pr55.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split ], [ %i.w, %bb.n ], [ %i.w, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.331)
          to label %bb.x unwind label %bb.br

bb.x:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.y unwind label %bb.bs

bb.y:                                             ; preds = %bb.x
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef zeroext %i.ao) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.bu

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %i.ar = load <2 x ptr>, ptr %5, align 16, !tbaa !64
  store <2 x ptr> %i.ar, ptr %12, align 16, !tbaa !64
  %.not.i.i.i.i32 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i32, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i33 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i33, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = load i32, ptr %i.as, align 4, !tbaa !70
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !610
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.z, %bb.ab, %bb.ac
  %i.ax = phi ptr [ %.pr5573, %bb.z ], [ %.pr5573, %bb.ab ], [ %.pre, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store ptr %i.ax, ptr %13, align 8, !tbaa !610
end_hunk_7
begin_hunk_8_@_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs18DerivedCRSTemplateINS4_27DerivedEngineeringCRSTraitsEEENS4_14EngineeringCRSENS0_2cs16CoordinateSystemEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSI_14adl_serializerESL_IhSaIhEEEE:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !68
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #41, !inline_history !633
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #41, !inline_history !633
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit50

bb.bh:                                            ; preds = %bb.bf
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i47 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i47, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48

bb.bj:                                            ; preds = %bb.bh
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i49 = phi i32 [ %i.dw, %bb.bi ], [ %i.eg, %bb.bj ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i49, 1
  br i1 %i.eh, label %bb.bk, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit50, !prof !71

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit50

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit50: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs16CoordinateSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !65  ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit50
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.ej, align 8, !tbaa !66
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !68
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #41, !inline_history !1310
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #41, !inline_history !1310
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bn:                                            ; preds = %bb.bl
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i52 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i52, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.bp:                                            ; preds = %bb.bn
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i54 = phi i32 [ %i.em, %bb.bo ], [ %i.ew, %bb.bp ]
  %i.ex = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.ex, label %bb.bq, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit50, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.br:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs16CoordinateSystemES5_EESt10shared_ptrIT_ERKNS0_2nnIS6_IT0_EEE.exitthread-pre-split.thread
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.x
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fb = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i8 noundef zeroext %i.fb) #41, !inline_history !1347
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn17 = phi { ptr, i32 } [ %i.ez, %bb.bs ], [ %i.ey, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.bx

bb.bu:                                            ; preds = %bb.y
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn19 = phi { ptr, i32 } [ %i.fd, %bb.bv ], [ %i.fc, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bw ], [ %.pn17, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.w, %bb.v
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.bx ], [ %i.am, %bb.w ], [ %i.al, %bb.v ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2cs16CoordinateSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.u
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.by ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.k, %bb.j
  %.pn19.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %bb.bz ], [ %i.t, %bb.k ], [ %i.s, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.i
  %.pn19.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn.pn, %bb.ca ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn19.pn.pn.pn.pn.pn.pn.pn

bb.cc:                                            ; preds = %bb.r, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs18DerivedCRSTemplateINS4_26DerivedParametricCRSTraitsEEENS4_13ParametricCRSENS0_2cs12ParametricCSEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSI_14adl_serializerESL_IhSaIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.672") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.669", align 16 ; 9 uses
  %6 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %7 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.315", align 8 ; 9 uses
  %9 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %10 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %11 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %12 = alloca %"class.dropbox::oxygen::nn.668", align 16 ; 7 uses
  %13 = alloca %"class.dropbox::oxygen::nn.314", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.328)
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.c = load ptr, ptr %3, align 8, !tbaa !259, !noalias !1588 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs13ParametricCRSE, i64 -1) #41, !noalias !1588 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !1588
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %5, align 16, !tbaa !806, !alias.scope !1588
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !1588 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !65, !alias.scope !1588
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1588
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.i, align 4, !tbaa !70, !noalias !1588
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !70, !noalias !1588
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split: ; preds = %bb.e
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !1588 ; 0 uses
  %.pr.pre = load ptr, ptr %5, align 16, !tbaa !806
  %i.n = icmp eq ptr %.pr.pre, null
  br i1 %i.n, label %bb.g, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

bb.g:                                             ; preds = %.thread.i, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.329)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.o, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %i.r) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.cc

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #41
  br label %bb.cb

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.f, %bb.d, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.330)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser7buildCSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.v) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %i.w = load ptr, ptr %6, align 8, !tbaa !610, !noalias !1591 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !8, !noalias !1591
  %i.z = icmp eq ptr %i.y, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj2cs12ParametricCSE, i64 16)
  br i1 %i.z, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !1591
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  store ptr %i.w, ptr %8, align 8, !tbaa !551, !alias.scope !1591
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65, !noalias !1591 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !65, !alias.scope !1591
  %.not.i.i.i.i28 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i28, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1591
  %.not.i.i.i.i.i29 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i29, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !70, !noalias !1591
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !70, !noalias !1591
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split: ; preds = %bb.p
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4, !noalias !1591 ; 0 uses
  %.pr53.pre = load ptr, ptr %8, align 8, !tbaa !551 ; 2 uses
  %i.ai = icmp eq ptr %.pr53.pre, null
  br i1 %i.ai, label %bb.r, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

bb.r:                                             ; preds = %.critedge, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %i.aj = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull @.str.332)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.aj, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.x

bb.t:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs13ParametricCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef zeroext %i.an) #41, !inline_history !1347
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.ak, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ca

bb.w:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aj) #41
  br label %bb.bz

bb.x:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.q, %bb.o, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %.pr5371 = phi ptr [ %.pr53.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split ], [ %i.w, %bb.o ], [ %i.w, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.331)
          to label %bb.y unwind label %bb.bs

bb.y:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.z unwind label %bb.bt

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef zeroext %i.ar) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.bv

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %i.au = load <2 x ptr>, ptr %5, align 16, !tbaa !64
  store <2 x ptr> %i.au, ptr %12, align 16, !tbaa !64
  %.not.i.i.i.i31 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i31, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i32 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i32, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !70
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !551
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
end_hunk_8
begin_hunk_9_@_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs18DerivedCRSTemplateINS4_26DerivedParametricCRSTraitsEEENS4_13ParametricCRSENS0_2cs12ParametricCSEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSI_14adl_serializerESL_IhSaIhEEEE:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !68
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41, !inline_history !633
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41, !inline_history !633
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i46 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i46, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

bb.bk:                                            ; preds = %bb.bi
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i48 = phi i32 [ %i.dz, %bb.bj ], [ %i.ej, %bb.bk ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i48, 1
  br i1 %i.ek, label %bb.bl, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, !prof !71

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !65  ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.el, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.em, align 8, !tbaa !66
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !68
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41, !inline_history !1318
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41, !inline_history !1318
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i50 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i50, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

bb.bq:                                            ; preds = %bb.bo
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i52 = phi i32 [ %i.ep, %bb.bp ], [ %i.ez, %bb.bq ]
  %i.fa = icmp eq i32 %.0.i.i.i.i52, 1
  br i1 %i.fa, label %bb.br, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.bs:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.y
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fe = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef zeroext %i.fe) #41, !inline_history !1347
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn17 = phi { ptr, i32 } [ %i.fc, %bb.bt ], [ %i.fb, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.by

bb.bv:                                            ; preds = %bb.z
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn19 = phi { ptr, i32 } [ %i.fg, %bb.bw ], [ %i.ff, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bx ], [ %.pn17, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.x, %bb.w
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.by ], [ %i.ap, %bb.x ], [ %i.ao, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.v
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.bz ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.k, %bb.j
  %.pn19.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn, %bb.ca ], [ %i.t, %bb.k ], [ %i.s, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.i
  %.pn19.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn.pn.pn.pn, %bb.cb ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn19.pn.pn.pn.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.s, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io10JSONParser15buildDerivedCRSINS0_3crs18DerivedCRSTemplateINS4_24DerivedTemporalCRSTraitsEEENS4_11TemporalCRSENS0_2cs10TemporalCSEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNSI_14adl_serializerESL_IhSaIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.655") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.652", align 16 ; 9 uses
  %6 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %7 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.648", align 8 ; 9 uses
  %9 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %10 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %11 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %12 = alloca %"class.dropbox::oxygen::nn.651", align 16 ; 7 uses
  %13 = alloca %"class.dropbox::oxygen::nn.647", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.328)
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.b) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.c = load ptr, ptr %3, align 8, !tbaa !259, !noalias !1594 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs11TemporalCRSE, i64 -1) #41, !noalias !1594 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !1594
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %5, align 16, !tbaa !773, !alias.scope !1594
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !1594 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !65, !alias.scope !1594
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1594
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.i, align 4, !tbaa !70, !noalias !1594
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !70, !noalias !1594
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split: ; preds = %bb.e
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !1594 ; 0 uses
  %.pr.pre = load ptr, ptr %5, align 16, !tbaa !773
  %i.n = icmp eq ptr %.pr.pre, null
  br i1 %i.n, label %bb.g, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread

bb.g:                                             ; preds = %.thread.i, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.329)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.o, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %i.r) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.cc

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.o) #41
  br label %bb.cb

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.f, %bb.d, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.330)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser7buildCSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext %i.v) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  %i.w = load ptr, ptr %6, align 8, !tbaa !610, !noalias !1597 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread.i31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = call ptr @__dynamic_cast(ptr nonnull %i.w, ptr nonnull @_ZTIN5osgeo4proj2cs16CoordinateSystemE, ptr nonnull @_ZTIN5osgeo4proj2cs10TemporalCSE, i64 0) #41, !noalias !1597 ; 4 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %.thread.i31, label %bb.o

.thread.i31:                                      ; preds = %bb.n, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !1597
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  store ptr %i.y, ptr %8, align 8, !tbaa !1298, !alias.scope !1597
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65, !noalias !1597 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !65, !alias.scope !1597
  %.not.i.i.i.i29 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i29, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1597
  %.not.i.i.i.i.i30 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i30, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !70, !noalias !1597
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !70, !noalias !1597
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split: ; preds = %bb.p
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4, !noalias !1597 ; 0 uses
  %.pr55.pre = load ptr, ptr %8, align 8, !tbaa !1298 ; 2 uses
  %i.ah = icmp eq ptr %.pr55.pre, null
  br i1 %i.ah, label %bb.r, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread

bb.r:                                             ; preds = %.thread.i31, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull @.str.332)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.ai, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.cd unwind label %bb.x

bb.t:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11TemporalCRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exitthread-pre-split.thread
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = load i8, ptr %7, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef zeroext %i.am) #41, !inline_history !1347
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.u ], [ %i.aj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ca

bb.w:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #41
  br label %bb.bz

bb.x:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread: ; preds = %bb.q, %bb.o, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split
  %.pr5574 = phi ptr [ %.pr55.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split ], [ %i.y, %bb.o ], [ %i.y, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.331)
          to label %bb.y unwind label %bb.bs

bb.y:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exitthread-pre-split.thread
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildConversionERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.z unwind label %bb.bt

bb.z:                                             ; preds = %bb.y
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = load i8, ptr %10, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef zeroext %i.aq) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::util::PropertyMap") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.bv

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %i.at = load <2 x ptr>, ptr %5, align 16, !tbaa !64
  store <2 x ptr> %i.at, ptr %12, align 16, !tbaa !64
  %.not.i.i.i.i33 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i33, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i34 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !70
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !70
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !1298
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
end_hunk_9
begin_hunk_10_@_ZN5osgeo4proj2io10JSONParser9buildAxisERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not155 = icmp eq ptr %i.f, %i.h
  br i1 %.not155, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  invoke void @_ZN5osgeo4proj2io10JSONParser7getUnitERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::common::UnitOfMeasure") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.288)
          to label %.critedge90 unwind label %bb.i

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread: ; preds = %bb.b, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !17
  store i8 0, ptr %i.i, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !17
  store i8 0, ptr %i.k, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.m, ptr %8, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !17
  store i8 0, ptr %i.m, align 8, !tbaa !19
  invoke void @_ZN5osgeo4proj6common13UnitOfMeasureC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS2_4TypeESA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef 1.000000e+00, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.critedge unwind label %bb.j

.critedge:                                        ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.o = load ptr, ptr %8, align 8, !tbaa !14     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.q = load i64, ptr %i.m, align 8, !tbaa !19
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.s = load ptr, ptr %7, align 8, !tbaa !14     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.k, align 8, !tbaa !19
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.w = load ptr, ptr %6, align 8, !tbaa !14     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.y = load i64, ptr %i.i, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %.critedge90

.critedge90:                                      ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.aa = call noundef ptr @_ZN5osgeo4proj2cs13AxisDirection7valueOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #41 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.e, label %bb.m

bb.e:                                             ; preds = %.critedge90
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  invoke void @_ZN5osgeo4proj8internal6concatEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.103, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.ab, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.bp unwind label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.i:                                             ; preds = %bb.c, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.j:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.m
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.j
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.aj = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.k
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.al = load i64, ptr %i.k, align 8, !tbaa !19
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.an = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread: ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.g
  %.044 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !19
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %.044, label %bb.l, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %.044, label %bb.l, label %bb.bn

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.pn149 = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ]
  call void @__cxa_free_exception(ptr %i.ab) #41
  br label %bb.bn

bb.m:                                             ; preds = %.critedge90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.ay = load i8, ptr %2, align 8, !tbaa !1341
  %i.az = icmp eq i8 %i.ay, 1
  br i1 %i.az, label %bb.n, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA9_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 1 dereferenceable(9) @.str.147)
          to label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit unwind label %bb.t

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit: ; preds = %bb.n
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.not156 = icmp eq ptr %i.bc, %i.be
  br i1 %.not156, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.147)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5osgeo4proj2io10JSONParser13buildMeridianERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.288") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.critedge92 unwind label %bb.v

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread: ; preds = %bb.m, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %.critedge94

.critedge92:                                      ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bg = load <2 x ptr>, ptr %11, align 16, !tbaa !64
  store ptr null, ptr %i.bf, align 8, !tbaa !65
  store <2 x ptr> %i.bg, ptr %10, align 16, !tbaa !64
  store ptr null, ptr %11, align 16, !tbaa !537
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bi = load i8, ptr %12, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef zeroext %i.bi) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %.critedge94

.critedge94:                                      ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread, %.critedge92
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store i8 0, ptr %13, align 8, !tbaa !531
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store double 0.000000e+00, ptr %i.bj, align 8, !tbaa !533
  %i.bk = load i8, ptr %2, align 8, !tbaa !1341
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.q, label %.thread151

.thread151:                                       ; preds = %.critedge94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  store i8 0, ptr %14, align 8, !tbaa !531
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store double 0.000000e+00, ptr %i.bm, align 8, !tbaa !533
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117.thread

bb.q:                                             ; preds = %.critedge94
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.bp = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA14_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 1 dereferenceable(14) @.str.386)
          to label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit unwind label %bb.x

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit: ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.not157 = icmp eq ptr %i.bp, %i.br
  br i1 %.not157, label %bb.z, label %bb.r

bb.r:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  %i.bs = invoke noundef double @_ZN5osgeo4proj2io10JSONParser9getNumberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.386)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %13, align 8, !tbaa !531
  store double %i.bs, ptr %i.bj, align 8, !tbaa !533
  br label %bb.z

bb.t:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.u:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bx = load i8, ptr %12, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i8 noundef zeroext %i.bx) #41, !inline_history !1347
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.pn71 = phi { ptr, i32 } [ %i.bv, %bb.v ], [ %i.bu, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.bm

bb.x:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.y:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.z:                                             ; preds = %bb.s, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  %.pr = load i8, ptr %2, align 8, !tbaa !1341
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  store i8 0, ptr %14, align 8, !tbaa !531
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !533
  %i.cb = icmp eq i8 %.pr, 1
  br i1 %i.cb, label %bb.aa, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117.thread

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.cd = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA14_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr noundef nonnull align 1 dereferenceable(14) @.str.387)
          to label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117 unwind label %bb.ad

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117: ; preds = %bb.aa
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.not158 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not158, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117
  %i.cg = invoke noundef double @_ZN5osgeo4proj2io10JSONParser9getNumberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.387)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %14, align 8, !tbaa !531
  store double %i.cg, ptr %i.ca, align 8, !tbaa !533
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117.thread

bb.ad:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ae:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117.thread: ; preds = %.thread151, %bb.z, %bb.ac, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  store i8 0, ptr %15, align 8, !tbaa !534
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  invoke void @_ZN5osgeo4proj2cs12RangeMeaningC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.cj)
          to label %_ZN5osgeo4proj4util8optionalINS0_2cs12RangeMeaningEEC2Ev.exit unwind label %bb.al

_ZN5osgeo4proj4util8optionalINS0_2cs12RangeMeaningEEC2Ev.exit: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117.thread
  %i.ck = load i8, ptr %2, align 8, !tbaa !1341
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %bb.af, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit120.thread

bb.af:                                            ; preds = %_ZN5osgeo4proj4util8optionalINS0_2cs12RangeMeaningEEC2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.co = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA14_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 1 dereferenceable(14) @.str.388)
          to label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit120 unwind label %bb.am

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit120: ; preds = %bb.af
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.not159 = icmp eq ptr %i.co, %i.cq
  br i1 %.not159, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit120.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.388)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.cr = call noundef ptr @_ZN5osgeo4proj2cs12RangeMeaning7valueOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %16) #41 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.ct = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  invoke void @_ZN5osgeo4proj8internal6concatEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.389, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.ct, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.bp unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA14_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit117.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.am:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.an:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.thread: ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj, %bb.ak
  %.0 = phi i1 [ false, %bb.ak ], [ true, %bb.aj ] ; 2 uses
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cz = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5osgeo4proj2io10JSONParser33buildGeodeticDatumOrDatumEnsembleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEERSt10shared_ptrINS0_5datum22GeodeticReferenceFrameEERSJ_INSK_13DatumEnsembleEE:bb.a
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %.pre = load i8, ptr %5, align 8, !tbaa !1341
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5emptyEv.exit.thread

bb.m:                                             ; preds = %bb.c, %bb.af
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.n:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5emptyEv.exit.thread36
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.bf, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = load i8, ptr %5, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef zeroext %i.bi) #41, !inline_history !1347
  br label %bb.r

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5emptyEv.exit.thread: ; preds = %bb.e, %.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5emptyEv.exit
  %i.bj = phi i8 [ %i.n, %bb.e ], [ 2, %.split ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5emptyEv.exit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i8 noundef zeroext %i.bj) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA19_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.be, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.aj

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA19_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread: ; preds = %bb.b, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5emptyEv.exit.thread, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA19_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA19_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.bl = load ptr, ptr %7, align 8, !tbaa !259, !noalias !1674 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = call ptr @__dynamic_cast(ptr nonnull %i.bl, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj5datum22GeodeticReferenceFrameE, i64 0) #41, !noalias !1674 ; 4 uses
  %.not.i23 = icmp eq ptr %i.bn, null
  br i1 %.not.i23, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !65, !noalias !1674 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1674
  %.not.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !70, !noalias !1674
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !70, !noalias !1674
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit

bb.x:                                             ; preds = %bb.v
  %i.bu = atomicrmw volatile add ptr %i.bq, i32 1 acq_rel, align 4, !noalias !1674 ; 0 uses
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit: ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.s
  %.sroa.0.0 = phi ptr [ %i.bn, %bb.w ], [ %i.bn, %bb.u ], [ %i.bn, %bb.x ], [ null, %bb.t ], [ null, %bb.s ]
  %.sroa.7.0 = phi ptr [ %i.bp, %bb.w ], [ null, %bb.u ], [ %i.bp, %bb.x ], [ null, %bb.t ], [ null, %bb.s ]
  store ptr %.sroa.0.0, ptr %2, align 8, !tbaa !1677
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65 ; 8 uses
  store ptr %.sroa.7.0, ptr %i.bv, align 8, !tbaa !65
  %.not.i.i.i.i25 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i25, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bx, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !68
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41, !inline_history !1678
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41, !inline_history !1678
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i26 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i26, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.ab ], [ %i.ck, %bb.ac ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.ad, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.z, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj5datum22GeodeticReferenceFrameENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.cm = load ptr, ptr %2, align 8, !tbaa !414
  %.not39 = icmp eq ptr %i.cm, null
  br i1 %.not39, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cn = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull @.str.357)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.cn, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.ba unwind label %bb.m

bb.ag:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA19_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cn) #41
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.cr, align 8, !tbaa !17
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !14
  store i8 0, ptr %i.cs, align 1, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i8 noundef zeroext %i.cu) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.ay

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.r, %bb.m
  %.pn20 = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.cp, %bb.ah ], [ %i.co, %bb.ag ], [ %.pn.pn, %bb.r ]
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cw = load i8, ptr %4, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i8 noundef zeroext %i.cw) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.az

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA6_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread: ; preds = %bb.a, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA6_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getObjectERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.358)
  invoke void @_ZN5osgeo4proj2io10JSONParser18buildDatumEnsembleERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.243") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ak unwind label %bb.ax

bb.ak:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA6_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load <2 x ptr>, ptr %8, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !65 ; 8 uses
  store <2 x ptr> %i.cz, ptr %3, align 8, !tbaa !64
  %.not.i.i.i.i28 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i28, label %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEaSEOS4_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.db, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !68
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #41, !inline_history !1468
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #41, !inline_history !1468
  br label %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEaSEOS4_.exit

bb.an:                                            ; preds = %bb.al
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i29 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i29, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30

bb.ap:                                            ; preds = %bb.an
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i31 = phi i32 [ %i.de, %bb.ao ], [ %i.do, %bb.ap ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i31, 1
  br i1 %i.dp, label %bb.aq, label %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEaSEOS4_.exit, !prof !71

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #41
  br label %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEaSEOS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEaSEOS4_.exit: ; preds = %bb.ak, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i30, %bb.aq
  %i.dq = load ptr, ptr %i.cx, align 8, !tbaa !65 ; 8 uses
  %.not.i.i.i32 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i32, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEaSEOS4_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.dr, align 8, !tbaa !66
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !68
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #41, !inline_history !839
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #41, !inline_history !839
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i33 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i33, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i = phi i32 [ %i.du, %bb.au ], [ %i.ee, %bb.av ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ef, label %bb.aw, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEED2Ev.exit, !prof !71

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEaSEOS4_.exit, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aw
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eh = load i8, ptr %9, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i8 noundef zeroext %i.eh) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA6_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ek = load i8, ptr %9, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i8 noundef zeroext %i.ek) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.az

bb.ay:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEED2Ev.exit, %bb.ai
  ret void

bb.az:                                            ; preds = %bb.ax, %bb.aj
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.aj ], [ %i.ei, %bb.ax ]
  resume { ptr, i32 } %.pn20.pn

bb.ba:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1341
  switch i8 %i.a, label %bb.g [
    i8 0, label %.thread
    i8 2, label %._crit_edge
  ], !prof !1379

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 2 uses
  %.pre35 = load ptr, ptr %.pre, align 8, !tbaa !1360
  br label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 2, ptr %0, align 8, !tbaa !1341
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.thread
  %i.d = phi ptr [ %.pre35, %._crit_edge ], [ null, %.thread ] ; 3 uses
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %.thread ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1357
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %.not = icmp ult i64 %1, %i.l
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %1, 1
  %i.n = sub i64 %i.m, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store i8 0, ptr %2, align 8, !tbaa !1341
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 %i.k
  invoke void @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPSC_SE_EEmRKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.p, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %2, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext %i.q) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %.pre36 = load ptr, ptr %i.f, align 8, !tbaa !19
  %.pre37 = load ptr, ptr %.pre36, align 8, !tbaa !1360
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load i8, ptr %2, align 8, !tbaa !1341
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext %i.s) #41, !inline_history !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.m

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.t = phi ptr [ %.pre37, %bb.d ], [ %i.d, %bb.b ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %1
  ret ptr %i.u

bb.g:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_ZN5osgeo4proj2ioL19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEbP6pj_ctxb:bb.a
.loopexit.split-lp:                               ; preds = %bb.yg, %bb.yl
  %lpad.loopexit.split-lp1332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.zb

bb.zb:                                            ; preds = %.loopexit.split-lp, %.loopexit1330
  %lpad.phi1333 = phi { ptr, i32 } [ %lpad.loopexit1331, %.loopexit1330 ], [ %lpad.loopexit.split-lp1332, %.loopexit.split-lp ] ; 2 uses
  %i.bfh = load ptr, ptr %172, align 8, !tbaa !446 ; 3 uses
  %.not.i.i.i1113 = icmp eq ptr %i.bfh, null
  br i1 %.not.i.i.i1113, label %.critedge729, label %.split

.split:                                           ; preds = %bb.zb
  %i.bfi = load ptr, ptr %i.bdd, align 8, !tbaa !448
  %i.bfj = ptrtoint ptr %i.bfi to i64
  %i.bfk = ptrtoint ptr %i.bfh to i64
  %i.bfl = sub i64 %i.bfj, %i.bfk
  call void @_ZdlPvm(ptr noundef nonnull %i.bfh, i64 noundef %i.bfl) #44
  br label %.critedge729

.critedge729:                                     ; preds = %.critedge727.thread1198.loopexit, %.critedge727.thread1198.loopexit.split-lp, %.critedge727.thread.loopexit, %.critedge727.thread.loopexit.split-lp, %.split, %bb.zb
  %.pn537.pn1196 = phi { ptr, i32 } [ %lpad.phi1333, %.split ], [ %lpad.loopexit.split-lp1328, %.critedge727.thread.loopexit.split-lp ], [ %lpad.phi1333, %bb.zb ], [ %lpad.loopexit1327, %.critedge727.thread.loopexit ], [ %lpad.loopexit, %.critedge727.thread1198.loopexit ], [ %lpad.loopexit.split-lp, %.critedge727.thread1198.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #41
  br label %bb.zi

bb.zc:                                            ; preds = %.critedge725
  %i.bfm = load ptr, ptr %156, align 8, !tbaa !1435 ; 2 uses
  %.not1218 = icmp eq ptr %i.bfm, null
  br i1 %.not1218, label %bb.zh, label %..thread1202_crit_edge

.thread1201:                                      ; preds = %bb.yw
  %i.bfn = load ptr, ptr %156, align 8, !tbaa !1435 ; 2 uses
  %.not1219 = icmp eq ptr %i.bfn, null
  br i1 %.not1219, label %bb.zh, label %.thread1202

..thread1202_crit_edge:                           ; preds = %bb.zc
  %.pre1350 = load i64, ptr %i.dx, align 8, !tbaa !17
  %.pre1376 = shl i64 %.pre1350, 1
  br label %.thread1202

.thread1202:                                      ; preds = %..thread1202_crit_edge, %.thread1201
  %.pre-phi1377 = phi i64 [ %.pre1376, %..thread1202_crit_edge ], [ %i.ben, %.thread1201 ]
  %i.bfo = phi ptr [ %i.bfm, %..thread1202_crit_edge ], [ %i.bfn, %.thread1201 ] ; 2 uses
  %i.bfp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bfo) #45
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 8
  %i.bfr = load i64, ptr %i.bfq, align 8, !tbaa !17
  %i.bfs = icmp ult i64 %i.bfr, %.pre-phi1377
  br i1 %i.bfs, label %.loopexit1335, label %bb.zh

.loopexit1335:                                    ; preds = %.thread1202, %bb.yo, %bb.yj
  %i.bft = phi ptr [ %i.bdn, %bb.yj ], [ %i.bdw, %bb.yo ], [ %i.bfo, %.thread1202 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #41
  store ptr %i.bft, ptr %174, align 8, !tbaa !1435
  %i.bfu = getelementptr inbounds nuw i8, ptr %174, i64 8 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %156, i64 8
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !65 ; 4 uses
  store ptr %i.bfw, ptr %i.bfu, align 8, !tbaa !65
  %.not.i.i.i.i1115 = icmp eq ptr %i.bfw, null
  br i1 %.not.i.i.i.i1115, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit1119, label %bb.zd

bb.zd:                                            ; preds = %.loopexit1335
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 8 ; 3 uses
  %i.bfy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i1116 = icmp eq i8 %i.bfy, 0
  br i1 %.not.i.i.i.i.i1116, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread1630

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread1630: ; preds = %bb.zd
  %i.bfz = load i32, ptr %i.bfx, align 4, !tbaa !70
  %i.bga = add nsw i32 %i.bfz, 1
  store i32 %i.bga, ptr %i.bfx, align 4, !tbaa !70
  br label %bb.ze

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.zd
  %i.bgb = atomicrmw volatile add ptr %i.bfx, i32 1 acq_rel, align 4 ; 0 uses
  %.pr1203.pre = load ptr, ptr %i.bfu, align 8, !tbaa !65 ; 2 uses
  %.pre1352 = load ptr, ptr %174, align 8, !tbaa !1435 ; 2 uses
  %.not.i.i.i.i.i1117 = icmp eq ptr %.pr1203.pre, null
  br i1 %.not.i.i.i.i.i1117, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit1119, label %bb.ze

bb.ze:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread1630, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %.pr12031633 = phi ptr [ %i.bfw, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread1630 ], [ %.pr1203.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 3 uses
  %i.bgc = phi ptr [ %i.bft, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread1630 ], [ %.pre1352, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %.pr12031633, i64 8 ; 3 uses
  %i.bge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i1118 = icmp eq i8 %i.bge, 0
  br i1 %.not.i.i.i.i.i.i1118, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.bgf = load i32, ptr %i.bgd, align 4, !tbaa !70
  %i.bgg = add nsw i32 %i.bgf, 1
  store i32 %i.bgg, ptr %i.bgd, align 4, !tbaa !70
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit1119

bb.zg:                                            ; preds = %bb.ze
  %i.bgh = atomicrmw volatile add ptr %i.bgd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit1119

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit1119: ; preds = %.loopexit1335, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, %bb.zf, %bb.zg
  %i.bgi = phi ptr [ %i.bgc, %bb.zg ], [ %.pre1352, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ], [ %i.bgc, %bb.zf ], [ %i.bft, %.loopexit1335 ]
  %i.bgj = phi ptr [ %.pr12031633, %bb.zg ], [ null, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ], [ %.pr12031633, %bb.zf ], [ null, %.loopexit1335 ]
  store ptr %i.bgi, ptr %0, align 8, !tbaa !259
  %i.bgk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bgj, ptr %i.bgk, align 8, !tbaa !65
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11CompoundCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %174) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #41
  br label %.critedge731

bb.zh:                                            ; preds = %.thread1201, %bb.zc, %.thread1202
  call void @_ZNSt12__shared_ptrIN5osgeo4proj6common16IdentifiedObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %171) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #41
  %i.bgl = add nuw nsw i32 %.04471271, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bgl, %i.bdc
  br i1 %exitcond.not, label %.critedge733, label %.peel.next1310, !llvm.loop !1722

.critedge731:                                     ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit1119, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_6common16IdentifiedObjectEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZNSt12__shared_ptrIN5osgeo4proj6common16IdentifiedObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %171) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #41
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %156) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %152) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #41
  br label %bb.zm

bb.zi:                                            ; preds = %.critedge729, %bb.yq, %bb.yd
  %.merged661 = phi { ptr, i32 } [ %.pn537.pn1196, %.critedge729 ], [ %i.bdx, %bb.yq ], [ %.pn528.pn.pn.pn.pn.pn.pn.pn, %bb.yd ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %156) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %152) #41
  br label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095
  %.merged660 = phi { ptr, i32 } [ %.merged661, %bb.zi ], [ %i.bbs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #41
  br label %bb.zn

.critedge733:                                     ; preds = %bb.zh, %bb.yp
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11CompoundCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %156) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %152) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #41
  br label %bb.zk

bb.zk:                                            ; preds = %.critedge733, %bb.wn
  %i.bgm = call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bgm, ptr noundef nonnull @.str.681)
          to label %.invoke unwind label %bb.zl

.invoke:                                          ; preds = %bb.zk, %bb.tl, %bb.jr, %bb.dy
  %.sink = phi ptr [ %i.aqo, %bb.tl ], [ %i.md, %bb.dy ], [ %i.wd, %bb.jr ], [ %i.bgm, %bb.zk ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %.sink, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %.sink, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %.cont unwind label %bb.ea

.cont:                                            ; preds = %.invoke
  unreachable

bb.zl:                                            ; preds = %bb.zk
  %i.bgn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bgm) #41
  br label %bb.zn

bb.zm:                                            ; preds = %.critedge731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871, %bb.wg, %bb.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1068, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation19CoordinateOperationEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, %bb.tg
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  br label %bb.zo

bb.zn:                                            ; preds = %bb.vx, %bb.vg, %bb.zl, %bb.zj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071, %bb.wh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065, %.critedge716, %bb.ux, %bb.tm, %bb.ti, %bb.js, %bb.jo, %bb.hq, %bb.ea, %bb.dz, %bb.dv
  %.merged659 = phi { ptr, i32 } [ %.pn624.pn.pn.pn.pn, %bb.ti ], [ %i.mf, %bb.ea ], [ %i.we, %bb.js ], [ %.pn556.pn.pn.pn, %bb.ux ], [ %i.aqp, %bb.tm ], [ %.pn547, %.critedge716 ], [ %.pn541.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065 ], [ %i.ayg, %bb.wh ], [ %i.ayy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071 ], [ %i.bgn, %bb.zl ], [ %.merged660, %bb.zj ], [ %i.awn, %bb.vx ], [ %.pn513.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jo ], [ %i.aui, %bb.vg ], [ %i.lu, %bb.dv ], [ %.pn653.pn, %bb.hq ], [ %i.me, %bb.dz ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  br label %bb.zp

bb.zo:                                            ; preds = %.critedge676, %_ZN5osgeo4proj2io10JSONParserD2Ev.exit, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, %bb.zm, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs3CRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit808, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs3CRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.zp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, %bb.bz, %bb.cf, %bb.zn, %bb.dm, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747
  %.merged = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ], [ %.merged663, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769 ], [ %i.il, %bb.cf ], [ %.merged659, %bb.zn ], [ %.merged662, %bb.bz ], [ %i.kj, %bb.db ], [ %i.lc, %bb.dm ]
  resume { ptr, i32 } %.merged

bb.zq:                                            ; preds = %bb.hn, %bb.hc, %bb.bq, %bb.aq, %bb.ae
  %i.bgo = landingpad { ptr, i32 }
          catch ptr null
  %i.bgp = extractvalue { ptr, i32 } %i.bgo, 0
  call void @__clang_call_terminate(ptr %i.bgp) #40
  unreachable

bb.zr:                                            ; preds = %bb.um, %bb.tu, %bb.sr, %bb.rw, %bb.qx, %bb.lf, %bb.kq, %bb.kc, %bb.hv, %.critedge688, %bb.gz, %bb.bn, %bb.an, %bb.ab
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pj_ctx(ptr dead_on_unwind noalias writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %4 = alloca %"class.dropbox::oxygen::nn.125", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.409, i64 noundef 0, i64 noundef 5) #41
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.410, i64 noundef 0, i64 noundef 5) #41
  %.not12 = icmp eq i64 %i.c, -1
  br i1 %.not12, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.d = invoke noundef ptr @_ZN6pj_ctx15get_cpp_contextEv(ptr noundef nonnull align 8 dereferenceable(572) %2)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14projCppContext18getDatabaseContextEv(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.125") align 8 %4, ptr noundef nonnull align 8 dereferenceable(272) %i.d)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load <2 x ptr>, ptr %4, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !65   ; 8 uses
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.i, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !68
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #41, !inline_history !69
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #41, !inline_history !69
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.j ], [ %i.v, %bb.k ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.l, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, !prof !71

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #41
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.y, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !68
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #41, !inline_history !273
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #41, !inline_history !273
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i13 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.p ], [ %i.al, %bb.q ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.r, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !71

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.u

bb.s:                                             ; preds = %bb.e, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ao = extractvalue { ptr, i32 } %i.an, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.ar = extractvalue { ptr, i32 } %i.an, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ar) #41 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t, %bb.a, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, %bb.c
  invoke fastcc void @_ZN5osgeo4proj2ioL19createFromUserInputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS1_15DatabaseContextEEbP6pj_ctxb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false, ptr noundef %2, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65 ; 8 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !68
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #41, !inline_history !73
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #41, !inline_history !73
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i14 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i14, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bj, label %bb.ab, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.ac:                                            ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.s
  %.merged = phi { ptr, i32 } [ %i.bl, %bb.ad ], [ %i.bk, %bb.ac ], [ %i.an, %bb.s ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.merged
}

declare noundef ptr @_ZN6pj_ctx15get_cpp_contextEv(ptr noundef nonnull align 8 dereferenceable(572)) local_unnamed_addr #10

declare void @_ZN14projCppContext18getDatabaseContextEv(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.125") align 8, ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io9WKTParser13createFromWKTERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_12
begin_hunk_13_@_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev:bb.a
  %i.hwh = getelementptr inbounds nuw i8, ptr %i.hwg, i64 %i.hvw
  store i8 0, ptr %i.hwh, align 1, !tbaa !19
  %.pre4044 = load ptr, ptr %0, align 8, !tbaa !1738
  br label %bb.xr

bb.xr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit2778, %bb.xo, %._crit_edge3932
  %i.hwi = phi ptr [ %.pre4044, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit2778 ], [ %i.hqq, %bb.xo ], [ %i.hqq, %._crit_edge3932 ] ; 2 uses
  %i.hwj = load i64, ptr %i.hnc, align 8, !tbaa !17 ; 2 uses
  %i.hwk = getelementptr inbounds nuw i8, ptr %i.hwi, i64 352
  %i.hwl = load i64, ptr %i.hwk, align 8, !tbaa !17
  %i.hwm = sub i64 4611686018427387903, %i.hwl
  %i.hwn = icmp ult i64 %i.hwm, %i.hwj
  br i1 %i.hwn, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2779

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2779: ; preds = %bb.xr
  %i.hwo = getelementptr inbounds nuw i8, ptr %i.hwi, i64 344
  %i.hwp = load ptr, ptr %89, align 8, !tbaa !14
  %i.hwq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hwo, ptr noundef %i.hwp, i64 noundef %i.hwj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit2782 unwind label %.loopexit3564 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit2782: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2779
  %i.hwr = load ptr, ptr %89, align 8, !tbaa !14  ; 2 uses
  %i.hws = icmp eq ptr %i.hwr, %i.hnb
  br i1 %i.hws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2783

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2783: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit2782
  %i.hwt = load i64, ptr %i.hnb, align 8, !tbaa !19
  %i.hwu = add i64 %i.hwt, 1
  call void @_ZdlPvm(ptr noundef %i.hwr, i64 noundef %i.hwu) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2785: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit2782, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2783
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #41
  %.sroa.02843.0 = load ptr, ptr %.sroa.02843.03935, align 8, !tbaa !202 ; 2 uses
  %.not3534 = icmp eq ptr %.sroa.02843.0, %i.k
  br i1 %.not3534, label %._crit_edge3938, label %bb.wa

bb.xs:                                            ; preds = %.loopexit3564, %.loopexit.split-lp3565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772, %bb.wi
  %.pn1145.pn.pn = phi { ptr, i32 } [ %.pn1145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772 ], [ %i.hpb, %bb.wi ], [ %lpad.loopexit3566, %.loopexit3564 ], [ %lpad.loopexit.split-lp3567, %.loopexit.split-lp3565 ]
  %i.hwv = load ptr, ptr %89, align 8, !tbaa !14  ; 2 uses
  %i.hww = icmp eq ptr %i.hwv, %i.hnb
  br i1 %i.hww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2786: ; preds = %bb.xs
  %i.hwx = load i64, ptr %i.hnb, align 8, !tbaa !19
  %i.hwy = add i64 %i.hwx, 1
  call void @_ZdlPvm(ptr noundef %i.hwv, i64 noundef %i.hwy) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2788

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2788: ; preds = %bb.xs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2786
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #41
  br label %common.resume

_ZN5osgeo4proj2io19PROJStringFormatter7Private14appendToResultEPKc.exit2795: ; preds = %._crit_edge3938
  %i.hwz = getelementptr inbounds nuw i8, ptr %i.hnm, i64 344
  %i.hxa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hwz, ptr noundef nonnull @.str.473, i64 noundef 10) ; 0 uses
  %.pre4045 = load ptr, ptr %0, align 8, !tbaa !1738
  br label %bb.xt

bb.xt:                                            ; preds = %_ZN5osgeo4proj2io19PROJStringFormatter7Private14appendToResultEPKc.exit2795, %._crit_edge3938
  %i.hxb = phi ptr [ %.pre4045, %_ZN5osgeo4proj2io19PROJStringFormatter7Private14appendToResultEPKc.exit2795 ], [ %i.hnm, %._crit_edge3938 ]
  %i.hxc = getelementptr inbounds nuw i8, ptr %i.hxb, i64 344
  ret ptr %i.hxc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io4Step8KeyValueC2EPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !10
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.910) #42
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 %i.e, ptr %i.b, align 8, !tbaa !18
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !14
  %i.h = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.h, ptr %i.c, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !17
  %i.m = load ptr, ptr %0, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !10
  %i.q = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.s, ptr %i.a, align 8, !tbaa !18
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.i    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i8
  store ptr %i.u, ptr %i.o, align 8, !tbaa !14
  %i.v = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.v, ptr %i.p, align 8, !tbaa !19
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc9, %bb.e
  %i.w = phi ptr [ %i.u, %.noexc9 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i7
  %i.x = load i8, ptr %i.q, align 1, !tbaa !19
  store i8 %i.x, ptr %i.w, align 1, !tbaa !19
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i7
  %i.y = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !17
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ac, align 8, !tbaa !1052
  ret void

bb.i:                                             ; preds = %.noexc.i8
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !19
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io19PROJStringFormatterC2ENS2_10ConventionERKSt10shared_ptrINS1_15DatabaseContextEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %i.a = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #43, !noalias !1777 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(376) %i.a, i8 0, i64 376, i1 false), !noalias !1777
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter7PrivateC2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.a)
          to label %_ZSt11make_uniqueIN5osgeo4proj2io19PROJStringFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1777

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #44, !noalias !1777
  resume { ptr, i32 } %i.b

_ZSt11make_uniqueIN5osgeo4proj2io19PROJStringFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !1738, !alias.scope !1777
  store i32 %1, ptr %i.a, align 8, !tbaa !1780
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.d = load ptr, ptr %2, align 8, !tbaa !217
  store ptr %i.d, ptr %i.c, align 8, !tbaa !217
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj2io19PROJStringFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4, !tbaa !70
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !70
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !65
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.n = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.o, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !68
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !1737
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !1737
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !71

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !65
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSERKS4_.exit: ; preds = %_ZSt11make_uniqueIN5osgeo4proj2io19PROJStringFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj2io19PROJStringFormatterD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1738   ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatter7PrivateEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatter7PrivateEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj2io19PROJStringFormatter7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %i.a) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #44
  br label %_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj2io19PROJStringFormatter7PrivateEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io19PROJStringFormatter6createENS2_10ConventionESt10shared_ptrINS1_15DatabaseContextEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.734") align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #43, !noalias !1781 ; 3 uses
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatterC2ENS2_10ConventionERKSt10shared_ptrINS1_15DatabaseContextEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS3_EED2Ev.exit unwind label %bb.b, !noalias !1781

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #44, !noalias !1781
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5osgeo4proj2io19PROJStringFormatterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  store i64 %i.c, ptr %0, align 8, !tbaa !1076
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5osgeo4proj2io19PROJStringFormatter17setUseApproxTMercEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !1738
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store i8 %i.a, ptr %i.c, align 8, !tbaa !1784
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io19PROJStringFormatter12setMultiLineEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !1738
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 325
  store i8 %i.a, ptr %i.c, align 1, !tbaa !1773
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io19PROJStringFormatter19setIndentationWidthEi(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1738
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i32 %1, ptr %i.b, align 8, !tbaa !1775
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io19PROJStringFormatter16setMaxLineLengthEi(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1738
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i32 %1, ptr %i.b, align 8, !tbaa !1776
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %bcmp.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp.i, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !14
  %bcmp.i3 = tail call i32 @bcmp(ptr %i.n, ptr nonnull %2, i64 %i.j)
  %i.o = icmp eq i32 %bcmp.i3, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4: ; preds = %bb.a, %bb.d, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.p = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ true, %bb.c ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.o, %bb.d ], [ false, %bb.a ]
  ret i1 %i.p
}

end_hunk_13
begin_hunk_14_@_ZN5osgeo4proj2io16PROJStringParser7Private18buildPrimeMeridianERNS1_4StepE:bb.a
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %.0 = phi i1 [ false, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hq = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.cc
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !19
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br i1 %.0, label %bb.cd, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br i1 %.0, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn4996 = phi { ptr, i32 } [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ]
  call void @__cxa_free_exception(ptr %i.hn) #41
  br label %bb.ce

.critedge57:                                      ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.cf

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %.body, %bb.ab
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %.body ], [ %i.br, %bb.ab ], [ %.pn4996, %bb.cd ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn43.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.dp, %bb.as ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #41
  resume { ptr, i32 } %.pn52.pn.pn

bb.cf:                                            ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit, %.critedge57
  ret void

bb.cg:                                            ; preds = %bb.cb
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1051 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1051 ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.d
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.027.044 = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.044, ptr noundef %2) #41
  br i1 %i.e, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.027.044, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1051 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1051 ; 2 uses
  %.not4045 = icmp eq ptr %i.h, %i.j
  br i1 %.not4045, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge, %bb.c
  %.sroa.023.046 = phi ptr [ %i.l, %bb.c ], [ %i.h, %._crit_edge ] ; 3 uses
  %i.k = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.046, ptr noundef %2) #41
  br i1 %i.k, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %.lr.ph48
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.023.046, i64 72 ; 2 uses
  %.not40 = icmp eq ptr %i.l, %i.j
  br i1 %.not40, label %.loopexit, label %.lr.ph48

.loopexit.sink.split:                             ; preds = %.lr.ph, %.lr.ph48
  %.sroa.023.046.lcssa.sink58 = phi ptr [ %.sroa.023.046, %.lr.ph48 ], [ %.sroa.027.044, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.023.046.lcssa.sink58, i64 64
  store i8 1, ptr %i.m, align 8, !tbaa !1052
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.023.046.lcssa.sink58, i64 32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.sink.split, %._crit_edge
  %.6 = phi ptr [ @_ZL11emptyStringB5cxx11, %._crit_edge ], [ %i.n, %.loopexit.sink.split ], [ @_ZL11emptyStringB5cxx11, %bb.c ]
  ret ptr %.6
}

declare noundef double @_Z6dmstorPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5osgeo4proj2ioL24createMapWithUnknownNameEv(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull @.str.43)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  resume { ptr, i32 } %i.b
}

declare void @_ZN5osgeo4proj6common5AngleC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #10

declare ptr @proj_list_prime_meridians() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io16PROJStringParser7Private13guessBodyNameB5cxx11Ed(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(169) %1, double noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.dropbox::oxygen::nn.125", align 16 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !19
  invoke void @_ZN5osgeo4proj5datum9Ellipsoid13guessBodyNameERKSt10shared_ptrINS0_2io15DatabaseContextEEdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp eq i64 %i.h, 14
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.k = load i64, ptr %i.j, align 1
  %i.l = xor i64 %i.k, 8390876005487505230
  %i.m = getelementptr i8, ptr %i.j, i64 6
  %i.n = load i64, ptr %i.m, align 1
  %i.o = xor i64 %i.n, 8747238843501540466
  %i.p = or i64 %i.l, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.t = load ptr, ptr %1, align 8, !tbaa !217
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1014 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.w = invoke noundef ptr @_ZN6pj_ctx15get_cpp_contextEv(ptr noundef nonnull align 8 dereferenceable(572) %i.v)
          to label %bb.e unwind label %bb.ab

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14projCppContext18getDatabaseContextEv(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.125") align 8 %4, ptr noundef nonnull align 8 dereferenceable(272) %i.w)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load <2 x ptr>, ptr %4, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !65  ; 8 uses
  store <2 x ptr> %i.z, ptr %1, align 8, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !68
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !69
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41, !inline_history !69
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.l, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, !prof !71

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #41
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !65  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ar, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !68
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41, !inline_history !273
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41, !inline_history !273
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i9 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.au, %bb.p ], [ %i.be, %bb.q ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.r, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !71

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bg = load ptr, ptr %1, align 8, !tbaa !217
  %.not27 = icmp eq ptr %i.bg, null
  br i1 %.not27, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26, label %bb.s

bb.s:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !17
  store i8 0, ptr %i.bh, align 8, !tbaa !19
  invoke void @_ZN5osgeo4proj5datum9Ellipsoid13guessBodyNameERKSt10shared_ptrINS0_2io15DatabaseContextEEdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %0, align 8, !tbaa !14    ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  %i.bm = load ptr, ptr %5, align 8, !tbaa !14    ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn                ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.t
  br i1 %i.bo, label %bb.u, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.t
  br i1 %i.bo, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !17 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %.not21.i = icmp eq ptr %5, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.v, !prof !71

bb.v:                                             ; preds = %bb.u
  switch i64 %i.bq, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !19
  store i8 %i.bs, ptr %i.bj, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bm, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.bt = load i64, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  store i64 %i.bt, ptr %i.g, align 8, !tbaa !17
  %i.bu = load ptr, ptr %0, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bx = load <2 x i64>, ptr %i.bw, align 8, !tbaa !19
  store <2 x i64> %i.bx, ptr %i.g, align 8, !tbaa !19
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.by = load i64, ptr %i.bk, align 8, !tbaa !19
  store ptr %i.bm, ptr %0, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ca = load <2 x i64>, ptr %i.bz, align 8, !tbaa !19
  store <2 x i64> %i.ca, ptr %i.g, align 8, !tbaa !19
  %.not.i10 = icmp eq ptr %i.bj, null
  br i1 %.not.i10, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bj, ptr %5, align 8, !tbaa !14
  store i64 %i.by, ptr %i.bn, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bn, ptr %5, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.y, %bb.z
  %i.cb = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bj, %bb.y ], [ %i.bn, %bb.z ], [ %i.bm, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !17
  store i8 0, ptr %i.cb, align 1, !tbaa !19
  %i.cd = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !19
  %i.ch = add i64 %i.cg, 1
end_hunk_14
begin_hunk_15_@_ZN5osgeo4proj4util11PropertyMap3setINS0_8metadata6ExtentEEERS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !65
  store ptr %i.j, ptr %i.l, align 8, !tbaa !65
  store ptr null, ptr %4, align 8, !tbaa !259
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.e

_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj4util10BaseObjectEEC2INS1_8metadata6ExtentEEERKS_IT_EPS3_.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret ptr %i.m

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj4util10BaseObjectEEC2INS1_8metadata6ExtentEEERKS_IT_EPS3_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS5datumEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs9SingleCRS13datumEnsembleEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #19

declare noundef ptr @_Z10pj_mkparamPKc(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_Z14pj_expand_initP6pj_ctxP8ARG_list(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #29

declare i32 @proj_log_level(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @proj_log_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN6Logger3logEPviPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %_ZZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN6Logger10setMessageEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull %2, i64 noundef %i.d)
          to label %_ZZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN6Logger10setMessageEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i32 } %i.f, 1
  %i.i = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.g) #41 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN6Logger10setMessageEPKc.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #40
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @__clang_call_terminate(ptr %i.g) #40
  unreachable

_ZZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN6Logger10setMessageEPKc.exit: ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

declare void @proj_context_use_proj4_init_rules(ptr noundef, i32 noundef) local_unnamed_addr #10

declare noundef ptr @_Z18pj_create_internalP6pj_ctxPKc(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1047   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1048 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !19
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #44
  br label %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i

_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1049

_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5osgeo4proj2io4Step8KeyValueEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1047
  br label %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1057
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #44
  br label %_ZNSt12_Vector_baseIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN5osgeo4proj2io4Step8KeyValueESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5osgeo4proj2io4Step8KeyValueES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #10

declare i32 @proj_context_errno(ptr noundef) local_unnamed_addr #10

declare ptr @proj_errno_string(i32 noundef) local_unnamed_addr #10

declare ptr @proj_context_destroy(ptr noundef) local_unnamed_addr #10

declare void @_ZN5osgeo4proj9operation15SingleOperation15createPROJBasedERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_3crs3CRSEESK_RKSt6vectorIN7dropbox6oxygen2nnISF_INS0_8metadata18PositionalAccuracyEEEESaISS_EE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.801") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io13JSONFormatter6createESt10shared_ptrINS1_15DatabaseContextEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.805") align 8 captures(none) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #43, !noalias !2088 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  %i.b = invoke noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #43
          to label %.noexc.i unwind label %bb.c, !noalias !2088 ; 6 uses

.noexc.i:                                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.b, i8 0, i64 296, i1 false), !noalias !2094
  invoke void @_ZN5osgeo4proj2io13JSONFormatter7PrivateC2Ev(ptr noundef nonnull align 8 dereferenceable(296) %i.b)
          to label %_ZNSt10unique_ptrIN5osgeo4proj2io13JSONFormatterESt14default_deleteIS3_EED2Ev.exit unwind label %bb.b, !noalias !2094

bb.b:                                             ; preds = %.noexc.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 296) #44, !noalias !2094
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #44, !noalias !2088
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt10unique_ptrIN5osgeo4proj2io13JSONFormatterESt14default_deleteIS3_EED2Ev.exit: ; preds = %.noexc.i
  store ptr %i.b, ptr %i.a, align 8, !tbaa !2095, !alias.scope !2091, !noalias !2088
  %i.e = ptrtoint ptr %i.a to i64
  store i64 %i.e, ptr %0, align 8, !tbaa !2097
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !65   ; 8 uses
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj2io13JSONFormatterESt14default_deleteIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !68
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #41, !inline_history !69
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #41, !inline_history !69
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit, !prof !71

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #41
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEaSEOS4_.exit: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj2io13JSONFormatterESt14default_deleteIS3_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io13JSONFormatter12setMultiLineEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095
  %i.b = zext i1 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %i.b, ptr %i.c, align 8, !tbaa !2099
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io13JSONFormatter19setIndentationWidthEi(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095
  invoke void @_ZN5osgeo4proj22CPLJSonStreamingWriter18SetIndentationSizeEi(ptr noundef nonnull align 8 dereferenceable(153) %i.a, i32 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #40
  unreachable
}

declare void @_ZN5osgeo4proj22CPLJSonStreamingWriter18SetIndentationSizeEi(ptr noundef nonnull align 8 dereferenceable(153), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io13JSONFormatter9setSchemaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io13JSONFormatterC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #43, !noalias !2106 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.a, i8 0, i64 296, i1 false), !noalias !2106
  invoke void @_ZN5osgeo4proj2io13JSONFormatter7PrivateC2Ev(ptr noundef nonnull align 8 dereferenceable(296) %i.a)
          to label %_ZSt11make_uniqueIN5osgeo4proj2io13JSONFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2106

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 296) #44, !noalias !2106
  resume { ptr, i32 } %i.b

_ZSt11make_uniqueIN5osgeo4proj2io13JSONFormatter7PrivateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !2095, !alias.scope !2106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj2io13JSONFormatterD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095   ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj2io13JSONFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io13JSONFormatter7PrivateEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj2io13JSONFormatter7PrivateEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj2io13JSONFormatter7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %i.a) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 296) #44
  br label %_ZNSt10unique_ptrIN5osgeo4proj2io13JSONFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj2io13JSONFormatter7PrivateESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj2io13JSONFormatter7PrivateEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK5osgeo4proj2io13JSONFormatter6writerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj2io13JSONFormatter15databaseContextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj2io13JSONFormatter8outputIdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.c = zext i32 %.sroa.2.0.copyload.i.i to i64
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = sdiv i64 %i.d, 64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.e
  %i.g = and i64 %i.d, -9223372036854775745
  %i.h = icmp ugt i64 %i.g, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.h, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.f, i64 %storemerge.idx.i.i.i.i.i
  %i.i = and i64 %i.d, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !18
  %i.l = and i64 %i.j, %i.k
  %i.m = icmp ne i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj2io13JSONFormatter11outputUsageEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2095   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.c = zext i32 %.sroa.2.0.copyload.i.i.i to i64 ; 2 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = sdiv i64 %i.d, 64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.e
  %i.g = and i64 %i.d, -9223372036854775745
  %i.h = icmp ugt i64 %i.g, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.h, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.f, i64 %storemerge.idx.i.i.i.i.i.i
  %i.i = and i64 %i.d, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !18
  %i.l = and i64 %i.j, %i.k
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 216
end_hunk_15
begin_hunk_16_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_T0_T1_":bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i: ; preds = %bb.n
  %.val2.i56.i.i = load ptr, ptr %i.fb, align 8
  %.val.i57.i.i = load ptr, ptr %i.e, align 8
  %i.fr = call i32 @memcmp(ptr noundef readonly %.val.i57.i.i, ptr noundef readonly %.val2.i56.i.i, i64 noundef %.sroa.speculated.i.i.i.i54.i.i) #41 ; 2 uses
  %.not.i.i.i.i58.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i.i.i58.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit64.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i, %bb.n
  %i.fs = sub i64 %.val1.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i61.i.i = call i64 @llvm.smax.i64(i64 %i.fs, i64 -2147483648)
  %.08.i.i.i.i.i62.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i61.i.i, i64 2147483647)
  %.0.i6.i.i.i.i63.i.i = trunc nsw i64 %.08.i.i.i.i.i62.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit64.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit64.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i
  %.0.i.i.i.i59.i.i = phi i32 [ %i.fr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i ], [ %.0.i6.i.i.i.i63.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i ]
  %i.ft = icmp slt i32 %.0.i.i.i.i59.i.i, 0
  br i1 %i.ft, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.o

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit64.i.i"
  %.sroa.speculated.i.i.i.i67.i.i = call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val3.i.i.i) ; 2 uses
  %i.fu = icmp eq i64 %.sroa.speculated.i.i.i.i67.i.i, 0
  br i1 %i.fu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i: ; preds = %bb.o
  %.val2.i69.i.i = load ptr, ptr %i.fb, align 8
  %.val.i70.i.i = load ptr, ptr %i.fa, align 8
  %i.fv = call i32 @memcmp(ptr noundef readonly %.val.i70.i.i, ptr noundef readonly %.val2.i69.i.i, i64 noundef %.sroa.speculated.i.i.i.i67.i.i) #41 ; 2 uses
  %.not.i.i.i.i71.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i.i.i71.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit77.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i, %bb.o
  %i.fw = sub i64 %.val3.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i74.i.i = call i64 @llvm.smax.i64(i64 %i.fw, i64 -2147483648)
  %.08.i.i.i.i.i75.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i74.i.i, i64 2147483647)
  %.0.i6.i.i.i.i76.i.i = trunc nsw i64 %.08.i.i.i.i.i75.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit77.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit77.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i
  %.0.i.i.i.i72.i.i = phi i32 [ %i.fv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i ], [ %.0.i6.i.i.i.i76.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i ]
  %i.fx = icmp slt i32 %.0.i.i.i.i72.i.i, 0
  %.82.i.i = select i1 %i.fx, ptr %i.fb, ptr %i.fa
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit77.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit64.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit51.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit38.i.i"
  %.sink.i.i = phi ptr [ %i.fa, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit38.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit64.i.i" ], [ %.82.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit77.i.i" ], [ %..i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit51.i.i" ]
  call void @_ZSt4swapIN5osgeo4proj2io4Step8KeyValueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SH_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(65) %.sink.i.i) #41
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4swapIN5osgeo4proj2io4Step8KeyValueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SH_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.023.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.gd, %_ZSt4swapIN5osgeo4proj2io4Step8KeyValueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SH_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge55163, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZSt4swapIN5osgeo4proj2io4Step8KeyValueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SH_.exit ]
  %.val3.i.i13.i = load i64, ptr %i.g, align 8, !tbaa !17 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.i20.i", %bb.p
  %.sroa.023.1.i.i = phi ptr [ %.sroa.023.0.i.i, %bb.p ], [ %i.gd, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.i20.i" ] ; 19 uses
  %i.fy = getelementptr i8, ptr %.sroa.023.1.i.i, i64 8
  %.val1.i.i14.i = load i64, ptr %i.fy, align 8, !tbaa !17 ; 5 uses
  %.sroa.speculated.i.i.i.i.i15.i = call i64 @llvm.umin.i64(i64 %.val3.i.i13.i, i64 %.val1.i.i14.i) ; 2 uses
  %i.fz = icmp eq i64 %.sroa.speculated.i.i.i.i.i15.i, 0
  br i1 %i.fz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i: ; preds = %bb.q
  %.val2.i.i17.i = load ptr, ptr %0, align 8
  %.val.i.i18.i = load ptr, ptr %.sroa.023.1.i.i, align 8
  %i.ga = call i32 @memcmp(ptr noundef readonly %.val.i.i18.i, ptr noundef readonly %.val2.i.i17.i, i64 noundef %.sroa.speculated.i.i.i.i.i15.i) #41 ; 2 uses
  %.not.i.i.i.i.i19.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.i.i.i19.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.i20.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i, %bb.q
  %i.gb = sub i64 %.val1.i.i14.i, %.val3.i.i13.i
  %spec.select7.i.i.i.i.i.i23.i = call i64 @llvm.smax.i64(i64 %i.gb, i64 -2147483648)
  %.08.i.i.i.i.i.i24.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i23.i, i64 2147483647)
  %.0.i6.i.i.i.i.i25.i = trunc nsw i64 %.08.i.i.i.i.i.i24.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.i20.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.i20.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i
  %.0.i.i.i.i.i21.i = phi i32 [ %i.ga, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i ], [ %.0.i6.i.i.i.i.i25.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i ]
  %i.gc = icmp slt i32 %.0.i.i.i.i.i21.i, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 72 ; 2 uses
  br i1 %i.gc, label %bb.q, label %.preheader.i.i.preheader, !llvm.loop !2779

.preheader.i.i.preheader:                         ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.i20.i"
  %i.ge = getelementptr i8, ptr %.sroa.023.1.i.i, i64 8 ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit20.i.i"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit20.i.i" ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 13 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 13 uses
  %i.gf = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -64
  %.val3.i9.i.i = load i64, ptr %i.gf, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i10.i.i = call i64 @llvm.umin.i64(i64 %.val3.i9.i.i, i64 %.val3.i.i13.i) ; 2 uses
  %i.gg = icmp eq i64 %.sroa.speculated.i.i.i.i10.i.i, 0
  br i1 %i.gg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i: ; preds = %.preheader.i.i
  %.val2.i12.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8
  %.val.i13.i.i = load ptr, ptr %0, align 8
  %i.gh = call i32 @memcmp(ptr noundef readonly %.val.i13.i.i, ptr noundef readonly %.val2.i12.i.i, i64 noundef %.sroa.speculated.i.i.i.i10.i.i) #41 ; 2 uses
  %.not.i.i.i.i14.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i.i.i14.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit20.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i, %.preheader.i.i
  %i.gi = sub i64 %.val3.i.i13.i, %.val3.i9.i.i
  %spec.select7.i.i.i.i.i17.i.i = call i64 @llvm.smax.i64(i64 %i.gi, i64 -2147483648)
  %.08.i.i.i.i.i18.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i17.i.i, i64 2147483647)
  %.0.i6.i.i.i.i19.i.i = trunc nsw i64 %.08.i.i.i.i.i18.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit20.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit20.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i
  %.0.i.i.i.i15.i.i = phi i32 [ %i.gh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i ], [ %.0.i6.i.i.i.i19.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i ]
  %i.gj = icmp slt i32 %.0.i.i.i.i15.i.i, 0
  br i1 %i.gj, label %.preheader.i.i, label %bb.r, !llvm.loop !2780

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvE3$_0EclINS_17__normal_iteratorIPNS4_4Step8KeyValueESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit20.i.i"
  %i.gk = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 7 uses
  %i.gl = icmp ult ptr %.sroa.023.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gl, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEET_SH_SH_T0_.exit"

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr %i.h, ptr %3, align 8, !tbaa !10
  %i.gm = load ptr, ptr %.sroa.023.1.i.i, align 8, !tbaa !14 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 16 ; 9 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

bb.t:                                             ; preds = %bb.s
  %i.gp = icmp ult i64 %.val1.i.i14.i, 16
  call void @llvm.assume(i1 %i.gp)
  %i.gq = add nuw nsw i64 %.val1.i.i14.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.gq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.s
  store ptr %i.gm, ptr %3, align 8, !tbaa !14
  %i.gr = load i64, ptr %i.gn, align 8, !tbaa !19
  store i64 %i.gr, ptr %i.h, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16, %bb.t
  store i64 %.val1.i.i14.i, ptr %i.i, align 8, !tbaa !17
  store ptr %i.gn, ptr %.sroa.023.1.i.i, align 8, !tbaa !14
  store i64 0, ptr %i.ge, align 8, !tbaa !17
  store i8 0, ptr %i.gn, align 8, !tbaa !19
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 32 ; 6 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !10
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !14 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 48 ; 9 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i20

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 40
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !17 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %i.gz = add nuw nsw i64 %i.gx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.gu, i64 %i.gz, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i19
  store ptr %i.gt, ptr %i.j, align 8, !tbaa !14
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !19
  store i64 %i.ha, ptr %i.k, align 8, !tbaa !19
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 40
  %.pre5.i = load i64, ptr %.phi.trans.insert4.i, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i20
  %i.hb = phi i64 [ %i.gx, %bb.u ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i20 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 40 ; 4 uses
  store i64 %i.hb, ptr %i.l, align 8, !tbaa !17
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !14
  store i64 0, ptr %i.hc, align 8, !tbaa !17
  store i8 0, ptr %i.gu, align 8, !tbaa !19
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 64 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !1052, !range !83, !noundef !84
  store i8 %i.he, ptr %i.m, align 8, !tbaa !1052
  %i.hf = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !14 ; 4 uses
  %i.hg = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 4 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.hi = load i64, ptr %i.gk, align 8, !tbaa !17 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hj)
  switch i64 %i.hi, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i41
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.hk = load i8, ptr %i.hf, align 1, !tbaa !19
  store i8 %i.hk, ptr %i.gn, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i41

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr align 1 %i.hf, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i41: ; preds = %bb.x, %bb.w, %bb.v
  %i.hl = load i64, ptr %i.gk, align 8, !tbaa !17 ; 2 uses
  store i64 %i.hl, ptr %i.ge, align 8, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hl
  store i8 0, ptr %i.hm, align 1, !tbaa !19
  %.pre.i.i42 = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i31

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  store ptr %i.hf, ptr %.sroa.023.1.i.i, align 8, !tbaa !14
  %i.hn = load i64, ptr %i.gk, align 8, !tbaa !17
  store i64 %i.hn, ptr %i.ge, align 8, !tbaa !17
  %i.ho = load i64, ptr %i.hg, align 8, !tbaa !19
  store i64 %i.ho, ptr %i.gn, align 8, !tbaa !19
  store ptr %i.hg, ptr %.sroa.0.1.i.i, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i31: ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i41
  %i.hp = phi ptr [ %.pre.i.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i41 ], [ %i.hg, %bb.y ]
  store i64 0, ptr %i.gk, align 8, !tbaa !17
  store i8 0, ptr %i.hp, align 1, !tbaa !19
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 8 uses
  %i.hr = load ptr, ptr %i.gs, align 8, !tbaa !14 ; 6 uses
  %i.hs = icmp eq ptr %i.hr, %i.gu
  %i.ht = load ptr, ptr %i.hq, align 8, !tbaa !14 ; 5 uses
  %i.hu = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu                ; 2 uses
  br i1 %i.hs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i31
  br i1 %i.hv, label %bb.z, label %.thread.i11.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i31
  br i1 %i.hv, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i33

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i38
  %i.hw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !17 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 16
  call void @llvm.assume(i1 %i.hy)
  switch i64 %i.hx, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i36
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.hz = load i8, ptr %i.ht, align 1, !tbaa !19
  store i8 %i.hz, ptr %i.hr, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i36

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr align 1 %i.ht, i64 %i.hx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i36: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ia = load i64, ptr %i.hw, align 8, !tbaa !17 ; 2 uses
  store i64 %i.ia, ptr %i.hc, align 8, !tbaa !17
  %i.ib = load ptr, ptr %i.gs, align 8, !tbaa !14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  store i8 0, ptr %i.ic, align 1, !tbaa !19
  %.pre.i9.i37 = load ptr, ptr %i.hq, align 8, !tbaa !14
  br label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit45

.thread.i11.i39:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i38
  store ptr %i.ht, ptr %i.gs, align 8, !tbaa !14
  %i.id = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !17
  store i64 %i.ie, ptr %i.hc, align 8, !tbaa !17
  %i.if = load i64, ptr %i.hu, align 8, !tbaa !19
  store i64 %i.if, ptr %i.gu, align 8, !tbaa !19
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i32
  %i.ig = load i64, ptr %i.gu, align 8, !tbaa !19
  store ptr %i.ht, ptr %i.gs, align 8, !tbaa !14
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !17
  store i64 %i.ii, ptr %i.hc, align 8, !tbaa !17
  %i.ij = load i64, ptr %i.hu, align 8, !tbaa !19
  store i64 %i.ij, ptr %i.gu, align 8, !tbaa !19
  %.not.i6.i34 = icmp eq ptr %i.hr, null
  br i1 %.not.i6.i34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i33
  store ptr %i.hr, ptr %i.hq, align 8, !tbaa !14
  store i64 %i.ig, ptr %i.hu, align 8, !tbaa !19
  br label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit45

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i33, %.thread.i11.i39
  store ptr %i.hu, ptr %i.hq, align 8, !tbaa !14
  br label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit45

_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit45:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i36, %bb.ac, %bb.ad
  %i.ik = phi ptr [ %.pre.i9.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i36 ], [ %i.hr, %bb.ac ], [ %i.hu, %bb.ad ]
  %i.il = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 4 uses
  store i64 0, ptr %i.il, align 8, !tbaa !17
  store i8 0, ptr %i.ik, align 1, !tbaa !19
  %i.im = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.in = load i8, ptr %i.im, align 8, !tbaa !1052, !range !83, !noundef !84
  store i8 %i.in, ptr %i.hd, align 8, !tbaa !1052
  %i.io = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !14 ; 6 uses
  %i.ip = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 4 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  %i.ir = load ptr, ptr %3, align 8, !tbaa !14    ; 6 uses
  %i.is = icmp eq ptr %i.ir, %i.h                 ; 2 uses
  br i1 %i.iq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit45
  br i1 %i.is, label %bb.ae, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit45
  br i1 %i.is, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.it = load i64, ptr %i.i, align 8, !tbaa !17  ; 3 uses
  %i.iu = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.iu)
  %.not21.i.i = icmp eq ptr %3, %.sroa.0.1.i.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.af, !prof !71

bb.af:                                            ; preds = %bb.ae
  switch i64 %i.it, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.iv = load i8, ptr %i.ir, align 1, !tbaa !19
  store i8 %i.iv, ptr %i.io, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.io, ptr align 1 %i.ir, i64 %i.it, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.iw = load i64, ptr %i.i, align 8, !tbaa !17  ; 2 uses
  store i64 %i.iw, ptr %i.gk, align 8, !tbaa !17
  %i.ix = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !14
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iw
  store i8 0, ptr %i.iy, align 1, !tbaa !19
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ir, ptr %.sroa.0.1.i.i, align 8, !tbaa !14
  %i.iz = load i64, ptr %i.i, align 8, !tbaa !17
  store i64 %i.iz, ptr %i.gk, align 8, !tbaa !17
  %i.ja = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.ja, ptr %i.ip, align 8, !tbaa !19
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.jb = load i64, ptr %i.ip, align 8, !tbaa !19
  store ptr %i.ir, ptr %.sroa.0.1.i.i, align 8, !tbaa !14
  %i.jc = load i64, ptr %i.i, align 8, !tbaa !17
  store i64 %i.jc, ptr %i.gk, align 8, !tbaa !17
  %i.jd = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.jd, ptr %i.ip, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.io, ptr %3, align 8, !tbaa !14
  store i64 %i.jb, ptr %i.h, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.aj, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ae
  %i.je = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.io, %bb.ai ], [ %i.h, %bb.aj ], [ %i.ir, %bb.ae ]
  store i64 0, ptr %i.i, align 8, !tbaa !17
  store i8 0, ptr %i.je, align 1, !tbaa !19
  %i.jf = load ptr, ptr %i.hq, align 8, !tbaa !14 ; 6 uses
  %i.jg = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 4 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  %i.ji = load ptr, ptr %i.j, align 8, !tbaa !14  ; 6 uses
  %i.jj = icmp eq ptr %i.ji, %i.k                 ; 2 uses
  br i1 %i.jh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.jj, label %bb.ak, label %.thread.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.jj, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i
  %i.jk = load i64, ptr %i.l, align 8, !tbaa !17  ; 3 uses
  %i.jl = icmp ult i64 %i.jk, 16
  call void @llvm.assume(i1 %i.jl)
  %.not21.i7.i = icmp eq ptr %3, %.sroa.0.1.i.i
  br i1 %.not21.i7.i, label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit, label %bb.al, !prof !71

bb.al:                                            ; preds = %bb.ak
  switch i64 %i.jk, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i
end_hunk_16
