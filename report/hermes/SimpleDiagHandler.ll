inline.NumInlined: 270
inline.NumDeleted: 172
begin_hunk_0_@_ZN6hermes17SimpleDiagHandler7handlerERKN4llvh12SMDiagnosticEPv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(360) %0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplINS_7SMFixItEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %i.r) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes17SimpleDiagHandler14getErrorStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %1) local_unnamed_addr #1 align 2 {
_ZN4llvhplERKNS_5TwineES2_.exit24:
  %2 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %.sroa.035.0.insert.ext = zext i32 %i.b to i64
  %i.c = inttoptr i64 %.sroa.035.0.insert.ext to ptr
  store ptr %i.c, ptr %5, align 8, !tbaa !52, !alias.scope !53
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !52, !alias.scope !53
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 10, ptr %i.e, align 8, !tbaa !58, !alias.scope !53
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 3, ptr %i.f, align 1, !tbaa !61, !alias.scope !53
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !62
  %i.i = add nsw i32 %i.h, 1
  %.sroa.030.0.insert.ext = zext i32 %i.i to i64
  %i.j = inttoptr i64 %.sroa.030.0.insert.ext to ptr
  store ptr %5, ptr %4, align 8, !tbaa !52, !alias.scope !63
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !52, !alias.scope !63
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 2, ptr %i.l, align 8, !tbaa !58, !alias.scope !63
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 10, ptr %i.m, align 1, !tbaa !61, !alias.scope !63
  store ptr %4, ptr %3, align 8, !tbaa !52, !alias.scope !68
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str, ptr %i.n, align 8, !tbaa !52, !alias.scope !68
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 2, ptr %i.o, align 8, !tbaa !58, !alias.scope !68
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 3, ptr %i.p, align 1, !tbaa !61, !alias.scope !68
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50
  store ptr %i.r, ptr %6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.t, ptr %i.u, align 8
  store ptr %3, ptr %2, align 8, !tbaa !52, !alias.scope !74
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %6, ptr %i.v, align 8, !tbaa !52, !alias.scope !74
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 2, ptr %i.w, align 8, !tbaa !58, !alias.scope !74
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 5, ptr %i.x, align 1, !tbaa !61, !alias.scope !74
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes21SimpleDiagHandlerRAIIC2ERNS_18SourceErrorManagerE(ptr noundef nonnull align 8 dereferenceable(388) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(464) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %0, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !50
  store i8 0, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.e, align 4, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.i, align 8, !tbaa !50
  store i8 0, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.l, align 8, !tbaa !50
  store i8 0, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.o, ptr %i.n, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.p, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 4, ptr %i.q, align 4, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %1, ptr %i.r, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !85
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !86   ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.select.i = select i1 %i.z, i32 0, i32 %i.y
  store i32 %spec.select.i, ptr %i.w, align 8, !tbaa !123
  store ptr @_ZN6hermes17SimpleDiagHandler7handlerERKN4llvh12SMDiagnosticEPv, ptr %i.t, align 8, !tbaa !7
  store ptr %0, ptr %i.u, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i32 0, ptr %i.aa, align 8, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 316
  store i8 0, ptr %i.ab, align 4, !tbaa !126
  store i32 1, ptr %i.x, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes21SimpleDiagHandlerRAIID2Ev(ptr noundef nonnull align 8 dereferenceable(388) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127, !nonnull !128, !align !129 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store i32 0, ptr %i.c, align 8, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  store i8 0, ptr %i.d, align 4, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load i32, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = select i1 %i.g, i32 -1, i32 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store i32 %i.h, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !85
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !85
  tail call void @_ZN4llvh12SMDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIjjESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !131    ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.j = load ptr, ptr %0, align 8, !tbaa !131    ; 24 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, !prof !133

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %i.e
  %i.s = and i64 %i.r, -8
  %i.t = add i64 %i.s, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #17
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.u, ptr %i.h, align 8, !tbaa !132
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !130  ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.l                       ; 5 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.g, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader119, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.f, -4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.aa
  %scevgep44 = getelementptr i8, ptr %i.c, i64 %i.aa
  %scevgep45 = getelementptr i8, ptr %i.j, i64 4
  %scevgep46 = getelementptr i8, ptr %i.j, i64 %i.f
  %scevgep47 = getelementptr i8, ptr %i.c, i64 4
  %bound0 = icmp ult ptr %i.j, %scevgep44
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound049 = icmp ult ptr %scevgep45, %i.b
  %bound150 = icmp ult ptr %scevgep47, %scevgep46
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.ab = and i64 %i.g, 3
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.af
  %next.gep52 = getelementptr i8, ptr %i.j, i64 %i.ag
  %next.gep53 = getelementptr i8, ptr %i.c, i64 %i.af
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.ag
  %wide.vec = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !3
  %wide.vec56 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !3
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.vec56, ptr %next.gep52, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader119

.lr.ph.i.i.i.i.i.preheader119:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader119, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 2 uses
  %i.ai = load <2 x i32>, ptr %.0910.i.i.i.i.i, align 4, !tbaa !3
  store <2 x i32> %i.ai, ptr %.0811.i.i.i.i.i, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !138

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 4 uses
  %i.ao = ashr exact i64 %i.y, 3                  ; 7 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check77 = icmp ult i64 %i.ao, 14
  br i1 %min.iters.check77, label %.lr.ph.i.i.i.i.i26.preheader118, label %vector.memcheck62

vector.memcheck62:                                ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %i.aq = add i64 %i.y, -4                        ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.j, i64 %i.aq
  %scevgep64 = getelementptr i8, ptr %i.c, i64 %i.aq
  %scevgep65 = getelementptr i8, ptr %i.j, i64 4
  %scevgep67 = getelementptr i8, ptr %i.c, i64 4
  %scevgep68 = getelementptr i8, ptr %i.c, i64 %i.y
  %bound069 = icmp ult ptr %i.j, %scevgep64
  %bound170 = icmp ult ptr %i.c, %scevgep63
  %found.conflict71 = and i1 %bound069, %bound170
  %bound072 = icmp ult ptr %scevgep65, %scevgep68
  %bound173 = icmp ult ptr %scevgep67, %i.w
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %found.conflict71, %found.conflict74
  br i1 %conflict.rdx75, label %.lr.ph.i.i.i.i.i26.preheader118, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck62
  %n.vec80 = and i64 %i.ao, 9223372036854775804   ; 3 uses
  %i.ar = and i64 %i.ao, 3
  %i.as = shl i64 %n.vec80, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next95, %vector.body81 ] ; 2 uses
  %i.av = shl i64 %index82, 3                     ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.j, i64 %i.av
  %next.gep84 = getelementptr i8, ptr %i.j, i64 %i.aw
  %next.gep85 = getelementptr i8, ptr %i.c, i64 %i.av
  %next.gep86 = getelementptr i8, ptr %i.c, i64 %i.aw
  %wide.vec87 = load <4 x i32>, ptr %next.gep85, align 4, !tbaa !3
  %wide.vec90 = load <4 x i32>, ptr %next.gep86, align 4, !tbaa !3
  store <4 x i32> %wide.vec87, ptr %next.gep83, align 4, !tbaa !3
  store <4 x i32> %wide.vec90, ptr %next.gep84, align 4, !tbaa !3
  %index.next95 = add nuw i64 %index82, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next95, %n.vec80
  br i1 %i.ax, label %middle.block96, label %vector.body81, !llvm.loop !139

middle.block96:                                   ; preds = %vector.body81
  %cmp.n97 = icmp eq i64 %i.ao, %n.vec80
  br i1 %cmp.n97, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26.preheader118

.lr.ph.i.i.i.i.i26.preheader118:                  ; preds = %vector.memcheck62, %.lr.ph.i.i.i.i.i26.preheader, %middle.block96
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.ao, %vector.memcheck62 ], [ %i.ao, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ar, %middle.block96 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %vector.memcheck62 ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.at, %middle.block96 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %vector.memcheck62 ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.au, %middle.block96 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader118, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader118 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader118 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader118 ] ; 2 uses
  %i.ay = load <2 x i32>, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !3
  store <2 x i32> %i.ay, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bb = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit, !llvm.loop !140

