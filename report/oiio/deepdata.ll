inline.NumInlined: 2081
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN11OpenImageIO4v3_18DeepData14occlusion_cullEl:bb.a
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
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
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
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
  %i.ae = load ptr, ptr %1, align 8, !tbaa !11    ; 3 uses
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
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ap, -8
  %i.ar = add i64 %i.ao, %i.ah
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 56
  %i.av = sub i64 %i.ai, %i.am
  %diff.check = icmp ult i64 %i.av, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.af, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.az ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.bb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.bd = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bd, ptr %.011.i.i.i.i, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !179

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !7
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
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
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
  %i.bh = sub i64 %i.f, %i.j
  %i.bi = add i64 %i.bh, -8                       ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check137 = icmp ult i64 %i.bi, 56
  %i.bl = sub i64 %i.bg, %i.j
  %diff.check = icmp ult i64 %i.bl, 32
  %or.cond = select i1 %min.iters.check137, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i70.preheader253, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec140 = and i64 %i.bk, 4611686018427387900  ; 3 uses
  %i.bm = shl i64 %n.vec140, 3                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body141 ] ; 2 uses
  %i.bp = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.bf, i64 %i.bp ; 2 uses
  %next.gep144 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep144, align 4
  %wide.load145 = load <2 x i64>, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load, ptr %next.gep143, align 4
  store <2 x i64> %wide.load145, ptr %i.br, align 4
  %index.next146 = add nuw i64 %index142, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.bs, label %middle.block147, label %vector.body141, !llvm.loop !192

middle.block147:                                  ; preds = %vector.body141
  %cmp.n148 = icmp eq i64 %i.bk, %n.vec140
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70.preheader253

.lr.ph.i.i.i.i.i70.preheader253:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block147
  %.013.i.i.i.i.i71.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bn, %middle.block147 ]
  %.sroa.08.012.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bo, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.k
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !7
  br label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader253, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i70 ], [ %.013.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader253 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.08.012.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader253 ] ; 2 uses
  %i.bu = load i64, ptr %.sroa.08.012.i.i.i.i.i72, align 4
  store i64 %i.bu, ptr %.013.i.i.i.i.i71, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 8
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bv, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !193

_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block147
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.k
  store ptr %i.by, ptr %i.c, align 8, !tbaa !7
  %i.bz = sub i64 %i.f, %i.j
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.ca, 24
  br i1 %min.iters.check152, label %.lr.ph.i.i.i77.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75
  %n.vec155 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec155, 3
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert156 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat157 = shufflevector <2 x i64> %broadcast.splatinsert156, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph153
  %index159 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body158 ] ; 2 uses
  %i.cf = shl i64 %index159, 3
  %next.gep160 = getelementptr i8, ptr %1, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %broadcast.splat157, ptr %next.gep160, align 4
  store <2 x i64> %broadcast.splat157, ptr %i.cg, align 4
  %index.next161 = add nuw i64 %index159, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next161, %n.vec155
  br i1 %i.ch, label %middle.block162, label %vector.body158, !llvm.loop !194

middle.block162:                                  ; preds = %vector.body158
  %cmp.n163 = icmp eq i64 %i.cc, %n.vec155
  br i1 %cmp.n163, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77.preheader

.lr.ph.i.i.i77.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, %middle.block162
  %.06.i.i.i78.ph = phi ptr [ %1, %_ZSt22__uninitialized_move_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit75 ], [ %i.ce, %middle.block162 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ci, %.lr.ph.i.i.i77 ], [ %.06.i.i.i78.ph, %.lr.ph.i.i.i77.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i78, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !195

bb.j:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8, !tbaa !11    ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 5 uses
  %i.cl = sub i64 %i.f, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3                 ; 4 uses
  %i.cn = sub nsw i64 1152921504606846975, %i.cm
  %i.co = icmp ult i64 %i.cn, %2
  br i1 %i.co, label %bb.k, label %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %2)
  %i.cp = add nsw i64 %.sroa.speculated.i, %i.cm  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %i.ct = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.cu = sub i64 %i.ct, %i.ck
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cv = shl nuw nsw i64 %i.cs, 3
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #30
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.cx = phi ptr [ %i.cw, %bb.l ], [ null, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 3 uses
  %i.da = load i64, ptr %3, align 4               ; 2 uses
  %min.iters.check196 = icmp ult i64 %2, 4
  br i1 %min.iters.check196, label %.lr.ph.i.i.i.i82.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit
  %n.vec199 = and i64 %2, -4                      ; 3 uses
  %i.db = shl i64 %n.vec199, 3
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.db
  %i.dd = and i64 %2, 3
  %broadcast.splatinsert200 = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat201 = shufflevector <2 x i64> %broadcast.splatinsert200, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph197
  %index203 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body202 ] ; 2 uses
  %i.de = shl i64 %index203, 3
  %next.gep204 = getelementptr i8, ptr %i.cz, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep204, i64 16
  store <2 x i64> %broadcast.splat201, ptr %next.gep204, align 4
  store <2 x i64> %broadcast.splat201, ptr %i.df, align 4
  %index.next205 = add nuw i64 %index203, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next205, %n.vec199
  br i1 %i.dg, label %middle.block206, label %vector.body202, !llvm.loop !196

middle.block206:                                  ; preds = %vector.body202
  %cmp.n207 = icmp eq i64 %2, %n.vec199
  br i1 %cmp.n207, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit, %middle.block206
  %.09.i.i.i.i83.ph = phi ptr [ %i.cz, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.dc, %middle.block206 ]
  %.068.i.i.i.i84.ph = phi i64 [ %2, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit ], [ %i.dd, %middle.block206 ]
  br label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.preheader, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.di, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader ] ; 2 uses
  %.068.i.i.i.i84 = phi i64 [ %i.dh, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.ph, %.lr.ph.i.i.i.i82.preheader ]
  store i64 %i.da, ptr %.09.i.i.i.i83, align 4
  %i.dh = add i64 %.068.i.i.i.i84, -1             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 8
  %.not.i.i.i.i85 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i85, label %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !197

