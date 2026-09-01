Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngDecoder?download=true
inline.NumInlined: 1619
inline.NumDeleted: 868
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8rawspeed18RawImageCurveGuardD2Ev:bb.a

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !371
  invoke void @_ZN8rawspeed12RawImageData8setTableESt10unique_ptrINS_11TableLookUpESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(624) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !372    ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !356  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !359
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31
  br label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i: ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #31
  br label %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10DngDecoder8setBlackEPKNS_7TiffIFDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !61
  %i.f = icmp ult i16 %i.e, -14706                ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !64

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !61
  %i.j = icmp ult i16 %i.i, -14705
  br i1 %i.j, label %bb.b, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

bb.b:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %i.k = tail call noundef zeroext i1 @_ZNK8rawspeed10DngDecoder17decodeMaskedAreasEPKNS_7TiffIFDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1)
  br i1 %i.k, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.a, %bb.b, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 100 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !373, !range !151, !noundef !152
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread
  store i8 1, ptr %i.p, align 8, !tbaa !373
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, %bb.c
  store ptr %i.n, ptr %i.o, align 8, !tbaa !374
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store i32 4, ptr %i.s, align 8, !tbaa !146
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store i32 2, ptr %i.t, align 8, !tbaa !146
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 140
  store i32 2, ptr %i.u, align 4, !tbaa !146
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i32 2, ptr %i.v, align 8, !tbaa !146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !tbaa !146
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not10.i.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i5, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16.thread, label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit, %.lr.ph.i.i.i.i6
  %.012.i.i.i.i7 = phi ptr [ %.1.i.i.i.i12, %.lr.ph.i.i.i.i6 ], [ %i.w, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ] ; 3 uses
  %.0811.i.i.i.i8 = phi ptr [ %.19.i.i.i.i9, %.lr.ph.i.i.i.i6 ], [ %i.c, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i7, i64 32
  %i.y = load i16, ptr %i.x, align 2, !tbaa !61
  %i.z = icmp ult i16 %i.y, -14822                ; 2 uses
  %.19.i.i.i.i9 = select i1 %i.z, ptr %.0811.i.i.i.i8, ptr %.012.i.i.i.i7 ; 3 uses
  %.1.in.v.i.i.i.i10 = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i7, i64 %.1.in.v.i.i.i.i10
  %.1.i.i.i.i12 = load ptr, ptr %.1.in.i.i.i.i11, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %.1.i.i.i.i12, null
  br i1 %.not.i.i.i.i13, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i14, label %.lr.ph.i.i.i.i6, !llvm.loop !64

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i14: ; preds = %.lr.ph.i.i.i.i6
  %i.aa = icmp eq ptr %.19.i.i.i.i9, %i.c
  br i1 %i.aa, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i14
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i9, i64 32
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !61
  %i.ad = icmp ult i16 %i.ac, -14821
  br i1 %i.ad, label %bb.d, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16.thread

bb.d:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16
  %i.ae = tail call noundef zeroext i1 @_ZNK8rawspeed10DngDecoder17decodeBlackLevelsEPKNS_7TiffIFDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1) ; 0 uses
  br label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16.thread

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16.thread: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i14, %_ZSt4fillIPiiEvT_S1_RKT0_.exit, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit16, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10DngDecoder17parseWhiteBalanceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext -14808) #27 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0)
  %i.h = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 1)
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.h, i64 1 ; 2 uses
  %i.k = fcmp ogt <2 x float> %i.j, zeroinitializer
  %i.l = fdiv <2 x float> splat (float 1.000000e+00), %i.j
  %i.m = select <2 x i1> %i.k, <2 x float> %i.l, <2 x float> zeroinitializer
  %i.n = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 2) ; 2 uses
  %i.o = fcmp ogt float %i.n, 0.000000e+00
  %i.p = fdiv float 1.000000e+00, %i.n
  %i.q = select i1 %i.o, float %i.p, float 0.000000e+00
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !389  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !389  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext -14807) #27 ; 4 uses
  %.not33 = icmp eq ptr %i.aa, null
  br i1 %.not33, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.off = add nsw i64 %i.ae, -9
  %i.af = icmp ult i64 %.off, 3
  br i1 %i.af, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !70
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i32 noundef 0) ; 2 uses
  %i.ak = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i32 noundef 1) ; 4 uses
  %i.al = fcmp ogt float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %1 = fdiv float %i.aj, %i.ak                    ; 2 uses
  %i.am = fsub float 1.000000e+00, %i.aj
  %i.an = fsub float %i.am, %i.ak
  %2 = fdiv float %i.an, %i.ak                    ; 2 uses
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !76  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !172 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.at = load <8 x i32>, ptr %i.aq, align 4, !tbaa !146 ; 6 uses
  %i.au = shufflevector <8 x i32> %i.at, <8 x i32> poison, <2 x i32> <i32 0, i32 6>
  %i.av = sitofp <2 x i32> %i.au to <2 x float>
  %i.aw = shufflevector <8 x i32> %i.at, <8 x i32> poison, <2 x i32> <i32 1, i32 7>
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>
  %i.ay = fdiv <2 x float> %i.av, %i.ax
  %i.az = load <2 x i32>, ptr %i.ar, align 4, !tbaa !146
  %i.ba = shufflevector <2 x i32> %i.az, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bb = shufflevector <8 x i32> %i.at, <8 x i32> %i.ba, <2 x i32> <i32 2, i32 8>
  %i.bc = sitofp <2 x i32> %i.bb to <2 x float>
  %i.bd = shufflevector <8 x i32> %i.at, <8 x i32> %i.ba, <2 x i32> <i32 3, i32 9>
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
  %i.bf = fdiv <2 x float> %i.bc, %i.be
  %3 = insertelement <2 x float> poison, float %1, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %4, <2 x float> %i.bf)
  %i.bh = load <2 x i32>, ptr %i.as, align 4, !tbaa !146
  %i.bi = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <8 x i32> %i.at, <8 x i32> %i.bi, <2 x i32> <i32 4, i32 8>
  %i.bk = sitofp <2 x i32> %i.bj to <2 x float>
  %i.bl = shufflevector <8 x i32> %i.at, <8 x i32> %i.bi, <2 x i32> <i32 5, i32 9>
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = fdiv <2 x float> %i.bk, %i.bm
  %5 = insertelement <2 x float> poison, float %2, i64 0
  %i.bo = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> %i.bg) ; 2 uses
  %i.bq = fcmp ogt <2 x float> %i.bp, zeroinitializer
  %i.br = fdiv <2 x float> splat (float 1.000000e+00), %i.bp
  %i.bs = select <2 x i1> %i.bq, <2 x float> %i.br, <2 x float> zeroinitializer
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bu = load <2 x i32>, ptr %i.bt, align 4, !tbaa !146
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>   ; 2 uses
  %shift = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv <2 x float> %i.bv, %shift
  %i.bw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !146
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>   ; 2 uses
  %shift55 = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fdiv <2 x float> %i.bz, %shift55
  %i.ca = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bw, float %1, float %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.cd = load <2 x i32>, ptr %i.cc, align 4, !tbaa !146
  %i.ce = sitofp <2 x i32> %i.cd to <2 x float>   ; 2 uses
  %shift58 = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fdiv <2 x float> %i.ce, %shift58
  %i.cf = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %2, float %i.cb) ; 2 uses
  %i.ch = fcmp ogt float %i.cg, 0.000000e+00
  %i.ci = fdiv float 1.000000e+00, %i.cg
  %i.cj = select i1 %i.ch, float %i.ci, float 0.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.i
  %.sink53 = phi ptr [ %i.ao, %bb.i ], [ %i.s, %bb.c ] ; 4 uses
  %.sink47 = phi float [ %i.cj, %bb.i ], [ %i.q, %bb.c ]
  %i.ck = phi <2 x float> [ %i.bs, %bb.i ], [ %i.m, %bb.c ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sink53, i64 256
  store <2 x float> %i.ck, ptr %i.cl, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink53, i64 264
  store float %.sink47, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink53, i64 268
  store float 0.000000e+00, ptr %.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink53, i64 272
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f, %bb.g, %bb.h, %bb.b, %bb.e, %bb.d
  ret void
}

