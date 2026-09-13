Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.list?download=true
inline.NumInlined: 1217
inline.NumDeleted: 543
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt6vectorIPKN5vcpkg15StatusParagraphESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag:bb.a
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !46
  store ptr %i.an, ptr %i.h, align 8, !tbaa !46
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !64
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !66

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !64
  br label %_ZSt22__uninitialized_move_aIPPKN5vcpkg15StatusParagraphES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPKN5vcpkg15StatusParagraphES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !46
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !46
  br label %_ZSt22__uninitialized_move_aIPPKN5vcpkg15StatusParagraphES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

_ZSt22__uninitialized_move_aIPPKN5vcpkg15StatusParagraphES4_SaIS3_EET0_T_S7_S6_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !64
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !66

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN5vcpkg15StatusParagraphES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN5vcpkg15StatusParagraphES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !46
  store ptr %i.ax, ptr %1, align 8, !tbaa !46
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !43    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPKN5vcpkg15StatusParagraphESaIS3_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #23
  unreachable

_ZNKSt6vectorIPKN5vcpkg15StatusParagraphESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPKN5vcpkg15StatusParagraphESaIS3_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #24
  br label %_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPKN5vcpkg15StatusParagraphESaIS3_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPKN5vcpkg15StatusParagraphESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !66

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !46
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !46
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !66

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8, !tbaa !46
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !66

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8, !tbaa !46
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !46
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #22
  br label %_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !43
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPKN5vcpkg15StatusParagraphESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph126

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEET_SL_SL_T0_.exit"
  %i.p = icmp eq i64 %i.ga, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph126, !llvm.loop !290

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa120 = phi i64 [ %i.d, %.lr.ph ], [ %i.jb, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ja, %bb.b ] ; 2 uses
  %storemerge43.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.029.1.i.i, %bb.b ]
  %i.q = add nsw i64 %.lcssa120, -2               ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 3 uses
  %i.s = add nsw i64 %.lcssa120, -1
  %i.t = lshr i64 %i.s, 1                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.y = and i64 %.lcssa, 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.ae = or disjoint i64 %i.q, 1                 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_T0_SM_T1_T2_.exit.i.i.i", %._crit_edge
  %.09.i.i.i = phi i64 [ %i.r, %._crit_edge ], [ %i.cs, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_T0_SM_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %i.aj = icmp slt i64 %.09.i.i.i, %i.t
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit28.i.i.i"
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit28.i.i.i" ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %i.ak = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.al = add i64 %i.ak, 2                        ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.an = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(240) %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(240) %i.aq)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = load i64, ptr %i.u, align 8, !tbaa !41  ; 2 uses
  %i.as = load i64, ptr %i.v, align 8, !tbaa !41  ; 3 uses
  %.sroa.speculated.i.i.i13.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i13.i.i.i, 0
  %.pre.pre.i14.i.i.i = load ptr, ptr %12, align 8, !tbaa !29 ; 3 uses
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i24.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i: ; preds = %bb.d
  %i.au = load ptr, ptr %11, align 8, !tbaa !29
  %i.av = call i32 @memcmp(ptr noundef %i.au, ptr noundef %.pre.pre.i14.i.i.i, i64 noundef %.sroa.speculated.i.i.i13.i.i.i) #21 ; 2 uses
  %.not.i.i.i16.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i16.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i24.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i17.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i24.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i, %bb.d
  %i.aw = sub i64 %i.ar, %i.as
  %spec.select7.i.i.i.i25.i.i.i = call i64 @llvm.smax.i64(i64 %i.aw, i64 -2147483648)
  %.08.i.i.i.i26.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i25.i.i.i, i64 2147483647)
  %.0.i6.i.i.i27.i.i.i = trunc nsw i64 %.08.i.i.i.i26.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i17.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i17.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i24.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i
  %.0.i.i.i18.i.i.i = phi i32 [ %i.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i.i.i ], [ %.0.i6.i.i.i27.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i24.i.i.i ]
  %i.ax = icmp eq ptr %.pre.pre.i14.i.i.i, %i.w
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i23.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i23.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i17.i.i.i
  %i.ay = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i17.i.i.i
  %i.az = load i64, ptr %i.w, align 8, !tbaa !30
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i14.i.i.i, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.bb = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.x
  br i1 %i.bc, label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit28.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i21.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i.i.i
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !30
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #22
  br label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit28.i.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.bg = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.x
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i10.i.i.i: ; preds = %bb.e
  %i.bi = load i64, ptr %i.x, align 8, !tbaa !30
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i9.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i4.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i20.i
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11.i.i.i ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i4.i.i ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i20.i ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i9.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %common.resume