_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %middle.block206
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.cj, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i89.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %i.dj = sub i64 %i.ct, %i.ck
  %i.dk = add i64 %i.dj, -8                       ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check213 = icmp ult i64 %i.dk, 56
  %i.dn = sub i64 %i.cy, %i.ck
  %diff.check211 = icmp ult i64 %i.dn, 32
  %or.cond247 = or i1 %min.iters.check213, %diff.check211
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i89.preheader249, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.i.i.i.i.i89.preheader
  %n.vec216 = and i64 %i.dm, 4611686018427387900  ; 3 uses
  %i.do = shl i64 %n.vec216, 3                    ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cx, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cj, i64 %i.do
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph214
  %index218 = phi i64 [ 0, %vector.ph214 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.dr = shl i64 %index218, 3                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.cx, i64 %i.dr ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.cj, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load221 = load <2 x i64>, ptr %next.gep220, align 4
  %wide.load222 = load <2 x i64>, ptr %i.ds, align 4
  %i.dt = getelementptr i8, ptr %next.gep219, i64 16
  store <2 x i64> %wide.load221, ptr %next.gep219, align 4
  store <2 x i64> %wide.load222, ptr %i.dt, align 4
  %index.next223 = add nuw i64 %index218, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.du, label %middle.block224, label %vector.body217, !llvm.loop !198

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.dm, %n.vec216
  br i1 %cmp.n225, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89.preheader249

.lr.ph.i.i.i.i.i89.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i89.preheader, %middle.block224
  %.013.i.i.i.i.i90.ph = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.dp, %middle.block224 ]
  %.sroa.08.012.i.i.i.i.i91.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i89.preheader ], [ %i.dq, %middle.block224 ]
  br label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %.lr.ph.i.i.i.i.i89.preheader249, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i89 ], [ %.013.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i89.preheader249 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i89 ], [ %.sroa.08.012.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i89.preheader249 ] ; 2 uses
  %i.dv = load i64, ptr %.sroa.08.012.i.i.i.i.i91, align 4
  store i64 %i.dv, ptr %.013.i.i.i.i.i90, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 8 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.dw, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !199

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %middle.block224, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPN11OpenImageIO4v3_18TypeDescEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ], [ %i.dp, %middle.block224 ], [ %i.dx, %.lr.ph.i.i.i.i.i89 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i93229 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i93 to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader

.lr.ph.i.i.i.i.i95.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.dz = sub i64 %i.f, %i.ct
  %i.ea = add i64 %i.dz, -8                       ; 2 uses
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check232 = icmp ult i64 %i.ea, 104
  br i1 %min.iters.check232, label %.lr.ph.i.i.i.i.i95.preheader248, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader
  %i.ed = shl i64 %2, 3
  %i.ee = add i64 %i.ed, %.0.lcssa.i.i.i.i.i93229
  %i.ef = sub i64 %i.ee, %i.ct
  %diff.check230 = icmp ult i64 %i.ef, 32
  br i1 %diff.check230, label %.lr.ph.i.i.i.i.i95.preheader248, label %vector.ph233

vector.ph233:                                     ; preds = %vector.memcheck228
  %n.vec235 = and i64 %i.ec, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec235, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dy, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph233
  %index237 = phi i64 [ 0, %vector.ph233 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.ej = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.dy, i64 %i.ej ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep239, align 4
  %wide.load241 = load <2 x i64>, ptr %i.ek, align 4
  %i.el = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 4
  store <2 x i64> %wide.load241, ptr %i.el, align 4
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.em, label %middle.block243, label %vector.body236, !llvm.loop !200

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.ec, %n.vec235
  br i1 %cmp.n244, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95.preheader248

.lr.ph.i.i.i.i.i95.preheader248:                  ; preds = %vector.memcheck228, %.lr.ph.i.i.i.i.i95.preheader, %middle.block243
  %.013.i.i.i.i.i96.ph = phi ptr [ %i.dy, %vector.memcheck228 ], [ %i.dy, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.eh, %middle.block243 ]
  %.sroa.08.012.i.i.i.i.i97.ph = phi ptr [ %1, %vector.memcheck228 ], [ %1, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.ei, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %.lr.ph.i.i.i.i.i95.preheader248, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i95 ], [ %.013.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i95.preheader248 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i95 ], [ %.sroa.08.012.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i95.preheader248 ] ; 2 uses
  %i.en = load i64, ptr %.sroa.08.012.i.i.i.i.i97, align 4
  store i64 %i.en, ptr %.013.i.i.i.i.i96, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.eo, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !201

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %middle.block243, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.dy, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.eh, %middle.block243 ], [ %i.ep, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.cj, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.er, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.es) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_18TypeDescES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, %bb.m
  store ptr %i.cx, ptr %0, align 8, !tbaa !11
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cs
  store ptr %i.et, ptr %i.a, align 8, !tbaa !61
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
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = load ptr, ptr %0, align 8, !tbaa !11     ; 8 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp ugt i64 %i.d, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 9223372036854775800
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #30 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.n = and i64 %i.d, 9223372036854775800
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %1, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !7
  store ptr %i.p, ptr %i.e, align 8, !tbaa !61
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.t = sub i64 %i.s, %i.i                       ; 5 uses
  %.not = icmp ult i64 %i.t, %i.d
  br i1 %.not, label %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp sgt i64 %i.d, 8
  br i1 %i.u, label %bb.g, label %bb.h, !prof !140

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %1, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.d, 8
  br i1 %i.v, label %bb.i, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %1, align 4
  store i64 %i.w, ptr %i.g, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !7
  %.not.i16 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i16, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit
  store ptr %i.x, ptr %i.q, align 8, !tbaa !7
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.t ; 5 uses
  %i.z = icmp sgt i64 %i.t, 8
  br i1 %i.z, label %bb.j, label %bb.k, !prof !140

bb.j:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %1, i64 %i.t, i1 false)
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPKN11OpenImageIO4v3_18TypeDescElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aa = icmp eq i64 %i.t, 8
  br i1 %i.aa, label %bb.l, label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

bb.l:                                             ; preds = %bb.k
  %i.ab = load i64, ptr %1, align 4
  store i64 %i.ab, ptr %i.g, align 4
  br label %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17

