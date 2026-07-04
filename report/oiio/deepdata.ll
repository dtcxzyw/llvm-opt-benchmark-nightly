inline.NumInlined: 2081
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK11OpenImageIO4v3_18DeepData8opaque_zEl:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.not.i = icmp slt i64 %1, %i.c
  %or.cond56 = select i1 %i.a, i1 %.not.i, i1 false
  br i1 %or.cond56, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %i.k = icmp eq i32 %i.h, 0
  %i.l = icmp slt i32 %i.j, 0
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit

_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit: ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 228
  %i.n = load i32, ptr %i.m, align 4, !tbaa !101  ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  %spec.select = select i1 %i.o, i32 %i.j, i32 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.q = load i32, ptr %i.p, align 8, !tbaa !102  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.s = load i32, ptr %i.r, align 4, !tbaa !103  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = select i1 %i.t, i32 %i.q, i32 %i.s       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 %i.q, i32 %i.w       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 244
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !105 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = select i1 %i.ab, i32 %i.q, i32 %i.aa    ; 2 uses
  %i.ad = or i32 %i.y, %i.u
  %i.ae = or i32 %i.ad, %i.ac
  %or.cond6.not = icmp sgt i32 %i.ae, -1
  br i1 %or.cond6.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit
  %.not58 = icmp sgt i32 %i.h, 0
  br i1 %.not58, label %.lr.ph, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.af = icmp sgt i32 %i.q, -1
  br i1 %i.af, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.03859.us = phi i32 [ %i.ai, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %i.ag = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.q, i32 noundef %.03859.us)
  %i.ah = fcmp ult float %i.ag, 1.000000e+00
  br i1 %i.ah, label %bb.b, label %.thread53

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ai = add nuw nsw i32 %.03859.us, 1           ; 2 uses
  %exitcond64.not = icmp eq i32 %i.ai, %i.h
  br i1 %exitcond64.not, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %.lr.ph.split.us, !llvm.loop !176

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit
  %i.aj = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.j, i32 noundef 0)
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.03859 = phi i32 [ %i.as, %bb.d ], [ 0, %.lr.ph ] ; 5 uses
  %i.ak = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.u, i32 noundef %.03859)
  %i.al = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.y, i32 noundef %.03859)
  %i.am = fadd float %i.ak, %i.al
  %i.an = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.ac, i32 noundef %.03859)
  %i.ao = fadd float %i.am, %i.an
  %i.ap = fdiv float %i.ao, 3.000000e+00
  %i.aq = fcmp ult float %i.ap, 1.000000e+00
  br i1 %i.aq, label %bb.d, label %.thread53

.thread53:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i32 [ %.03859.us, %.lr.ph.split.us ], [ %.03859, %.lr.ph.split ]
  %i.ar = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %spec.select, i32 noundef %.us-phi)
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