"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit28.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i21.i.i.i
  %i.bk = icmp slt i32 %.0.i.i.i18.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %spec.select.i.i.i.i = select i1 %i.bk, i64 %i.an, i64 %i.al ; 4 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !46
  %i.bo = icmp slt i64 %spec.select.i.i.i.i, %i.t
  br i1 %i.bo, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !291

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit28.i.i.i", %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit28.i.i.i" ] ; 2 uses
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i.i, %i.r
  %or.cond.i.i.i = select i1 %i.z, i1 %i.bp, i1 false
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bq = load ptr, ptr %i.af, align 8, !tbaa !46
  store ptr %i.bq, ptr %i.ag, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.ae, %bb.f ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.br = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_T0_SM_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.j
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.j ], [ %.1.i.i.i.i, %bb.g ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(240) %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(240) %i.ai)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.bv = load i64, ptr %i.ab, align 8, !tbaa !41 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bu) ; 2 uses
  %i.bw = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  %.pre.pre.i.i.i.i = load ptr, ptr %14, align 8, !tbaa !29 ; 3 uses
  br i1 %i.bw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.bx = load ptr, ptr %13, align 8, !tbaa !29
  %i.by = call i32 @memcmp(ptr noundef %i.bx, ptr noundef %.pre.pre.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.bz = sub i64 %i.bu, %i.bv
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ca = icmp eq ptr %.pre.pre.i.i.i.i, %i.ac
  br i1 %i.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i
  %i.cb = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.cb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i
  %i.cc = load i64, ptr %i.ac, align 8, !tbaa !30
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i.i.i.i, i64 noundef %i.cd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ce = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ad
  br i1 %i.cf, label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.cg = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #22
  br label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.cj = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ad
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %common.resume

"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i
  %i.cn = icmp slt i32 %.0.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %i.cn, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_T0_SM_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i.i"
  %i.co = load ptr, ptr %i.bs, align 8, !tbaa !46
  %i.cp = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i.i.i
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !46
  %i.cq = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_T0_SM_T1_T2_.exit.i.i.i", !llvm.loop !292

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_T0_SM_T1_T2_.exit.i.i.i": ; preds = %bb.j, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i.i", %bb.g
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.g ], [ %.010.i.i.i.i.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i.i" ], [ %.0911.i.i.i.i.i, %bb.j ]
  %i.cr = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ai, ptr %i.cr, align 8, !tbaa !46
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.cs = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !293

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_T0_SM_T1_T2_.exit.i.i.i"
  %15 = icmp sgt i64 %.lcssa, 8
  br i1 %15, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_RT0_.exit.i.i"
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_RT0_.exit.i34.i", %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %storemerge43.lcssa, %.lr.ph.i9.i ], [ %i.db, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_RT0_.exit.i34.i" ]
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !46 ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !46
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !46
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.de, %i.a                     ; 3 uses
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = add nsw i64 %i.dg, -1
  %i.di = lshr i64 %i.dh, 1
  %i.dj = icmp sgt i64 %i.dg, 2
  br i1 %i.dj, label %.lr.ph.i.i.i44.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i44.i:                                 ; preds = %bb.k, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit21.i.i"
  %.034.i.i.i45.i = phi i64 [ %spec.select.i.i.i46.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit21.i.i" ], [ 0, %bb.k ] ; 2 uses
  %i.dk = shl i64 %.034.i.i.i45.i, 1              ; 2 uses
  %i.dl = add i64 %i.dk, 2                        ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dl
  %i.dn = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dn
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !46
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(240) %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(240) %i.dq)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i44.i
  %i.dr = load i64, ptr %i.ct, align 8, !tbaa !41 ; 2 uses
  %i.ds = load i64, ptr %i.cu, align 8, !tbaa !41 ; 3 uses
  %.sroa.speculated.i.i.i6.i.i = call i64 @llvm.umin.i64(i64 %i.ds, i64 %i.dr) ; 2 uses
  %i.dt = icmp eq i64 %.sroa.speculated.i.i.i6.i.i, 0
  %.pre.pre.i7.i.i = load ptr, ptr %8, align 8, !tbaa !29 ; 3 uses
  br i1 %i.dt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i17.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8.i.i: ; preds = %bb.l
  %i.du = load ptr, ptr %7, align 8, !tbaa !29
  %i.dv = call i32 @memcmp(ptr noundef %i.du, ptr noundef %.pre.pre.i7.i.i, i64 noundef %.sroa.speculated.i.i.i6.i.i) #21 ; 2 uses
  %.not.i.i.i9.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.i9.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i17.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i10.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i17.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8.i.i, %bb.l
  %i.dw = sub i64 %i.dr, %i.ds
  %spec.select7.i.i.i.i18.i.i = call i64 @llvm.smax.i64(i64 %i.dw, i64 -2147483648)
  %.08.i.i.i.i19.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i18.i.i, i64 2147483647)
  %.0.i6.i.i.i20.i.i = trunc nsw i64 %.08.i.i.i.i19.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i10.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i10.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i17.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8.i.i
  %.0.i.i.i11.i.i = phi i32 [ %i.dv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8.i.i ], [ %.0.i6.i.i.i20.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i17.i.i ]
  %i.dx = icmp eq ptr %.pre.pre.i7.i.i, %i.cv
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i10.i.i
  %i.dy = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dy)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i10.i.i
  %i.dz = load i64, ptr %i.cv, align 8, !tbaa !30
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i7.i.i, i64 noundef %i.ea) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.eb = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cw
  br i1 %i.ec, label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit21.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i14.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13.i.i
  %i.ed = load i64, ptr %i.cw, align 8, !tbaa !30
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #22
  br label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit21.i.i"

