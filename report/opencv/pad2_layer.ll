Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pad2_layer?download=true
inline.NumInlined: 1312
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK2cv3dnn13Pad2LayerImpl7getPadsEiRKNS_3MatES4_RSt6vectorIiSaIiEE:bb.a
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.cd
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !22
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.pn114 = phi { ptr, i32 } [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = load ptr, ptr %1, align 8, !tbaa !35     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.i = load ptr, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !254

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !255

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.r, ptr %i.o, align 4, !tbaa !36
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !58
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !255

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !36
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !255

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !35
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !34 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !35
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !34
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !36
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !36
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !255

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !36
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !36
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN2cv3dnnL20mapPadsToInputLayoutERKNS_8MatShapeERKSt6vectorIiSaIiEERS6_NS_10DataLayoutE(i32 %.0.val, i32 %.4.val, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %.4.val, 7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %i.j = shl nsw i32 %.0.val, 1
  %.not53 = icmp eq i32 %i.j, %i.i
  br i1 %.not53, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.l = add i32 %.0.val, -6
  %or.cond = icmp ult i32 %i.l, -4
  br i1 %or.cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %.0.val, -1                  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32
  %i.v = shl nuw nsw i32 %i.m, 1
  %.not50 = icmp eq i32 %i.v, %i.u
  br i1 %.not50, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %2, 2
  %i.x = add nsw i32 %.0.val, -2                  ; 4 uses
  %i.y = select i1 %i.w, i32 1, i32 %i.x          ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !36
  %.not51 = icmp eq i32 %i.ab, 0
  br i1 %.not51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i32 %i.y, %i.m
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36
  %.not52 = icmp eq i32 %i.af, 0
  br i1 %.not52, label %.lr.ph, label %bb.h

.lr.ph:                                           ; preds = %bb.g
  %i.ag = shl nuw nsw i32 %.0.val, 1
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.pre = load ptr, ptr %1, align 8, !tbaa !35    ; 15 uses
  %i.ai = icmp eq i32 %2, 4
  %i.aj = load ptr, ptr %0, align 8, !tbaa !35    ; 11 uses
  br i1 %i.ai, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ak = zext nneg i32 %i.m to i64               ; 5 uses
  %i.al = zext nneg i32 %.0.val to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %invariant.gep12 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.al ; 4 uses
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !36
  store i32 %i.am, ptr %.pre, align 4, !tbaa !36
  %i.an = load i32, ptr %invariant.gep, align 4, !tbaa !36
  store i32 %i.an, ptr %invariant.gep12, align 4, !tbaa !36
  %exitcond.not = icmp eq i32 %i.m, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ao = zext nneg i32 %i.m to i64               ; 5 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !36
  store i32 %i.ap, ptr %.pre, align 4, !tbaa !36
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36
  %i.as = zext nneg i32 %.0.val to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.as
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !36
  %exitcond8.peel.not = icmp eq i32 %i.m, 1
  br i1 %exitcond8.peel.not, label %._crit_edge, label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %invariant.gep14 = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ao ; 3 uses
  %i.au = icmp eq i32 %i.x, 1
  %spec.select.us = select i1 %i.au, i32 1, i32 2 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  %i.ax = zext nneg i32 %spec.select.us to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !36
  %gep15 = getelementptr inbounds nuw i8, ptr %invariant.gep14, i64 4
  %i.az = load i32, ptr %gep15, align 4, !tbaa !36
  %i.ba = add nuw nsw i32 %spec.select.us, %.0.val
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !36
  %exitcond8.not = icmp eq i32 %i.m, 2
  br i1 %exitcond8.not, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us.peel.next
  %i.bd = icmp eq i32 %i.x, 2
  %spec.select.us.1 = select i1 %i.bd, i32 1, i32 3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !36
  %i.bg = zext nneg i32 %spec.select.us.1 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !36
  %gep15.1 = getelementptr inbounds nuw i8, ptr %invariant.gep14, i64 8
  %i.bi = load i32, ptr %gep15.1, align 4, !tbaa !36
  %i.bj = add nuw nsw i32 %spec.select.us.1, %.0.val
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bk
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !36
  %exitcond8.not.1 = icmp eq i32 %i.m, 3
  br i1 %exitcond8.not.1, label %._crit_edge, label %.lr.ph.split.us.2

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %i.bm = icmp eq i32 %i.x, 3
  %spec.select.us.2 = select i1 %i.bm, i32 1, i32 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  %i.bp = zext nneg i32 %spec.select.us.2 to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !36
  %gep15.2 = getelementptr inbounds nuw i8, ptr %invariant.gep14, i64 12
  %i.br = load i32, ptr %gep15.2, align 4, !tbaa !36
  %i.bs = add nuw nsw i32 %spec.select.us.2, %.0.val
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.preheader, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.us.peel.next, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.us.preheader
  %.pre-phi = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %i.ao, %.lr.ph.split.us.peel.next ], [ %i.ao, %.lr.ph.split.us.2 ], [ %i.ao, %.lr.ph.split.us.1 ], [ %i.ak, %.lr.ph.split.3 ], [ %i.ak, %.lr.ph.split.2 ], [ %i.ak, %.lr.ph.split.1 ], [ %i.ak, %.lr.ph.split.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.pre-phi
  store i32 0, ptr %i.bv, align 4, !tbaa !36
  %i.bw = getelementptr [4 x i8], ptr %.pre, i64 %i.ah
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  store i32 0, ptr %i.bx, align 4, !tbaa !36
  br label %bb.h

.lr.ph.split.1:                                   ; preds = %.lr.ph.split.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !36
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cb = load i32, ptr %gep.1, align 4, !tbaa !36
  %gep13.1 = getelementptr inbounds nuw i8, ptr %invariant.gep12, i64 4
  store i32 %i.cb, ptr %gep13.1, align 4, !tbaa !36
  %exitcond.not.1 = icmp eq i32 %i.m, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !36
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.cf = load i32, ptr %gep.2, align 4, !tbaa !36
  %gep13.2 = getelementptr inbounds nuw i8, ptr %invariant.gep12, i64 8
  store i32 %i.cf, ptr %gep13.2, align 4, !tbaa !36
  %exitcond.not.2 = icmp eq i32 %i.m, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !36
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %i.cj = load i32, ptr %gep.3, align 4, !tbaa !36
  %gep13.3 = getelementptr inbounds nuw i8, ptr %invariant.gep12, i64 12
  store i32 %i.cj, ptr %gep13.3, align 4, !tbaa !36
  br label %._crit_edge

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %._crit_edge, %bb.d, %bb.b, %bb.c
  %.2 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.e ], [ true, %._crit_edge ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.2
}

declare void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn13Pad2LayerImpl11getOutShapeERKNS_8MatShapeERKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"struct.cv::MatShape") align 4 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  tail call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(52) %2)
  %i.a = load i32, ptr %2, align 4, !tbaa !163    ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !163
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.d = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %narrow.i to i64
  %wide.trip.count25 = zext nneg i32 %i.a to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  br label %bb.c

