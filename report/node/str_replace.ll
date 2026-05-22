inline.NumInlined: 239
inline.NumDeleted: 104
begin_hunk_0_@_ZN4absl16strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS0_18ViableSubstitutionESaIS6_EEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a
  %i.br = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bs = load i64, ptr %i.bp, align 8
  %i.bt = select i1 %i.bq, i64 15, i64 %i.bs
  %.not.i.i43 = icmp ugt i64 %i.bn, %i.bt
  br i1 %.not.i.i43, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %0, %.037.lcssa
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk ; 2 uses
  %cond.i.i = icmp eq i64 %i.bi, 1
  br i1 %cond.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = load i8, ptr %i.bh, align 1
  store i8 %i.bv, ptr %i.bu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bh, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bk, i64 noundef 0, ptr noundef %i.bh, i64 noundef %i.bi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  store i64 %i.bn, ptr %i.bj, align 8
  %i.bw = load ptr, ptr %3, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bn
  store i8 0, ptr %i.bx, align 1
  ret i32 %.036.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl9StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8AlphaNumES9_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS3_S3_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 6 uses
  %6 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %3, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12, !noalias !9
  call void @_ZN4absl16strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEESt6vectorINS0_18ViableSubstitutionESaISB_EES7_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %6), !noalias !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !9
  store i8 0, ptr %i.b, align 8, !alias.scope !9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %i.d = call noundef i32 @_ZN4absl16strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS0_18ViableSubstitutionESaIS6_EEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64 %1, ptr %2, ptr noundef nonnull %5, ptr noundef nonnull align 8 %0) ; 0 uses
  %i.e = load ptr, ptr %5, align 8, !noalias !9   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEES6_RKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !9
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #14
  br label %_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEES6_RKT_.exit

_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEES6_RKT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12, !noalias !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4absl13StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES5_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef i32 @_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEEiRKT_PNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl13StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEEEiRKT_PNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %"class.std::vector", align 8       ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8
  call void @_ZN4absl16strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEESt6vectorINS0_18ViableSubstitutionESaISB_EES7_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %i.d, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 17 uses
  store ptr %i.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  %i.k = load i64, ptr %i.c, align 8              ; 4 uses
  %.not.i = icmp ugt i64 %i.k, 15
  br i1 %.not.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %.0.i = call i64 @llvm.umax.i64(i64 %i.k, i64 30) ; 2 uses
  %i.m = add nuw i64 %.0.i, 1                     ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %bb.d
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #15 ; 2 uses
  store i8 0, ptr %i.o, align 1
  store ptr %i.o, ptr %3, align 8
  store i64 %.0.i, ptr %i.i, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i
  %i.p = load ptr, ptr %1, align 8
  %i.q = call noundef i32 @_ZN4absl16strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS0_18ViableSubstitutionESaIS6_EEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64 %i.k, ptr %i.p, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %i.r = icmp eq ptr %1, %3
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.s = load ptr, ptr %1, align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8              ; 8 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %3, align 8                ; 3 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.j, align 8              ; 5 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %.not.i10 = icmp eq i64 %i.v, 0
  %.not38.i = icmp eq i64 %i.z, 0                 ; 2 uses
  br i1 %.not.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = add nuw nsw i64 %i.z, 1                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ab, i1 false)
  %i.ac = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ac, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ab, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not38.i, label %bb.l, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.j
  %i.ad = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ad, i1 false)
  store i64 %i.z, ptr %i.c, align 8
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.x, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i:       ; preds = %bb.i
  %i.ae = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ae, i1 false)
  store i64 %i.v, ptr %i.j, align 8
  store i64 0, ptr %i.c, align 8
  store i8 0, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i:       ; preds = %bb.g
  %i.af = load i64, ptr %i.i, align 8
  %i.ag = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ag, i1 false)
  store ptr %i.x, ptr %1, align 8
  store ptr %i.i, ptr %3, align 8
  store i64 %i.af, ptr %i.t, align 8
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.t, align 8
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = load i64, ptr %i.j, align 8             ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.am, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = load i64, ptr %i.i, align 8
  store i64 %i.an, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i
  %.sink = phi ptr [ %i.t, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i ]
  store ptr %i.s, ptr %3, align 8
  store ptr %.sink, ptr %1, align 8
  store i64 %i.ah, ptr %i.i, align 8
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i, %bb.j, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i
  %i.ao = phi i64 [ %.pre, %bb.k ], [ %i.v, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i ], [ 0, %bb.j ], [ %i.v, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i ]
  %i.ap = load i64, ptr %i.j, align 8
  store i64 %i.ap, ptr %i.c, align 8
  store i64 %i.ao, ptr %i.j, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.l
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.i
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %i.as = load i64, ptr %i.i, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pr = load ptr, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = phi ptr [ %i.e, %bb.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #14
  br label %_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4absl16strings_internal18ViableSubstitutionESaIS2_EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl16strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEESt6vectorINS0_18ViableSubstitutionESaISB_EES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.absl::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not86 = icmp eq i64 %i.b, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.c
  %i.e = mul nuw nsw i64 %i.b, 40
end_hunk_0