bb.d:                                             ; preds = %.lr.ph.split
  %i.as = add nuw nsw i32 %.03859, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.h
  br i1 %exitcond.not, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %.lr.ph.split, !llvm.loop !176

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread: ; preds = %bb.d, %bb.b, %.preheader, %.thread53, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.a, %bb.c
  %.5 = phi float [ %i.ar, %.thread53 ], [ f0x7F7FFFFF, %bb.a ], [ %i.aj, %bb.c ], [ f0x7F7FFFFF, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit ], [ f0x7F7FFFFF, %.preheader ], [ f0x7F7FFFFF, %bb.b ], [ f0x7F7FFFFF, %bb.d ]
  ret float %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18DeepData14occlusion_cullEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %1, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %.not.i = icmp slt i64 %1, %i.g
  %or.cond.i = select i1 %i.e, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %.loopexit

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.d
  %.012 = phi i32 [ %i.o, %bb.d ], [ 0, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit ] ; 2 uses
  %i.m = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %.012)
  %i.n = fcmp ult float %i.m, 1.000000e+00
  %i.o = add nuw nsw i32 %.012, 1                 ; 3 uses
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN11OpenImageIO4v3_18DeepData11set_samplesEli(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.o)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %i.o, %i.k
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !177

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #17 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !43 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !47
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !48

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = load ptr, ptr %0, align 8, !tbaa !11     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %i.b to i64
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, !prof !87

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %3, -8
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !61
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 4
  store i64 %i.aa, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !140

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !7   ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !11
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %4 = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, %4
  %i.ao = add i64 %i.an, -8
  %i.ap = add i64 %i.am, %i.ah
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bb, ptr %.011.i.i.i.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !179

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = load ptr, ptr %1, align 8, !tbaa !57     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = load ptr, ptr %0, align 8, !tbaa !57     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !87

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !95
  store i64 %i.r, ptr %i.o, align 8, !tbaa !95
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !60
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !140

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !95
  store i64 %i.z, ptr %i.i, align 8, !tbaa !95
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !140

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !57
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !90 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !57
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !90
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !95
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !95
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !140

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !95
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !95
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 18 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.f, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -8                          ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.o = add i64 %2, 2305843009213693951
  %i.p = and i64 %i.o, 2305843009213693951        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check166 = icmp samesign ult i64 %i.p, 3
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader251, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec169 = and i64 %i.q, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec169, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.r
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph167
  %index171 = phi i64 [ 0, %vector.ph167 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %i.u = shl i64 %index171, 3                     ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load174 = load <2 x i64>, ptr %next.gep173, align 4
  %wide.load175 = load <2 x i64>, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %next.gep172, i64 16
  store <2 x i64> %wide.load174, ptr %next.gep172, align 4
  store <2 x i64> %wide.load175, ptr %i.w, align 4
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.x, label %middle.block177, label %vector.body170, !llvm.loop !186

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.q, %n.vec169
  br i1 %cmp.n178, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.preheader251

.lr.ph.i.i.i.i.i.preheader251:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block177
  %.013.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block177 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block177 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader251, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader251 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader251 ] ; 2 uses
  %i.y = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 4
  store i64 %i.y, ptr %.013.i.i.i.i.i, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !187

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block177
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !7
  br label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.d
  %i.ab = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %2
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !7
  %i.ad = ptrtoint ptr %i.n to i64
  %i.ae = sub i64 %i.ad, %i.j                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %1, i64 %i.ae, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.al = load i64, ptr %1, align 4
  store i64 %i.al, ptr %i.ak, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.an, 24
  br i1 %min.iters.check182, label %.lr.ph.i.i.i.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %bb.h
  %n.vec185 = and i64 %i.ap, 4611686018427387900  ; 3 uses
  %i.aq = shl i64 %n.vec185, 3
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %broadcast.splatinsert186 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat187 = shufflevector <2 x i64> %broadcast.splatinsert186, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body188 ] ; 2 uses
  %i.as = shl i64 %index189, 3
  %next.gep190 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %broadcast.splat187, ptr %next.gep190, align 4
  store <2 x i64> %broadcast.splat187, ptr %i.at, align 4
  %index.next191 = add nuw i64 %index189, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.au, label %middle.block192, label %vector.body188, !llvm.loop !188

middle.block192:                                  ; preds = %vector.body188
  %cmp.n193 = icmp eq i64 %i.ap, %n.vec185
  br i1 %cmp.n193, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h, %middle.block192
  %.06.i.i.i.ph = phi ptr [ %1, %bb.h ], [ %i.ar, %middle.block192 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !189

bb.i:                                             ; preds = %bb.c
  %i.aw = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader254, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.ax = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.d, i64 %i.ax   ; 2 uses
  %i.az = and i64 %i.aw, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.bb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader254

.lr.ph.i.i.i.i.preheader254:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader254, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader254 ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader254 ]
  store i64 %i.i, ptr %.09.i.i.i.i, align 4
  %i.bd = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !191

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.i
  %i.bf = phi ptr [ %i.d, %bb.i ], [ %i.ay, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !7
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %4 = add i64 %i.f, -8
  %5 = sub i64 %4, %i.j                           ; 2 uses
  %i.bh = lshr i64 %5, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check137 = icmp ult i64 %5, 72
  %i.bj = sub i64 %i.j, %i.bg
  %diff.check = icmp ugt i64 %i.bj, -32
  %or.cond = select i1 %min.iters.check137, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i70.preheader253, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec140 = and i64 %i.bi, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bf, i64 %i.bk
  %i.bm = getelementptr i8, ptr %1, i64 %i.bk
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body141 ] ; 2 uses
  %i.bn = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.bf, i64 %i.bn ; 2 uses
  %next.gep144 = getelementptr i8, ptr %1, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep144, align 4
  %wide.load145 = load <2 x i64>, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load, ptr %next.gep143, align 4
  store <2 x i64> %wide.load145, ptr %i.bp, align 4
  %index.next146 = add nuw i64 %index142, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.bq, label %middle.block147, label %vector.body141, !llvm.loop !192

middle.block147:                                  ; preds = %vector.body141
  %cmp.n148 = icmp eq i64 %i.bi, %n.vec140
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70.preheader253