declare noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10DngDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.72", align 1 ; 3 uses
  %3 = alloca %"struct.rawspeed::TiffID", align 8 ; 21 uses
  %4 = alloca %"struct.rawspeed::TiffID", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.72", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext -30681) #27 ; 2 uses
  %.not120 = icmp eq ptr %i.c, null
  br i1 %.not120, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  store i32 %i.d, ptr %i.g, align 8, !tbaa !390
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !385
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !386
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 6 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !385
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store i64 0, ptr %i.m, align 8, !tbaa !386
  store i8 0, ptr %i.l, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNK8rawspeed11TiffRootIFD5getIDEv(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::TiffID") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.h)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !348    ; 6 uses
  %i.o = icmp eq ptr %i.n, %i.i
  %i.p = load ptr, ptr %4, align 8, !tbaa !348    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  br i1 %i.r, label %bb.e, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  br i1 %i.r, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !386  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  switch i64 %i.t, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.p, align 1, !tbaa !53
  store i8 %i.v, ptr %i.n, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.w = load i64, ptr %i.s, align 8, !tbaa !386  ; 2 uses
  store i64 %i.w, ptr %i.j, align 8, !tbaa !386
  %i.x = load ptr, ptr %3, align 8, !tbaa !348
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !53
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !348
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.p, ptr %3, align 8, !tbaa !348
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !tbaa !53
  store <2 x i64> %i.aa, ptr %i.j, align 8, !tbaa !53
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !53
  store ptr %i.p, ptr %3, align 8, !tbaa !348
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !53
  store <2 x i64> %i.ad, ptr %i.j, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.n, ptr %4, align 8, !tbaa !348
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.q, ptr %4, align 8, !tbaa !348
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.ae = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.n, %bb.h ], [ %i.q, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !386
  store i8 0, ptr %i.ae, align 1, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !348 ; 6 uses
  %i.ai = icmp eq ptr %i.ah, %i.l
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !348 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.al, label %bb.j, label %.thread.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !386 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !53
  store i8 %i.ap, ptr %i.ah, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !386 ; 2 uses
  store i64 %i.aq, ptr %i.m, align 8, !tbaa !386
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !53
  %.pre.i8.i = load ptr, ptr %i.ag, align 8, !tbaa !348
  br label %_ZN8rawspeed6TiffIDaSEOS0_.exit

.thread.i10.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !348
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !53
  store <2 x i64> %i.au, ptr %i.m, align 8, !tbaa !53
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i
  %i.av = load i64, ptr %i.l, align 8, !tbaa !53
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !348
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !tbaa !53
end_hunk_0
