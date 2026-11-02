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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !103    ; 20 uses
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
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, !prof !142

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 4 uses
  %i.q = add i64 %i.d, -8
  %i.r = sub i64 %i.q, %i.e
  %i.s = and i64 %i.r, -8
  %i.t = add i64 %i.s, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #17
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.z, ptr %i.h, align 8, !tbaa !104
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141 ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.g, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.af = add i64 %i.f, -4                        ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.j, i64 4
  %i.aj = getelementptr i8, ptr %i.j, i64 %i.f
  %i.ak = getelementptr i8, ptr %i.c, i64 4
  %bound0 = icmp ult ptr %i.j, %i.ah
  %bound1 = icmp ult ptr %i.c, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %i.ai, %i.b
  %bound152 = icmp ult ptr %i.ak, %i.aj
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.al = and i64 %i.g, 3
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.j, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ap
  %next.gep54 = getelementptr i8, ptr %i.j, i64 %i.aq
  %next.gep55 = getelementptr i8, ptr %i.c, i64 %i.ap
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.aq
  %wide.vec = load <4 x i32>, ptr %next.gep55, align 4, !tbaa !7
  %wide.vec58 = load <4 x i32>, ptr %next.gep56, align 4, !tbaa !7
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %wide.vec58, ptr %next.gep54, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader110

.lr.ph.i.i.i.i.i.preheader110:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %i.as = load <2 x i32>, ptr %.0910.i.i.i.i.i, align 4, !tbaa !7
  store <2 x i32> %i.as, ptr %.0811.i.i.i.i.i, align 4, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.av = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aw = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !137

bb.h:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.ay = ashr exact i64 %i.ad, 3                 ; 7 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check78 = icmp ult i64 %i.ay, 14
  br i1 %min.iters.check78, label %.lr.ph.i.i.i.i.i26.preheader109, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %i.ba = add i64 %i.ad, -4                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.j, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.c, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.j, i64 4
  %i.be = getelementptr i8, ptr %i.c, i64 4
  %i.bf = getelementptr i8, ptr %i.c, i64 %i.ad
  %bound080 = icmp ult ptr %i.j, %i.bc
  %bound181 = icmp ult ptr %i.c, %i.bb
  %found.conflict82 = and i1 %bound080, %bound181
  %bound083 = icmp ult ptr %i.bd, %i.bf
  %bound184 = icmp ult ptr %i.be, %i.ab
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %found.conflict82, %found.conflict85
  br i1 %conflict.rdx86, label %.lr.ph.i.i.i.i.i26.preheader109, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck79
  %n.vec88 = and i64 %i.ay, 9223372036854775804   ; 3 uses
  %i.bg = and i64 %i.ay, 3
  %i.bh = shl i64 %n.vec88, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.j, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.c, i64 %i.bh
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next103, %vector.body89 ] ; 2 uses
  %i.bk = shl i64 %index90, 3                     ; 3 uses
  %i.bl = or disjoint i64 %i.bk, 16               ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.j, i64 %i.bk
  %next.gep92 = getelementptr i8, ptr %i.j, i64 %i.bl
  %next.gep93 = getelementptr i8, ptr %i.c, i64 %i.bk
  %next.gep94 = getelementptr i8, ptr %i.c, i64 %i.bl
  %wide.vec95 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !7
  %wide.vec98 = load <4 x i32>, ptr %next.gep94, align 4, !tbaa !7
  store <4 x i32> %wide.vec95, ptr %next.gep91, align 4, !tbaa !7
  store <4 x i32> %wide.vec98, ptr %next.gep92, align 4, !tbaa !7
  %index.next103 = add nuw i64 %index90, 4        ; 2 uses
  %i.bm = icmp eq i64 %index.next103, %n.vec88
  br i1 %i.bm, label %middle.block104, label %vector.body89, !llvm.loop !138

middle.block104:                                  ; preds = %vector.body89
  %cmp.n105 = icmp eq i64 %i.ay, %n.vec88
  br i1 %cmp.n105, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a, label %.lr.ph.i.i.i.i.i26.preheader109

.lr.ph.i.i.i.i.i26.preheader109:                  ; preds = %vector.memcheck79, %.lr.ph.i.i.i.i.i26.preheader, %middle.block104
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.ay, %vector.memcheck79 ], [ %i.ay, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bg, %middle.block104 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %vector.memcheck79 ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bi, %middle.block104 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %vector.memcheck79 ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bj, %middle.block104 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader109, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader109 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader109 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader109 ] ; 2 uses
  %i.bn = load <2 x i32>, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !7
  store <2 x i32> %i.bn, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bq = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.br = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a, !llvm.loop !139

