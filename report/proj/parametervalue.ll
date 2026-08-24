Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/parametervalue?download=true
inline.NumInlined: 256
inline.NumDeleted: 162
begin_hunk_0_@_ZN5osgeo4proj2io12WKTFormatter15addQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE

declare hidden void @_ZN5osgeo4proj2io12WKTFormatter3addEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define hidden void @_ZThn16_NK5osgeo4proj9operation14ParameterValue12_exportToWKTEPNS0_2io12WKTFormatterE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNK5osgeo4proj9operation14ParameterValue12_exportToWKTEPNS0_2io12WKTFormatterE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = icmp eq ptr %i.b, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation14ParameterValueE, i64 104)
  br i1 %i.c, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73
  %.not = icmp eq i32 %i.f, %i.i
  br i1 %.not, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 4, label %bb.f
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = tail call noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef %2, double noundef 2.000000e-10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !13
  %bcmp.i = tail call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.t)
  %i.aa = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.i:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !48
  %i.af = icmp eq i32 %i.ac, %i.ae
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.j:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !49, !range !79, !noundef !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !49, !range !79, !noundef !80
  %.not12 = icmp eq i8 %i.ah, %i.aj
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.a, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.j, %bb.i, %bb.e
  %.0 = phi i1 [ %.not12, %bb.j ], [ true, %bb.g ], [ false, %bb.c ], [ %i.n, %bb.e ], [ true, %bb.d ], [ %i.af, %bb.i ], [ false, %bb.f ], [ %i.aa, %bb.h ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

declare hidden noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define hidden noundef zeroext i1 @_ZThn24_NK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = icmp eq ptr %i.b, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation14ParameterValueE, i64 104)
  br i1 %i.c, label %bb.c, label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73
  %.not.i = icmp eq i32 %i.f, %i.i
  br i1 %.not.i, label %bb.d, label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %i.f, label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 4, label %bb.f
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = tail call noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef %2, double noundef 2.000000e-10), !inline_history !87
  br label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !13
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.t), !inline_history !87
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

bb.i:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !48
  %i.af = icmp eq i32 %i.ac, %i.ae
  br label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

bb.j:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !49, !range !79, !noundef !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !49, !range !79, !noundef !80
  %.not12.i = icmp eq i8 %i.ah, %i.aj
  br label %_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit

_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i1 [ %.not12.i, %bb.j ], [ true, %bb.g ], [ false, %bb.c ], [ %i.n, %bb.e ], [ true, %bb.d ], [ %i.af, %bb.i ], [ false, %bb.f ], [ %i.aa, %bb.h ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0.i
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN5osgeo4proj6common7MeasureC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj9operation14ParameterValue7PrivateC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(29) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8                        ; 6 uses
  store i32 %2, ptr %0, align 8, !tbaa !27
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %6 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc unwind label %9        ; 8 uses

.noexc:                                           ; preds = %3
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !70, !noalias !89
  %i.b = load ptr, ptr %1, align 8, !tbaa !13, !noalias !89 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72, !noalias !89 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !89
  store i64 %i.d, ptr %4, align 8, !tbaa !71, !noalias !89
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %.noexc.i unwind label %7, !noalias !89 ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.f, ptr %6, align 8, !tbaa !13, !noalias !89
  %i.g = load i64, ptr %4, align 8, !tbaa !71, !noalias !89
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18, !noalias !89
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.a, %.noexc ] ; 2 uses
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !18, !noalias !89
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18, !noalias !89
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.b, i64 %i.d, i1 false), !noalias !89
  br label %bb.c

