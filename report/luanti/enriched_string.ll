Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/enriched_string?download=true
inline.NumInlined: 573
inline.NumDeleted: 237
begin_hunk_0_@_ZN14EnrichedString5clearEv:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !27
  store i32 0, ptr %i.b, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5video6SColorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5video6SColorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !31
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5video6SColorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.i, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.j, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14EnrichedStringC2ESt17basic_string_viewIwSt11char_traitsIwEERKSt6vectorIN5video6SColorESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i8 0, i64 25, i1 false)
  store i32 -1, ptr %i.d, align 4, !tbaa !25
  store i32 0, ptr %i.e, align 8, !tbaa !25
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSISt17basic_string_viewIwS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKwEEEE5valueERS4_E4typeESC_.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSISt17basic_string_viewIwS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKwEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSISt17basic_string_viewIwS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKwEEEE5valueERS4_E4typeESC_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSISt17basic_string_viewIwS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKwEEEE5valueERS4_E4typeESC_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !34
  %i.s = shl i64 %i.r, 2
  %i.t = add i64 %i.s, 4
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = load ptr, ptr %0, align 8, !tbaa !30     ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !25
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #20
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !33
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 4
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 4
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.c, align 4, !tbaa !25
  store i32 %i.af, ptr %i.i, align 4, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 4
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !30
  %.pre25 = load ptr, ptr %i.z, align 8, !tbaa !31 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !30  ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !31
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 4
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !25
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !25
  br label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.ac, %bb.m ], [ 4, %bb.n ] ; 3 uses
  %i.aj = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 3 uses
  %i.ak = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 3 uses
  %i.al = phi ptr [ %.pre25, %bb.l ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ] ; 5 uses
  %i.am = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ] ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = ptrtoaddr ptr %i.am to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.pre-phi33 ; 5 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit
  %i.aq = ptrtoaddr ptr %i.aj to i64
  %i.ar = add i64 %i.aq, -4
  %i.as = add i64 %.pre-phi33, %i.ao
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aw = add nuw i64 %.pre-phi33, %i.ao
  %i.ax = sub i64 %i.aw, %i.an
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.al, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ap, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bb ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep41, align 4, !tbaa !25
  %wide.load42 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !25
  store <4 x i32> %wide.load42, ptr %i.bd, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %i.bf = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !25
  store i32 %i.bf, ptr %.011.i.i.i.i, align 4, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bi = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.ak, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ak, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14EnrichedStringC2ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i8 0, i64 25, i1 false)
  store i32 -1, ptr %i.d, align 4, !tbaa !25
  store i32 0, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %.sroa.0.0.copyload = load i32, ptr %3, align 4, !tbaa !25
  invoke void @_ZN14EnrichedString8addAtEndESt17basic_string_viewIwSt11char_traitsIwEEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.i, ptr %i.g, i32 %.sroa.0.0.copyload)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !34
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !34
  %i.v = shl i64 %i.u, 2
  %i.w = add i64 %i.v, 4
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i12 ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #20
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit14, %bb.f
  %i.ad = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.af = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ag = shl i64 %i.af, 2
  %i.ah = add i64 %i.ag, 4
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit18: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14EnrichedString8addAtEndESt17basic_string_viewIwSt11char_traitsIwEEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2, i32 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.video::SColor", align 4     ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string.8", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string.8", align 8 ; 8 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 %3, ptr %5, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %3
  %narrow = select i1 %i.f, i1 %i.i, i1 false
  %i.j = zext i1 %narrow to i8                    ; 2 uses
  %i.k = add i64 %i.e, %1
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %i.t = add i64 %i.s, %1                         ; 4 uses
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.q
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #22 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !13
  %i.t = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.v, ptr %i.a, align 8, !tbaa !45
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !27
  %i.y = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  store i64 %i.y, ptr %i.s, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi i64 [ %i.y, %.noexc ], [ %i.v, %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !29
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = call ptr @wmemcpy(ptr noundef %i.aa, ptr noundef %i.t, i64 noundef %i.v) #23 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !45
  %.pre7.i.i = load ptr, ptr %i.r, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ad = phi ptr [ %i.aa, %._crit_edge.i.i ], [ %i.aa, %bb.c ], [ %.pre7.i.i, %bb.d ]
  %i.ae = phi i64 [ %i.z, %._crit_edge.i.i ], [ %i.z, %bb.c ], [ %.pre6.i.i, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 0, ptr %i.ag, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !108, !noalias !109
  %i.ai = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !109, !noalias !108 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26, !alias.scope !109, !noalias !108 ; 2 uses
  %i.an = icmp ult i64 %i.am, 4
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  %i.ap = call ptr @wmemcpy(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.aj, i64 noundef %i.ao) #23 ; 0 uses
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !108, !noalias !109
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !34, !alias.scope !109, !noalias !108
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !34, !alias.scope !108, !noalias !109
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26, !alias.scope !109, !noalias !108
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !26, !alias.scope !108, !noalias !109
  store ptr %i.aj, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !109, !noalias !108
  store i64 0, ptr %i.ar, align 8, !tbaa !26, !alias.scope !109, !noalias !108
  store i32 0, ptr %i.aj, align 8, !tbaa !29, !alias.scope !109, !noalias !108
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !104

_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31
  %.012.i.i.i28 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %i.aw, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i28, align 8, !tbaa !13, !alias.scope !110, !noalias !111
  %i.ay = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !111, !noalias !110 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26, !alias.scope !111, !noalias !110 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 4
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  %i.bf = call ptr @wmemcpy(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.az, i64 noundef %i.be) #23 ; 0 uses
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ay, ptr %.012.i.i.i28, align 8, !tbaa !27, !alias.scope !110, !noalias !111
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !34, !alias.scope !111, !noalias !110
  store i64 %i.bg, ptr %i.ax, align 8, !tbaa !34, !alias.scope !110, !noalias !111
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26, !alias.scope !111, !noalias !110
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !26, !alias.scope !110, !noalias !111
  store ptr %i.az, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !111, !noalias !110
  store i64 0, ptr %i.bh, align 8, !tbaa !26, !alias.scope !111, !noalias !110
  store i32 0, ptr %i.az, align 8, !tbaa !29, !alias.scope !111, !noalias !110
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bk, %i.c
  br i1 %.not.i.i.i32, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34, label %.lr.ph.i.i.i27, !llvm.loop !104

_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aw, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bl, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.d, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !44
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bp) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !42
  store ptr %.0.lcssa.i.i.i33, ptr %i.b, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !44
  ret void

bb.i:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  %i.bu = call ptr @__cxa_begin_catch(ptr %i.bt) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #20
  invoke void @__cxa_rethrow() #21
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.br

bb.l:                                             ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5video6SColorESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 18 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 6 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.k, %i.m                       ; 5 uses
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %i.r = add i64 %i.b, -4
  %i.s = sub i64 %i.r, %i.c                       ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.s, 28
  %diff.check139 = icmp ult i64 %i.d, 32
  %or.cond = or i1 %min.iters.check141, %diff.check139
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.d
  %n.vec143 = and i64 %i.u, 9223372036854775800   ; 3 uses
  %i.v = shl i64 %n.vec143, 2                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.q, i64 %i.v
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body144 ] ; 2 uses
  %i.y = shl i64 %index145, 2                     ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.i, i64 %i.y ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load148 = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !25
  %wide.load149 = load <4 x i32>, ptr %i.z, align 4, !tbaa !25
  %i.aa = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %wide.load148, ptr %next.gep146, align 4, !tbaa !25
  store <4 x i32> %wide.load149, ptr %i.aa, align 4, !tbaa !25
  %index.next150 = add nuw i64 %index145, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next150, %n.vec143
  br i1 %i.ab, label %middle.block151, label %vector.body144, !llvm.loop !112

