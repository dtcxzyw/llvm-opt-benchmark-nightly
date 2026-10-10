Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryStream?download=true
inline.NumInlined: 971
inline.NumDeleted: 553
begin_hunk_0_@_ZNK4LIEF12BinaryStream14peek_u16stringB5cxx11Ev:bb.a
  %i.br = shl i64 %i.bq, 1
  %i.bs = add i64 %i.br, 2
  call void @_ZdlPvm(ptr noundef %.pre.i15.pre, i64 noundef %i.bs) #14
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28.i
  store ptr %i.bm, ptr %2, align 8, !tbaa !43
  store i64 %.0.i12, ptr %i.b, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i5, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i5.thread
  %i.bt = phi ptr [ %i.bm, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm.exit ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i5 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i5.thread ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ax
  store i16 %i.av, ptr %i.bu, align 2, !tbaa !45
  store i64 %i.ay, ptr %i.c, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ay
  store i16 0, ptr %i.bv, align 2, !tbaa !45
  %.not = icmp eq i16 %i.av, 0
  br i1 %.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %1, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %i.ca = icmp ult i64 %i.aw, %i.bz
  br i1 %i.ca, label %bb.e, label %..critedge_crit_edge, !llvm.loop !66

..critedge_crit_edge:                             ; preds = %bb.o
  %.pre34 = load i64, ptr %i.c, align 8, !tbaa !41
  %.pre35 = load ptr, ptr %2, align 8, !tbaa !43
  br label %.critedge, !llvm.loop !66

.critedge:                                        ; preds = %bb.n, %..critedge_crit_edge
  %i.cb = phi ptr [ %.pre35, %..critedge_crit_edge ], [ %i.bt, %bb.n ] ; 4 uses
  %i.cc = phi i64 [ %.pre34, %..critedge_crit_edge ], [ %i.ay, %bb.n ]
  %i.cd = getelementptr [2 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2
  store i16 0, ptr %i.ce, align 2, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !42
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ 0, %.critedge ] ; 8 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !45
  %i.ci = icmp eq i16 %i.ch, 0
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !67

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ck = icmp ugt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ck, label %bb.p, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i.i.i.i.i.i.i.i
  %i.cl = icmp ugt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2305843009213693951
  br i1 %i.cl, label %bb.q, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #13
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cm = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i, 2
  %i.cn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #15 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !43
  store i64 %.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i.i.i.i.i.i.i.i
  %.pre7.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  switch i64 %.0.i.i.i.i.i.i.i.i.i.i.i, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIPKDsTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSD_IXaaaaaasr3std16is_constructibleIS6_SF_EE5valuentsr3std7is_sameINSt5decayISE_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESM_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESM_EE5valueEvE4typeELSJ_0EEESF_.exit
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.co = load i16, ptr %i.cb, align 2, !tbaa !45
  store i16 %i.co, ptr %.pre7.i.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !45
  br label %_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIPKDsTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSD_IXaaaaaasr3std16is_constructibleIS6_SF_EE5valuentsr3std7is_sameINSt5decayISE_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESM_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESM_EE5valueEvE4typeELSJ_0EEESF_.exit

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull align 2 %i.cb, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIPKDsTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSD_IXaaaaaasr3std16is_constructibleIS6_SF_EE5valuentsr3std7is_sameINSt5decayISE_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESM_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESM_EE5valueEvE4typeELSJ_0EEESF_.exit

_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIPKDsTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSD_IXaaaaaasr3std16is_constructibleIS6_SF_EE5valuentsr3std7is_sameINSt5decayISE_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESM_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESM_EE5valueEvE4typeELSJ_0EEESF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  store i16 0, ptr %i.cq, align 2, !tbaa !45
  br label %bb.t

bb.t:                                             ; preds = %_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIPKDsTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSD_IXaaaaaasr3std16is_constructibleIS6_SF_EE5valuentsr3std7is_sameINSt5decayISE_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESM_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESM_EE5valueEvE4typeELSJ_0EEESF_.exit, %_ZNK4LIEF12BinaryStream4peekIDsEENS_6resultIT_EEm.exit.thread, %_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIS6_TnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSB_IXaaaaaasr3std16is_constructibleIS6_SD_EE5valuentsr3std7is_sameINSt5decayISC_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESK_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESK_EE5valueEvE4typeELSH_0EEESD_.exit
  %.sink = phi i8 [ 1, %_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIPKDsTnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSD_IXaaaaaasr3std16is_constructibleIS6_SF_EE5valuentsr3std7is_sameINSt5decayISE_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESM_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESM_EE5valueEvE4typeELSJ_0EEESF_.exit ], [ 0, %_ZNK4LIEF12BinaryStream4peekIDsEENS_6resultIT_EEm.exit.thread ], [ 1, %_ZN4LIEF6resultINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEECI2N2tl8expectedIS6_11lief_errorsEEIS6_TnPNSt9enable_ifIXsr3std14is_convertibleIOT_S6_EE5valueEvE4typeELPv0ETnPNSB_IXaaaaaasr3std16is_constructibleIS6_SD_EE5valuentsr3std7is_sameINSt5decayISC_E4typeENS8_10in_place_tEEE5valuentsr3std7is_sameINS9_IS6_SA_EESK_EE5valuentsr3std7is_sameINS8_10unexpectedISA_EESK_EE5valueEvE4typeELSH_0EEESD_.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.cr, align 8, !tbaa !37
  %i.cs = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.b
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i7: ; preds = %bb.t
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !17
  %i.cv = shl i64 %i.cu, 1
  %i.cw = add i64 %i.cv, 2
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #14
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF12BinaryStream14read_u16stringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.LIEF::result.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZNK4LIEF12BinaryStream14peek_u16stringB5cxx11Em(ptr dead_on_unwind writable sret(%"class.LIEF::result.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  %i.a = shl i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = add i64 %i.c, %i.a
  store i64 %i.d, ptr %i.b, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF12BinaryStream14peek_u16stringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.LIEF::result.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.212", align 8   ; 10 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string.174", align 8 ; 6 uses
  %i.b = icmp eq i64 %2, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4LIEF12BinaryStream14peek_u16stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.LIEF::result.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i16 0, ptr %i.a, align 2, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt6vectorIDsSaIDsEE6resizeEmRKDs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIDsSaIDsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPDsS1_EEmRKDs(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  %.pre = load ptr, ptr %3, align 8, !tbaa !47
  br label %_ZNSt6vectorIDsSaIDsEE6resizeEmRKDs.exit

_ZNSt6vectorIDsSaIDsEE6resizeEmRKDs.exit:         ; preds = %bb.c, %bb.d
  %i.d = phi ptr [ null, %bb.c ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = shl i64 %2, 1
  %i.h = load ptr, ptr %1, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i64 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.d, i64 noundef %i.f, i64 noundef %i.g, i64 noundef 0) #12
  %i.l = and i64 %i.k, 4294967296
  %.not15 = icmp eq i64 %i.l, 0
  br i1 %.not15, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIDsSaIDsEE6resizeEmRKDs.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !20, !range !21, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  %.pre20 = load ptr, ptr %3, align 8, !tbaa !71  ; 5 uses
  %.pre22 = load ptr, ptr %i.c, align 8, !tbaa !71 ; 3 uses
  br i1 %i.o, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not1617 = icmp eq ptr %.pre20, %.pre22
  br i1 %.not1617, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.010.018 = phi ptr [ %i.p, %.lr.ph ], [ %.pre20, %bb.f ] ; 2 uses
  call void @_ZN4LIEF11swap_endianIDsEEvPT_(ptr noundef nonnull %.sroa.010.018) #12
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 2 ; 2 uses
  %.not16 = icmp eq ptr %i.p, %.pre22
  br i1 %.not16, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre19 = load ptr, ptr %3, align 8, !tbaa !71
  %.pre21 = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.e
  %i.q = phi ptr [ %.pre21, %.loopexit.loopexit ], [ %.pre20, %bb.f ], [ %.pre22, %bb.e ] ; 3 uses
  %i.r = phi ptr [ %.pre19, %.loopexit.loopexit ], [ %.pre20, %bb.f ], [ %.pre20, %bb.e ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !41
  %i.u = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = ashr exact i64 %i.w, 1                   ; 5 uses
  %i.y = icmp ugt i64 %i.x, 7
  br i1 %i.y, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %.loopexit
  %i.z = icmp ugt i64 %i.x, 2305843009213693951
  br i1 %i.z, label %bb.h, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #13
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  %i.aa = add nuw nsw i64 %i.w, 2
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #15 ; 2 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !43
  store i64 %i.x, ptr %i.s, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %.loopexit
  %i.ac = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.s, %.loopexit ] ; 9 uses
  %.not5.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not5.i.i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsS3_EEEvEET_SC_RKS3_.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i
  %5 = ptrtoaddr ptr %i.ac to i64
  %i.ad = add i64 %i.u, -2
  %i.ae = sub i64 %i.ad, %i.v                     ; 3 uses
  %i.af = lshr i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  %6 = sub i64 %i.v, %5
  %diff.check = icmp ugt i64 %6, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.ae, 30
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, -16                     ; 4 uses
  %i.ai = shl i64 %n.vec, 1                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.al ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.r, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep30, align 2, !tbaa !45
  %wide.load31 = load <8 x i16>, ptr %i.am, align 2, !tbaa !45
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !45
  store <8 x i16> %wide.load31, ptr %i.an, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsS3_EEEvEET_SC_RKS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.ag, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec33, 1                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.r, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index34, 1                     ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ac, i64 %i.as
  %next.gep36 = getelementptr i8, ptr %i.r, i64 %i.as
  %wide.load37 = load <4 x i16>, ptr %next.gep36, align 2, !tbaa !45
  store <4 x i16> %wide.load37, ptr %next.gep35, align 2, !tbaa !45
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.ag, %n.vec33
  br i1 %cmp.n39, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsS3_EEEvEET_SC_RKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.au = load i16, ptr %.sroa.02.06.i.i.i, align 2, !tbaa !45
  store i16 %i.au, ptr %.07.i.i.i, align 2, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %.not.i.i.i = icmp eq ptr %i.av, %i.q
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsS3_EEEvEET_SC_RKS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !70

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsS3_EEEvEET_SC_RKS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w
  store i16 0, ptr %i.ax, align 2, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !42
  %i.az = icmp eq ptr %i.ac, %i.s
  br i1 %i.az, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsS3_EEEvEET_SC_RKS3_.exit
  %i.ba = icmp samesign ult i64 %i.x, 8
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.w, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsS3_EEEvEET_SC_RKS3_.exit
  store ptr %i.ac, ptr %0, align 8, !tbaa !43
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !17
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.be, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIDsSaIDsEE6resizeEmRKDs.exit
  store i32 1, ptr %0, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bf, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit
  %i.bg = load ptr, ptr %3, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #14
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZNSt6vectorIDsSaIDsEED2Ev.exit:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit, %bb.b
  ret void
}

declare void @_ZN4LIEF11swap_endianIDsEEvPT_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF12BinaryStream17peek_u16string_atB5cxx11Emm(ptr dead_on_unwind noalias writable sret(%"class.LIEF::result.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %2, ptr %i.a, align 8, !tbaa !15
  tail call void @_ZNK4LIEF12BinaryStream14peek_u16stringB5cxx11Em(ptr dead_on_unwind writable sret(%"class.LIEF::result.165") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
  store i64 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i64 0, -1) i64 @_ZNK4LIEF12BinaryStream5alignEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = urem i64 %i.c, %1                        ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %1, %i.d                     ; 2 uses
  %i.g = add i64 %i.f, %i.c
  store i64 %i.g, ptr %i.b, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF12BinaryStream10read_mutf8B5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.LIEF::result.123") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string.235", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 19 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i64 0, ptr %i.f, align 8, !tbaa !82
  store i32 0, ptr %i.e, align 8, !tbaa !84
  %.not178 = icmp eq i64 %2, 0
  br i1 %.not178, label %.thread153.thread, label %.lr.ph

.thread153.thread:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !30
  store i8 0, ptr %i.g, align 8, !tbaa !17
  br label %_ZN4utf89unchecked8utf32to8ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN9__gnu_cxx17__normal_iteratorIPDiNS4_IDiS5_IDiESaIDiEEEEEEET_T0_SI_SH_.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN4utf88internal6appendISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEET_DiSA_:bb.a
  %i.dj = phi i64 [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53 ]
  %i.dk = icmp ugt i64 %i.de, %i.dj
  br i1 %i.dk, label %bb.o, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit54

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dd, i64 noundef 0, ptr noundef null, i64 noundef 1) #12
  %.pre.i.i52 = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit54

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51, %bb.o
  %i.dl = phi ptr [ %.pre.i.i52, %bb.o ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  store i8 %i.dc, ptr %i.dm, align 1, !tbaa !17
  store i64 %i.de, ptr %i.au, align 8, !tbaa !30
  %i.dn = load ptr, ptr %1, align 8, !tbaa !32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.de
  store i8 0, ptr %i.do, align 1, !tbaa !17
  %i.dp = lshr i32 %0, 6
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = and i8 %i.dq, 63
  %i.ds = or disjoint i8 %i.dr, -128
  %i.dt = load i64, ptr %i.au, align 8, !tbaa !30 ; 4 uses
  %i.du = add i64 %i.dt, 1                        ; 3 uses
  %i.dv = load ptr, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ay
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit54
  %i.dx = icmp ult i64 %i.dt, 16
  tail call void @llvm.assume(i1 %i.dx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit54
  %i.dy = load i64, ptr %i.ay, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59
  %i.dz = phi i64 [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59 ]
  %i.ea = icmp ugt i64 %i.du, %i.dz
  br i1 %i.ea, label %bb.p, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit60

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dt, i64 noundef 0, ptr noundef null, i64 noundef 1) #12
  %.pre.i.i58 = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit60

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57, %bb.p
  %i.eb = phi ptr [ %.pre.i.i58, %bb.p ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  store i8 %i.ds, ptr %i.ec, align 1, !tbaa !17
  store i64 %i.du, ptr %i.au, align 8, !tbaa !30
  %i.ed = load ptr, ptr %1, align 8, !tbaa !32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.du
  store i8 0, ptr %i.ee, align 1, !tbaa !17
  %i.ef = trunc i32 %0 to i8
  %i.eg = and i8 %i.ef, 63
  %i.eh = or disjoint i8 %i.eg, -128
  %i.ei = load i64, ptr %i.au, align 8, !tbaa !30 ; 4 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load ptr, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ay
  br i1 %i.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit60
  %i.em = icmp ult i64 %i.ei, 16
  tail call void @llvm.assume(i1 %i.em)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit60
  %i.en = load i64, ptr %i.ay, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65
  %i.eo = phi i64 [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65 ]
  %i.ep = icmp ugt i64 %i.ej, %i.eo
  br i1 %i.ep, label %bb.q, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit66

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ei, i64 noundef 0, ptr noundef null, i64 noundef 1) #12
  %.pre.i.i64 = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit66

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63, %bb.q
  %i.eq = phi ptr [ %.pre.i.i64, %bb.q ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63 ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ei
  store i8 %i.eh, ptr %i.er, align 1, !tbaa !17
  store i64 %i.ej, ptr %i.au, align 8, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit24, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit66, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit42, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit
  %.sink95 = phi i64 [ %i.ak, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit24 ], [ %i.ej, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit66 ], [ %i.cf, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit42 ], [ %i.e, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit ]
  %i.es = load ptr, ptr %1, align 8, !tbaa !32
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.sink95
  store i8 0, ptr %i.et, align 1, !tbaa !17
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{null, null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"_ZTSN4LIEF12BinaryStream11STREAM_TYPEE", !7, i64 0}
!14 = !{!"_ZTSN4LIEF12BinaryStreamE", !11, i64 8, !12, i64 16, !13, i64 20}
!15 = !{!14, !11, i64 8}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!7, !7, i64 0}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!14, !12, i64 16}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!11, !11, i64 0}
!24 = !{!"_ZTSN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EEE", !7, i64 0, !12, i64 32}
!25 = !{!24, !12, i64 32}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"p1 omnipotent char", !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !11, i64 8, !7, i64 16}
!30 = !{!29, !11, i64 8}
!31 = !{!28, !27, i64 0}
!32 = !{!29, !27, i64 0}
!33 = !{!"_ZTS11lief_errors", !7, i64 0}
!34 = !{!"_ZTSN2tl10unexpectedI11lief_errorsEE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"_ZTSN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE11lief_errorsLb0ELb1EEE", !7, i64 0, !12, i64 32}
!37 = !{!36, !12, i64 32}
!38 = !{!"p1 char16_t", !26, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !38, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !39, i64 0, !11, i64 8, !7, i64 16}
!41 = !{!40, !11, i64 8}
!42 = !{!39, !38, i64 0}
!43 = !{!40, !38, i64 0}
!44 = !{!"char16_t", !7, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!47 = !{!46, !38, i64 0}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"branch_weights", i32 4, i32 12}
!51 = !{!46, !38, i64 16}
!52 = distinct !{ptr @_ZNK4LIEF12BinaryStream12read_uleb128EPm, null, null}
!53 = distinct !{null, null}
!54 = distinct !{null, null}
!55 = distinct !{null, null}
!56 = distinct !{ptr @_ZNK4LIEF12BinaryStream12read_sleb128EPm, null, null}
!57 = !{!"short", !7, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!8, !8, i64 0}
!60 = distinct !{null}
!61 = distinct !{null, null}
!62 = distinct !{!62, !16}
!63 = !{!33, !33, i64 0}
!64 = distinct !{null}
!65 = distinct !{null, null}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16, !48, !49}
!69 = distinct !{!69, !16, !48, !49}
!70 = distinct !{!70, !16, !48}
!71 = !{!38, !38, i64 0}
!72 = distinct !{null, null}
!73 = distinct !{null, null}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16, !48, !49}
!76 = distinct !{!76, !16, !49, !48}
!77 = distinct !{!77, !16}
!78 = !{!"p1 char32_t", !26, i64 0}
!79 = !{!"_ZTSNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE12_Alloc_hiderE", !78, i64 0}
!80 = !{!79, !78, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE", !79, i64 0, !11, i64 8, !7, i64 16}
!82 = !{!81, !11, i64 8}
!83 = !{!"char32_t", !7, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!81, !78, i64 0}
!86 = distinct !{!86, !16, !48, !49}
!87 = distinct !{!87, !16, !48, !49}
!88 = distinct !{!88, !16, !49, !48}
!89 = distinct !{!89, !16, !48, !49}
!90 = distinct !{!90, !16, !48, !49}
!91 = distinct !{!91, !16, !49, !48}
!92 = distinct !{!92, !16, !48, !49}
!93 = distinct !{!93, !16, !48, !49}
!94 = distinct !{!94, !16, !49, !48}
!95 = distinct !{!95, !16, !48, !49}
!96 = distinct !{!96, !16, !48, !49}
!97 = distinct !{!97, !16, !49, !48}
!98 = !{!46, !38, i64 8}
!99 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