_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26, %middle.block96, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit
  %i.bd = add i64 %i.l, %i.d
  %i.be = add i64 %i.e, %i.x
  %2 = sub i64 %i.bd, %i.be
  %3 = add i64 %2, -8                             ; 2 uses
  %i.bf = lshr i64 %3, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check103 = icmp ult i64 %3, 72
  %i.bh = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.bh, -32
  %or.cond = or i1 %min.iters.check103, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader117, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec106 = and i64 %i.bg, 4611686018427387900  ; 3 uses
  %i.bi = shl i64 %n.vec106, 3                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.w, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.an, i64 %i.bi
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body107 ] ; 2 uses
  %i.bl = shl i64 %index108, 3                    ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.w, i64 %i.bl ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.an, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 4
  %wide.load111 = load <2 x i64>, ptr %i.bm, align 4
  %i.bn = getelementptr i8, ptr %next.gep109, i64 16
  store <2 x i64> %wide.load, ptr %next.gep109, align 4
  store <2 x i64> %wide.load111, ptr %i.bn, align 4
  %index.next112 = add nuw i64 %index108, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next112, %n.vec106
  br i1 %i.bo, label %middle.block113, label %vector.body107, !llvm.loop !141

middle.block113:                                  ; preds = %vector.body107
  %cmp.n114 = icmp eq i64 %i.bg, %n.vec106
  br i1 %cmp.n114, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader117