_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !7   ; 6 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17
  %i.ae = add i64 %i.i, %i.b
  %i.af = add i64 %i.ae, -8
  %i.ag = add i64 %i.s, %i.a
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = add i64 %i.i, %i.ad
  %i.al = add i64 %i.s, %i.c
  %i.am = sub i64 %i.ak, %i.al
  %diff.check = icmp ult i64 %i.am, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %.sink.i, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.aq ; 2 uses
  %next.gep27 = getelementptr i8, ptr %.sink.i, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4
  %wide.load28 = load <2 x i64>, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load28, ptr %i.as, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %.sink.i, %vector.memcheck ], [ %.sink.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %i.au = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.au, ptr %.011.i.i.i.i, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !203

_ZSt22__uninitialized_copy_aIPKN11OpenImageIO4v3_18TypeDescEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ac, %_ZSt4copyIPKN11OpenImageIO4v3_18TypeDescEPS2_ET0_T_S7_S6_.exit17 ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.q, align 8, !tbaa !7
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
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8, !tbaa !116
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !97
  store i8 0, ptr %i.p, align 8, !tbaa !47
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !204

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIPvSaIS0_EE17_M_default_appendEm:bb.a
bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !158
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !158
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !154
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #32
  unreachable

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !158
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !158
  br label %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #29
  br label %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit36

_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit36: ; preds = %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !154
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !230
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  br label %common.ret18

common.ret18:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  tail call fastcc void @_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call fastcc void @_ZSt22__merge_without_bufferIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %i.f, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  br label %common.ret18
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret27:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  br label %common.ret27

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef %2, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_(ptr noundef nonnull %i.g, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  tail call fastcc void @_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4)
  br label %common.ret27
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %3) unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 8 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.g = icmp sgt i64 %i.d, 24
  br i1 %i.g, label %.lr.ph.i, label %_ZSt22__chunk_insertion_sortIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.010.i = phi ptr [ %i.h, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i, i64 28 ; 4 uses
  tail call fastcc void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef %.010.i, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.b, %i.i
  %i.k = icmp sgt i64 %i.j, 24
  br i1 %i.k, label %.lr.ph.i, label %_ZSt22__chunk_insertion_sortIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_.exit, !llvm.loop !231

_ZSt22__chunk_insertion_sortIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.h, %.lr.ph.i ]
  tail call fastcc void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef %.0.lcssa.i, ptr noundef nonnull %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %i.l = icmp sgt i64 %i.e, 7
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = ptrtoint ptr %i.f to i64
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_.exit29
  %.0230 = phi i64 [ 7, %.lr.ph ], [ %.pre254, %_ZSt17__merge_sort_loopIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_.exit29 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.n = shl nsw i64 %.0230, 1                    ; 3 uses
  %.not24.i = icmp slt i64 %i.e, %i.n
  %.pre254 = shl i64 %.0230, 2                    ; 7 uses
  br i1 %.not24.i, label %_ZSt17__merge_sort_loopIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %bb.b
  %.idx206 = shl nsw i64 %.0230, 3                ; 2 uses
  %.not = icmp eq i64 %.pre254, %.idx206
  %i.o = mul i64 %.0230, -8
  %i.p = add i64 %.pre254, -4                     ; 2 uses
  %i.q = lshr exact i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check355 = icmp ult i64 %i.p, 28
  %n.vec358 = and i64 %i.r, 9223372036854775800   ; 3 uses
  %i.s = shl i64 %n.vec358, 2                     ; 2 uses
  %cmp.n367 = icmp eq i64 %i.r, %n.vec358
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit
  %indvar351 = phi i64 [ 0, %.lr.ph.i18.preheader ], [ %indvar.next352, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 2 uses
  %.026.i = phi ptr [ %0, %.lr.ph.i18.preheader ], [ %i.w, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 7 uses
  %.01725.i = phi ptr [ %2, %.lr.ph.i18.preheader ], [ %i.nr, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 6 uses
  %.01725.i350 = ptrtoaddr ptr %.01725.i to i64
  %i.t = mul i64 %i.o, %indvar351
  %i.u = sub i64 %i.t, %i.c
  %i.v = getelementptr inbounds i8, ptr %.026.i, i64 %.pre254 ; 9 uses
  %i.w = getelementptr inbounds i8, ptr %.026.i, i64 %.idx206 ; 4 uses
  %.sroa.0171.0.copyload = load ptr, ptr %5, align 8 ; 6 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 4 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i18
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.x = sext i32 %.sroa.4.0.copyload to i64      ; 12 uses
  %i.y = icmp slt i32 %.sroa.4.0.copyload, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.copyload, i64 8 ; 4 uses
  %i.aa = icmp sgt i32 %.sroa.5.0.copyload, -1    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.copyload, i64 16 ; 4 uses
  %i.ac = zext nneg i32 %.sroa.5.0.copyload to i64 ; 4 uses
  %i.ad = icmp sgt i32 %.sroa.6.0.copyload, -1    ; 2 uses
  %i.ae = zext nneg i32 %.sroa.6.0.copyload to i64 ; 4 uses
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader.a, label %.lr.ph.i31.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader.a: ; preds = %.lr.ph.i31
  %i.af = add i64 %i.u, %.01725.i350
  %diff.check353 = icmp ult i64 %i.af, 32
  %or.cond = select i1 %min.iters.check355, i1 true, i1 %diff.check353
  br i1 %or.cond, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader373, label %vector.ph356

vector.ph356:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader.a
  %i.ag = getelementptr i8, ptr %.01725.i, i64 %i.s ; 2 uses
  %i.ah = getelementptr i8, ptr %.026.i, i64 %i.s
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph356
  %index360 = phi i64 [ 0, %vector.ph356 ], [ %index.next365, %vector.body359 ] ; 2 uses
  %i.ai = shl i64 %index360, 2                    ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.01725.i, i64 %i.ai ; 2 uses
  %next.gep362 = getelementptr i8, ptr %.026.i, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep362, i64 16
  %wide.load363 = load <4 x i32>, ptr %next.gep362, align 4, !tbaa !3
  %wide.load364 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr i8, ptr %next.gep361, i64 16
  store <4 x i32> %wide.load363, ptr %next.gep361, align 4, !tbaa !3
  store <4 x i32> %wide.load364, ptr %i.ak, align 4, !tbaa !3
  %index.next365 = add nuw i64 %index360, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next365, %n.vec358
  br i1 %i.al, label %middle.block366, label %vector.body359, !llvm.loop !232

middle.block366:                                  ; preds = %vector.body359
  br i1 %cmp.n367, label %._crit_edge.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader373

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader373: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader.a, %middle.block366
  %.027.i.us.ph = phi ptr [ %.01725.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader.a ], [ %i.ag, %middle.block366 ]
  %.01826.i.us.ph = phi ptr [ %.026.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader.a ], [ %i.ah, %middle.block366 ]
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader373, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us
  %.027.i.us = phi ptr [ %i.ao, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us ], [ %.027.i.us.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader373 ] ; 2 uses
  %.01826.i.us = phi ptr [ %i.an, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us ], [ %.01826.i.us.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us.preheader373 ] ; 2 uses
  %i.am = load i32, ptr %.01826.i.us, align 4, !tbaa !3
  store i32 %i.am, ptr %.027.i.us, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.01826.i.us, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.027.i.us, i64 4 ; 2 uses
  %.not231 = icmp eq ptr %i.an, %i.v
  br i1 %.not231, label %._crit_edge.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us, !llvm.loop !233

.lr.ph.i31.split:                                 ; preds = %.lr.ph.i31, %bb.bz
  %.027.i = phi ptr [ %i.na, %bb.bz ], [ %.01725.i, %.lr.ph.i31 ] ; 3 uses
  %.01826.i = phi ptr [ %.1.i, %bb.bz ], [ %.026.i, %.lr.ph.i31 ] ; 4 uses
  %.01925.i = phi ptr [ %.120.i, %bb.bz ], [ %i.v, %.lr.ph.i31 ] ; 4 uses
  %.019.val.i = load i32, ptr %.01925.i, align 4, !tbaa !3 ; 6 uses
  %.018.val.i = load i32, ptr %.01826.i, align 4, !tbaa !3 ; 6 uses
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !62  ; 16 uses
  %i.aq = icmp sgt i64 %i.ap, %i.x
  %or.cond.not24.i.i84 = and i1 %i.aa, %i.aq
  %i.ar = load i32, ptr %i.ab, align 8            ; 16 uses
  %.not.i.i85 = icmp slt i32 %.sroa.5.0.copyload, %i.ar
  %or.cond21.i.i86 = select i1 %or.cond.not24.i.i84, i1 %.not.i.i85, i1 false
  br i1 %or.cond21.i.i86, label %bb.c, label %bb.u

bb.c:                                             ; preds = %.lr.ph.i31.split
  %i.as = load ptr, ptr %.sroa.0171.0.copyload, align 8, !tbaa !36 ; 8 uses
  %.not18.i.i88 = icmp eq ptr %i.as, null
  br i1 %.not18.i.i88, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !129
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  %i.ay = icmp slt i32 %.019.val.i, 0
  %or.cond3.i.i89 = or i1 %i.ay, %i.ax
  br i1 %or.cond3.i.i89, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.x
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %.not19.i.i90 = icmp slt i32 %.019.val.i, %i.bc
  br i1 %.not19.i.i90, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i91, label %bb.u

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i91: ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.x
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = add i32 %i.bg, %.019.val.i
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !92
  %i.bl = mul i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ac
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !95
  %i.bq = getelementptr i8, ptr %i.aw, i64 %i.bl
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp  ; 11 uses
  %.not.i92 = icmp eq ptr %i.br, null
  br i1 %.not.i92, label %bb.u, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i91
  %i.bs = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ac
  %i.bu = load i64, ptr %i.bt, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i94 = trunc i64 %i.bu to i8
  switch i8 %.sroa.01.0.extract.trunc.i94, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i99 [
    i8 11, label %bb.f
    i8 10, label %bb.g
    i8 6, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.q
    i8 7, label %bb.r
    i8 8, label %bb.s
    i8 9, label %bb.t
  ]

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.bv = load float, ptr %i.br, align 4, !tbaa !144
  br label %bb.u

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.bw = load i16, ptr %i.br, align 2, !tbaa !146 ; 2 uses
  %i.bx = zext i16 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 13
  %i.bz = and i32 %i.by, 268427264                ; 6 uses
  %.signext.i.i.i95 = sext i16 %i.bw to i32
  %i.ca = and i32 %.signext.i.i.i95, -2147483648  ; 3 uses
  %i.cb = icmp samesign ugt i32 %i.bz, 8388607
  br i1 %i.cb, label %bb.h, label %bb.k, !prof !140

bb.h:                                             ; preds = %bb.g
  %i.cc = or disjoint i32 %i.bz, %i.ca            ; 2 uses
  %i.cd = icmp samesign ult i32 %i.bz, 260046848
  br i1 %i.cd, label %bb.i, label %bb.j, !prof !140

bb.i:                                             ; preds = %bb.h
  %i.ce = add nuw nsw i32 %i.cc, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i97

bb.j:                                             ; preds = %bb.h
  %i.cf = or i32 %i.cc, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i97

bb.k:                                             ; preds = %bb.g
  %.not.i.i.i96 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i96, label %_ZNK9Imath_3_14halfcvfEv.exit.i97, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.ch = add nsw i32 %i.cg, -8                   ; 2 uses
  %i.ci = shl i32 %i.bz, %i.ch
  %i.cj = or i32 %i.ca, %i.ci
  %i.ck = or i32 %i.cj, 947912704
  %i.cl = shl nuw nsw i32 %i.ch, 23
  %i.cm = sub nuw i32 %i.ck, %i.cl
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i97

_ZNK9Imath_3_14halfcvfEv.exit.i97:                ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i.i98 = phi i32 [ %i.ce, %bb.i ], [ %i.cf, %bb.j ], [ %i.cm, %bb.l ], [ %i.ca, %bb.k ]
  %i.cn = bitcast i32 %.sroa.0.0.i.i.i98 to float
  br label %bb.u

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.co = load i32, ptr %i.br, align 4, !tbaa !3
  %i.cp = uitofp i32 %i.co to float
  %i.cq = fmul nnan float %i.cp, f0x2F800000
  br label %bb.u

bb.n:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.cr = load i8, ptr %i.br, align 1, !tbaa !47
  %i.cs = uitofp i8 %i.cr to float
  %i.ct = fmul nnan float %i.cs, f0x3B808081
  br label %bb.u

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.cu = load i8, ptr %i.br, align 1, !tbaa !47
  %i.cv = sitofp i8 %i.cu to float
  %i.cw = fmul nnan float %i.cv, f0x3C010204
  br label %bb.u

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.cx = load i16, ptr %i.br, align 2, !tbaa !149
  %i.cy = uitofp i16 %i.cx to float
  %i.cz = fmul nnan float %i.cy, f0x37800080
  br label %bb.u

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.da = load i16, ptr %i.br, align 2, !tbaa !149
  %i.db = sitofp i16 %i.da to float
  %i.dc = fmul nnan float %i.db, f0x38000100
  br label %bb.u

bb.r:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.dd = load i32, ptr %i.br, align 4, !tbaa !3
  %i.de = sitofp i32 %i.dd to float
  %i.df = fmul nnan float %i.de, f0x30000000
  br label %bb.u

bb.s:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.dg = load i64, ptr %i.br, align 8, !tbaa !150
  %i.dh = uitofp i64 %i.dg to float
  %i.di = fmul nnan float %i.dh, f0x1F800000
  br label %bb.u

bb.t:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.dj = load i64, ptr %i.br, align 8, !tbaa !150
  %i.dk = sitofp i64 %i.dj to float
  %i.dl = fmul nnan float %i.dk, f0x20000000
  br label %bb.u

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i99: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i93
  %i.dm = trunc i64 %i.bu to i32
  %i.dn = and i32 %i.dm, 255
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.dp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.dn) #31 ; 0 uses
  %.pre = load i64, ptr %i.z, align 8, !tbaa !62
  %.pre247 = load i32, ptr %i.ab, align 8
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.i31.split, %bb.c, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i91, %bb.f, %_ZNK9Imath_3_14halfcvfEv.exit.i97, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i99
  %i.dq = phi i32 [ %i.ar, %.lr.ph.i31.split ], [ %i.ar, %bb.c ], [ %i.ar, %bb.d ], [ %i.ar, %bb.e ], [ %i.ar, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i91 ], [ %i.ar, %bb.t ], [ %i.ar, %bb.s ], [ %i.ar, %bb.r ], [ %i.ar, %bb.q ], [ %i.ar, %bb.p ], [ %i.ar, %bb.o ], [ %i.ar, %bb.n ], [ %i.ar, %bb.m ], [ %i.ar, %_ZNK9Imath_3_14halfcvfEv.exit.i97 ], [ %i.ar, %bb.f ], [ %.pre247, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i99 ]
  %i.dr = phi i64 [ %i.ap, %.lr.ph.i31.split ], [ %i.ap, %bb.c ], [ %i.ap, %bb.d ], [ %i.ap, %bb.e ], [ %i.ap, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i91 ], [ %i.ap, %bb.t ], [ %i.ap, %bb.s ], [ %i.ap, %bb.r ], [ %i.ap, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ], [ %i.ap, %_ZNK9Imath_3_14halfcvfEv.exit.i97 ], [ %i.ap, %bb.f ], [ %.pre, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i99 ]
  %.0.i87.ph = phi float [ 0.000000e+00, %.lr.ph.i31.split ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i91 ], [ %i.dl, %bb.t ], [ %i.di, %bb.s ], [ %i.df, %bb.r ], [ %i.dc, %bb.q ], [ %i.cz, %bb.p ], [ %i.cw, %bb.o ], [ %i.ct, %bb.n ], [ %i.cq, %bb.m ], [ %i.cn, %_ZNK9Imath_3_14halfcvfEv.exit.i97 ], [ %i.bv, %bb.f ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i99 ] ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, %i.x
  %or.cond.not24.i.i67 = and i1 %i.aa, %i.ds
  %.not.i.i68 = icmp slt i32 %.sroa.5.0.copyload, %i.dq
  %or.cond21.i.i69 = select i1 %or.cond.not24.i.i67, i1 %.not.i.i68, i1 false
  br i1 %or.cond21.i.i69, label %bb.v, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit83

bb.v:                                             ; preds = %bb.u
end_hunk_2
begin_hunk_3_@_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_:bb.a
  %i.le = and i32 %i.ld, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %i.lb to i32
  %i.lf = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.lg = icmp samesign ugt i32 %i.le, 8388607
  br i1 %i.lg, label %bb.bm, label %bb.bp, !prof !140

bb.bm:                                            ; preds = %bb.bl
  %i.lh = or disjoint i32 %i.le, %i.lf            ; 2 uses
  %i.li = icmp samesign ult i32 %i.le, 260046848
  br i1 %i.li, label %bb.bn, label %bb.bo, !prof !140

bb.bn:                                            ; preds = %bb.bm
  %i.lj = add nuw nsw i32 %i.lh, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.lk = or i32 %i.lh, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.bp:                                            ; preds = %bb.bl
  %.not.i.i.i = icmp eq i32 %i.le, 0
  br i1 %.not.i.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ll = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.le, i1 true)
  %i.lm = add nsw i32 %i.ll, -8                   ; 2 uses
  %i.ln = shl i32 %i.le, %i.lm
  %i.lo = or i32 %i.lf, %i.ln
  %i.lp = or i32 %i.lo, 947912704
  %i.lq = shl nuw nsw i32 %i.lm, 23
  %i.lr = sub nuw i32 %i.lp, %i.lq
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

_ZNK9Imath_3_14halfcvfEv.exit.i:                  ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.i.i.i = phi i32 [ %i.lj, %bb.bn ], [ %i.lk, %bb.bo ], [ %i.lr, %bb.bq ], [ %i.lf, %bb.bp ]
  %i.ls = bitcast i32 %.sroa.0.0.i.i.i to float
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.br:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.lt = load i32, ptr %i.kw, align 4, !tbaa !3
  %i.lu = uitofp i32 %i.lt to float
  %i.lv = fmul nnan float %i.lu, f0x2F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.bs:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.lw = load i8, ptr %i.kw, align 1, !tbaa !47
  %i.lx = uitofp i8 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x3B808081
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.bt:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.lz = load i8, ptr %i.kw, align 1, !tbaa !47
  %i.ma = sitofp i8 %i.lz to float
  %i.mb = fmul nnan float %i.ma, f0x3C010204
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.bu:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.mc = load i16, ptr %i.kw, align 2, !tbaa !149
  %i.md = uitofp i16 %i.mc to float
  %i.me = fmul nnan float %i.md, f0x37800080
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.bv:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.mf = load i16, ptr %i.kw, align 2, !tbaa !149
  %i.mg = sitofp i16 %i.mf to float
  %i.mh = fmul nnan float %i.mg, f0x38000100
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.bw:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.mi = load i32, ptr %i.kw, align 4, !tbaa !3
  %i.mj = sitofp i32 %i.mi to float
  %i.mk = fmul nnan float %i.mj, f0x30000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.bx:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.ml = load i64, ptr %i.kw, align 8, !tbaa !150
  %i.mm = uitofp i64 %i.ml to float
  %i.mn = fmul nnan float %i.mm, f0x1F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.by:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.mo = load i64, ptr %i.kw, align 8, !tbaa !150
  %i.mp = sitofp i64 %i.mo to float
  %i.mq = fmul nnan float %i.mp, f0x20000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.mr = trunc i64 %i.kz to i32
  %i.ms = and i32 %i.mr, 255
  %i.mt = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.mu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mt, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.ms) #31 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit: ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i, %bb.bk, %_ZNK9Imath_3_14halfcvfEv.exit.i, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i
  %.0.i = phi float [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i ], [ %i.la, %bb.bk ], [ %i.ls, %_ZNK9Imath_3_14halfcvfEv.exit.i ], [ %i.lv, %bb.br ], [ %i.ly, %bb.bs ], [ %i.mb, %bb.bt ], [ %i.me, %bb.bu ], [ %i.mh, %bb.bv ], [ %i.mk, %bb.bw ], [ %i.mn, %bb.bx ], [ %i.mq, %bb.by ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i ], [ 0.000000e+00, %bb.bj ], [ 0.000000e+00, %bb.bi ], [ 0.000000e+00, %bb.bh ], [ 0.000000e+00, %bb.bg ]
  %i.mv = fcmp olt float %.0.i53.ph, %.0.i
  br i1 %i.mv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit, %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit83
  %i.mw = load i32, ptr %.01925.i, align 4, !tbaa !3
  store i32 %i.mw, ptr %.027.i, align 4, !tbaa !3
  %i.mx = getelementptr inbounds nuw i8, ptr %.01925.i, i64 4
  br label %bb.bz

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit, %bb.an
  %i.my = load i32, ptr %.01826.i, align 4, !tbaa !3
  store i32 %i.my, ptr %.027.i, align 4, !tbaa !3
  %i.mz = getelementptr inbounds nuw i8, ptr %.01826.i, i64 4
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread.i
  %.120.i = phi ptr [ %i.mx, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread.i ], [ %.01925.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i ] ; 3 uses
  %.1.i = phi ptr [ %.01826.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread.i ], [ %i.mz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i ] ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.027.i, i64 4 ; 2 uses
  %i.nb = icmp ne ptr %.1.i, %i.v
  %i.nc = icmp ne ptr %.120.i, %i.w
  %i.nd = select i1 %i.nb, i1 %i.nc, i1 false
  br i1 %i.nd, label %.lr.ph.i31.split, label %._crit_edge.i, !llvm.loop !234

._crit_edge.i:                                    ; preds = %bb.bz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us, %middle.block366, %.lr.ph.i18
  %.019.lcssa.i = phi ptr [ %i.v, %.lr.ph.i18 ], [ %i.v, %middle.block366 ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us ], [ %.120.i, %bb.bz ] ; 3 uses
  %.018.lcssa.i = phi ptr [ %.026.i, %.lr.ph.i18 ], [ %i.v, %middle.block366 ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us ], [ %.1.i, %bb.bz ] ; 3 uses
  %.0.lcssa.i30 = phi ptr [ %.01725.i, %.lr.ph.i18 ], [ %i.ag, %middle.block366 ], [ %i.ao, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i.us ], [ %i.na, %bb.bz ] ; 3 uses
  %i.ne = ptrtoint ptr %i.v to i64
  %i.nf = ptrtoint ptr %.018.lcssa.i to i64
  %i.ng = sub i64 %i.ne, %i.nf                    ; 4 uses
  %i.nh = icmp sgt i64 %i.ng, 4
  br i1 %i.nh, label %bb.ca, label %bb.cb, !prof !140

bb.ca:                                            ; preds = %._crit_edge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i30, ptr align 4 %.018.lcssa.i, i64 %i.ng, i1 false)
  br label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit.i