.lr.ph.i.i.i.i.i70.preheader253:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block147
  %.013.i.i.i.i.i71.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bl, %middle.block147 ]
  %.sroa.08.012.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bm, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.k
  store ptr %i.br, ptr %i.c, align 8, !tbaa !7
  br label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader253, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i70 ], [ %.013.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader253 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.08.012.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader253 ] ; 2 uses
  %i.bs = load i64, ptr %.sroa.08.012.i.i.i.i.i72, align 4
  store i64 %i.bs, ptr %.013.i.i.i.i.i71, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 8
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bt, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !193

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block147
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.k
  store ptr %i.bw, ptr %i.c, align 8, !tbaa !7
  %6 = add i64 %i.f, -8
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.bx = lshr i64 %7, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %7, 24
  br i1 %min.iters.check152, label %.lr.ph.i.i.i77.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75
  %n.vec155 = and i64 %i.by, 4611686018427387900  ; 3 uses
  %i.bz = shl i64 %n.vec155, 3
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %broadcast.splatinsert156 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat157 = shufflevector <2 x i64> %broadcast.splatinsert156, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph153
  %index159 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body158 ] ; 2 uses
  %i.cb = shl i64 %index159, 3
  %next.gep160 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %broadcast.splat157, ptr %next.gep160, align 4
  store <2 x i64> %broadcast.splat157, ptr %i.cc, align 4
  %index.next161 = add nuw i64 %index159, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next161, %n.vec155
  br i1 %i.cd, label %middle.block162, label %vector.body158, !llvm.loop !194

middle.block162:                                  ; preds = %vector.body158
  %cmp.n163 = icmp eq i64 %i.by, %n.vec155
  br i1 %cmp.n163, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77.preheader

.lr.ph.i.i.i77.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, %middle.block162
  %.06.i.i.i78.ph = phi ptr [ %1, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75 ], [ %i.ca, %middle.block162 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ce, %.lr.ph.i.i.i77 ], [ %.06.i.i.i78.ph, %.lr.ph.i.i.i77.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i78, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ce, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !195

bb.j:                                             ; preds = %bb.b
  %i.cf = load ptr, ptr %0, align 8, !tbaa !11    ; 7 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 5 uses
  %i.ch = sub i64 %i.f, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3                 ; 4 uses
  %i.cj = sub nsw i64 1152921504606846975, %i.ci
  %i.ck = icmp ult i64 %i.cj, %2
  br i1 %i.ck, label %bb.k, label %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %2)
  %i.cl = add nsw i64 %.sroa.speculated.i, %i.ci  ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ci
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %i.cp = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.cq = sub i64 %i.cp, %i.cg
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cr = shl nuw nsw i64 %i.co, 3
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #30
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.ct = phi ptr [ %i.cs, %bb.l ], [ null, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq ; 3 uses
  %i.cw = load i64, ptr %3, align 4               ; 2 uses
  %min.iters.check196 = icmp ult i64 %2, 4
  br i1 %min.iters.check196, label %.lr.ph.i.i.i.i82.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit
  %n.vec199 = and i64 %2, -4                      ; 3 uses
  %i.cx = shl i64 %n.vec199, 3
  %i.cy = getelementptr i8, ptr %i.cv, i64 %i.cx
  %i.cz = and i64 %2, 3
  %broadcast.splatinsert200 = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %broadcast.splat201 = shufflevector <2 x i64> %broadcast.splatinsert200, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph197
  %index203 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body202 ] ; 2 uses
  %i.da = shl i64 %index203, 3
  %next.gep204 = getelementptr i8, ptr %i.cv, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep204, i64 16
  store <2 x i64> %broadcast.splat201, ptr %next.gep204, align 4
  store <2 x i64> %broadcast.splat201, ptr %i.db, align 4
  %index.next205 = add nuw i64 %index203, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next205, %n.vec199
  br i1 %i.dc, label %middle.block206, label %vector.body202, !llvm.loop !196