bb.m:                                             ; preds = %.lr.ph.i.i.i44.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.eg = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cw
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i4.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i3.i.i: ; preds = %bb.m
  %i.ei = load i64, ptr %i.cw, align 8, !tbaa !30
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i4.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i4.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit21.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i13.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i14.i.i
  %i.ek = icmp slt i32 %.0.i.i.i11.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %spec.select.i.i.i46.i = select i1 %i.ek, i64 %i.dn, i64 %i.dl ; 4 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i46.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !46
  %i.en = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i45.i
  store ptr %i.em, ptr %i.en, align 8, !tbaa !46
  %i.eo = icmp slt i64 %spec.select.i.i.i46.i, %i.di
  br i1 %i.eo, label %.lr.ph.i.i.i44.i, label %._crit_edge.i.i.i10.i, !llvm.loop !291

._crit_edge.i.i.i10.i:                            ; preds = %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit21.i.i", %bb.k
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %bb.k ], [ %spec.select.i.i.i46.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit21.i.i" ] ; 5 uses
  %i.ep = and i64 %i.df, 8
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.er = add nsw i64 %i.dg, -2
  %i.es = ashr exact i64 %i.er, 1
  %i.et = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.es
  br i1 %i.et, label %.thread.i.i43.i, label %bb.o

.thread.i.i43.i:                                  ; preds = %bb.n
  %i.eu = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.ev = or disjoint i64 %i.eu, 1                ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !46
  br label %.lr.ph.i.i.i.i15.i.preheader

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_RT0_.exit.i34.i", label %.lr.ph.i.i.i.i15.i.preheader

.lr.ph.i.i.i.i15.i.preheader:                     ; preds = %bb.o, %.thread.i.i43.i
  %.010.i.i.i.i16.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.o ], [ %i.ev, %.thread.i.i43.i ]
  br label %.lr.ph.i.i.i.i15.i