bb.cb:                                            ; preds = %._crit_edge.i
  %i.ni = icmp eq i64 %i.ng, 4
  br i1 %i.ni, label %bb.cc, label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.nj = load i32, ptr %.018.lcssa.i, align 4, !tbaa !3
  store i32 %i.nj, ptr %.0.lcssa.i30, align 4, !tbaa !3
  br label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit.i

_ZSt4moveIPiS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.nk = getelementptr inbounds i8, ptr %.0.lcssa.i30, i64 %i.ng ; 3 uses
  %i.nl = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.nm = ptrtoint ptr %.019.lcssa.i to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 4 uses
  %i.no = icmp sgt i64 %i.nn, 4
  br i1 %i.no, label %bb.cd, label %bb.ce, !prof !140

bb.cd:                                            ; preds = %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.nk, ptr nonnull align 4 %.019.lcssa.i, i64 %i.nn, i1 false)
  br label %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit

bb.ce:                                            ; preds = %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit.i
  %i.np = icmp eq i64 %i.nn, 4
  br i1 %i.np, label %bb.cf, label %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit

bb.cf:                                            ; preds = %bb.ce
  %i.nq = load i32, ptr %.019.lcssa.i, align 4, !tbaa !3
  store i32 %i.nq, ptr %i.nk, align 4, !tbaa !3
  br label %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit

_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit: ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.nr = getelementptr inbounds i8, ptr %i.nk, i64 %i.nn ; 2 uses
  %i.ns = sub i64 %i.b, %i.nl
  %i.nt = ashr exact i64 %i.ns, 2                 ; 2 uses
  %.not.i = icmp slt i64 %i.nt, %i.n
  %indvar.next352 = add i64 %indvar351, 1
  br i1 %.not.i, label %_ZSt17__merge_sort_loopIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_.exit, label %.lr.ph.i18, !llvm.loop !235

_ZSt17__merge_sort_loopIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit, %bb.b
  %.017.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.nr, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit ]
  %.0.lcssa.i19 = phi ptr [ %0, %bb.b ], [ %i.w, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.nt, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 4611686018427387901) %.0230, i64 %.lcssa.i)
  %i.nu = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i19, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_(ptr noundef %.0.lcssa.i19, ptr noundef %i.nu, ptr noundef %i.nu, ptr noundef nonnull %1, ptr noundef %.017.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.not24.i20 = icmp slt i64 %i.e, %.pre254
  br i1 %.not24.i20, label %_ZSt17__merge_sort_loopIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_.exit29, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %_ZSt17__merge_sort_loopIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_.exit
  %.idx207 = shl nsw i64 %.0230, 3                ; 3 uses
  %.idx208 = shl nsw i64 %.0230, 4                ; 2 uses
  %.not209 = icmp eq i64 %.idx207, %.idx208
  %i.nv = mul i64 %.0230, -16
  %i.nw = add i64 %.idx207, -4                    ; 2 uses
  %i.nx = lshr exact i64 %i.nw, 2
  %i.ny = add nuw nsw i64 %i.nx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.nw, 28
  %n.vec = and i64 %i.ny, 9223372036854775800     ; 3 uses
  %i.nz = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ny, %n.vec
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit48
  %indvar = phi i64 [ 0, %.lr.ph.i21.preheader ], [ %indvar.next, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit48 ] ; 2 uses
  %.026.i22 = phi ptr [ %2, %.lr.ph.i21.preheader ], [ %i.od, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit48 ] ; 7 uses
  %.01725.i23 = phi ptr [ %0, %.lr.ph.i21.preheader ], [ %i.aby, %_ZSt12__move_mergeIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEET0_T_SA_SA_SA_S9_T1_.exit48 ] ; 6 uses
  %.01725.i23345 = ptrtoaddr ptr %.01725.i23 to i64
  %i.oa = mul i64 %i.nv, %indvar
  %i.ob = sub i64 %i.oa, %i.a
  %i.oc = getelementptr inbounds i8, ptr %.026.i22, i64 %.idx207 ; 9 uses
  %i.od = getelementptr inbounds i8, ptr %.026.i22, i64 %.idx208 ; 4 uses
  %.sroa.0172.0.copyload = load ptr, ptr %4, align 8 ; 6 uses
  %.sroa.5174.0.copyload = load i32, ptr %.sroa.5174.0..sroa_idx, align 4 ; 4 uses
  %.sroa.6175.0.copyload = load i32, ptr %.sroa.6175.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not209, label %._crit_edge.i32, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i21
  %.sroa.4173.0.copyload = load i32, ptr %.sroa.4173.0..sroa_idx, align 8 ; 2 uses
  %i.oe = sext i32 %.sroa.4173.0.copyload to i64  ; 12 uses
  %i.of = icmp slt i32 %.sroa.4173.0.copyload, 0
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0172.0.copyload, i64 8 ; 4 uses
  %i.oh = icmp sgt i32 %.sroa.5174.0.copyload, -1 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0172.0.copyload, i64 16 ; 4 uses
  %i.oj = zext nneg i32 %.sroa.5174.0.copyload to i64 ; 4 uses
  %i.ok = icmp sgt i32 %.sroa.6175.0.copyload, -1 ; 2 uses
  %i.ol = zext nneg i32 %.sroa.6175.0.copyload to i64 ; 4 uses
  br i1 %i.of, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader.a, label %.lr.ph.i37.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader.a: ; preds = %.lr.ph.i37
  %i.om = add i64 %i.ob, %.01725.i23345
  %diff.check = icmp ult i64 %i.om, 32
  %or.cond370 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond370, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader371, label %vector.ph

vector.ph:                                        ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader.a
  %i.on = getelementptr i8, ptr %.01725.i23, i64 %i.nz ; 2 uses
  %i.oo = getelementptr i8, ptr %.026.i22, i64 %i.nz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.op = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01725.i23, i64 %i.op ; 2 uses
  %next.gep346 = getelementptr i8, ptr %.026.i22, i64 %i.op ; 2 uses
  %i.oq = getelementptr i8, ptr %next.gep346, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep346, align 4, !tbaa !3
  %wide.load347 = load <4 x i32>, ptr %i.oq, align 4, !tbaa !3
  %i.or = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load347, ptr %i.or, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.os = icmp eq i64 %index.next, %n.vec
  br i1 %i.os, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i32, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader371

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader371: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader.a, %middle.block
  %.027.i38.us.ph = phi ptr [ %.01725.i23, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader.a ], [ %i.on, %middle.block ]
  %.01826.i39.us.ph = phi ptr [ %.026.i22, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader.a ], [ %i.oo, %middle.block ]
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader371, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us
  %.027.i38.us = phi ptr [ %i.ov, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us ], [ %.027.i38.us.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader371 ] ; 2 uses
  %.01826.i39.us = phi ptr [ %i.ou, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us ], [ %.01826.i39.us.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us.preheader371 ] ; 2 uses
  %i.ot = load i32, ptr %.01826.i39.us, align 4, !tbaa !3
  store i32 %i.ot, ptr %.027.i38.us, align 4, !tbaa !3
  %i.ou = getelementptr inbounds nuw i8, ptr %.01826.i39.us, i64 4 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.027.i38.us, i64 4 ; 2 uses
  %.not232 = icmp eq ptr %i.ou, %i.oc
  br i1 %.not232, label %._crit_edge.i32, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEclIPiS8_EEbT_T0_.exit.thread23.i44.us, !llvm.loop !237

.lr.ph.i37.split:                                 ; preds = %.lr.ph.i37, %bb.fd
  %.027.i38 = phi ptr [ %i.abh, %bb.fd ], [ %.01725.i23, %.lr.ph.i37 ] ; 3 uses
  %.01826.i39 = phi ptr [ %.1.i46, %bb.fd ], [ %.026.i22, %.lr.ph.i37 ] ; 4 uses
  %.01925.i40 = phi ptr [ %.120.i45, %bb.fd ], [ %i.oc, %.lr.ph.i37 ] ; 4 uses
  %.019.val.i41 = load i32, ptr %.01925.i40, align 4, !tbaa !3 ; 6 uses
  %.018.val.i42 = load i32, ptr %.01826.i39, align 4, !tbaa !3 ; 6 uses
  %i.ow = load i64, ptr %i.og, align 8, !tbaa !62 ; 16 uses
  %i.ox = icmp sgt i64 %i.ow, %i.oe
  %or.cond.not24.i.i152 = and i1 %i.oh, %i.ox
  %i.oy = load i32, ptr %i.oi, align 8            ; 16 uses
  %.not.i.i153 = icmp slt i32 %.sroa.5174.0.copyload, %i.oy
  %or.cond21.i.i154 = select i1 %or.cond.not24.i.i152, i1 %.not.i.i153, i1 false
  br i1 %or.cond21.i.i154, label %bb.cg, label %bb.cy

bb.cg:                                            ; preds = %.lr.ph.i37.split
  %i.oz = load ptr, ptr %.sroa.0172.0.copyload, align 8, !tbaa !36 ; 8 uses
  %.not18.i.i156 = icmp eq ptr %i.oz, null
  br i1 %.not18.i.i156, label %bb.cy, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 144
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 152
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !129
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !51 ; 2 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd
  %i.pf = icmp slt i32 %.019.val.i41, 0
  %or.cond3.i.i157 = or i1 %i.pf, %i.pe
  br i1 %or.cond3.i.i157, label %bb.cy, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 72
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !54
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.oe
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3
  %.not19.i.i158 = icmp slt i32 %.019.val.i41, %i.pj
  br i1 %.not19.i.i158, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i159, label %bb.cy

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i159: ; preds = %bb.ci
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oz, i64 120
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !54
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.oe
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !3
  %i.po = add i32 %i.pn, %.019.val.i41
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oz, i64 216
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !92
  %i.ps = mul i64 %i.pr, %i.pp
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !57
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.oj
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !95
  %i.px = getelementptr i8, ptr %i.pd, i64 %i.ps
  %i.py = getelementptr i8, ptr %i.px, i64 %i.pw  ; 11 uses
  %.not.i160 = icmp eq ptr %i.py, null
  br i1 %.not.i160, label %bb.cy, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i159
  %i.pz = load ptr, ptr %i.oz, align 8, !tbaa !11
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.oj
  %i.qb = load i64, ptr %i.qa, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i162 = trunc i64 %i.qb to i8
  switch i8 %.sroa.01.0.extract.trunc.i162, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i167 [
    i8 11, label %bb.cj
    i8 10, label %bb.ck
    i8 6, label %bb.cq
    i8 2, label %bb.cr
    i8 3, label %bb.cs
    i8 4, label %bb.ct
    i8 5, label %bb.cu
    i8 7, label %bb.cv
    i8 8, label %bb.cw
    i8 9, label %bb.cx
  ]

bb.cj:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.qc = load float, ptr %i.py, align 4, !tbaa !144
  br label %bb.cy

bb.ck:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.qd = load i16, ptr %i.py, align 2, !tbaa !146 ; 2 uses
  %i.qe = zext i16 %i.qd to i32
  %i.qf = shl nuw nsw i32 %i.qe, 13
  %i.qg = and i32 %i.qf, 268427264                ; 6 uses
  %.signext.i.i.i163 = sext i16 %i.qd to i32
  %i.qh = and i32 %.signext.i.i.i163, -2147483648 ; 3 uses
  %i.qi = icmp samesign ugt i32 %i.qg, 8388607
  br i1 %i.qi, label %bb.cl, label %bb.co, !prof !140

bb.cl:                                            ; preds = %bb.ck
  %i.qj = or disjoint i32 %i.qg, %i.qh            ; 2 uses
  %i.qk = icmp samesign ult i32 %i.qg, 260046848
  br i1 %i.qk, label %bb.cm, label %bb.cn, !prof !140

bb.cm:                                            ; preds = %bb.cl
  %i.ql = add nuw nsw i32 %i.qj, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i165

bb.cn:                                            ; preds = %bb.cl
  %i.qm = or i32 %i.qj, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i165

bb.co:                                            ; preds = %bb.ck
  %.not.i.i.i164 = icmp eq i32 %i.qg, 0
  br i1 %.not.i.i.i164, label %_ZNK9Imath_3_14halfcvfEv.exit.i165, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qn = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.qg, i1 true)
  %i.qo = add nsw i32 %i.qn, -8                   ; 2 uses
  %i.qp = shl i32 %i.qg, %i.qo
  %i.qq = or i32 %i.qh, %i.qp
  %i.qr = or i32 %i.qq, 947912704
  %i.qs = shl nuw nsw i32 %i.qo, 23
  %i.qt = sub nuw i32 %i.qr, %i.qs
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i165