middle.block206:                                  ; preds = %vector.body202
  %cmp.n207 = icmp eq i64 %2, %n.vec199
  br i1 %cmp.n207, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, %middle.block206
  %.09.i.i.i.i83.ph = phi ptr [ %i.cv, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.cy, %middle.block206 ]
  %.068.i.i.i.i84.ph = phi i64 [ %2, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.cz, %middle.block206 ]
  br label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.preheader, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.de, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader ] ; 2 uses
  %.068.i.i.i.i84 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.ph, %.lr.ph.i.i.i.i82.preheader ]
  store i64 %i.cw, ptr %.09.i.i.i.i83, align 4
  %i.dd = add i64 %.068.i.i.i.i84, -1             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 8
  %.not.i.i.i.i85 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i85, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !197

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %middle.block206
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.cf, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i89.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %8 = add i64 %i.cp, -8
  %9 = sub i64 %8, %i.cg                          ; 2 uses
  %i.df = lshr i64 %9, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check213 = icmp ult i64 %9, 72
  %i.dh = sub i64 %i.cg, %i.cu
  %diff.check211 = icmp ugt i64 %i.dh, -32
  %or.cond247 = or i1 %min.iters.check213, %diff.check211
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i89.preheader249, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.i.i.i.i.i89.preheader
  %n.vec216 = and i64 %i.dg, 4611686018427387900  ; 3 uses
  %i.di = shl i64 %n.vec216, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.ct, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cf, i64 %i.di
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph214
  %index218 = phi i64 [ 0, %vector.ph214 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.dl = shl i64 %index218, 3                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.ct, i64 %i.dl ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.cf, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load221 = load <2 x i64>, ptr %next.gep220, align 4
  %wide.load222 = load <2 x i64>, ptr %i.dm, align 4
  %i.dn = getelementptr i8, ptr %next.gep219, i64 16
  store <2 x i64> %wide.load221, ptr %next.gep219, align 4
  store <2 x i64> %wide.load222, ptr %i.dn, align 4
  %index.next223 = add nuw i64 %index218, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.do, label %middle.block224, label %vector.body217, !llvm.loop !198

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.dg, %n.vec216
  br i1 %cmp.n225, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader249

.lr.ph.i.i.i.i.i89.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i89.preheader, %middle.block224
  %.013.i.i.i.i.i90.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.dj, %middle.block224 ]
  %.sroa.08.012.i.i.i.i.i91.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.dk, %middle.block224 ]
  br label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %.lr.ph.i.i.i.i.i89.preheader249, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i89 ], [ %.013.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i89.preheader249 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i89 ], [ %.sroa.08.012.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i89.preheader249 ] ; 2 uses
  %i.dp = load i64, ptr %.sroa.08.012.i.i.i.i.i91, align 4
  store i64 %i.dp, ptr %.013.i.i.i.i.i90, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 8 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.dq, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !199

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %middle.block224, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.ct, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ], [ %i.dj, %middle.block224 ], [ %i.dr, %.lr.ph.i.i.i.i.i89 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i93229 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i93 to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader

.lr.ph.i.i.i.i.i95.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %10 = add i64 %i.f, -8
  %11 = sub i64 %10, %i.cp                        ; 2 uses
  %i.dt = lshr i64 %11, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check232 = icmp ult i64 %11, 136
  br i1 %min.iters.check232, label %.lr.ph.i.i.i.i.i95.preheader248, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader
  %i.dv = shl i64 %2, 3
  %i.dw = add i64 %i.dv, %.0.lcssa.i.i.i.i.i93229
  %i.dx = sub i64 %i.cp, %i.dw
  %diff.check230 = icmp ugt i64 %i.dx, -32
  br i1 %diff.check230, label %.lr.ph.i.i.i.i.i95.preheader248, label %vector.ph233

vector.ph233:                                     ; preds = %vector.memcheck228
  %n.vec235 = and i64 %i.du, 4611686018427387900  ; 3 uses
  %i.dy = shl i64 %n.vec235, 3                    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ds, i64 %i.dy  ; 2 uses
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph233
  %index237 = phi i64 [ 0, %vector.ph233 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.eb = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.ds, i64 %i.eb ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep239, align 4
  %wide.load241 = load <2 x i64>, ptr %i.ec, align 4
  %i.ed = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 4
  store <2 x i64> %wide.load241, ptr %i.ed, align 4
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.ee, label %middle.block243, label %vector.body236, !llvm.loop !200

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.du, %n.vec235
  br i1 %cmp.n244, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader248

.lr.ph.i.i.i.i.i95.preheader248:                  ; preds = %vector.memcheck228, %.lr.ph.i.i.i.i.i95.preheader, %middle.block243
  %.013.i.i.i.i.i96.ph = phi ptr [ %i.ds, %vector.memcheck228 ], [ %i.ds, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.dz, %middle.block243 ]
  %.sroa.08.012.i.i.i.i.i97.ph = phi ptr [ %1, %vector.memcheck228 ], [ %1, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.ea, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader248, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i95 ], [ %.013.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i95.preheader248 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i95 ], [ %.sroa.08.012.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i95.preheader248 ] ; 2 uses
  %i.ef = load i64, ptr %.sroa.08.012.i.i.i.i.i97, align 4
  store i64 %i.ef, ptr %.013.i.i.i.i.i96, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.eg, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !201

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %middle.block243, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.ds, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.dz, %middle.block243 ], [ %i.eh, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.cf, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.ej, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ek) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, %bb.m
  store ptr %i.ct, ptr %0, align 8, !tbaa !11
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !7
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.co
  store ptr %i.el, ptr %i.a, align 8, !tbaa !61
  br label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit

_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i, %middle.block162, %middle.block192, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %3 = ptrtoaddr ptr %2 to i64
  %4 = ptrtoaddr ptr %1 to i64
  %reass.sub = sub i64 %3, %4
  %i.m = and i64 %reass.sub, -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %bb.d
  store ptr %i.l, ptr %0, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !7
  store ptr %i.o, ptr %i.d, align 8, !tbaa !61
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.r = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.s = sub i64 %i.r, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.s, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp sgt i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %bb.h, !prof !140

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %i.c, 8
  br i1 %i.u, label %bb.i, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %1, align 4
  store i64 %i.v, ptr %i.f, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !7
  %.not.i16 = icmp eq ptr %i.x, %i.w
  br i1 %.not.i16, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit
  store ptr %i.w, ptr %i.p, align 8, !tbaa !7
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.s ; 5 uses
  %i.y = icmp sgt i64 %i.s, 8
  br i1 %i.y, label %bb.j, label %bb.k, !prof !140

bb.j:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.s, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  %i.z = icmp eq i64 %i.s, 8
  br i1 %i.z, label %bb.l, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr %1, align 4
  store i64 %i.aa, ptr %i.f, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !7   ; 6 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17
  %i.ad = add i64 %i.h, %i.a
  %i.ae = add i64 %i.ad, -8
  %i.af = add i64 %i.r, %i.b
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aj = add i64 %i.h, %i.ac
  %i.ak = add i64 %i.r, %i.b
  %i.al = sub i64 %i.ak, %i.aj
  %diff.check = icmp ugt i64 %i.al, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %.sink.i, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ap ; 2 uses
  %next.gep27 = getelementptr i8, ptr %.sink.i, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4
  %wide.load28 = load <2 x i64>, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load28, ptr %i.ar, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %.sink.i, %vector.memcheck ], [ %.sink.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %i.at = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.at, ptr %.011.i.i.i.i, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !203

_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ab, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17 ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !7
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !95
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !90
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #32
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !95
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !95
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #29
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm:bb.a
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.s, ptr %i.d, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !91
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !3
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !214

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !215

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !217

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !91
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !140

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !91
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %4 = add i64 %i.f, -4
  %5 = sub i64 %4, %i.j                           ; 2 uses
  %i.bg = lshr i64 %5, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %5, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bh, 9223372036854775800  ; 3 uses
  %i.bi = shl i64 %n.vec116, 2
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bk = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat118, ptr %i.bl, align 4, !tbaa !3
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bm, label %middle.block123, label %vector.body119, !llvm.loop !218

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bh, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bj, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bn, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !219

bb.q:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %0, align 8, !tbaa !39    ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bq = sub i64 %i.f, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 4 uses
  %i.bs = sub nsw i64 2305843009213693951, %i.br
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %2)
  %i.bu = add nsw i64 %.sroa.speculated.i, %i.br  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 2305843009213693951)
  %i.bx = select i1 %i.bv, i64 2305843009213693951, i64 %i.bw ; 3 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.bp                    ; 4 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ca = shl nuw nsw i64 %i.bx, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bz ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i75
  %i.cf = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.cg = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec144, 2
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cl = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat146, ptr %i.cm, align 4, !tbaa !3
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cn, label %middle.block151, label %vector.body147, !llvm.loop !220

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.ci, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cd, %bb.t ], [ %i.ck, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cf, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !221

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cp = icmp sgt i64 %i.bz, 4
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr align 4 %i.bo, i64 %i.bz, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cq = icmp eq i64 %i.bz, 4
  br i1 %i.cq, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.cc, align 4, !tbaa !3
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %2 ; 3 uses
  %i.ct = sub i64 %i.f, %i.by                     ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 4
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !140

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %1, i64 %i.ct, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cv = icmp eq i64 %i.ct, 4
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.cw, ptr %i.cs, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %.not.i82 = icmp eq ptr %i.bo, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = sub i64 %i.e, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cy) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.cc, ptr %0, align 8, !tbaa !39
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !91
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !42
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !140

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !82
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.s, ptr %i.d, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !82
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !3
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !222

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !223

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !225

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !82
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !140

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !82
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !82
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %4 = add i64 %i.f, -4
  %5 = sub i64 %4, %i.j                           ; 2 uses
  %i.bg = lshr i64 %5, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %5, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bh, 9223372036854775800  ; 3 uses
  %i.bi = shl i64 %n.vec116, 2
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bk = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat118, ptr %i.bl, align 4, !tbaa !3
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bm, label %middle.block123, label %vector.body119, !llvm.loop !226

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bh, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bj, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bn, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !227