.lr.ph.i.i.i.i15.i:                               ; preds = %.lr.ph.i.i.i.i15.i.preheader, %bb.r
  %.010.i.i.i.i16.i = phi i64 [ %.0911.i.i56.i.i18.i, %bb.r ], [ %.010.i.i.i.i16.i.ph, %.lr.ph.i.i.i.i15.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i17.i = add nsw i64 %.010.i.i.i.i16.i, -1
  %.0911.i.i56.i.i18.i = lshr i64 %.0911.in.i.i.i.i17.i, 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0911.i.i56.i.i18.i ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(240) %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(240) %i.dc)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i.i15.i
  %i.fb = load i64, ptr %i.cx, align 8, !tbaa !41 ; 2 uses
  %i.fc = load i64, ptr %i.cy, align 8, !tbaa !41 ; 3 uses
  %.sroa.speculated.i.i.i.i24.i = call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.fb) ; 2 uses
  %i.fd = icmp eq i64 %.sroa.speculated.i.i.i.i24.i, 0
  %.pre.pre.i.i25.i = load ptr, ptr %10, align 8, !tbaa !29 ; 3 uses
  br i1 %i.fd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i39.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26.i: ; preds = %bb.p
  %i.fe = load ptr, ptr %9, align 8, !tbaa !29
  %i.ff = call i32 @memcmp(ptr noundef %i.fe, ptr noundef %.pre.pre.i.i25.i, i64 noundef %.sroa.speculated.i.i.i.i24.i) #21 ; 2 uses
  %.not.i.i.i.i27.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i.i.i27.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i39.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i28.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i39.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26.i, %bb.p
  %i.fg = sub i64 %i.fb, %i.fc
  %spec.select7.i.i.i.i.i40.i = call i64 @llvm.smax.i64(i64 %i.fg, i64 -2147483648)
  %.08.i.i.i.i.i41.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i40.i, i64 2147483647)
  %.0.i6.i.i.i.i42.i = trunc nsw i64 %.08.i.i.i.i.i41.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i28.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i28.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i39.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26.i
  %.0.i.i.i.i29.i = phi i32 [ %i.ff, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i26.i ], [ %.0.i6.i.i.i.i42.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i39.i ]
  %i.fh = icmp eq ptr %.pre.pre.i.i25.i, %i.cz
  br i1 %i.fh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i38.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i28.i
  %i.fi = icmp ult i64 %i.fc, 16
  call void @llvm.assume(i1 %i.fi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i28.i
  %i.fj = load i64, ptr %i.cz, align 8, !tbaa !30
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i.i25.i, i64 noundef %i.fk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i31.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i31.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.fl = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.da
  br i1 %i.fm, label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i33.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i32.i
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_T0_T1_":bb.a
  store ptr %i.gz, ptr %i.gc, align 8, !tbaa !46
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.v, %bb.t
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.aj
  %.sroa.029.0.i.i = phi ptr [ %i.iy, %bb.aj ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.aj ], [ %storemerge43125, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.029.1.i.i = phi ptr [ %.sroa.029.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.hy, %bb.af ] ; 10 uses
  %i.hc = load ptr, ptr %.sroa.029.1.i.i, align 8, !tbaa !46
  %i.hd = load ptr, ptr %0, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(240) %i.hc)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(240) %i.hd)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.he = load i64, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  %i.hf = load i64, ptr %i.h, align 8, !tbaa !41  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hf, i64 %i.he) ; 2 uses
  %i.hg = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  %.pre.pre.i.i.i = load ptr, ptr %6, align 8, !tbaa !29 ; 3 uses
  br i1 %i.hg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.hh = load ptr, ptr %5, align 8, !tbaa !29
  %i.hi = call i32 @memcmp(ptr noundef %i.hh, ptr noundef %.pre.pre.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ad
  %i.hj = sub i64 %i.he, %i.hf
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hj, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.hi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.hk = icmp eq ptr %.pre.pre.i.i.i, %i.i
  br i1 %i.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i
  %i.hl = icmp ult i64 %i.hf, 16
  call void @llvm.assume(i1 %i.hl)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i
  %i.hm = load i64, ptr %i.i, align 8, !tbaa !30
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i.i.i, i64 noundef %i.hn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ho = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.j
  br i1 %i.hp, label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.hq = load i64, ptr %i.j, align 8, !tbaa !30
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #22
  br label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i"

bb.ae:                                            ; preds = %bb.ac
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ht = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.j
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.ae
  %i.hv = load i64, ptr %i.j, align 8, !tbaa !30
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i
  %i.hx = icmp slt i32 %.0.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.hx, label %bb.af, label %.preheader.i.i

bb.af:                                            ; preds = %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i"
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i, i64 8
  br label %bb.ac, !llvm.loop !295

.preheader.i.i:                                   ; preds = %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i", %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit26.i.i"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit26.i.i" ], [ %.sroa.0.0.i.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit.i.i" ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.hz = load ptr, ptr %0, align 8, !tbaa !46
  %i.ia = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(240) %i.hz)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(240) %i.ia)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.preheader.i.i
  %i.ib = load i64, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.ic = load i64, ptr %i.l, align 8, !tbaa !41  ; 3 uses
  %.sroa.speculated.i.i.i11.i.i = call i64 @llvm.umin.i64(i64 %i.ic, i64 %i.ib) ; 2 uses
  %i.id = icmp eq i64 %.sroa.speculated.i.i.i11.i.i, 0
  %.pre.pre.i12.i.i = load ptr, ptr %4, align 8, !tbaa !29 ; 3 uses
  br i1 %i.id, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i22.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13.i.i: ; preds = %bb.ag
  %i.ie = load ptr, ptr %3, align 8, !tbaa !29
  %i.if = call i32 @memcmp(ptr noundef %i.ie, ptr noundef %.pre.pre.i12.i.i, i64 noundef %.sroa.speculated.i.i.i11.i.i) #21 ; 2 uses
  %.not.i.i.i14.i.i = icmp eq i32 %i.if, 0
  br i1 %.not.i.i.i14.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i22.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i15.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i22.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13.i.i, %bb.ag
  %i.ig = sub i64 %i.ib, %i.ic
  %spec.select7.i.i.i.i23.i.i = call i64 @llvm.smax.i64(i64 %i.ig, i64 -2147483648)
  %.08.i.i.i.i24.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i23.i.i, i64 2147483647)
  %.0.i6.i.i.i25.i.i = trunc nsw i64 %.08.i.i.i.i24.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i15.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i15.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i22.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13.i.i
  %.0.i.i.i16.i.i = phi i32 [ %i.if, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13.i.i ], [ %.0.i6.i.i.i25.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i22.i.i ]
  %i.ih = icmp eq ptr %.pre.pre.i12.i.i, %i.m
  br i1 %i.ih, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i21.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i21.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i15.i.i
  %i.ii = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.ii)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i15.i.i
  %i.ij = load i64, ptr %i.m, align 8, !tbaa !30
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i12.i.i, i64 noundef %i.ik) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i18.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i18.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.il = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.n
  br i1 %i.im, label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit26.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i19.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i19.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i18.i.i
  %i.in = load i64, ptr %i.n, align 8, !tbaa !30
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #22
  br label %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit26.i.i"