_ZNK9Imath_3_14halfcvfEv.exit.i165:               ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.sroa.0.0.i.i.i166 = phi i32 [ %i.ql, %bb.cm ], [ %i.qm, %bb.cn ], [ %i.qt, %bb.cp ], [ %i.qh, %bb.co ]
  %i.qu = bitcast i32 %.sroa.0.0.i.i.i166 to float
  br label %bb.cy

bb.cq:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.qv = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qw = uitofp i32 %i.qv to float
  %i.qx = fmul nnan float %i.qw, f0x2F800000
  br label %bb.cy

bb.cr:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.qy = load i8, ptr %i.py, align 1, !tbaa !47
  %i.qz = uitofp i8 %i.qy to float
  %i.ra = fmul nnan float %i.qz, f0x3B808081
  br label %bb.cy

bb.cs:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.rb = load i8, ptr %i.py, align 1, !tbaa !47
  %i.rc = sitofp i8 %i.rb to float
  %i.rd = fmul nnan float %i.rc, f0x3C010204
  br label %bb.cy

bb.ct:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.re = load i16, ptr %i.py, align 2, !tbaa !149
  %i.rf = uitofp i16 %i.re to float
  %i.rg = fmul nnan float %i.rf, f0x37800080
  br label %bb.cy

bb.cu:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.rh = load i16, ptr %i.py, align 2, !tbaa !149
  %i.ri = sitofp i16 %i.rh to float
  %i.rj = fmul nnan float %i.ri, f0x38000100
  br label %bb.cy