middle.block151:                                  ; preds = %vector.body144
  %cmp.n152 = icmp eq i64 %i.u, %n.vec143
  br i1 %cmp.n152, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block151
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.w, %middle.block151 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.x, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !25
  store i32 %i.ac, ptr %.013.i.i.i.i.i, align 4, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !113

_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block151
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.af, ptr %i.h, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.q to i64
  %i.ah = sub i64 %i.ag, %i.m                     ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.am = icmp eq i64 %i.ah, 4
  br i1 %i.am, label %bb.g, label %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.ao = load i32, ptr %1, align 4, !tbaa !25
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !25
  br label %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ap = icmp sgt i64 %i.d, 4
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN5video6SColorES2_ET0_T_S4_S3_.exit
  %i.aq = icmp eq i64 %i.d, 4
  br i1 %i.aq, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %2, align 4, !tbaa !25
  store i32 %i.ar, ptr %1, align 4, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.as, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.at = add i64 %i.b, %i.m
  %i.au = add i64 %i.at, -4
  %i.av = add i64 %i.k, %i.c
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 44
  %i.az = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond206 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond206, label %.lr.ph.i.i.i.i.preheader215, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bd ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.as, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !25
  %wide.load119 = load <4 x i32>, ptr %i.be, align 4, !tbaa !25
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !25
  store <4 x i32> %wide.load119, ptr %i.bf, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader215