7:                                                ; preds = %.noexc.i.i
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef 32) #22, !noalias !89
  br label %.body

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %4, align 8, !tbaa !71, !noalias !89 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !72, !noalias !89
  %i.m = load ptr, ptr %6, align 8, !tbaa !13, !noalias !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !89
  store ptr %6, ptr %i.j, align 8, !tbaa !11, !alias.scope !89
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.p, align 4, !tbaa !49
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %7, %9
  %eh.lpad-body = phi { ptr, i32 } [ %10, %9 ], [ %8, %7 ]
  %.pr = load ptr, ptr %5, align 8, !tbaa !19     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj6common7MeasureESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj6common7MeasureEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj6common7MeasureEEclEPS3_.exit.i: ; preds = %.body
  %i.q = load ptr, ptr %.pr, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %.pr) #23, !inline_history !92
  br label %_ZNSt10unique_ptrIN5osgeo4proj6common7MeasureESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj6common7MeasureESt14default_deleteIS3_EED2Ev.exit: ; preds = %.body, %_ZNKSt14default_deleteIN5osgeo4proj6common7MeasureEEclEPS3_.exit.i
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5osgeo4proj9operation14ParameterValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noreturn }
attributes #12 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN5osgeo4proj9operation14ParameterValue7PrivateE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !6, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !10, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSN5osgeo4proj6common7MeasureE", !10, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !7, i64 0}
!23 = distinct !{null, null, null, null, null}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRKNS1_6common7MeasureEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!26 = distinct !{!26, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRKNS1_6common7MeasureEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSN5osgeo4proj9operation14ParameterValue7PrivateE", !29, i64 0, !30, i64 8, !36, i64 16, !5, i64 24, !42, i64 28}
!29 = !{!"_ZTSN5osgeo4proj9operation14ParameterValue4TypeE", !6, i64 0}
!30 = !{!"_ZTSSt10unique_ptrIN5osgeo4proj6common7MeasureESt14default_deleteIS3_EE", !31, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_dataIN5osgeo4proj6common7MeasureESt14default_deleteIS3_ELb1ELb1EE", !32, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implIN5osgeo4proj6common7MeasureESt14default_deleteIS3_EE", !33, i64 0}
!33 = !{!"_ZTSSt5tupleIJPN5osgeo4proj6common7MeasureESt14default_deleteIS3_EEE", !34, i64 0}
!34 = !{!"_ZTSSt11_Tuple_implILm0EJPN5osgeo4proj6common7MeasureESt14default_deleteIS3_EEE", !35, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm0EPN5osgeo4proj6common7MeasureELb0EE", !20, i64 0}
!36 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !37, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !38, i64 0}
!38 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !39, i64 0}
!39 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !40, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !41, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !12, i64 0}
!42 = !{!"bool", !6, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZSt11make_uniqueIN5osgeo4proj6common7MeasureEJRKS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!45 = distinct !{!45, !"_ZSt11make_uniqueIN5osgeo4proj6common7MeasureEJRKS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!46 = !{!44, !25}
!47 = !{!41, !12, i64 0}
!48 = !{!28, !5, i64 24}
!49 = !{!28, !42, i64 28}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!52 = distinct !{!52, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!55 = distinct !{!55, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!58 = distinct !{!58, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!59 = !{!60, !5, i64 8}
!60 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!61 = !{!60, !5, i64 12}
!62 = !{!63, !64, i64 16}
!63 = !{!"_ZTSSt15_Sp_counted_ptrIPN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !64, i64 16}
!64 = !{!"p1 _ZTSN5osgeo4proj9operation14ParameterValueE", !10, i64 0}
!65 = !{!66, !64, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EE", !64, i64 0, !67, i64 8}
!67 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0}
!68 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!69 = !{!67, !68, i64 0}
!70 = !{!15, !16, i64 0}
!71 = !{!17, !17, i64 0}
!72 = !{!14, !17, i64 8}
!73 = !{!29, !29, i64 0}
!74 = !{!5, !5, i64 0}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!77 = distinct !{!77, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!78 = !{!42, !42, i64 0}
!79 = !{i8 0, i8 2}
!80 = !{}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!83 = distinct !{!83, !"_ZSt11make_uniqueIN5osgeo4proj9operation14ParameterValue7PrivateEJRbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj6common13UnitOfMeasureELN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0, !67, i64 8}
!86 = !{!"p1 _ZTSN5osgeo4proj6common13UnitOfMeasureE", !10, i64 0}
!87 = !{ptr @_ZNK5osgeo4proj9operation14ParameterValue15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE}
!88 = !{!35, !20, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZSt11make_uniqueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!91 = distinct !{!91, !"_ZSt11make_uniqueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!92 = distinct !{null, null}
end_hunk_0