bb.q:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %0, align 8, !tbaa !54    ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bq = sub i64 %i.f, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 4 uses
  %i.bs = sub nsw i64 2305843009213693951, %i.br
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %2)
  %i.bu = add nsw i64 %.sroa.speculated.i, %i.br  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 2305843009213693951)
  %i.bx = select i1 %i.bv, i64 2305843009213693951, i64 %i.bw ; 3 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.bp                    ; 4 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ca = shl nuw nsw i64 %i.bx, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bz ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i75
  %i.cf = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.cg = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec144, 2
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cl = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat146, ptr %i.cm, align 4, !tbaa !3
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cn, label %middle.block151, label %vector.body147, !llvm.loop !228

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.ci, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cd, %bb.t ], [ %i.ck, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.cf, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !229

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cp = icmp sgt i64 %i.bz, 4
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !140

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr align 4 %i.bo, i64 %i.bz, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cq = icmp eq i64 %i.bz, 4
  br i1 %i.cq, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load i32, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.cc, align 4, !tbaa !3
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %2 ; 3 uses
  %i.ct = sub i64 %i.f, %i.by                     ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 4
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !140

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %1, i64 %i.ct, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cv = icmp eq i64 %i.ct, 4
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.cw, ptr %i.cs, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %.not.i82 = icmp eq ptr %i.bo, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = sub i64 %i.e, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cy) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.cc, ptr %0, align 8, !tbaa !54
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !82
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !56
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPcS1_EEmRKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPccEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !47      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_ZSt22__merge_without_bufferIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_:bb.a
  %i.k = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.h, i32 noundef %i.i, i32 noundef %.val36) ; 2 uses
  %i.l = fcmp olt float %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fcmp ogt float %i.j, %i.k
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit: ; preds = %bb.d
  %i.n = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !249 ; 2 uses
  %i.o = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.h, i32 noundef %i.n, i32 noundef %.val)
  %i.p = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.h, i32 noundef %i.n, i32 noundef %.val36)
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit
  %i.r = load i32, ptr %.tr84, align 4, !tbaa !3
  %i.s = load i32, ptr %.tr7585, align 4, !tbaa !3
  store i32 %i.s, ptr %.tr84, align 4, !tbaa !3
  store i32 %i.r, ptr %.tr7585, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71