.lr.ph.i.i.i.i.preheader215:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader215, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader215 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader215 ] ; 2 uses
  %i.bh = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !25
  store i32 %i.bh, ptr %.09.i.i.i.i, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bi, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !115

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bk = sub nuw nsw i64 %i.e, %i.o
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk ; 3 uses
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bm = add i64 %i.k, -4
  %i.bn = sub i64 %i.bm, %i.m                     ; 2 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check124 = icmp ult i64 %i.bn, 76
  %diff.check122 = icmp ult i64 %i.d, 32
  %or.cond207 = or i1 %min.iters.check124, %diff.check122
  br i1 %or.cond207, label %.lr.ph.i.i.i.i.i52.preheader214, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %n.vec126 = and i64 %i.bp, 9223372036854775800  ; 3 uses
  %i.bq = shl i64 %n.vec126, 2                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.bt = shl i64 %index128, 2                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.bl, i64 %i.bt ; 2 uses
  %next.gep130 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <4 x i32>, ptr %next.gep130, align 4, !tbaa !25
  %wide.load132 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !25
  %i.bv = getelementptr i8, ptr %next.gep129, i64 16
  store <4 x i32> %wide.load131, ptr %next.gep129, align 4, !tbaa !25
  store <4 x i32> %wide.load132, ptr %i.bv, align 4, !tbaa !25
  %index.next133 = add nuw i64 %index128, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.bw, label %middle.block134, label %vector.body127, !llvm.loop !116

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.bp, %n.vec126
  br i1 %cmp.n135, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader214

.lr.ph.i.i.i.i.i52.preheader214:                  ; preds = %.lr.ph.i.i.i.i.i52.preheader, %middle.block134
  %.013.i.i.i.i.i53.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.br, %middle.block134 ]
  %.sroa.08.012.i.i.i.i.i54.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bs, %middle.block134 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader214, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i52 ], [ %.013.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i52.preheader214 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.08.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i52.preheader214 ] ; 2 uses
  %i.bx = load i32, ptr %.sroa.08.012.i.i.i.i.i54, align 4, !tbaa !25
  store i32 %i.bx, ptr %.013.i.i.i.i.i53, align 4, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 4
  %.not.i.i.i.i.i55 = icmp eq ptr %i.by, %i.i
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57, label %.lr.ph.i.i.i.i.i52, !llvm.loop !117

_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57: ; preds = %.lr.ph.i.i.i.i.i52, %middle.block134, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !31
  %i.cb = icmp sgt i64 %i.n, 4
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !36

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit57
  %i.cc = icmp eq i64 %i.n, 4
  br i1 %i.cc, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = load i32, ptr %2, align 4, !tbaa !25
  store i32 %i.cd, ptr %1, align 4, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.b
  %i.ce = load ptr, ptr %0, align 8, !tbaa !30    ; 7 uses
  %i.cf = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.cg = sub i64 %i.k, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2                 ; 4 uses
  %i.ci = sub nsw i64 2305843009213693951, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.e
  br i1 %i.cj, label %bb.o, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.e)
  %i.ck = add nsw i64 %.sroa.speculated.i, %i.ch  ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.ch
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 2305843009213693951)
  %i.cn = select i1 %i.cl, i64 2305843009213693951, i64 %i.cm ; 3 uses
  %.not.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #22
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cq = phi ptr [ %i.cp, %bb.p ], [ null, %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.ce, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit
  %4 = ptrtoaddr ptr %1 to i64
  %i.cr = add i64 %4, -4
  %i.cs = sub i64 %i.cr, %i.cf                    ; 2 uses
  %i.ct = lshr i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.cs, 28
  br i1 %min.iters.check156, label %.lr.ph.i.i.i.i.i60.preheader212, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec158 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cv = shl i64 %n.vec158, 2                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ce, i64 %i.cv
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 2 uses
  %i.cy = shl i64 %index160, 2                    ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.cq, i64 %i.cy ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.ce, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load163 = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !25
  %wide.load164 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !25
  %i.da = getelementptr i8, ptr %next.gep161, i64 16
  store <4 x i32> %wide.load163, ptr %next.gep161, align 4, !tbaa !25
  store <4 x i32> %wide.load164, ptr %i.da, align 4, !tbaa !25
  %index.next165 = add nuw i64 %index160, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.db, label %middle.block166, label %vector.body159, !llvm.loop !118

middle.block166:                                  ; preds = %vector.body159
  %cmp.n167 = icmp eq i64 %i.cu, %n.vec158
  br i1 %cmp.n167, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader212

.lr.ph.i.i.i.i.i60.preheader212:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block166
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cw, %middle.block166 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cx, %middle.block166 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader212, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader212 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader212 ] ; 2 uses
  %i.dc = load i32, ptr %.sroa.08.012.i.i.i.i.i62, align 4, !tbaa !25
  store i32 %i.dc, ptr %.013.i.i.i.i.i61, align 4, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 4 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.dd, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !119

