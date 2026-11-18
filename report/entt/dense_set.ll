Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/dense_set?download=true
inline.NumInlined: 8227
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorImSaImEEaSERKS1_:bb.a
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !113

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !127

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !106
  store i64 %i.r, ptr %i.o, align 8, !tbaa !106
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !78
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !127

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !106
  store i64 %i.z, ptr %i.i, align 8, !tbaa !106
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !127

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !77
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !77
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !103
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !106
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !106
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
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !127

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !106
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !106
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !103
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairImmESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !137    ; 20 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.j = load ptr, ptr %0, align 8, !tbaa !137    ; 24 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorISt4pairImmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, !prof !113

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt6vectorISt4pairImmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.q = add i64 %i.d, -16
  %i.r = sub i64 %i.q, %i.e
  %i.s = and i64 %i.r, -16
  %i.t = add i64 %i.s, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.t, i1 false)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #27
  br label %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.u, ptr %i.h, align 8, !tbaa !138
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !139  ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.l                       ; 5 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.g, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aa = add i64 %i.f, -8                        ; 2 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  %2 = getelementptr i8, ptr %i.j, i64 8
  %3 = getelementptr i8, ptr %i.j, i64 %i.f
  %4 = getelementptr i8, ptr %i.c, i64 8
  %bound0 = icmp ult ptr %i.j, %i.ac
  %bound1 = icmp ult ptr %i.c, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %2, %i.b
  %bound153 = icmp ult ptr %4, %3
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775806      ; 3 uses
  %i.ad = and i64 %i.g, 1
  %i.ae = shl i64 %n.vec, 4                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 4                       ; 3 uses
  %i.ai = or disjoint i64 %i.ah, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ah
  %next.gep55 = getelementptr i8, ptr %i.j, i64 %i.ai
  %next.gep56 = getelementptr i8, ptr %i.c, i64 %i.ah
  %next.gep57 = getelementptr i8, ptr %i.c, i64 %i.ai
  %wide.load = load <2 x i64>, ptr %next.gep56, align 8
  %wide.load58 = load <2 x i64>, ptr %next.gep57, align 8
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load58, ptr %next.gep55, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader101

.lr.ph.i.i.i.i.i.preheader101:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader101, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader101 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader101 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader101 ] ; 2 uses
  %i.ak = load <2 x i64>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !106
  store <2 x i64> %i.ak, ptr %.0811.i.i.i.i.i, align 8, !tbaa !106
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.an = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ao = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !993

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.aq = ashr exact i64 %i.y, 4                  ; 7 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check75 = icmp ult i64 %i.aq, 14
  br i1 %min.iters.check75, label %.lr.ph.i.i.i.i.i26.preheader100, label %vector.memcheck76

vector.memcheck76:                                ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %i.as = add i64 %i.y, -8                        ; 2 uses
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  %5 = getelementptr i8, ptr %i.j, i64 8
  %6 = getelementptr i8, ptr %i.c, i64 8
  %7 = getelementptr i8, ptr %i.c, i64 %i.y
  %bound077 = icmp ult ptr %i.j, %i.au
  %bound178 = icmp ult ptr %i.c, %i.at
  %found.conflict79 = and i1 %bound077, %bound178
  %bound080 = icmp ult ptr %5, %7
  %bound181 = icmp ult ptr %6, %i.w
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %found.conflict79, %found.conflict82
  br i1 %conflict.rdx83, label %.lr.ph.i.i.i.i.i26.preheader100, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck76
  %n.vec85 = and i64 %i.aq, 9223372036854775806   ; 3 uses
  %i.av = and i64 %i.aq, 1
  %i.aw = shl i64 %n.vec85, 4                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.j, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.c, i64 %i.aw
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next94, %vector.body86 ] ; 2 uses
  %i.az = shl i64 %index87, 4                     ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.j, i64 %i.az
  %next.gep89 = getelementptr i8, ptr %i.j, i64 %i.ba
  %next.gep90 = getelementptr i8, ptr %i.c, i64 %i.az
  %next.gep91 = getelementptr i8, ptr %i.c, i64 %i.ba
  %wide.load92 = load <2 x i64>, ptr %next.gep90, align 8
  %wide.load93 = load <2 x i64>, ptr %next.gep91, align 8
  store <2 x i64> %wide.load92, ptr %next.gep88, align 8
  store <2 x i64> %wide.load93, ptr %next.gep89, align 8
  %index.next94 = add nuw i64 %index87, 2         ; 2 uses
  %i.bb = icmp eq i64 %index.next94, %n.vec85
  br i1 %i.bb, label %middle.block95, label %vector.body86, !llvm.loop !994

middle.block95:                                   ; preds = %vector.body86
  %cmp.n96 = icmp eq i64 %i.aq, %n.vec85
  br i1 %cmp.n96, label %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26.preheader100

.lr.ph.i.i.i.i.i26.preheader100:                  ; preds = %vector.memcheck76, %.lr.ph.i.i.i.i.i26.preheader, %middle.block95
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.aq, %vector.memcheck76 ], [ %i.aq, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.av, %middle.block95 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %vector.memcheck76 ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ax, %middle.block95 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %vector.memcheck76 ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ay, %middle.block95 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader100, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader100 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader100 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader100 ] ; 2 uses
  %i.bc = load <2 x i64>, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !106
  store <2 x i64> %i.bc, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.bf = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit, !llvm.loop !995

_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26, %middle.block95, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.w, %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.ap, %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !996

_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !137
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bj = phi ptr [ %i.p, %_ZNSt12_Vector_baseISt4pairImmESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairImmES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !139
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairImmES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI18DenseSet_Move_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI18DenseSet_Move_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV18DenseSet_Move_Test, i64 16), ptr %i.a, align 8, !tbaa !46
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI22DenseSet_Iterator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI22DenseSet_Iterator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV22DenseSet_Iterator_Test, i64 16), ptr %i.a, align 8, !tbaa !46
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI27DenseSet_ConstIterator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI27DenseSet_ConstIterator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV27DenseSet_ConstIterator_Test, i64 16), ptr %i.a, align 8, !tbaa !46
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI29DenseSet_ReverseIterator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI29DenseSet_ReverseIterator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV29DenseSet_ReverseIterator_Test, i64 16), ptr %i.a, align 8, !tbaa !46
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI34DenseSet_ConstReverseIterator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI34DenseSet_ConstReverseIterator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV34DenseSet_ConstReverseIterator_Test, i64 16), ptr %i.a, align 8, !tbaa !46
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
end_hunk_0