bb.e:                                             ; preds = %bb.b
  %i.t = icmp sgt i64 %.tr7787, %.tr7888
  %.sroa.049.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !239 ; 8 uses
  %.sroa.049.sroa.3.0.copyload = load i32, ptr %.sroa.0.sroa.3.0..sroa_idx, align 4, !tbaa !3 ; 4 uses
  %.sroa.049.sroa.4.0.copyload = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !3 ; 4 uses
  %i.u = ptrtoint ptr %.tr7585 to i64             ; 4 uses
  br i1 %i.t, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.v = sdiv i64 %.tr7787, 2                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %.tr84, i64 %i.v ; 2 uses
  %i.x = sub i64 %i.c, %i.u
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.049.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !3
  %i.aa = sext i32 %.sroa.049.sroa.2.0.copyload to i64 ; 4 uses
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.025.i = phi ptr [ %.tr7585, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.ar, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i ] ; 3 uses
  %.01124.i = phi i64 [ %i.y, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.aq, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i ] ; 3 uses
  %i.ab = lshr i64 %.01124.i, 1                   ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.025.i, i64 %i.ab ; 3 uses
  %.val.i = load i32, ptr %i.ac, align 4, !tbaa !3 ; 2 uses
  %.val13.i = load i32, ptr %i.w, align 4, !tbaa !3 ; 2 uses
  %i.ad = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val.i) ; 2 uses
  %i.ae = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val13.i) ; 2 uses
  %i.af = fcmp olt float %i.ad, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i, label %bb.f

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = xor i64 %i.ab, -1
  %i.ai = add nsw i64 %.01124.i, %i.ah
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