.lr.ph.i.i.i.i.preheader117:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block113
  %.011.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block113 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block113 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader117, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader117 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader117 ] ; 2 uses
  %i.bp = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bp, ptr %.011.i.i.i.i, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !142

_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block113
  %.pre = load ptr, ptr %0, align 8, !tbaa !131
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bs = phi ptr [ %i.p, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplINS_7SMFixItEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %.not = icmp ult i32 %i.g, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i32 %i.d, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !80     ; 3 uses
  br i1 %.not29, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !143
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.o = add nsw i64 %.012.i.i.i.i.i, -1
  %i.p = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !145

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !80
  %.pre45 = load i32, ptr %i.f, align 8, !tbaa !81
  %.pre46 = zext i32 %.pre45 to i64
  br label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit: ; preds = %bb.c, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit
  %.pre-phi = phi i64 [ %.pre46, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.h, %bb.c ]
  %i.q = phi ptr [ %.pre, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.i, %bb.c ]
  %.0 = phi ptr [ %i.n, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.pre-phi ; 2 uses
  %.not4.i = icmp eq ptr %.0, %i.r
  br i1 %.not4.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit, %_ZN4llvh7SMFixItD2Ev.exit.i
  %.05.i = phi ptr [ %i.s, %_ZN4llvh7SMFixItD2Ev.exit.i ], [ %i.r, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvh7SMFixItD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !52
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i

_ZN4llvh7SMFixItD2Ev.exit.i:                      ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq ptr %.0, %i.s
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !146

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !82
  %i.ab = icmp ult i32 %i.aa, %i.d
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not4.i30 = icmp eq i32 %i.g, 0
  br i1 %.not4.i30, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.e
  %.idx = mul nuw nsw i64 %i.h, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %_ZN4llvh7SMFixItD2Ev.exit.i34
  %.05.i32 = phi ptr [ %i.ae, %_ZN4llvh7SMFixItD2Ev.exit.i34 ], [ %i.ad, %.lr.ph.i31.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i32, i64 -48 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i32, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05.i32, i64 -16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvh7SMFixItD2Ev.exit.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %.lr.ph.i31
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !52
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i34

_ZN4llvh7SMFixItD2Ev.exit.i34:                    ; preds = %.lr.ph.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  %.not.i35 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i35, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37, label %.lr.ph.i31, !llvm.loop !146

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i34, %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !81
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  br label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44

bb.f:                                             ; preds = %bb.d
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, label %.lr.ph.preheader.i.i.i.i.i39

.lr.ph.preheader.i.i.i.i.i39:                     ; preds = %bb.f
  %i.al = load ptr, ptr %1, align 8, !tbaa !80
  %i.am = load ptr, ptr %0, align 8, !tbaa !80
  br label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %.lr.ph.i.i.i.i.i40, %.lr.ph.preheader.i.i.i.i.i39
  %.012.i.i.i.i.i41 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i40 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i39 ] ; 2 uses
  %.0811.i.i.i.i.i42 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i40 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  %.0910.i.i.i.i.i43 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i40 ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i42, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i43, i64 16, i1 false), !tbaa.struct !143
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i42, i64 16
end_hunk_0