bb.b:                                             ; preds = %_ZN2cv8MatShapeixEm.exit22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next, %wide.trip.count25
  br i1 %exitcond26.not, label %._crit_edge, label %bb.c, !llvm.loop !256

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %_ZN2cv8MatShapeixEm.exit22

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.43, i32 noundef 97) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit22:                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.o = load i32, ptr %gep, align 4, !tbaa !36
  %i.p = add nsw i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36
  %i.s = add nsw i32 %i.p, %i.r                   ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !36
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.b, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn13Pad2LayerImpl11getOutShapeERKNS_8MatShapeERKSt6vectorIiSaIiEE, ptr noundef nonnull @.str.7, i32 noundef 701) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.z = load i64, ptr %i.x, align 8, !tbaa !22
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume
}

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv3dnnL24getOutShapeBlockSemanticERKNS_8MatShapeERKSt6vectorIiSaIiEENS_10DataLayoutE(ptr dead_on_unwind noalias nonnull writable align 4 %0, ptr noundef nonnull align 4 dereferenceable(52) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !162
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv3dnnL24getOutShapeBlockSemanticERKNS_8MatShapeERKSt6vectorIiSaIiEENS_10DataLayoutE, ptr noundef nonnull @.str.7, i32 noundef 429) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %16, align 8, !tbaa !28    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %common.resume
end_hunk_0