_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block166, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cq, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE11_M_allocateEm.exit ], [ %i.cw, %middle.block166 ], [ %i.de, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %i.df = add i64 %i.b, -4
  %i.dg = sub i64 %i.df, %i.c                     ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.dg, 44
  %.0.lcssa.i.i.i.i.i64171 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.dj = sub i64 %i.c, %.0.lcssa.i.i.i.i.i64171
  %diff.check172 = icmp ugt i64 %i.dj, -32
  %or.cond208 = select i1 %min.iters.check174, i1 true, i1 %diff.check172
  br i1 %or.cond208, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %n.vec176 = and i64 %i.di, 9223372036854775800  ; 3 uses
  %i.dk = shl i64 %n.vec176, 2                    ; 2 uses
  %i.dl = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %2, i64 %i.dk
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body177 ] ; 2 uses
  %i.dn = shl i64 %index178, 2                    ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dn ; 2 uses
  %next.gep180 = getelementptr i8, ptr %2, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep180, i64 16
  %wide.load181 = load <4 x i32>, ptr %next.gep180, align 4, !tbaa !25
  %wide.load182 = load <4 x i32>, ptr %i.do, align 4, !tbaa !25
  %i.dp = getelementptr i8, ptr %next.gep179, i64 16
  store <4 x i32> %wide.load181, ptr %next.gep179, align 4, !tbaa !25
  store <4 x i32> %wide.load182, ptr %i.dp, align 4, !tbaa !25
  %index.next183 = add nuw i64 %index178, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next183, %n.vec176
  br i1 %i.dq, label %middle.block184, label %vector.body177, !llvm.loop !120

middle.block184:                                  ; preds = %vector.body177
  %cmp.n185 = icmp eq i64 %i.di, %n.vec176
  br i1 %cmp.n185, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block184
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.dl, %middle.block184 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.dm, %middle.block184 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.dr = load i32, ptr %.sroa.04.08.i.i.i.i68, align 4, !tbaa !25
  store i32 %i.dr, ptr %.09.i.i.i.i67, align 4, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 4 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.ds, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !121

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block184
  %.lcssa116 = phi ptr [ %i.dl, %middle.block184 ], [ %i.dt, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71
  %.lcssa116189 = ptrtoaddr ptr %.lcssa116 to i64
  %i.du = add i64 %i.k, -4
  %i.dv = sub i64 %i.du, %i.a                     ; 2 uses
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.dv, 44
  %i.dy = sub i64 %i.a, %.lcssa116189
  %diff.check190 = icmp ugt i64 %i.dy, -32
  %or.cond209 = select i1 %min.iters.check192, i1 true, i1 %diff.check190
  br i1 %or.cond209, label %.lr.ph.i.i.i.i.i73.preheader210, label %vector.ph193

vector.ph193:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec194 = and i64 %i.dx, 9223372036854775800  ; 3 uses
  %i.dz = shl i64 %n.vec194, 2                    ; 2 uses
  %i.ea = getelementptr i8, ptr %.lcssa116, i64 %i.dz ; 2 uses
  %i.eb = getelementptr i8, ptr %1, i64 %i.dz
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ec = shl i64 %index196, 2                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %.lcssa116, i64 %i.ec ; 2 uses
  %next.gep198 = getelementptr i8, ptr %1, i64 %i.ec ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <4 x i32>, ptr %next.gep198, align 4, !tbaa !25
  %wide.load200 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !25
  %i.ee = getelementptr i8, ptr %next.gep197, i64 16
  store <4 x i32> %wide.load199, ptr %next.gep197, align 4, !tbaa !25
  store <4 x i32> %wide.load200, ptr %i.ee, align 4, !tbaa !25
  %index.next201 = add nuw i64 %index196, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.ef, label %middle.block202, label %vector.body195, !llvm.loop !122

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.dx, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader210

.lr.ph.i.i.i.i.i73.preheader210:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block202
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa116, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ea, %middle.block202 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.eb, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader210, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader210 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader210 ] ; 2 uses
  %i.eg = load i32, ptr %.sroa.08.012.i.i.i.i.i75, align 4, !tbaa !25
  store i32 %i.eg, ptr %.013.i.i.i.i.i74, align 4, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 4 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eh, %i.i
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !123

_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block202, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa116, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit71 ], [ %i.ea, %middle.block202 ], [ %i.ei, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.ce, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78
  %i.ej = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.el) #20
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video6SColorES2_SaIS1_EET0_T_S5_S4_RT1_.exit78, %bb.q
  store ptr %i.cq, ptr %0, align 8, !tbaa !30
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.h, align 8, !tbaa !31
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cn
  store ptr %i.em, ptr %i.f, align 8, !tbaa !33
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
