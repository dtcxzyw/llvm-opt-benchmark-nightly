inline.NumInlined: 3182
inline.NumDeleted: 940
begin_hunk_0_@_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEC2ERKS4_:bb.a
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #40
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !128
  %i.n = load ptr, ptr %1, align 8, !tbaa !744    ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !744  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.d ] ; 6 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.d ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %.09.i.i.i.i, align 8, !tbaa !747
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !749
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.s, i8 0, i64 7, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i = load i64, ptr %i.t, align 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !750  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 36
  %i.x = load i8, ptr %i.w, align 4, !tbaa !752
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 38
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !753, !range !85, !noundef !86
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %i.ad, ptr %i.ac
  %i.af = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %i.ah = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 8
  %i.ai = and i64 %i.ah, 255
  %i.aj = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.t) #34
  %i.ak = mul i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.ak to i32
  %i.am = mul i32 %narrow.i.i.i.i.i.i.i.i.i, %i.v
  %i.an = mul i32 %i.am, %i.al
  %i.ao = sext i32 %i.an to i64
  store ptr %i.ae, ptr %2, align 8
  store i64 %i.ao, ptr %i.p, align 8
  tail call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %.09.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i32 noundef %i.v, i32 noundef %i.y, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span") align 8 %2, i8 1, i8 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %bb.d, !llvm.loop !755

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.aq, %bb.d ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !9       ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !734

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !9
  store i8 %i.q, ptr %i.d, align 1, !tbaa !9
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !106
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !734

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !9
  store i8 %i.z, ptr %i.y, align 1, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !106
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !734

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !9
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !9
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !106
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !81    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #39
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %6, label %4

4:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #40
  br label %6

6:                                                ; preds = %4, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %7 = phi ptr [ %5, %4 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %8 = getelementptr inbounds i8, ptr %7, i64 %i.as ; 2 uses
  %9 = load i8, ptr %3, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr align 1 %8, i8 %9, i64 %2, i1 false)
  %10 = icmp sgt i64 %i.as, 1
  br i1 %10, label %bb.t, label %bb.u, !prof !734

bb.t:                                             ; preds = %6
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %7, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %6
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %i.ai, align 1, !tbaa !9
  store i8 %i.au, ptr %7, align 1, !tbaa !9
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 %2 ; 3 uses
  %i.aw = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.w, label %bb.x, !prof !734

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %1, i64 %i.aw, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.az = load i8, ptr %1, align 1, !tbaa !9
  store i8 %i.az, ptr %i.av, align 1, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bb) #36
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.z, %bb.aa
  store ptr %7, ptr %0, align 8, !tbaa !81
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !106
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 %i.aq
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !82
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z16GifWriteLzwImageIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPT_PhjjjjjP10GifPalette(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %i.y = alloca i8, align 1                       ; 4 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %8 = alloca %struct.GifBitStatus, align 4       ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #34
  store i8 33, ptr %i.aa, align 1, !tbaa !9
  %i.ab = load ptr, ptr %0, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.aa, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #34
  store i8 -7, ptr %i.z, align 1, !tbaa !9
  %i.af = load ptr, ptr %0, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.z, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #34
  store i8 4, ptr %i.y, align 1, !tbaa !9
  %i.aj = load ptr, ptr %0, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.y, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #34
  store i8 5, ptr %i.x, align 1, !tbaa !9
  %i.an = load ptr, ptr %0, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.x, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #34
  %i.ar = trunc i32 %6 to i8
  store i8 %i.ar, ptr %i.w, align 1, !tbaa !9
  %i.as = load ptr, ptr %0, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.w, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #34
  %i.aw = lshr i32 %6, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #34
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.v, align 1, !tbaa !9
  %i.ay = load ptr, ptr %0, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.v, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #34
  store i8 0, ptr %i.u, align 1, !tbaa !9
  %i.bc = load ptr, ptr %0, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.u, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #34
  store i8 0, ptr %i.t, align 1, !tbaa !9
  %i.bg = load ptr, ptr %0, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.t, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #34
  store i8 44, ptr %i.s, align 1, !tbaa !9
  %i.bk = load ptr, ptr %0, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.s, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #34
  %i.bo = trunc i32 %2 to i8
  store i8 %i.bo, ptr %i.r, align 1, !tbaa !9
  %i.bp = load ptr, ptr %0, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.r, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #34
  %i.bt = lshr i32 %2, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #34
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.q, align 1, !tbaa !9
  %i.bv = load ptr, ptr %0, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.q, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #34
  %i.bz = trunc i32 %3 to i8
  store i8 %i.bz, ptr %i.p, align 1, !tbaa !9
  %i.ca = load ptr, ptr %0, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i64 %i.cc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.p, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #34
  %i.ce = lshr i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #34
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.o, align 1, !tbaa !9
  %i.cg = load ptr, ptr %0, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.o, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  %i.ck = trunc i32 %4 to i8
  store i8 %i.ck, ptr %i.n, align 1, !tbaa !9
  %i.cl = load ptr, ptr %0, align 8, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.n, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  %i.cp = lshr i32 %4, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #34
  %i.cq = trunc i32 %i.cp to i8
  store i8 %i.cq, ptr %i.m, align 1, !tbaa !9
  %i.cr = load ptr, ptr %0, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef i64 %i.ct(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.m, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #34
  %i.cv = trunc i32 %5 to i8
  store i8 %i.cv, ptr %i.l, align 1, !tbaa !9
  %i.cw = load ptr, ptr %0, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  %i.da = lshr i32 %5, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %i.k, align 1, !tbaa !9
  %i.dc = load ptr, ptr %0, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  %i.dg = load i32, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.dh = trunc i32 %i.dg to i8
  %i.di = add i8 %i.dh, 127
  store i8 %i.di, ptr %i.j, align 1, !tbaa !9
  %i.dj = load ptr, ptr %0, align 8, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @_Z15GifWritePaletteIN11OpenImageIO4v3_110Filesystem7IOProxyEEvPK10GifPalettePT_(ptr noundef nonnull %7, ptr noundef %0)
  %i.dn = load i32, ptr %7, align 4, !tbaa !7     ; 5 uses
  %i.do = shl nuw i32 1, %i.dn                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.dp = trunc i32 %i.dn to i8
  store i8 %i.dp, ptr %i.i, align 1, !tbaa !9
  %i.dq = load ptr, ptr %0, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef i64 %i.ds(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  %calloc = call dereferenceable_or_null(2097152) ptr @calloc(i64 1, i64 2097152) ; 3 uses
  %i.du = add i32 %i.dn, 1                        ; 5 uses
  %i.dv = add nuw i32 %i.do, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 21 uses
  store i8 0, ptr %i.dw, align 1, !tbaa !28
  store i8 0, ptr %8, align 4, !tbaa !26
end_hunk_0
