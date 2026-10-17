Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/tool?download=true
inline.NumInlined: 1233
inline.NumDeleted: 567
begin_hunk_0_@_ZL19serialize_throw_eofv:_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store i8 0, ptr %i.d, align 1, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.23, i64 3, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 3, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 0, ptr %i.h, align 1, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SerializationError, i64 16), ptr %i.a, align 8, !tbaa !66
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #24
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.b, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %i.i

bb.b:                                             ; preds = %_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18SerializationErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !35
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !121
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !121
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  ret ptr %i.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !35
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !121
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !121
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_Z7readF32PKh(ptr noundef %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator.12", align 1 ; 4 uses
  %.pre = load i32, ptr @g_serialize_f32_type, align 4, !tbaa !60
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %i.a = phi i32 [ %i.f, %bb.d ], [ %.pre, %bb.a ]
  %.0.copyload.i = load i32, ptr %0, align 1      ; 2 uses
  switch i32 %i.a, label %bb.e [
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.c = bitcast i32 %i.b to float
  br label %bb.j

bb.c:                                             ; preds = %tailrecurse
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.e = tail call nsz noundef float @_Z12u32Tof32Slowj(i32 noundef %i.d)
  br label %bb.j

bb.d:                                             ; preds = %tailrecurse
  %i.f = tail call noundef i32 @_Z25getFloatSerializationTypev() ; 2 uses
  store i32 %i.f, ptr @g_serialize_f32_type, align 4, !tbaa !60
  br label %tailrecurse

bb.e:                                             ; preds = %tailrecurse
  %i.g = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #24
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @__cxa_free_exception(ptr %i.g) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn13 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %.pn13

bb.j:                                             ; preds = %bb.c, %bb.b
  %.09 = phi nsz float [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  ret float %.09

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare noundef float @_Z12u32Tof32Slowj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIifESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = load ptr, ptr %0, align 8, !tbaa !33     ; 22 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i, !prof !213

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !33       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #26
  br label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !28
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader114, label %vector.memcheck

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
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader114, label %vector.ph

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
  %wide.vec109 = load <4 x float>, ptr %next.gep55, align 4, !tbaa !35
  %wide.vec58110 = load <4 x float>, ptr %next.gep56, align 4, !tbaa !35
  store <4 x float> %wide.vec109, ptr %next.gep, align 4, !tbaa !35
  store <4 x float> %wide.vec58110, ptr %next.gep54, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader114

.lr.ph.i.i.i.i.i.preheader114:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader114, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader114 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader114 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader114 ] ; 3 uses
  %i.aq = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !31
  store i32 %i.aq, ptr %.0811.i.i.i.i.i, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  store float %i.as, ptr %i.at, align 4, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aw = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ax = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !209

bb.h:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.az = ashr exact i64 %i.ab, 3                 ; 7 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check78 = icmp ult i64 %i.az, 14
  br i1 %min.iters.check78, label %.lr.ph.i.i.i.i.i26.preheader113, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %i.bb = add i64 %i.ab, -4                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.j, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.c, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.j, i64 4
  %i.bf = getelementptr i8, ptr %i.c, i64 4
  %i.bg = getelementptr i8, ptr %i.c, i64 %i.ab
  %bound080 = icmp ult ptr %i.j, %i.bd
  %bound181 = icmp ult ptr %i.c, %i.bc
  %found.conflict82 = and i1 %bound080, %bound181
  %bound083 = icmp ult ptr %i.be, %i.bg
  %bound184 = icmp ult ptr %i.bf, %i.z
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %found.conflict82, %found.conflict85
  br i1 %conflict.rdx86, label %.lr.ph.i.i.i.i.i26.preheader113, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck79
  %n.vec88 = and i64 %i.az, 9223372036854775804   ; 3 uses
  %i.bh = and i64 %i.az, 3
  %i.bi = shl i64 %n.vec88, 3                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.j, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bi
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next103, %vector.body89 ] ; 2 uses
  %i.bl = shl i64 %index90, 3                     ; 3 uses
  %i.bm = or disjoint i64 %i.bl, 16               ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.j, i64 %i.bl
  %next.gep92 = getelementptr i8, ptr %i.j, i64 %i.bm
  %next.gep93 = getelementptr i8, ptr %i.c, i64 %i.bl
  %next.gep94 = getelementptr i8, ptr %i.c, i64 %i.bm
  %wide.vec95111 = load <4 x float>, ptr %next.gep93, align 4, !tbaa !35
  %wide.vec98112 = load <4 x float>, ptr %next.gep94, align 4, !tbaa !35
  store <4 x float> %wide.vec95111, ptr %next.gep91, align 4, !tbaa !35
  store <4 x float> %wide.vec98112, ptr %next.gep92, align 4, !tbaa !35
  %index.next103 = add nuw i64 %index90, 4        ; 2 uses
  %i.bn = icmp eq i64 %index.next103, %n.vec88
  br i1 %i.bn, label %middle.block104, label %vector.body89, !llvm.loop !210

middle.block104:                                  ; preds = %vector.body89
  %cmp.n105 = icmp eq i64 %i.az, %n.vec88
  br i1 %cmp.n105, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26.preheader113

.lr.ph.i.i.i.i.i26.preheader113:                  ; preds = %vector.memcheck79, %.lr.ph.i.i.i.i.i26.preheader, %middle.block104
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.az, %vector.memcheck79 ], [ %i.az, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bh, %middle.block104 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %vector.memcheck79 ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bj, %middle.block104 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %vector.memcheck79 ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bk, %middle.block104 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader113, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader113 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader113 ] ; 3 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader113 ] ; 3 uses
  %i.bo = load i32, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !31
  store i32 %i.bo, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bu = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bv = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit, !llvm.loop !211

_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26, %middle.block104, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.ay, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %i.bw = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bw, ptr %.011.i.i.i.i, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !212

_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bz = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.f
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
end_hunk_0