_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a:     ; preds = %.lr.ph.i.i.i.i.i26, %middle.block104, %bb.h
  %.not9.i.i.i.i.a = icmp eq ptr %i.ax, %i.b
  br i1 %.not9.i.i.i.i.a, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.ax, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a ] ; 2 uses
  %i.bs = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bs, ptr %.011.i.i.i.i, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !140

_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !103
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bv = phi ptr [ %i.p, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIjjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIjjES2_ET0_T_S4_S3_.exit.a ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !141
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58   ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %.not = icmp ult i32 %i.g, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i32 %i.d, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  br i1 %.not29, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !107
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.o = add nsw i64 %.012.i.i.i.i.i, -1
  %i.p = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !145

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !57
  %.pre45 = load i32, ptr %i.f, align 8, !tbaa !58
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvh7SMFixItD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !53
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i

_ZN4llvh7SMFixItD2Ev.exit.i:                      ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq ptr %.0, %i.s
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59
  %i.ab = icmp ult i32 %i.aa, %i.d
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05.i32, i64 -16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvh7SMFixItD2Ev.exit.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %.lr.ph.i31
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i34

_ZN4llvh7SMFixItD2Ev.exit.i34:                    ; preds = %.lr.ph.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  %.not.i35 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i35, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37, label %.lr.ph.i31, !llvm.loop !0

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i34, %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !58
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  br label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44

bb.f:                                             ; preds = %bb.d
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, label %.lr.ph.preheader.i.i.i.i.i39

.lr.ph.preheader.i.i.i.i.i39:                     ; preds = %bb.f
  %i.al = load ptr, ptr %1, align 8, !tbaa !57
  %i.am = load ptr, ptr %0, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %.lr.ph.i.i.i.i.i40, %.lr.ph.preheader.i.i.i.i.i39
  %.012.i.i.i.i.i41 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i40 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i39 ] ; 2 uses
  %.0811.i.i.i.i.i42 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i40 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  %.0910.i.i.i.i.i43 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i40 ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i42, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i43, i64 16, i1 false), !tbaa.struct !107
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i42, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i43, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i43, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i42, i64 48
  %i.ar = add nsw i64 %.012.i.i.i.i.i41, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i41, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i40, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, !llvm.loop !145

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44: ; preds = %.lr.ph.i.i.i.i.i40, %bb.f, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37
  %.022 = phi i64 [ 0, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37 ], [ 0, %bb.f ], [ %i.h, %.lr.ph.i.i.i.i.i40 ] ; 3 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.au = load i32, ptr %i.c, align 8, !tbaa !58
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.av
  %.not9.i.i.i.i = icmp samesign eq i64 %.022, %i.av
  br i1 %.not9.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44
  %i.ax = load ptr, ptr %0, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.022
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %.022
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bq, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.0810.i.i.i.i = phi ptr [ %i.bp, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !107
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !56
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !55 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !51 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !147
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !55
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !147
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !53
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.bj = phi ptr [ %i.bh, %bb.g ], [ %i.bc, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.bf, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !53
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !53
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !51
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.aw
  br i1 %.not.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !146

.sink.split:                                      ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit
  store i32 %i.d, ptr %i.f, align 8, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.1, i1 noundef zeroext true) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #18 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #14
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.u, %_ZN4llvh11safe_mallocEm.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ap, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i, i64 16, i1 false), !tbaa.struct !107
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !56
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !55
  %i.al = load i64, ptr %i.af, align 8, !tbaa !53
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !53
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.am = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ai, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !51
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !55
  store i64 0, ptr %i.an, align 8, !tbaa !51
  store i8 0, ptr %i.af, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !148

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit: ; preds = %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !57  ; 3 uses
  %.pre16 = load i32, ptr %i.x, align 8, !tbaa !58 ; 2 uses
  %.not4.i = icmp eq i32 %.pre16, 0
  br i1 %.not4.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.ar = zext i32 %.pre16 to i64
  %.idx14 = mul nuw nsw i64 %i.ar, 48
  %i.as = getelementptr inbounds nuw i8, ptr %.pre15, i64 %.idx14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvh7SMFixItD2Ev.exit.i
  %.05.i = phi ptr [ %i.at, %_ZN4llvh7SMFixItD2Ev.exit.i ], [ %i.as, %.lr.ph.i.preheader ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvh7SMFixItD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !53
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i

_ZN4llvh7SMFixItD2Ev.exit.i:                      ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq ptr %.pre15, %i.at
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit: ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.ba = phi ptr [ %.pre17, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit ], [ %.pre15, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit
  tail call void @free(ptr noundef %i.ba) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !57
  %i.bd = trunc i64 %.sroa.speculated to i32
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !59
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12SMDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZN4llvh7SMFixItD2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvh7SMFixItD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !53
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i.i

_ZN4llvh7SMFixItD2Ev.exit.i.i:                    ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %bb.a
  %i.n = phi ptr [ %.pre.i, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i
  tail call void @free(ptr noundef %i.n) #14
  br label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !103  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !104
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #17
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !53
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !53
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.an = load i64, ptr %i.al, align 8, !tbaa !53
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !105}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTSN4llvh9SourceMgr9SrcBufferE", !8, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!"_ZTSNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_Vector_implE", !10, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE", !11, i64 0}
!13 = !{!"_ZTSSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE", !12, i64 0}
!14 = !{!"_ZTSSt4lessIPKcE"}
!15 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !14, i64 0}
!16 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !8, i64 0}
!18 = !{!"_ZTSSt18_Rb_tree_node_base", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!19 = !{!"long", !5, i64 0}
!20 = !{!"_ZTSSt15_Rb_tree_header", !18, i64 0, !19, i64 32}
!21 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !15, i64 0, !20, i64 8}
!22 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !21, i64 0}
!23 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !22, i64 0}
!24 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !27, i64 0}
!29 = !{!"_ZTSN4llvh9SourceMgrE", !13, i64 0, !23, i64 24, !6, i64 72, !28, i64 80, !8, i64 104, !8, i64 112}
!30 = !{!29, !8, i64 104}
!31 = !{!29, !8, i64 112}
!32 = !{!"p1 _ZTSN4llvh9SourceMgrE", !8, i64 0}
!33 = !{!"p1 omnipotent char", !8, i64 0}
!34 = !{!"_ZTSN4llvh5SMLocE", !33, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !19, i64 8, !5, i64 16}
!37 = !{!"_ZTSN4llvh9SourceMgr8DiagKindE", !5, i64 0}
!38 = !{!"p1 _ZTSSt4pairIjjE", !8, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseISt4pairIjjESaIS1_EE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorISt4pairIjjESaIS1_EE", !41, i64 0}
!43 = !{!"_ZTSN4llvh15SmallVectorBaseE", !8, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonINS_7SMFixItEvEE", !43, i64 0}
!45 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvh15SmallVectorImplINS_7SMFixItEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvh18SmallVectorStorageINS_7SMFixItELj4EEE", !5, i64 0}
!48 = !{!"_ZTSN4llvh11SmallVectorINS_7SMFixItELj4EEE", !46, i64 0, !47, i64 16}
!49 = !{!"_ZTSN4llvh12SMDiagnosticE", !32, i64 0, !34, i64 8, !36, i64 16, !6, i64 48, !6, i64 52, !37, i64 56, !36, i64 64, !36, i64 96, !42, i64 128, !48, i64 152}
!50 = !{!49, !37, i64 56}
!51 = !{!36, !19, i64 8}
!52 = !{!49, !6, i64 48}
!53 = !{!5, !5, i64 0}
!54 = !{!49, !6, i64 52}
!55 = !{!36, !33, i64 0}
!56 = !{!35, !33, i64 0}
!57 = !{!43, !8, i64 0}
!58 = !{!43, !6, i64 8}
!59 = !{!43, !6, i64 12}
!60 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !8, i64 0}
!61 = !{!8, !8, i64 0}
!62 = !{!"bool", !5, i64 0}
!63 = !{!"_ZTSN6hermes24SourceErrorOutputOptionsE", !62, i64 0, !19, i64 8}
!64 = !{!"p1 _ZTSN6hermes18SourceErrorManager16ICoordTranslatorE", !8, i64 0}
!65 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!66 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0}
!67 = !{!"_ZTSSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EE", !64, i64 0, !66, i64 8}
!68 = !{!"_ZTSSt10shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorEE", !67, i64 0}
!69 = !{!"_ZTSN4llvh9StringRefE", !33, i64 0, !19, i64 8}
!70 = !{!"_ZTSN6hermes18SourceErrorManager13FindLineCacheE", !6, i64 0, !6, i64 4, !69, i64 8, !69, i64 24}
!71 = !{!"any p2 pointer", !8, i64 0}
!72 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0}
!73 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !24, i64 0, !24, i64 8, !24, i64 16, !72, i64 24}
!74 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !72, i64 0, !19, i64 8, !73, i64 16, !73, i64 48}
!75 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implE", !74, i64 0}
!76 = !{!"_ZTSSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!77 = !{!"_ZTSSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!78 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEjEE", !8, i64 0}
!79 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEEE", !78, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!80 = !{!"_ZTSN6hermes15StringSetVectorE", !77, i64 0, !79, i64 80}
!81 = !{!"_ZTSN4llvh14SmallBitVectorE", !19, i64 0}
!82 = !{!"_ZTSN6hermes9SubsystemE", !5, i64 0}
!83 = !{!"_ZTSN6hermes8OptValueINS_9SubsystemEEE", !82, i64 0, !62, i64 4}
!84 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !8, i64 0}
!85 = !{!"_ZTSN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEEE", !84, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!86 = !{!"p1 _ZTSN6hermes19CollectMessagesRAIIE", !8, i64 0}
!87 = !{!"p1 _ZTSN6hermes18SourceErrorManager15BufferedMessageE", !8, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE", !90, i64 0}
!92 = !{!"p1 _ZTSN6hermes18SourceErrorManager11MessageDataE", !8, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE", !95, i64 0}
!97 = !{!"_ZTSN6hermes18SourceErrorManagerE", !29, i64 0, !63, i64 120, !68, i64 136, !70, i64 152, !80, i64 192, !5, i64 296, !6, i64 312, !62, i64 316, !81, i64 320, !81, i64 328, !83, i64 336, !62, i64 344, !85, i64 352, !85, i64 376, !6, i64 400, !86, i64 408, !91, i64 416, !96, i64 440}
!98 = !{!97, !6, i64 312}
!99 = !{!"_ZTSN6hermes17SimpleDiagHandlerE", !49, i64 0}
!100 = !{!"_ZTSN6hermes21SimpleDiagHandlerRAIIE", !99, i64 0, !60, i64 360, !8, i64 368, !8, i64 376, !6, i64 384}
!101 = !{!100, !6, i64 384}
!102 = !{!97, !62, i64 316}
!103 = !{!39, !38, i64 0}
!104 = !{!39, !38, i64 16}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!33, !33, i64 0}
!107 = !{i64 0, i64 8, !106, i64 8, i64 8, !106}
!108 = distinct !{!108, i1 true, !"_ZN4llvhplERKNS_5TwineES2_"}
!109 = distinct !{!109, !108, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZNK4llvh5Twine6concatERKS0_"}
!111 = distinct !{!111, !110, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZN4llvhplERKNS_5TwineES2_"}
!113 = distinct !{!113, !112, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!114 = distinct !{!114, i1 true, !"_ZNK4llvh5Twine6concatERKS0_"}
!115 = distinct !{!115, !114, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZN4llvhplERKNS_5TwineES2_"}
!117 = distinct !{!117, !116, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!118 = distinct !{!118, i1 true, !"_ZNK4llvh5Twine6concatERKS0_"}
!119 = distinct !{!119, !118, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!120 = distinct !{!120, i1 true, !"_ZN4llvhplERKNS_5TwineES2_"}
!121 = distinct !{!121, !120, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZNK4llvh5Twine6concatERKS0_"}
!123 = distinct !{!123, !122, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!124 = !{!111, !109}
!125 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!126 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !125, i64 16, !125, i64 17}
!127 = !{!126, !125, i64 16}
!128 = !{!126, !125, i64 17}
!129 = !{!115, !113}
!130 = !{!119, !117}
!131 = !{!123, !121}
!132 = !{!60, !60, i64 0}
!133 = !{!100, !60, i64 360}
!134 = !{}
!135 = !{i64 8}
!136 = distinct !{!136, !105, !143, !144}
!137 = distinct !{!137, !105, !143}
!138 = distinct !{!138, !105, !143, !144}
!139 = distinct !{!139, !105, !143}
!140 = distinct !{!140, !105}
!141 = !{!39, !38, i64 8}
!142 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!143 = !{!"llvm.loop.isvectorized", i32 1}
!144 = !{!"llvm.loop.unroll.runtime.disable"}
!145 = distinct !{!145, !105}
!146 = distinct !{!146, !105}
!147 = !{!19, !19, i64 0}
!148 = distinct !{!148, !105}
end_hunk_0
