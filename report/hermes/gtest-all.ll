inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.z, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.w
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.k
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !13
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.ba = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing15AssertionResultC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !183, !range !74, !noundef !75
  store i8 %i.b, ptr %0, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #57 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.i, ptr %i.a, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %i.e, align 8, !tbaa !7
  %i.l = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.l, ptr %i.f, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !13
  store i8 %i.n, ptr %i.m, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.a
  %i.s = phi ptr [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ null, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !189
  ret void

bb.f:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #54
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7testing15AssertionResult4swapERS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !73, !range !74, !noundef !75
  %i.b = load i8, ptr %1, align 8, !tbaa !73, !range !74, !noundef !75
  store i8 %i.b, ptr %0, align 8, !tbaa !73
  store i8 %i.a, ptr %1, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !250
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !250
  store ptr %i.f, ptr %i.c, align 8, !tbaa !250
  store ptr %i.e, ptr %i.d, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7testing15AssertionResultntEv(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 initializes((0, 1), (8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !183, !range !74, !noundef !75
  %i.b = xor i8 %i.a, 1
  store i8 %i.b, ptr %0, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !189
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #53
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing16AssertionFailureERKNS_7MessageE(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  store i8 0, ptr %2, align 8, !tbaa !183, !alias.scope !286
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !189, !alias.scope !286
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINS_7MessageEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !189  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !13
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #54
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorImSaImEES6_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.49", align 8    ; 8 uses
  %4 = alloca %"class.std::vector.59", align 8    ; 12 uses
  %5 = alloca %"class.std::vector.64", align 8    ; 8 uses
  %6 = alloca %"class.std::vector.44", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = load ptr, ptr %1, align 8, !tbaa !292
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !289  ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !292    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3
  %i.o = add nsw i64 %i.n, 1                      ; 4 uses
  %i.p = icmp ugt i64 %i.o, 1152921504606846975
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #56
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.c

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #57
          to label %.noexc92 unwind label %bb.r   ; 4 uses

.noexc92:                                         ; preds = %bb.c
  store ptr %i.r, ptr %4, align 8, !tbaa !293
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !296
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !297
  %i.u = getelementptr i8, ptr %i.r, i64 8        ; 3 uses
  %i.v = icmp eq ptr %i.i, %i.j
  br i1 %i.v, label %bb.d, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc92
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.m, i1 false), !tbaa !297
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  br label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc92, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.u, %.noexc92 ], [ %i.w, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.x, align 8, !tbaa !299
  %i.y = add nsw i64 %i.g, 1                      ; 6 uses
  %i.z = icmp ugt i64 %i.y, 384307168202282325
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #56
          to label %.noexc94 unwind label %bb.s

.noexc94:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i93 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i93, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.aa = mul nuw nsw i64 %i.y, 24
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #57
          to label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.s

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ac = phi ptr [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ab, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i ] ; 14 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !300
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !303
  %i.ag = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.ac, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.h unwind label %bb.f       ; 3 uses

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.idx = mul nuw nsw i64 %i.y, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %.idx) #54
  br label %.body

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !304
  %i.ai = load ptr, ptr %4, align 8, !tbaa !293   ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !296
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #54
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.ap = load ptr, ptr %1, align 8, !tbaa !292
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !289 ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !292   ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, 1                    ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, 2305843009213693951
  br i1 %i.bb, label %bb.j, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #56
          to label %.noexc99 unwind label %bb.u

.noexc99:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i.i.i97 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i97, label %_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i, label %bb.k

_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bc = shl nuw nsw i64 %i.ba, 2
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #57
          to label %.noexc100 unwind label %bb.u  ; 4 uses

.noexc100:                                        ; preds = %bb.k
  store ptr %i.bd, ptr %6, align 8, !tbaa !305
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !307
  store i32 0, ptr %i.bd, align 4, !tbaa !308
  %i.bg = getelementptr i8, ptr %i.bd, i64 4      ; 3 uses
  %i.bh = icmp eq ptr %i.au, %i.av
  br i1 %i.bh, label %bb.l, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc100
  %.idx.i.i.i.i.i.i.i = ashr exact i64 %i.ay, 1   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !308
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc100, %_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i
  %.0.i.i.i.i.i98 = phi ptr [ null, %_ZNSt12_Vector_baseIN7testing8internal13edit_distance8EditTypeESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.bg, %.noexc100 ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i98, ptr %i.bj, align 8, !tbaa !310
  %i.bk = add nsw i64 %i.at, 1                    ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, 384307168202282325
  br i1 %i.bl, label %bb.m, label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.350) #56
          to label %.noexc103 unwind label %bb.v

.noexc103:                                        ; preds = %bb.m
  unreachable

_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.l
  %.not.i.i.i.i101 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i101, label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.bm = mul nuw nsw i64 %i.bk, 24
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #57
          to label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i unwind label %bb.v

_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.bo = phi ptr [ null, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %i.bn, %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 12 uses
  store ptr %i.bo, ptr %5, align 8, !tbaa !311
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !314
  %i.bs = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEmS6_ET_S8_T0_RKT1_(ptr noundef %i.bo, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i102, label %.body105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.idx203 = mul nuw nsw i64 %i.bk, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %.idx203) #54
  br label %.body105

bb.p:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EEC2EmRKS7_.exit.i
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !315
  %i.bu = load ptr, ptr %6, align 8, !tbaa !305   ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !307
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #54
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  %.not = icmp eq ptr %i.ag, %i.ac
  br i1 %.not, label %.preheader133, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit
  %i.ca = ptrtoint ptr %i.ag to i64
  %i.cb = ptrtoint ptr %i.ac to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = sdiv exact i64 %i.cc, 24                ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i64 %i.cc, 24
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cd, -2
  br label %bb.x

.preheader133.loopexit.unr-lcssa:                 ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader133, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader133.loopexit.unr-lcssa, %.lr.ph
  %.077141.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.eb, %.preheader133.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod227 = trunc i64 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.cf = uitofp i64 %.077141.epil.init to double
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.077141.epil.init
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !293
  store double %i.cf, ptr %i.ch, align 8, !tbaa !297
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.077141.epil.init
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !305
  store i32 2, ptr %i.cj, align 4, !tbaa !308
  br label %.preheader133

.preheader133:                                    ; preds = %.epil.preheader, %.preheader133.loopexit.unr-lcssa, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !299
  %i.cm = load ptr, ptr %i.ac, align 8, !tbaa !293 ; 3 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = ashr exact i64 %i.cp, 3                 ; 3 uses
  %i.cr = icmp ugt i64 %i.cq, 1
  br i1 %i.cr, label %.lr.ph143, label %.preheader132

.lr.ph143:                                        ; preds = %.preheader133
  %i.cs = load ptr, ptr %i.bo, align 8, !tbaa !305 ; 2 uses
  %i.ct = add nsw i64 %i.cq, -1                   ; 3 uses
  %min.iters.check = icmp eq i64 %i.cp, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph143
  %n.vec = and i64 %i.ct, -2                      ; 2 uses
  %i.cu = or i64 %i.ct, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cv = or disjoint i64 %index, 1               ; 2 uses
  %i.cw = uitofp <2 x i64> %vec.ind to <2 x double>
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cv
  store <2 x double> %i.cw, ptr %i.cx, align 8, !tbaa !297
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cv
  store <2 x i32> splat (i32 1), ptr %i.cy, align 4, !tbaa !308
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.preheader132, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph143, %middle.block
  %.078142.ph = phi i64 [ 1, %.lr.ph143 ], [ %i.cu, %middle.block ]
  br label %scalar.ph

bb.r:                                             ; preds = %bb.c, %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit109

bb.s:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %bb.e
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.db, %bb.s ], [ %i.ah, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !293   ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIdSaIdEED2Ev.exit109, label %bb.t

bb.t:                                             ; preds = %.body
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !296
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #54
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit109

_ZNSt6vectorIdSaIdEED2Ev.exit109:                 ; preds = %bb.t, %.body, %bb.r
  %.pn = phi { ptr, i32 } [ %i.da, %bb.r ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.at

bb.u:                                             ; preds = %bb.k, %bb.j
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111

bb.v:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.m
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.n, %bb.o, %bb.v
  %eh.lpad-body106 = phi { ptr, i32 } [ %i.dj, %bb.v ], [ %i.bt, %bb.o ], [ %i.bt, %bb.n ] ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !305   ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111, label %bb.w

bb.w:                                             ; preds = %.body105
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !307
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #54
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111: ; preds = %bb.w, %.body105, %bb.u
  %.pn84 = phi { ptr, i32 } [ %i.di, %bb.u ], [ %eh.lpad-body106, %.body105 ], [ %eh.lpad-body106, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %bb.as

bb.x:                                             ; preds = %bb.x, %.lr.ph.new
  %.077141 = phi i64 [ 0, %.lr.ph.new ], [ %i.eb, %bb.x ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.x ]
  %i.dq = uitofp i64 %.077141 to double
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.077141
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !293
  store double %i.dq, ptr %i.ds, align 8, !tbaa !297
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.077141
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !305
  store i32 2, ptr %i.du, align 4, !tbaa !308
  %i.dv = or disjoint i64 %.077141, 1             ; 3 uses
  %i.dw = uitofp i64 %i.dv to double
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !293
  store double %i.dw, ptr %i.dy, align 8, !tbaa !297
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.dv
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !305
  store i32 2, ptr %i.ea, align 4, !tbaa !308
  %i.eb = add nuw i64 %.077141, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader133.loopexit.unr-lcssa, label %bb.x, !llvm.loop !319

.preheader132:                                    ; preds = %scalar.ph, %middle.block, %.preheader133
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !289 ; 3 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !292   ; 4 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 3                 ; 2 uses
  %.not156 = icmp eq ptr %i.ec, %i.ed
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !289 ; 4 uses
  %.pre172 = load ptr, ptr %2, align 8, !tbaa !292 ; 5 uses
  %.not157 = icmp eq ptr %.pre, %.pre172
  %or.cond = select i1 %.not156, i1 true, i1 %.not157
  br i1 %or.cond, label %._crit_edge147, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader132
  %i.ei = ptrtoint ptr %.pre to i64
  %i.ej = ptrtoint ptr %.pre172 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.079146.us = phi i64 [ %i.eo, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.079146.us
  %i.en = load i64, ptr %i.em, align 8, !tbaa !15
  %i.eo = add nuw i64 %.079146.us, 1              ; 4 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.079146.us ; 2 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.eo
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !305
  br label %bb.y

bb.y:                                             ; preds = %.preheader.us, %bb.af
  %.080144.us = phi i64 [ 0, %.preheader.us ], [ %i.ew, %bb.af ] ; 5 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.pre172, i64 %.080144.us
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !15
  %i.ev = icmp eq i64 %i.en, %i.eu
  %i.ew = add nuw i64 %.080144.us, 1              ; 7 uses
  br i1 %i.ev, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = load ptr, ptr %i.ep, align 8, !tbaa !293 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.080144.us
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !297 ; 4 uses
  %i.fa = load ptr, ptr %i.eq, align 8, !tbaa !293 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ew
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !297 ; 4 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.080144.us
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !297 ; 3 uses
  %i.ff = fcmp olt double %i.ez, %i.fc
  %i.fg = fcmp olt double %i.ez, %i.fe
  %or.cond.us = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond.us, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = fcmp olt double %i.fc, %i.ez
  %i.fi = fcmp olt double %i.fc, %i.fe
  %or.cond91.us = select i1 %i.fh, i1 %i.fi, i1 false
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew ; 2 uses
  br i1 %or.cond91.us, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fk = fadd double %i.fe, 1.000010e+00
  store double %i.fk, ptr %i.fj, align 8, !tbaa !297
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.fl = fadd double %i.fc, 1.000000e+00
  store double %i.fl, ptr %i.fj, align 8, !tbaa !297
  br label %bb.af

bb.ad:                                            ; preds = %bb.z
  %i.fm = fadd double %i.ez, 1.000000e+00
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  store double %i.fm, ptr %i.fn, align 8, !tbaa !297
  br label %bb.af

bb.ae:                                            ; preds = %bb.y
  %i.fo = load ptr, ptr %i.eq, align 8, !tbaa !293
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.080144.us
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !297
  %i.fr = load ptr, ptr %i.ep, align 8, !tbaa !293
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ew
  store double %i.fq, ptr %i.fs, align 8, !tbaa !297
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sink = phi i32 [ 0, %bb.ae ], [ 1, %bb.ad ], [ 2, %bb.ac ], [ 3, %bb.ab ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ew
  store i32 %.sink, ptr %i.ft, align 4, !tbaa !308
  %exitcond169.not = icmp eq i64 %i.ew, %i.el
  br i1 %exitcond169.not, label %._crit_edge.us, label %bb.y, !llvm.loop !320

._crit_edge.us:                                   ; preds = %bb.af
  %exitcond171.not = icmp eq i64 %i.eo, %i.eh
  br i1 %exitcond171.not, label %._crit_edge147, label %.preheader.us, !llvm.loop !321

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.078142 = phi i64 [ %i.fx, %scalar.ph ], [ %.078142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fu = uitofp i64 %.078142 to double
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.078142
  store double %i.fu, ptr %i.fv, align 8, !tbaa !297
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.078142
  store i32 1, ptr %i.fw, align 4, !tbaa !308
  %i.fx = add nuw i64 %.078142, 1                 ; 2 uses
  %exitcond167.not = icmp eq i64 %i.fx, %i.cq
  br i1 %exitcond167.not, label %.preheader132, label %scalar.ph, !llvm.loop !322

._crit_edge147:                                   ; preds = %._crit_edge.us, %.preheader132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.fy = icmp ne ptr %i.ec, %i.ed
  %i.fz = icmp ne ptr %.pre, %.pre172
  %i.ga = select i1 %i.fy, i1 true, i1 %i.fz
  br i1 %i.ga, label %.lr.ph154, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph154:                                        ; preds = %._crit_edge147
  %i.gb = ptrtoint ptr %.pre172 to i64
  %i.gc = ptrtoint ptr %.pre to i64
  %i.gd = sub i64 %i.gc, %i.gb
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ag

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit
  store ptr %i.hl, ptr %0, align 8
  %i.gh = icmp ne ptr %i.hl, %i.hk
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.hk, i64 -4 ; 2 uses
  %i.gi = icmp ult ptr %i.hl, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %._crit_edge ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.gl, %.lr.ph.i.i ], [ %i.hl, %._crit_edge ] ; 3 uses
  %i.gj = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !308
  %i.gk = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !308
  store i32 %i.gk, ptr %.sroa.05.09.i.i, align 4, !tbaa !308
  store i32 %i.gj, ptr %.sroa.0.010.i.i, align 4, !tbaa !308
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.gm = icmp ult ptr %i.gl, %.sroa.0.0.i.i
  br i1 %i.gm, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !323

bb.ag:                                            ; preds = %.lr.ph154, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit
  %i.gn = phi ptr [ null, %.lr.ph154 ], [ %i.hj, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.go = phi ptr [ null, %.lr.ph154 ], [ %i.hk, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %7 = phi ptr [ %i.bo, %.lr.ph154 ], [ %10, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.076152.a = phi i64 [ %i.ge, %.lr.ph154 ], [ %i.hp, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %.076152 = phi i64 [ %i.eh, %.lr.ph154 ], [ %i.hn, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %8 = phi ptr [ null, %.lr.ph154 ], [ %i.hl, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 9 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %.076152
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !305
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.076152.a
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !308 ; 4 uses
  %.not.i = icmp eq ptr %i.go, %i.gn
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.gs, ptr %i.go, align 4, !tbaa !308
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  store ptr %i.gt, ptr %i.gf, align 8, !tbaa !310
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.gu = ptrtoint ptr %i.gn to i64
  %i.gv = ptrtoint ptr %8 to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 7 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775804
  br i1 %i.gx, label %bb.aj, label %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  store ptr %8, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #56
          to label %.noexc113 unwind label %.loopexit.split-lp

.noexc113:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.gy = ashr exact i64 %i.gw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i.i, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = call i64 @llvm.umin.i64(i64 %i.gz, i64 2305843009213693951)
  %i.hc = select i1 %i.ha, i64 2305843009213693951, i64 %i.hb ; 3 uses
  %.not.i.i.i112 = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %.not.i.i.i112)
  %i.hd = shl nuw nsw i64 %i.hc, 2
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #57
          to label %.noexc114 unwind label %.loopexit ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.gw ; 2 uses
  store i32 %i.gs, ptr %i.hf, align 4, !tbaa !308
  %i.hg = icmp sgt i64 %i.gw, 0
  br i1 %i.hg, label %bb.ak, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ak:                                            ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.he, ptr align 4 %8, i64 %i.gw, i1 false)
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ak, %.noexc114
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %8, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.gw) #54
  %.pre173 = load ptr, ptr %5, align 8, !tbaa !311
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %9 = phi ptr [ %.pre173, %bb.al ], [ %7, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i ]
  store ptr %i.hh, ptr %i.gf, align 8, !tbaa !310
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hc ; 2 uses
  store ptr %i.hi, ptr %i.gg, align 8, !tbaa !307
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ah
  %i.hj = phi ptr [ %i.hi, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gn, %bb.ah ]
  %i.hk = phi ptr [ %i.hh, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gt, %bb.ah ] ; 3 uses
  %10 = phi ptr [ %9, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %7, %bb.ah ] ; 3 uses
  %i.hl = phi ptr [ %i.he, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %8, %bb.ah ] ; 5 uses
  %i.hm = icmp ne i32 %i.gs, 1
  %.neg = sext i1 %i.hm to i64
  %i.hn = add i64 %.076152, %.neg                 ; 2 uses
  %i.ho = icmp ne i32 %i.gs, 2
  %.neg90 = sext i1 %i.ho to i64
  %i.hp = add i64 %.076152.a, %.neg90             ; 2 uses
  %i.hq = icmp ne i64 %i.hn, 0
  %i.hr = icmp ne i64 %i.hp, 0
  %i.hs = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %i.hs, label %bb.ag, label %._crit_edge, !llvm.loop !324

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %8, ptr %0, align 8
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i125 = icmp eq ptr %8, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126, label %bb.ar

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %._crit_edge147, %._crit_edge
  %.pr.i207 = phi ptr [ %i.bo, %._crit_edge147 ], [ %10, %._crit_edge ], [ %10, %.lr.ph.i.i ] ; 5 uses
  %i.ht = load ptr, ptr %i.bp, align 8, !tbaa !315 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i207, %i.ht
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ia, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i ], [ %.pr.i207, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit ] ; 3 uses
  %i.hu = load ptr, ptr %.05.i.i.i, align 8, !tbaa !305 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !307
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #54
  br label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ia, %i.ht
  br i1 %.not.i.i.i115, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !325

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i207, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ib = load ptr, ptr %i.br, align 8, !tbaa !314
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %.pr.i207 to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i207, i64 noundef %i.ie) #54
  br label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.if = load ptr, ptr %3, align 8, !tbaa !300   ; 5 uses
  %i.ig = load ptr, ptr %i.ad, align 8, !tbaa !304 ; 2 uses
  %.not4.i.i.i117 = icmp eq ptr %i.if, %i.ig
  br i1 %.not4.i.i.i117, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i119 = phi ptr [ %i.in, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %i.if, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit ] ; 3 uses
  %i.ih = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !293 ; 3 uses
  %.not.i.i.i.i.i.i.i120 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i.i120, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i118
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !296
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.im) #54
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.ap, %.lr.ph.i.i.i118
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 24 ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.in, %i.ig
  br i1 %.not.i.i.i121, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118, !llvm.loop !326

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit
  %.not.i.i1.i123 = icmp eq ptr %i.if, null
  br i1 %.not.i.i1.i123, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.io = load ptr, ptr %i.af, align 8, !tbaa !303
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.if to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ir) #54
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void

bb.ar:                                            ; preds = %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.gw) #54
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126: ; preds = %bb.am, %bb.ar
  call void @_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #53
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111
  %.pn86.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126 ], [ %.pn84, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #53
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt6vectorIdSaIdEED2Ev.exit109
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.as ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %.pn86.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !311    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !305 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !307
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #54
  br label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !325

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !314
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #54
  br label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !304  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !293 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !296
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #54
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !326

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !300
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !303
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #54
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.54", align 8    ; 14 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 14 uses
  %5 = alloca %"class.testing::internal::edit_distance::(anonymous namespace)::InternalStrings", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !327
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !332
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !333
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !334
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !335
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !148
  %i.h = load ptr, ptr %1, align 8, !tbaa !145    ; 2 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

.preheader.loopexit:                              ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.promoted45.pre = load ptr, ptr %4, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.promoted45 = phi ptr [ null, %bb.a ], [ %.promoted45.pre, %.preheader.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.an, %.preheader.loopexit ]
  store ptr %.lcssa, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148
  %i.m = load ptr, ptr %2, align 8, !tbaa !145    ; 2 uses
  %.not52 = icmp eq ptr %i.l, %i.m
  br i1 %.not52, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.al, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.am, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.r = phi ptr [ %i.h, %.lr.ph ], [ %i.aq, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.01444 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.01444
  %i.u = invoke fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.c unwind label %.loopexit37 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.u, ptr %i.q, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8, !tbaa !289
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %3, align 8
end_hunk_0