bb.cv:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.rk = load i32, ptr %i.py, align 4, !tbaa !3
  %i.rl = sitofp i32 %i.rk to float
  %i.rm = fmul nnan float %i.rl, f0x30000000
  br label %bb.cy

bb.cw:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.rn = load i64, ptr %i.py, align 8, !tbaa !150
  %i.ro = uitofp i64 %i.rn to float
  %i.rp = fmul nnan float %i.ro, f0x1F800000
  br label %bb.cy

bb.cx:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.rq = load i64, ptr %i.py, align 8, !tbaa !150
  %i.rr = sitofp i64 %i.rq to float
  %i.rs = fmul nnan float %i.rr, f0x20000000
  br label %bb.cy

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i167: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i161
  %i.rt = trunc i64 %i.qb to i32
  %i.ru = and i32 %i.rt, 255
  %i.rv = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.rw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rv, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.ru) #31 ; 0 uses
  %.pre250 = load i64, ptr %i.og, align 8, !tbaa !62
  %.pre251 = load i32, ptr %i.oi, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i37.split, %bb.cg, %bb.ch, %bb.ci, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i159, %bb.cj, %_ZNK9Imath_3_14halfcvfEv.exit.i165, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i167
  %i.rx = phi i32 [ %i.oy, %.lr.ph.i37.split ], [ %i.oy, %bb.cg ], [ %i.oy, %bb.ch ], [ %i.oy, %bb.ci ], [ %i.oy, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i159 ], [ %i.oy, %bb.cx ], [ %i.oy, %bb.cw ], [ %i.oy, %bb.cv ], [ %i.oy, %bb.cu ], [ %i.oy, %bb.ct ], [ %i.oy, %bb.cs ], [ %i.oy, %bb.cr ], [ %i.oy, %bb.cq ], [ %i.oy, %_ZNK9Imath_3_14halfcvfEv.exit.i165 ], [ %i.oy, %bb.cj ], [ %.pre251, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i167 ]
  %i.ry = phi i64 [ %i.ow, %.lr.ph.i37.split ], [ %i.ow, %bb.cg ], [ %i.ow, %bb.ch ], [ %i.ow, %bb.ci ], [ %i.ow, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i159 ], [ %i.ow, %bb.cx ], [ %i.ow, %bb.cw ], [ %i.ow, %bb.cv ], [ %i.ow, %bb.cu ], [ %i.ow, %bb.ct ], [ %i.ow, %bb.cs ], [ %i.ow, %bb.cr ], [ %i.ow, %bb.cq ], [ %i.ow, %_ZNK9Imath_3_14halfcvfEv.exit.i165 ], [ %i.ow, %bb.cj ], [ %.pre250, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i167 ]
  %.0.i155.ph = phi float [ 0.000000e+00, %.lr.ph.i37.split ], [ 0.000000e+00, %bb.cg ], [ 0.000000e+00, %bb.ch ], [ 0.000000e+00, %bb.ci ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i159 ], [ %i.rs, %bb.cx ], [ %i.rp, %bb.cw ], [ %i.rm, %bb.cv ], [ %i.rj, %bb.cu ], [ %i.rg, %bb.ct ], [ %i.rd, %bb.cs ], [ %i.ra, %bb.cr ], [ %i.qx, %bb.cq ], [ %i.qu, %_ZNK9Imath_3_14halfcvfEv.exit.i165 ], [ %i.qc, %bb.cj ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i167 ] ; 2 uses
  %i.rz = icmp sgt i64 %i.ry, %i.oe
  %or.cond.not24.i.i135 = and i1 %i.oh, %i.rz
  %.not.i.i136 = icmp slt i32 %.sroa.5174.0.copyload, %i.rx
  %or.cond21.i.i137 = select i1 %or.cond.not24.i.i135, i1 %.not.i.i136, i1 false
  br i1 %or.cond21.i.i137, label %bb.cz, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit151

bb.cz:                                            ; preds = %bb.cy
end_hunk_3