bb.ah:                                            ; preds = %.preheader.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.iq = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.n
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i8.i.i: ; preds = %bb.ah
  %i.is = load i64, ptr %i.n, align 8, !tbaa !30
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i9.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit26.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i18.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i19.i.i
  %i.iu = icmp slt i32 %.0.i.i.i16.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.iu, label %.preheader.i.i, label %bb.ai, !llvm.loop !296

bb.ai:                                            ; preds = %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit26.i.i"
  %i.iv = icmp ult ptr %.sroa.029.1.i.i, %.sroa.0.1.i.i
  br i1 %i.iv, label %bb.aj, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEET_SL_SL_T0_.exit"

bb.aj:                                            ; preds = %bb.ai
  %i.iw = load ptr, ptr %.sroa.029.1.i.i, align 8, !tbaa !46
  %i.ix = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !46
  store ptr %i.ix, ptr %.sroa.029.1.i.i, align 8, !tbaa !46
  store ptr %i.iw, ptr %.sroa.0.1.i.i, align 8, !tbaa !46
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i, i64 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !297

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEET_SL_SL_T0_.exit": ; preds = %bb.ai
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.029.1.i.i, ptr %storemerge43125, i64 noundef %i.ga)
  %i.iz = ptrtoint ptr %.sroa.029.1.i.i to i64
  %i.ja = sub i64 %i.iz, %i.a                     ; 2 uses
  %i.jb = ashr exact i64 %i.ja, 3                 ; 3 uses
  %i.jc = icmp sgt i64 %i.jb, 16
  br i1 %i.jc, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_T0_.exit", !llvm.loop !290

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_SL_RT0_.exit.i34.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_RT0_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_"(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(240) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(240) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i, 0
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !29 ; 3 uses
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !29
  %i.g = call i32 @memcmp(ptr noundef %i.f, ptr noundef %.pre.pre, i64 noundef %.sroa.speculated.i.i) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  %i.h = sub i64 %i.b, %i.d
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.h, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %.pre.pre, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.k = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.l = load i64, ptr %i.i, align 8, !tbaa !30
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.n = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.s = icmp slt i32 %.0.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %i.s

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.u = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !30
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.t
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21command_list_and_exitERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsEE3$_2EEEvT_SL_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.0.017, %1
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %.sroa.0.020 = phi ptr [ %.sroa.0.017, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 7 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.020, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.0.020, align 8, !tbaa !46
  %i.h = load ptr, ptr %0, align 8, !tbaa !46
  %i.i = call fastcc noundef zeroext i1 @"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_"(ptr noundef %i.g, ptr noundef %i.h)
  %i.j = load ptr, ptr %.sroa.0.020, align 8, !tbaa !46 ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %.sroa.0.020 to i64
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19, i64 16
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 8
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn19, i64 8
  %i.t = load ptr, ptr %0, align 8, !tbaa !46
  store ptr %i.t, ptr %i.s, align 8, !tbaa !46
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.g:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %.pn19, align 8, !tbaa !46
  %i.v = call fastcc noundef zeroext i1 @"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_"(ptr noundef nonnull %i.j, ptr noundef %i.u)
  br i1 %i.v, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15StatusParagraphESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i:                                         ; preds = %bb.g, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit"
  %.sroa.0.08.i = phi ptr [ %.sroa.0.0.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit" ], [ %.pn19, %bb.g ] ; 4 uses
  %.sroa.03.07.i = phi ptr [ %.sroa.0.08.i, %"_ZZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEENK3$_2clEPKNS_15StatusParagraphES9_.exit" ], [ %.sroa.0.020, %bb.g ]
  %i.w = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !46
  store ptr %i.w, ptr %.sroa.03.07.i, align 8, !tbaa !46
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.x = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(240) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNK5vcpkg15BinaryParagraph12display_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(240) %i.x)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i, 0
  %.pre.pre.i = load ptr, ptr %3, align 8, !tbaa !29 ; 3 uses
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.h
  %i.ab = load ptr, ptr %2, align 8, !tbaa !29
  %i.ac = call i32 @memcmp(ptr noundef %i.ab, ptr noundef %.pre.pre.i, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.h
  %i.ad = sub i64 %i.y, %i.z
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.ae = icmp eq ptr %.pre.pre.i, %i.d
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.af = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !30
end_hunk_1
