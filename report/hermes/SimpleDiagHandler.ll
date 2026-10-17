Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SimpleDiagHandler?download=true
inline.NumInlined: 270
inline.NumDeleted: 172
begin_hunk_0_@_ZN6hermes17SimpleDiagHandler7handlerERKN4llvh12SMDiagnosticEPv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %.sroa.035.0.insert.ext = zext i32 %i.b to i64
  %i.c = inttoptr i64 %.sroa.035.0.insert.ext to ptr
  store ptr %i.c, ptr %5, align 8, !tbaa !53, !alias.scope !124
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !53, !alias.scope !124
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 10, ptr %i.e, align 8, !tbaa !127, !alias.scope !124
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 3, ptr %i.f, align 1, !tbaa !128, !alias.scope !124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = add nsw i32 %i.h, 1
  %.sroa.030.0.insert.ext = zext i32 %i.i to i64
  %i.j = inttoptr i64 %.sroa.030.0.insert.ext to ptr
  store ptr %5, ptr %4, align 8, !tbaa !53, !alias.scope !129
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !53, !alias.scope !129
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 2, ptr %i.l, align 8, !tbaa !127, !alias.scope !129
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 10, ptr %i.m, align 1, !tbaa !128, !alias.scope !129
  store ptr %4, ptr %3, align 8, !tbaa !53, !alias.scope !130
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str, ptr %i.n, align 8, !tbaa !53, !alias.scope !130
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 2, ptr %i.o, align 8, !tbaa !127, !alias.scope !130
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 3, ptr %i.p, align 1, !tbaa !128, !alias.scope !130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  store ptr %i.r, ptr %6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.t, ptr %i.u, align 8
  store ptr %3, ptr %2, align 8, !tbaa !53, !alias.scope !131
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %6, ptr %i.v, align 8, !tbaa !53, !alias.scope !131
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 2, ptr %i.w, align 8, !tbaa !127, !alias.scope !131
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 5, ptr %i.x, align 1, !tbaa !128, !alias.scope !131
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
  store ptr %i.b, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !51
  store i8 0, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.e, align 4, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.i, align 8, !tbaa !51
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.l, align 8, !tbaa !51
  store i8 0, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.o, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.p, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 4, ptr %i.q, align 4, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %1, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !61
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !98   ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.select.i = select i1 %i.z, i32 0, i32 %i.y
  store i32 %spec.select.i, ptr %i.w, align 8, !tbaa !101
  store ptr @_ZN6hermes17SimpleDiagHandler7handlerERKN4llvh12SMDiagnosticEPv, ptr %i.t, align 8, !tbaa !30
  store ptr %0, ptr %i.u, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i32 0, ptr %i.aa, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 316
  store i8 0, ptr %i.ab, align 4, !tbaa !102
  store i32 1, ptr %i.x, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes21SimpleDiagHandlerRAIID2Ev(ptr noundef nonnull align 8 dereferenceable(388) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133, !nonnull !134, !align !135 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store i32 0, ptr %i.c, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  store i8 0, ptr %i.d, align 4, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = select i1 %i.g, i32 -1, i32 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store i32 %i.h, ptr %i.i, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !61
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !61
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !103    ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.j = load ptr, ptr %0, align 8, !tbaa !103    ; 22 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, !prof !142

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !103      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #17
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !141  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ad = add i64 %i.f, -4                        ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.j, i64 4
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.f
  %i.ai = getelementptr i8, ptr %i.c, i64 4
  %bound0 = icmp ult ptr %i.j, %i.af
  %bound1 = icmp ult ptr %i.c, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %i.ag, %i.b
  %bound152 = icmp ult ptr %i.ai, %i.ah
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.aj = and i64 %i.g, 3
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.j, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.c, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 3 uses
  %i.ao = or disjoint i64 %i.an, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.an
  %next.gep54 = getelementptr i8, ptr %i.j, i64 %i.ao
  %next.gep55 = getelementptr i8, ptr %i.c, i64 %i.an
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.ao
  %wide.vec = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !7
  %wide.vec58 = load <4 x i32>, ptr %next.gep56, align 4, !tbaa !7
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %wide.vec58, ptr %next.gep54, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader110

.lr.ph.i.i.i.i.i.preheader110:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %i.aq = load <2 x i32>, ptr %.0910.i.i.i.i.i, align 4, !tbaa !7
  store <2 x i32> %i.aq, ptr %.0811.i.i.i.i.i, align 4, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.at = add nsw i64 %.012.i.i.i.i.i, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !137

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.aw = ashr exact i64 %i.ab, 3                 ; 7 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check78 = icmp ult i64 %i.aw, 14
  br i1 %min.iters.check78, label %.lr.ph.i.i.i.i.i26.preheader109, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %i.ay = add i64 %i.ab, -4                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.j, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.c, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.j, i64 4
  %i.bc = getelementptr i8, ptr %i.c, i64 4
  %i.bd = getelementptr i8, ptr %i.c, i64 %i.ab
  %bound080 = icmp ult ptr %i.j, %i.ba
  %bound181 = icmp ult ptr %i.c, %i.az
  %found.conflict82 = and i1 %bound080, %bound181
  %bound083 = icmp ult ptr %i.bb, %i.bd
  %bound184 = icmp ult ptr %i.bc, %i.z
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %found.conflict82, %found.conflict85
  br i1 %conflict.rdx86, label %.lr.ph.i.i.i.i.i26.preheader109, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck79
  %n.vec88 = and i64 %i.aw, 9223372036854775804   ; 3 uses
  %i.be = and i64 %i.aw, 3
  %i.bf = shl i64 %n.vec88, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.j, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.c, i64 %i.bf
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next103, %vector.body89 ] ; 2 uses
  %i.bi = shl i64 %index90, 3                     ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 16               ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.j, i64 %i.bi
  %next.gep92 = getelementptr i8, ptr %i.j, i64 %i.bj
  %next.gep93 = getelementptr i8, ptr %i.c, i64 %i.bi
  %next.gep94 = getelementptr i8, ptr %i.c, i64 %i.bj
  %wide.vec95 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !7
  %wide.vec98 = load <4 x i32>, ptr %next.gep94, align 4, !tbaa !7
  store <4 x i32> %wide.vec95, ptr %next.gep91, align 4, !tbaa !7
  store <4 x i32> %wide.vec98, ptr %next.gep92, align 4, !tbaa !7
  %index.next103 = add nuw i64 %index90, 4        ; 2 uses
  %i.bk = icmp eq i64 %index.next103, %n.vec88
  br i1 %i.bk, label %middle.block104, label %vector.body89, !llvm.loop !138

middle.block104:                                  ; preds = %vector.body89
  %cmp.n105 = icmp eq i64 %i.aw, %n.vec88
  br i1 %cmp.n105, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26.preheader109

.lr.ph.i.i.i.i.i26.preheader109:                  ; preds = %vector.memcheck79, %.lr.ph.i.i.i.i.i26.preheader, %middle.block104
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.aw, %vector.memcheck79 ], [ %i.aw, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.be, %middle.block104 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %vector.memcheck79 ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bg, %middle.block104 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %vector.memcheck79 ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bh, %middle.block104 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader109, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader109 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader109 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader109 ] ; 2 uses
  %i.bl = load <2 x i32>, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !7
  store <2 x i32> %i.bl, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bo = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit, !llvm.loop !139

_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26, %middle.block104, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %i.av, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %i.bq = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bq, ptr %.011.i.i.i.i, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !140

_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !103
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bt = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !141
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
end_hunk_0