bb.f:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.aj = fcmp ogt float %i.ad, %i.ae
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i: ; preds = %bb.f
  %i.ak = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val.i)
  %i.al = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.aa, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val13.i)
  %i.am = fcmp olt float %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i
  %i.an = xor i64 %i.ab, -1
  %i.ao = add nsw i64 %.01124.i, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i, %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i
  %i.aq = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i ], [ %i.ao, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ar = phi ptr [ %.025.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.i ], [ %i.ag, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread.i ], [ %i.ap, %bb.g ], [ %.025.i, %bb.f ] ; 3 uses
  %i.as = icmp sgt i64 %i.aq, 0
  br i1 %i.as, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !250

_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiKiEEbT_RT0_.exit.thread20.i
  %.pre = ptrtoint ptr %i.ar to i64
  br label %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.u, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.ar, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr7585, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.at = sub i64 %.pre-phi, %i.u
  %i.au = ashr exact i64 %i.at, 2
  br label %tailrecurse

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40: ; preds = %bb.e
  %i.av = sdiv i64 %.tr7888, 2                    ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %.tr7585, i64 %i.av ; 2 uses
  %i.ax = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.ay = sub i64 %i.u, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42, label %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42: ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40
  %.sroa.0.sroa.2.0.copyload = load i32, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !3
  %i.bb = sext i32 %.sroa.0.sroa.2.0.copyload to i64 ; 4 uses
  br label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42
  %.024.i = phi ptr [ %.tr84, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42 ], [ %i.bs, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i ] ; 3 uses
  %.01123.i = phi i64 [ %i.az, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i42 ], [ %i.br, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i ] ; 3 uses
  %i.bc = lshr i64 %.01123.i, 1                   ; 5 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.024.i, i64 %i.bc ; 3 uses
  %.val.i46 = load i32, ptr %i.aw, align 4, !tbaa !3 ; 2 uses
  %.val13.i47 = load i32, ptr %i.bd, align 4, !tbaa !3 ; 2 uses
  %i.be = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val.i46) ; 2 uses
  %i.bf = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.3.0.copyload, i32 noundef %.val13.i47) ; 2 uses
  %i.bg = fcmp olt float %i.be, %i.bf
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43
  %i.bh = fcmp ogt float %i.be, %i.bf
  br i1 %i.bh, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bj = xor i64 %i.bc, -1
  %i.bk = add nsw i64 %.01123.i, %i.bj
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i: ; preds = %bb.h
  %i.bl = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val.i46)
  %i.bm = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.049.sroa.0.0.copyload, i64 noundef %i.bb, i32 noundef %.sroa.049.sroa.4.0.copyload, i32 noundef %.val13.i47)
  %i.bn = fcmp olt float %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bp = xor i64 %i.bc, -1
  %i.bq = add nsw i64 %.01123.i, %i.bp
  br i1 %i.bn, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43
  %i.br = phi i64 [ %i.bq, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i ], [ %i.bk, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i ], [ %i.bc, %bb.i ], [ %i.bc, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 2 uses
  %i.bs = phi ptr [ %i.bo, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.i ], [ %i.bi, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread20.i ], [ %.024.i, %bb.i ], [ %.024.i, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43 ] ; 3 uses
  %i.bt = icmp sgt i64 %i.br, 0
  br i1 %i.bt, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i43, label %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !251

_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIKiPiEEbRT_T0_.exit.thread.i
  %.pre93 = ptrtoint ptr %i.bs to i64
  br label %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40
  %.pre-phi94 = phi i64 [ %.pre93, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ax, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40 ]
  %.0.lcssa.i41 = phi ptr [ %i.bs, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr84, %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit40 ]
  %i.bu = sub i64 %.pre-phi94, %i.ax
  %i.bv = ashr exact i64 %i.bu, 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit
  %.069 = phi ptr [ %i.w, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %.0.lcssa.i41, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.068 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %i.aw, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.033 = phi i64 [ %i.au, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %i.av, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.v, %_ZSt13__lower_boundIPiiN9__gnu_cxx5__ops14_Iter_comp_valIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ], [ %i.bv, %_ZSt13__upper_boundIPiiN9__gnu_cxx5__ops14_Val_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.bw = tail call noundef ptr @_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %.069, ptr noundef %.tr7585, ptr noundef %.068) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %.tr84, ptr noundef %.069, ptr noundef %i.bw, i64 noundef %.0, i64 noundef %.033, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.bx = sub nsw i64 %.tr7787, %.0               ; 2 uses
  %i.by = sub nsw i64 %.tr7888, %.033             ; 2 uses
  %i.bz = icmp eq i64 %i.bx, 0
  %i.ca = icmp eq i64 %i.by, 0
  %or.cond = or i1 %i.bz, %i.ca
  br i1 %or.cond, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71, label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread71: ; preds = %tailrecurse, %bb.a, %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPiEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = add i64 %i.g, -4
  %4 = sub i64 %3, %i.d                           ; 2 uses
  %i.l = lshr i64 %4, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check175 = icmp ult i64 %4, 60
  br i1 %min.iters.check175, label %.lr.ph.i.preheader192, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -4
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -4
  %i.q = add i64 %i.p, 4                          ; 2 uses
  %scevgep169 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.q
  %bound0171 = icmp ult ptr %0, %scevgep170
  %bound1172 = icmp ult ptr %1, %scevgep169
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %.lr.ph.i.preheader192, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck168
  %n.vec178 = and i64 %i.m, 9223372036854775800   ; 3 uses
  %i.r = shl i64 %n.vec178, 2                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next187, %vector.body179 ] ; 2 uses
  %i.u = shl i64 %index180, 2                     ; 2 uses
  %next.gep181 = getelementptr i8, ptr %1, i64 %i.u ; 3 uses
  %next.gep182 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep182, i64 16 ; 2 uses
  %wide.load183 = load <4 x i32>, ptr %next.gep182, align 4, !tbaa !3, !alias.scope !252, !noalias !255
  %wide.load184 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3, !alias.scope !252, !noalias !255
  %i.w = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load185 = load <4 x i32>, ptr %next.gep181, align 4, !tbaa !3, !alias.scope !255
  %wide.load186 = load <4 x i32>, ptr %i.w, align 4, !tbaa !3, !alias.scope !255
  store <4 x i32> %wide.load185, ptr %next.gep182, align 4, !tbaa !3, !alias.scope !252, !noalias !255
  store <4 x i32> %wide.load186, ptr %i.v, align 4, !tbaa !3, !alias.scope !252, !noalias !255
  store <4 x i32> %wide.load183, ptr %next.gep181, align 4, !tbaa !3, !alias.scope !255
  store <4 x i32> %wide.load184, ptr %i.w, align 4, !tbaa !3, !alias.scope !255
  %index.next187 = add nuw i64 %index180, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.x, label %middle.block188, label %vector.body179, !llvm.loop !257

middle.block188:                                  ; preds = %vector.body179
  %cmp.n189 = icmp eq i64 %i.m, %n.vec178
  br i1 %cmp.n189, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.preheader192

.lr.ph.i.preheader192:                            ; preds = %vector.memcheck168, %.lr.ph.i.preheader, %middle.block188
  %.010.i.ph = phi ptr [ %1, %vector.memcheck168 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block188 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck168 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block188 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader192, %.lr.ph.i
  %.010.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader192 ] ; 3 uses
  %.079.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader192 ] ; 3 uses
  %i.y = load i32, ptr %.079.i, align 4, !tbaa !3
  %i.z = load i32, ptr %.010.i, align 4, !tbaa !3
  store i32 %i.z, ptr %.079.i, align 4, !tbaa !3
  store i32 %i.y, ptr %.010.i, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !258

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ae = sub nsw i64 %.086, %.082                ; 10 uses
  %i.af = icmp slt i64 %.082, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.082, 1
  br i1 %i.ag, label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.ah = load i32, ptr %.058, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %.idx97 = shl nsw i64 %.086, 2                  ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.058, ptr nonnull align 4 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !3
  br label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.am = getelementptr [4 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph110.preheader193, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.an = shl i64 %.086, 2
  %i.ao = sub i64 %.086, %.082
  %i.ap = shl i64 %i.ao, 2
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ap
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.an
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 4 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr i8, ptr %.058, i64 %i.aq  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep138, align 4, !tbaa !3, !alias.scope !259, !noalias !262
  %wide.load139 = load <4 x i32>, ptr %i.au, align 4, !tbaa !3, !alias.scope !259, !noalias !262
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !262
  %wide.load141 = load <4 x i32>, ptr %i.av, align 4, !tbaa !3, !alias.scope !262
  store <4 x i32> %wide.load140, ptr %next.gep138, align 4, !tbaa !3, !alias.scope !259, !noalias !262
  store <4 x i32> %wide.load141, ptr %i.au, align 4, !tbaa !3, !alias.scope !259, !noalias !262
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !262
  store <4 x i32> %wide.load139, ptr %i.av, align 4, !tbaa !3, !alias.scope !262
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader193

.lr.ph110.preheader193:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph110.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.086, %.082
  %xtraiter201 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader193, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bc, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader193 ]
  %.055107.prol = phi ptr [ %i.bb, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader193 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.ba, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader193 ] ; 3 uses
  %prol.iter203 = phi i64 [ %prol.iter203.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader193 ]
  %i.ay = load i32, ptr %.159106.prol, align 4, !tbaa !3
  %i.az = load i32, ptr %.055107.prol, align 4, !tbaa !3
  store i32 %i.az, ptr %.159106.prol, align 4, !tbaa !3
  store i32 %i.ay, ptr %.055107.prol, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 4 ; 2 uses
  %i.bc = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter203.next = add i64 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i64 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !265

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader193
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader193 ], [ %i.ba, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader193 ], [ %i.bc, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader193 ], [ %i.bb, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader193 ], [ %i.ba, %.lr.ph110.prol ]
  %i.bd = sub i64 %.054108.ph, %.086
  %i.be = add i64 %i.bd, %.082
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bv, %.lr.ph110 ]
  %i.bg = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bg, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPiS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bx, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.bw, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bv, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bh = load i32, ptr %.159106, align 4, !tbaa !3
  %i.bi = load i32, ptr %.055107, align 4, !tbaa !3
  store i32 %i.bi, ptr %.159106, align 4, !tbaa !3
  store i32 %i.bh, ptr %.055107, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.159106, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.055107, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !3
end_hunk_3
