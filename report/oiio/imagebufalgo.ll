inline.NumInlined: 7403
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12unsharp_implItEEbRNS1_8ImageBufERKS5_S8_ffS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.im = load ptr, ptr %3, align 8, !tbaa !287
  %i.in = load i32, ptr %i.bf, align 8, !tbaa !280
  %i.io = load i32, ptr %i.bi, align 4, !tbaa !282
  %i.ip = load i32, ptr %i.bw, align 8, !tbaa !316
  %i.iq = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.im, i32 noundef %i.hp, i32 noundef %i.in, i32 noundef %i.io, ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %i.bv, i1 noundef zeroext %i.ig, i32 noundef %i.ip)
          to label %.noexc4.i.i unwind label %bb.bc

.noexc4.i.i:                                      ; preds = %bb.ax
  %i.ir = zext i1 %i.ig to i8
  store ptr %i.iq, ptr %i.p, align 8, !tbaa !289
  store i8 %i.ir, ptr %i.bl, align 1, !tbaa !310
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.ay:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit17.i.i
  %i.is = load i32, ptr %i.be, align 4, !tbaa !281 ; 3 uses
  store i32 %i.is, ptr %i.bc, align 4, !tbaa !279
  %i.it = load i32, ptr %i.bf, align 8, !tbaa !280
  %i.iu = add nsw i32 %i.it, 1                    ; 3 uses
  store i32 %i.iu, ptr %i.bf, align 8, !tbaa !280
  %i.iv = load i32, ptr %i.bg, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.iu, %i.iv
  %.pre34.i.i = load i32, ptr %i.bi, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iw = load i32, ptr %i.bh, align 4, !tbaa !300 ; 2 uses
  store i32 %i.iw, ptr %i.bf, align 8, !tbaa !280
  %i.ix = add nsw i32 %.pre34.i.i, 1              ; 3 uses
  store i32 %i.ix, ptr %i.bi, align 4, !tbaa !282
  %i.iy = load i32, ptr %i.bj, align 8, !tbaa !283
  %.not1.i.i.i = icmp slt i32 %i.ix, %i.iy
  br i1 %.not1.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.bk, align 8, !tbaa !275
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i2.i.i
  %i.iz = phi i32 [ %.pre34.i.i, %bb.ay ], [ %i.ix, %bb.az ], [ %.pre33.i.i, %._crit_edge.i2.i.i ]
  %i.ja = phi i32 [ %i.iu, %bb.ay ], [ %i.iw, %bb.az ], [ %.pre.i.i.i, %._crit_edge.i2.i.i ]
  %i.jb = phi i32 [ %i.is, %bb.ay ], [ %i.is, %bb.az ], [ %i.hp, %._crit_edge.i2.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.jb, i32 noundef %i.ja, i32 noundef %i.iz)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.bc

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.bb, %bb.ba, %.noexc4.i.i, %bb.aw, %bb.av, %bb.au, %bb.at
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb, %bb.ax, %bb.au, %bb.aq, %bb.am, %bb.aj, %bb.w, %bb.s, %bb.p
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ae, %bb.aa
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.jc, %bb.bc ], [ %i.fw, %bb.ae ], [ %i.fm, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %4) #32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.l
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.bd ], [ %i.cs, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.k
  %.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i.i, %bb.be ], [ %i.cr, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS1_8ImageBufERKS3_S6_ffNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit29.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12unsharp_implItEEbRNS1_8ImageBufERKS5_S8_ffS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS2_8ImageBufERKS4_S7_ffNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS0_8ImageBufERKS2_S5_ffNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS2_8ImageBufERKS4_S7_ffNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS2_8ImageBufERKS4_S7_ffNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1223
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS2_8ImageBufERKS4_S7_ffNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS2_8ImageBufERKS4_S7_ffNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS2_8ImageBufERKS4_S7_ffNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS2_8ImageBufERKS4_S7_ffNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIffEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIffEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 32 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1246, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1248, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = mul nsw i32 %i.i, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1249, !nonnull !217, !align !420
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 9 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = alloca i8, i64 %i.s, align 16            ; 7 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not64 = icmp eq i32 %i.j, 0
  %i.v = sext i32 %i.n to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = zext nneg i32 %i.q to i64                ; 4 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = alloca i8, i64 %i.w, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.z, align 16, !tbaa !327
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 16, !tbaa !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader159

.lr.ph.split.preheader159:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.t, i8 0, i64 %i.ac, i1 false), !tbaa !327
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %bb.e, %.lr.ph.split.us.preheader, %bb.f
  %i.ad = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %.lr.ph.split.us.preheader ], [ true, %middle.block ], [ true, %.lr.ph.split ] ; 3 uses
  %i.ae = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %.lr.ph.split.us.preheader ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.split ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1251, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1249, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.trip.count124 = zext i32 %i.q to i64      ; 2 uses
  %wide.trip.count129 = zext nneg i32 %i.q to i64
  %wide.trip.count134 = zext nneg i32 %i.q to i64
  %xtraiter = and i64 %wide.trip.count124, 3      ; 3 uses
  %i.bm = add i32 %i.q, -1
  %i.bn = icmp ult i32 %i.bm, 3
  %unroll_iter = and i64 %wide.trip.count124, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = icmp ne i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader159, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader159 ] ; 2 uses
  %i.bo = alloca i8, i64 %i.w, align 16
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1252

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %.loopexit
  %i.bq = load i8, ptr %i.ai, align 8, !tbaa !275, !range !216, !noundef !217
  %i.br = icmp eq i8 %i.bq, 0
  %.pre136 = load i32, ptr %i.aj, align 4, !tbaa !279 ; 2 uses
  br i1 %i.br, label %bb.g, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre137 = load i32, ptr %i.al, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bs = load i32, ptr %i.ak, align 4, !tbaa !281
  %i.bt = icmp eq i32 %.pre136, %i.bs
  %.pre138 = load i32, ptr %i.al, align 8, !tbaa !280 ; 3 uses
  %i.bu = load i32, ptr %i.am, align 4
  %i.bv = icmp eq i32 %.pre138, %i.bu
  %or.cond = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.g
  %i.bw = load i32, ptr %i.an, align 4, !tbaa !282
  %i.bx = load i32, ptr %i.ao, align 8, !tbaa !283
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cd = load ptr, ptr %i.bf, align 8, !tbaa !284
  %.not.i66 = icmp eq ptr %i.cd, null
  br i1 %.not.i66, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.g, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ch = phi i32 [ %.pre137, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre138, %bb.g ], [ %.pre138, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ci = sub nsw i32 %.pre136, %.sroa.speculated88 ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !1246, !nonnull !217, !align !422
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = add nsw i32 %i.ck, %i.ci
  %i.cm = sub nsw i32 %i.ch, %i.m                 ; 2 uses
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !1248, !nonnull !217, !align !422
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = add nsw i32 %i.co, %i.cm
  %i.cq = load i32, ptr %i.an, align 4, !tbaa !282 ; 2 uses
  %i.cr = add nsw i32 %i.cq, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef 2)
          to label %.preheader103 unwind label %bb.p
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.fi = select i1 %or.cond.i.i, i1 true, i1 %i.fh, !prof !315
  br i1 %i.fi, label %bb.x, label %.preheader103.backedge, !prof !288

bb.x:                                             ; preds = %bb.w
  %i.fj = load ptr, ptr %2, align 8, !tbaa !287
  %i.fk = load i32, ptr %i.as, align 8, !tbaa !280
  %i.fl = load i32, ptr %i.au, align 4, !tbaa !282
  %i.fm = load i32, ptr %i.bk, align 8, !tbaa !316
  %i.fn = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i32 noundef %i.ek, i32 noundef %i.fk, i32 noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i1 noundef zeroext %i.fd, i32 noundef %i.fm)
          to label %.noexc70 unwind label %bb.q

.noexc70:                                         ; preds = %bb.x
  %i.fo = zext i1 %i.fd to i8
  store ptr %i.fn, ptr %i.ay, align 8, !tbaa !289
  store i8 %i.fo, ptr %i.aw, align 1, !tbaa !310
  br label %.preheader103.backedge

bb.y:                                             ; preds = %._crit_edge108._crit_edge, %.thread
  %.pre142 = phi i32 [ %.pre142.pre143, %.thread ], [ %.pre142.pre, %._crit_edge108._crit_edge ] ; 2 uses
  %i.fp = phi i32 [ %.pre140, %.thread ], [ %.pre139, %._crit_edge108._crit_edge ]
  %.15396 = phi i32 [ %.052, %.thread ], [ %i.ei, %._crit_edge108._crit_edge ] ; 3 uses
  %i.fq = load i32, ptr %i.ar, align 4, !tbaa !281 ; 3 uses
  store i32 %i.fq, ptr %i.aq, align 4, !tbaa !279
  %i.fr = add nsw i32 %i.fp, 1                    ; 3 uses
  store i32 %i.fr, ptr %i.as, align 8, !tbaa !280
  %i.fs = load i32, ptr %i.az, align 8, !tbaa !317
  %.not.i69 = icmp slt i32 %i.fr, %i.fs
  br i1 %.not.i69, label %._crit_edge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = load i32, ptr %i.at, align 4, !tbaa !300 ; 2 uses
  store i32 %i.ft, ptr %i.as, align 8, !tbaa !280
  %i.fu = add nsw i32 %.pre142, 1                 ; 3 uses
  store i32 %i.fu, ptr %i.au, align 4, !tbaa !282
  %i.fv = load i32, ptr %i.av, align 8, !tbaa !283
  %.not1.i = icmp slt i32 %i.fu, %i.fv
  br i1 %.not1.i, label %._crit_edge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.ap, align 8, !tbaa !275
  br label %.preheader103.backedge

._crit_edge.i:                                    ; preds = %.thread, %bb.z, %bb.y
  %i.fw = phi i32 [ %.pre142, %bb.y ], [ %i.fu, %bb.z ], [ %.pre142.pre143, %.thread ]
  %.15395 = phi i32 [ %.15396, %bb.y ], [ %.15396, %bb.z ], [ %.052, %.thread ]
  %i.fx = phi i32 [ %i.fr, %bb.y ], [ %i.ft, %bb.z ], [ %.pre140, %.thread ]
  %i.fy = phi i32 [ %i.fq, %bb.y ], [ %i.fq, %bb.z ], [ %i.eo, %.thread ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fy, i32 noundef %i.fx, i32 noundef %i.fw)
          to label %.preheader103.backedge unwind label %bb.q

.preheader103.backedge:                           ; preds = %._crit_edge.i, %bb.u, %bb.t, %bb.v, %bb.w, %.noexc70, %bb.aa
  %.052.be = phi i32 [ %.15395, %._crit_edge.i ], [ %i.ei, %bb.t ], [ %i.ei, %bb.u ], [ %i.ei, %bb.v ], [ %i.ei, %bb.w ], [ %i.ei, %.noexc70 ], [ %.15396, %bb.aa ]
  br label %.preheader103

bb.ab:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit68
  %.not58 = icmp eq i32 %.052, 0
  br i1 %.not58, label %.preheader101, label %bb.ac

.preheader101:                                    ; preds = %bb.ab
  br i1 %i.ad, label %.lr.ph113, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ad, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %bb.ac
  %i.fz = sdiv i32 %.052, 2
  %i.ga = sext i32 %.052 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.ga, 2
  %i.gb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ga, i1 true)
  %i.gc = shl nuw nsw i64 %i.gb, 1
  %i.gd = xor i64 %i.gc, 126
  %i.ge = sext i32 %i.fz to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph111, %bb.ag
  %indvars.iv126 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next127, %bb.ag ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !327 ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %.idx ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh, i64 noundef %i.gd)
          to label %.noexc73 unwind label %bb.ah

.noexc73:                                         ; preds = %bb.ad
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %.noexc73
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !327
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.ge
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !254
  %i.gl = load ptr, ptr %3, align 8, !tbaa !287
  %i.gm = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl)
          to label %.noexc75 unwind label %bb.ai

.noexc75:                                         ; preds = %bb.ae
  %i.gn = icmp eq i32 %i.gm, 3
  br i1 %i.gn, label %bb.af, label %bb.ag, !prof !288

bb.af:                                            ; preds = %.noexc75
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %.noexc75, %bb.af
  %i.go = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv126
  store float %i.gk, ptr %i.gp, align 4, !tbaa !254
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.ad, !llvm.loop !1255

bb.ah:                                            ; preds = %.noexc73, %bb.ad
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph113:                                        ; preds = %.preheader101, %bb.ak
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.ak ], [ 0, %.preheader101 ] ; 2 uses
  %i.gs = load ptr, ptr %3, align 8, !tbaa !287
  %i.gt = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs)
          to label %.noexc79 unwind label %bb.al

.noexc79:                                         ; preds = %.lr.ph113
  %i.gu = icmp eq i32 %i.gt, 3
  br i1 %i.gu, label %bb.aj, label %bb.ak, !prof !288

bb.aj:                                            ; preds = %.noexc79
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.noexc79, %bb.aj
  %i.gv = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv131
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !254
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %.lr.ph113, !llvm.loop !1256

bb.al:                                            ; preds = %bb.aj, %.lr.ph113
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit:                                        ; preds = %bb.ag, %bb.ak, %bb.ac, %.preheader101
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1257

bb.am:                                            ; preds = %bb.q, %bb.al, %bb.ai, %bb.ah, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.dh, %bb.p ], [ %i.gq, %bb.ah ], [ %i.di, %bb.q ], [ %i.gx, %bb.al ], [ %i.gr, %bb.ai ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.am ], [ %i.cg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !1258

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !254 ; 2 uses
  %i.j = load float, ptr %0, align 4, !tbaa !254
  store float %i.j, ptr %i.h, align 4, !tbaa !254
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.r, align 4, !tbaa !254
  %i.v = load float, ptr %i.t, align 4, !tbaa !254
  %i.w = fcmp olt float %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load float, ptr %i.y, align 4, !tbaa !254
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store float %i.z, ptr %i.aa, align 4, !tbaa !254
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1259

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !254
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store float %i.ak, ptr %i.al, align 4, !tbaa !254
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i78.i.i.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !254 ; 2 uses
  %i.ao = fcmp olt float %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store float %i.an, ptr %i.ap, align 4, !tbaa !254
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1260

_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store float %i.i, ptr %i.aq, align 4, !tbaa !254
  %i.ar = icmp sgt i64 %i.l, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !1261

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ax = load float, ptr %i.e, align 4, !tbaa !254 ; 5 uses
  %i.ay = load float, ptr %i.av, align 4, !tbaa !254 ; 5 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !254 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = fcmp olt float %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load float, ptr %0, align 4, !tbaa !254
  store float %i.ay, ptr %0, align 4, !tbaa !254
  store float %i.bc, ptr %i.av, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt float %i.ax, %i.ba
  %i.be = load float, ptr %0, align 4, !tbaa !254 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.ba, ptr %0, align 4, !tbaa !254
  store float %i.be, ptr %i.aw, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store float %i.ax, ptr %0, align 4, !tbaa !254
  store float %i.be, ptr %i.e, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = fcmp olt float %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load float, ptr %0, align 4, !tbaa !254
  store float %i.ax, ptr %0, align 4, !tbaa !254
  store float %i.bg, ptr %i.e, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt float %i.ay, %i.ba
  %i.bi = load float, ptr %0, align 4, !tbaa !254 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.ba, ptr %0, align 4, !tbaa !254
  store float %i.bi, ptr %i.aw, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store float %i.ay, ptr %0, align 4, !tbaa !254
  store float %i.bi, ptr %i.av, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load float, ptr %0, align 4, !tbaa !254 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load float, ptr %.1.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bl = fcmp olt float %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !1262

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load float, ptr %.114.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bo = fcmp olt float %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !1263

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store float %i.bn, ptr %.1.i.i, align 4, !tbaa !254
  store float %i.bk, ptr %.114.i.i, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1264

_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 64
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !1258

_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load float, ptr %.020.i.ptr, align 4, !tbaa !254 ; 4 uses
  %i.f = load float, ptr %0, align 4, !tbaa !254  ; 2 uses
  %i.g = fcmp olt float %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !232

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store float %i.f, ptr %i.i, align 4, !tbaa !254
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load float, ptr %.pn19.i, align 4, !tbaa !254 ; 2 uses
  %i.k = fcmp olt float %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi float [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store float %i.l, ptr %.0912.i.i, align 4, !tbaa !254
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load float, ptr %.0.i.i, align 4, !tbaa !254 ; 2 uses
  %i.n = fcmp olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1265

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store float %i.e, ptr %.sink.i, align 4, !tbaa !254
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !1266

_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_:bb.a
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.u, align 4, !tbaa !254
  %i.y = load float, ptr %i.w, align 4, !tbaa !254
  %i.z = fcmp olt float %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !254
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store float %i.ac, ptr %i.ad, align 4, !tbaa !254
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !1259

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !254 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store float %i.ah, ptr %i.aj, align 4, !tbaa !254
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !1260

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store float %i.q, ptr %i.al, align 4, !tbaa !254
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1268

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load float, ptr %i.an, align 4, !tbaa !254 ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.as, align 4, !tbaa !254
  %i.aw = load float, ptr %i.au, align 4, !tbaa !254
  %i.ax = fcmp olt float %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load float, ptr %i.az, align 4, !tbaa !254
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store float %i.ba, ptr %i.bb, align 4, !tbaa !254
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1259

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load float, ptr %i.n, align 4, !tbaa !254
  store float %i.be, ptr %i.o, align 4, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !254 ; 2 uses
  %i.bi = fcmp olt float %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store float %i.bh, ptr %i.bj, align 4, !tbaa !254
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !1260

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store float %i.ao, ptr %i.bl, align 4, !tbaa !254
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1268

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIfhEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIfhEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 32 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1269, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1271, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = mul nsw i32 %i.i, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1272, !nonnull !217, !align !420
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 10 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = alloca i8, i64 %i.s, align 16            ; 7 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not64 = icmp eq i32 %i.j, 0
  %i.v = sext i32 %i.n to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = zext nneg i32 %i.q to i64                ; 4 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = alloca i8, i64 %i.w, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.z, align 16, !tbaa !327
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 16, !tbaa !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader159

.lr.ph.split.preheader159:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.t, i8 0, i64 %i.ac, i1 false), !tbaa !327
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %bb.e, %.lr.ph.split.us.preheader, %bb.f
  %i.ad = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %.lr.ph.split.us.preheader ], [ true, %middle.block ], [ true, %.lr.ph.split ] ; 3 uses
  %i.ae = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %.lr.ph.split.us.preheader ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1274, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1272, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.trip.count124 = zext i32 %i.q to i64      ; 2 uses
  %wide.trip.count129 = zext nneg i32 %i.q to i64
  %wide.trip.count134 = zext nneg i32 %i.q to i64
  %xtraiter = and i64 %wide.trip.count124, 1
  %i.bm = icmp eq i32 %i.q, 1
  %unroll_iter = and i64 %wide.trip.count124, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i32 %i.q to i1
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader159, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader159 ] ; 2 uses
  %i.bn = alloca i8, i64 %i.w, align 16
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1275

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %.loopexit
  %i.bp = load i8, ptr %i.ai, align 8, !tbaa !275, !range !216, !noundef !217
  %i.bq = icmp eq i8 %i.bp, 0
  %.pre136 = load i32, ptr %i.aj, align 4, !tbaa !279 ; 2 uses
  br i1 %i.bq, label %bb.g, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre137 = load i32, ptr %i.al, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.br = load i32, ptr %i.ak, align 4, !tbaa !281
  %i.bs = icmp eq i32 %.pre136, %i.br
  %.pre138 = load i32, ptr %i.al, align 8, !tbaa !280 ; 3 uses
  %i.bt = load i32, ptr %i.am, align 4
  %i.bu = icmp eq i32 %.pre138, %i.bt
  %or.cond = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.g
  %i.bv = load i32, ptr %i.an, align 4, !tbaa !282
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !283
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !284
  %.not.i66 = icmp eq ptr %i.cc, null
  br i1 %.not.i66, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.g, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cg = phi i32 [ %.pre137, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre138, %bb.g ], [ %.pre138, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ch = sub nsw i32 %.pre136, %.sroa.speculated88 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !1269, !nonnull !217, !align !422
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, %i.ch
  %i.cl = sub nsw i32 %i.cg, %i.m                 ; 2 uses
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !1271, !nonnull !217, !align !422
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add nsw i32 %i.cn, %i.cl
  %i.cp = load i32, ptr %i.an, align 4, !tbaa !282 ; 2 uses
  %i.cq = add nsw i32 %i.cp, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef 2)
          to label %.preheader103 unwind label %bb.p

end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L18median_filter_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_:bb.a

bb.z:                                             ; preds = %._crit_edge.i, %bb.v, %bb.s
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aa:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit68
  %.not58 = icmp eq i32 %.052, 0
  br i1 %.not58, label %.preheader101, label %bb.ab

.preheader101:                                    ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph113, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %bb.ab
  %i.fu = sdiv i32 %.052, 2
  %i.fv = sext i32 %.052 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.fv, 2
  %i.fw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = xor i64 %i.fx, 126
  %i.fz = sext i32 %i.fu to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph111, %bb.af
  %indvars.iv126 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next127, %bb.af ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !327 ; 3 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %.idx ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc, i64 noundef %i.fy)
          to label %.noexc73 unwind label %bb.ag

.noexc73:                                         ; preds = %bb.ac
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %.noexc73
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !327
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.fz
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !254
  %i.gg = load ptr, ptr %3, align 8, !tbaa !287
  %i.gh = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg)
          to label %.noexc75 unwind label %bb.ah

.noexc75:                                         ; preds = %bb.ad
  %i.gi = icmp eq i32 %i.gh, 3
  br i1 %i.gi, label %bb.ae, label %bb.af, !prof !288

bb.ae:                                            ; preds = %.noexc75
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.noexc75, %bb.ae
  %i.gj = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv126
  store float %i.gf, ptr %i.gk, align 4, !tbaa !254
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.ac, !llvm.loop !1277

bb.ag:                                            ; preds = %.noexc73, %bb.ac
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph113:                                        ; preds = %.preheader101, %bb.aj
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.aj ], [ 0, %.preheader101 ] ; 2 uses
  %i.gn = load ptr, ptr %3, align 8, !tbaa !287
  %i.go = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn)
          to label %.noexc79 unwind label %bb.ak

.noexc79:                                         ; preds = %.lr.ph113
  %i.gp = icmp eq i32 %i.go, 3
  br i1 %i.gp, label %bb.ai, label %bb.aj, !prof !288

bb.ai:                                            ; preds = %.noexc79
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc79, %bb.ai
  %i.gq = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv131
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !254
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %.lr.ph113, !llvm.loop !1278

bb.ak:                                            ; preds = %bb.ai, %.lr.ph113
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %bb.af, %bb.aj, %bb.ab, %.preheader101
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1279

bb.al:                                            ; preds = %bb.z, %bb.ak, %bb.ah, %bb.ag, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.dg, %bb.p ], [ %i.gl, %bb.ag ], [ %i.ft, %bb.z ], [ %i.gs, %bb.ak ], [ %i.gm, %bb.ah ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.al ], [ %i.cf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_iiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiENKUlS8_E_clES8_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_iiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiENKUlS8_E_clES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.161", align 8 ; 32 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1280, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1282, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = mul nsw i32 %i.i, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1283, !nonnull !217, !align !420
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 8 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = alloca i8, i64 %i.s, align 16            ; 7 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not64 = icmp eq i32 %i.j, 0
  %i.v = sext i32 %i.n to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = zext nneg i32 %i.q to i64                ; 4 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = alloca i8, i64 %i.w, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.z, align 16, !tbaa !327
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 16, !tbaa !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader161

.lr.ph.split.preheader161:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.t, i8 0, i64 %i.ac, i1 false), !tbaa !327
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %bb.e, %.lr.ph.split.us.preheader, %bb.f
  %i.ad = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %.lr.ph.split.us.preheader ], [ true, %middle.block ], [ true, %.lr.ph.split ] ; 3 uses
  %i.ae = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %.lr.ph.split.us.preheader ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1285, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1283, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.trip.count124 = zext nneg i32 %i.q to i64
  %wide.trip.count129 = zext nneg i32 %i.q to i64
  %wide.trip.count134 = zext nneg i32 %i.q to i64
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader161, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader161 ] ; 2 uses
  %i.bm = alloca i8, i64 %i.w, align 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1286

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %.loopexit
  %i.bo = load i8, ptr %i.ai, align 8, !tbaa !275, !range !216, !noundef !217
  %i.bp = icmp eq i8 %i.bo, 0
  %.pre136 = load i32, ptr %i.aj, align 4, !tbaa !279 ; 2 uses
  br i1 %i.bp, label %bb.g, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre137 = load i32, ptr %i.al, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bq = load i32, ptr %i.ak, align 4, !tbaa !281
  %i.br = icmp eq i32 %.pre136, %i.bq
  %.pre138 = load i32, ptr %i.al, align 8, !tbaa !280 ; 3 uses
  %i.bs = load i32, ptr %i.am, align 4
  %i.bt = icmp eq i32 %.pre138, %i.bs
  %or.cond = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.g
  %i.bu = load i32, ptr %i.an, align 4, !tbaa !282
  %i.bv = load i32, ptr %i.ao, align 8, !tbaa !283
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !284
  %.not.i66 = icmp eq ptr %i.cb, null
  br i1 %.not.i66, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.g, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cf = phi i32 [ %.pre137, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre138, %bb.g ], [ %.pre138, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.cg = sub nsw i32 %.pre136, %.sroa.speculated88 ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1280, !nonnull !217, !align !422
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = add nsw i32 %i.ci, %i.cg
  %i.ck = sub nsw i32 %i.cf, %i.m                 ; 2 uses
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !1282, !nonnull !217, !align !422
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add nsw i32 %i.cm, %i.ck
  %i.co = load i32, ptr %i.an, align 4, !tbaa !282 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.cg, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef 2)
          to label %.preheader103 unwind label %bb.p

.preheader103:                                    ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %.preheader103.backedge
  %.052 = phi i32 [ %.052.be, %.preheader103.backedge ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread ] ; 7 uses
  %i.cq = load i8, ptr %i.ap, align 8, !tbaa !275, !range !216, !noundef !217
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit68.thread
end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L18median_filter_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiENKUlS8_E_clES8_:bb.a

bb.ag:                                            ; preds = %._crit_edge.i, %bb.ac, %bb.z
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ah:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit68
  %.not58 = icmp eq i32 %.052, 0
  br i1 %.not58, label %.preheader101, label %bb.ai

.preheader101:                                    ; preds = %bb.ah
  br i1 %i.ad, label %.lr.ph113, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ad, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %bb.ai
  %i.ft = sdiv i32 %.052, 2
  %i.fu = sext i32 %.052 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.fu, 2
  %i.fv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fu, i1 true)
  %i.fw = shl nuw nsw i64 %i.fv, 1
  %i.fx = xor i64 %i.fw, 126
  %i.fy = sext i32 %i.ft to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph111, %bb.am
  %indvars.iv126 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next127, %bb.am ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !327 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %.idx ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gb, i64 noundef %i.fx)
          to label %.noexc73 unwind label %bb.an

.noexc73:                                         ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gb)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %.noexc73
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !327
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.fy
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !254
  %i.gf = load ptr, ptr %3, align 8, !tbaa !287
  %i.gg = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf)
          to label %.noexc75 unwind label %bb.ao

.noexc75:                                         ; preds = %bb.ak
  %i.gh = icmp eq i32 %i.gg, 3
  br i1 %i.gh, label %bb.al, label %bb.am, !prof !288

bb.al:                                            ; preds = %.noexc75
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.noexc75, %bb.al
  %i.gi = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv126
  store float %i.ge, ptr %i.gj, align 4, !tbaa !254
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.aj, !llvm.loop !1288

bb.an:                                            ; preds = %.noexc73, %bb.aj
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.lr.ph113:                                        ; preds = %.preheader101, %bb.aq
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.aq ], [ 0, %.preheader101 ] ; 2 uses
  %i.gm = load ptr, ptr %3, align 8, !tbaa !287
  %i.gn = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gm)
          to label %.noexc79 unwind label %bb.ar

.noexc79:                                         ; preds = %.lr.ph113
  %i.go = icmp eq i32 %i.gn, 3
  br i1 %i.go, label %bb.ap, label %bb.aq, !prof !288

bb.ap:                                            ; preds = %.noexc79
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc79, %bb.ap
  %i.gp = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv131
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !254
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %.lr.ph113, !llvm.loop !1289

bb.ar:                                            ; preds = %bb.ap, %.lr.ph113
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit:                                        ; preds = %bb.am, %bb.aq, %bb.ai, %.preheader101
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1290

bb.as:                                            ; preds = %bb.ag, %bb.ar, %bb.ao, %bb.an, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.df, %bb.p ], [ %i.gk, %bb.an ], [ %i.fs, %bb.ag ], [ %i.gr, %bb.ar ], [ %i.gl, %bb.ao ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.as ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIftEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIftEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 32 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1293, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = mul nsw i32 %i.i, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1294, !nonnull !217, !align !420
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 10 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = alloca i8, i64 %i.s, align 16            ; 7 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not64 = icmp eq i32 %i.j, 0
  %i.v = sext i32 %i.n to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = zext nneg i32 %i.q to i64                ; 4 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = alloca i8, i64 %i.w, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.z, align 16, !tbaa !327
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 16, !tbaa !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader159

.lr.ph.split.preheader159:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.t, i8 0, i64 %i.ac, i1 false), !tbaa !327
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %bb.e, %.lr.ph.split.us.preheader, %bb.f
  %i.ad = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %.lr.ph.split.us.preheader ], [ true, %middle.block ], [ true, %.lr.ph.split ] ; 3 uses
  %i.ae = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %.lr.ph.split.us.preheader ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1296, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1294, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.trip.count124 = zext i32 %i.q to i64      ; 2 uses
  %wide.trip.count129 = zext nneg i32 %i.q to i64
  %wide.trip.count134 = zext nneg i32 %i.q to i64
  %xtraiter = and i64 %wide.trip.count124, 1
  %i.bm = icmp eq i32 %i.q, 1
  %unroll_iter = and i64 %wide.trip.count124, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i32 %i.q to i1
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader159, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader159 ] ; 2 uses
  %i.bn = alloca i8, i64 %i.w, align 16
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1297

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %.loopexit
  %i.bp = load i8, ptr %i.ai, align 8, !tbaa !275, !range !216, !noundef !217
  %i.bq = icmp eq i8 %i.bp, 0
  %.pre136 = load i32, ptr %i.aj, align 4, !tbaa !279 ; 2 uses
  br i1 %i.bq, label %bb.g, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre137 = load i32, ptr %i.al, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.br = load i32, ptr %i.ak, align 4, !tbaa !281
  %i.bs = icmp eq i32 %.pre136, %i.br
  %.pre138 = load i32, ptr %i.al, align 8, !tbaa !280 ; 3 uses
  %i.bt = load i32, ptr %i.am, align 4
  %i.bu = icmp eq i32 %.pre138, %i.bt
  %or.cond = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.g
  %i.bv = load i32, ptr %i.an, align 4, !tbaa !282
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !283
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !284
  %.not.i66 = icmp eq ptr %i.cc, null
  br i1 %.not.i66, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.g, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cg = phi i32 [ %.pre137, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre138, %bb.g ], [ %.pre138, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ch = sub nsw i32 %.pre136, %.sroa.speculated88 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !217, !align !422
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, %i.ch
  %i.cl = sub nsw i32 %i.cg, %i.m                 ; 2 uses
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !1293, !nonnull !217, !align !422
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add nsw i32 %i.cn, %i.cl
  %i.cp = load i32, ptr %i.an, align 4, !tbaa !282 ; 2 uses
  %i.cq = add nsw i32 %i.cp, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef 2)
          to label %.preheader103 unwind label %bb.p

end_hunk_4
begin_hunk_5_@_ZZN11OpenImageIO4v3_1L18median_filter_implIftEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_:bb.a

bb.z:                                             ; preds = %._crit_edge.i, %bb.v, %bb.s
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aa:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit68
  %.not58 = icmp eq i32 %.052, 0
  br i1 %.not58, label %.preheader101, label %bb.ab

.preheader101:                                    ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph113, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %bb.ab
  %i.fu = sdiv i32 %.052, 2
  %i.fv = sext i32 %.052 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.fv, 2
  %i.fw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = xor i64 %i.fx, 126
  %i.fz = sext i32 %i.fu to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph111, %bb.af
  %indvars.iv126 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next127, %bb.af ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !327 ; 3 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %.idx ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc, i64 noundef %i.fy)
          to label %.noexc73 unwind label %bb.ag

.noexc73:                                         ; preds = %bb.ac
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %.noexc73
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !327
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.fz
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !254
  %i.gg = load ptr, ptr %3, align 8, !tbaa !287
  %i.gh = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg)
          to label %.noexc75 unwind label %bb.ah

.noexc75:                                         ; preds = %bb.ad
  %i.gi = icmp eq i32 %i.gh, 3
  br i1 %i.gi, label %bb.ae, label %bb.af, !prof !288

bb.ae:                                            ; preds = %.noexc75
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.noexc75, %bb.ae
  %i.gj = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv126
  store float %i.gf, ptr %i.gk, align 4, !tbaa !254
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.ac, !llvm.loop !1299

bb.ag:                                            ; preds = %.noexc73, %bb.ac
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph113:                                        ; preds = %.preheader101, %bb.aj
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.aj ], [ 0, %.preheader101 ] ; 2 uses
  %i.gn = load ptr, ptr %3, align 8, !tbaa !287
  %i.go = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn)
          to label %.noexc79 unwind label %bb.ak

.noexc79:                                         ; preds = %.lr.ph113
  %i.gp = icmp eq i32 %i.go, 3
  br i1 %i.gp, label %bb.ai, label %bb.aj, !prof !288

bb.ai:                                            ; preds = %.noexc79
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc79, %bb.ai
  %i.gq = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv131
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !254
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %.lr.ph113, !llvm.loop !1300

bb.ak:                                            ; preds = %bb.ai, %.lr.ph113
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %bb.af, %bb.aj, %bb.ab, %.preheader101
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1301

bb.al:                                            ; preds = %bb.z, %bb.ak, %bb.ah, %bb.ag, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.dg, %bb.p ], [ %i.gl, %bb.ag ], [ %i.ft, %bb.z ], [ %i.gs, %bb.ak ], [ %i.gm, %bb.ah ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.al ], [ %i.cf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIhhEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIhhEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 32 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.169", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1302, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1304, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = mul nsw i32 %i.i, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1305, !nonnull !217, !align !420
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 10 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = alloca i8, i64 %i.s, align 16            ; 7 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not64 = icmp eq i32 %i.j, 0
  %i.v = sext i32 %i.n to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = zext nneg i32 %i.q to i64                ; 4 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = alloca i8, i64 %i.w, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.z, align 16, !tbaa !327
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 16, !tbaa !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader159

.lr.ph.split.preheader159:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.t, i8 0, i64 %i.ac, i1 false), !tbaa !327
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %bb.e, %.lr.ph.split.us.preheader, %bb.f
  %i.ad = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %.lr.ph.split.us.preheader ], [ true, %middle.block ], [ true, %.lr.ph.split ] ; 3 uses
  %i.ae = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %.lr.ph.split.us.preheader ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1307, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1305, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.trip.count124 = zext i32 %i.q to i64      ; 2 uses
  %wide.trip.count129 = zext nneg i32 %i.q to i64
  %wide.trip.count134 = zext nneg i32 %i.q to i64
  %xtraiter = and i64 %wide.trip.count124, 1
  %i.bm = icmp eq i32 %i.q, 1
  %unroll_iter = and i64 %wide.trip.count124, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i32 %i.q to i1
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader159, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader159 ] ; 2 uses
  %i.bn = alloca i8, i64 %i.w, align 16
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1308

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %.loopexit
  %i.bp = load i8, ptr %i.ai, align 8, !tbaa !275, !range !216, !noundef !217
  %i.bq = icmp eq i8 %i.bp, 0
  %.pre136 = load i32, ptr %i.aj, align 4, !tbaa !279 ; 2 uses
  br i1 %i.bq, label %bb.g, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre137 = load i32, ptr %i.al, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.br = load i32, ptr %i.ak, align 4, !tbaa !281
  %i.bs = icmp eq i32 %.pre136, %i.br
  %.pre138 = load i32, ptr %i.al, align 8, !tbaa !280 ; 3 uses
  %i.bt = load i32, ptr %i.am, align 4
  %i.bu = icmp eq i32 %.pre138, %i.bt
  %or.cond = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.g
  %i.bv = load i32, ptr %i.an, align 4, !tbaa !282
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !283
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !284
  %.not.i66 = icmp eq ptr %i.cc, null
  br i1 %.not.i66, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.g, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cg = phi i32 [ %.pre137, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre138, %bb.g ], [ %.pre138, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ch = sub nsw i32 %.pre136, %.sroa.speculated88 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !1302, !nonnull !217, !align !422
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, %i.ch
  %i.cl = sub nsw i32 %i.cg, %i.m                 ; 2 uses
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !1304, !nonnull !217, !align !422
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add nsw i32 %i.cn, %i.cl
  %i.cp = load i32, ptr %i.an, align 4, !tbaa !282 ; 2 uses
  %i.cq = add nsw i32 %i.cp, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef 2)
          to label %.preheader103 unwind label %bb.p

end_hunk_5
begin_hunk_6_@_ZZN11OpenImageIO4v3_1L18median_filter_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_:bb.a

.preheader101:                                    ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph113, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %bb.ab
  %i.fu = sdiv i32 %.052, 2
  %i.fv = sext i32 %.052 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.fv, 2
  %i.fw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = xor i64 %i.fx, 126
  %i.fz = sext i32 %i.fu to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph111, %bb.af
  %indvars.iv126 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next127, %bb.af ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !327 ; 3 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %.idx ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc, i64 noundef %i.fy)
          to label %.noexc73 unwind label %bb.ag

.noexc73:                                         ; preds = %bb.ac
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %.noexc73
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !327
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.fz
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !254
  %i.gg = load ptr, ptr %3, align 8, !tbaa !287
  %i.gh = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg)
          to label %.noexc75 unwind label %bb.ah

.noexc75:                                         ; preds = %bb.ad
  %i.gi = icmp eq i32 %i.gh, 3
  br i1 %i.gi, label %bb.ae, label %bb.af, !prof !288

bb.ae:                                            ; preds = %.noexc75
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.noexc75, %bb.ae
  %i.gj = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv126
  %i.gl = fmul float %i.gf, 2.550000e+02          ; 2 uses
  %i.gm = fcmp olt float %i.gl, 0.000000e+00
  %i.gn = select i1 %i.gm, float -5.000000e-01, float 5.000000e-01
  %i.go = fadd float %i.gl, %i.gn                 ; 2 uses
  %.inv.i.i.i.i.i = fcmp oge float %i.go, 0.000000e+00
  %.0.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, float %i.go, float 0.000000e+00 ; 2 uses
  %i.gp = fcmp ogt float %.0.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i = select i1 %i.gp, float 2.550000e+02, float %.0.i.i.i.i.i.i
  %i.gq = fptoui float %.1.i.i.i.i.i.i to i8
  store i8 %i.gq, ptr %i.gk, align 1, !tbaa !96
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.ac, !llvm.loop !1310

bb.ag:                                            ; preds = %.noexc73, %bb.ac
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph113:                                        ; preds = %.preheader101, %bb.aj
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.aj ], [ 0, %.preheader101 ] ; 2 uses
  %i.gt = load ptr, ptr %3, align 8, !tbaa !287
  %i.gu = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %.noexc79 unwind label %bb.ak

.noexc79:                                         ; preds = %.lr.ph113
  %i.gv = icmp eq i32 %i.gu, 3
  br i1 %i.gv, label %bb.ai, label %bb.aj, !prof !288

bb.ai:                                            ; preds = %.noexc79
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc79, %bb.ai
  %i.gw = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv131
  store i8 0, ptr %i.gx, align 1, !tbaa !96
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %.lr.ph113, !llvm.loop !1311

bb.ak:                                            ; preds = %bb.ai, %.lr.ph113
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %bb.af, %bb.aj, %bb.ab, %.preheader101
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1312

bb.al:                                            ; preds = %bb.z, %bb.ak, %bb.ah, %bb.ag, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.dg, %bb.p ], [ %i.gr, %bb.ag ], [ %i.ft, %bb.z ], [ %i.gy, %bb.ak ], [ %i.gs, %bb.ah ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.al ], [ %i.cf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_iiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiENKUlS8_E_clES8_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_iiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiENKUlS8_E_clES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.161", align 8 ; 32 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.173", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1313, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1315, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated94 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = mul nsw i32 %i.i, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1316, !nonnull !217, !align !420
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 8 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = alloca i8, i64 %i.s, align 16            ; 7 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not64 = icmp eq i32 %i.j, 0
  %i.v = sext i32 %i.n to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = zext nneg i32 %i.q to i64                ; 4 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader169, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = alloca i8, i64 %i.w, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.z, align 16, !tbaa !327
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 16, !tbaa !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader169

.lr.ph.split.preheader169:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.t, i8 0, i64 %i.ac, i1 false), !tbaa !327
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %bb.e, %.lr.ph.split.us.preheader, %bb.f
  %i.ad = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %.lr.ph.split.us.preheader ], [ true, %middle.block ], [ true, %.lr.ph.split ] ; 3 uses
  %i.ae = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %.lr.ph.split.us.preheader ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1318, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1316, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.trip.count130 = zext nneg i32 %i.q to i64
  %wide.trip.count135 = zext nneg i32 %i.q to i64
  %wide.trip.count140 = zext nneg i32 %i.q to i64
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader169, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader169 ] ; 2 uses
  %i.bm = alloca i8, i64 %i.w, align 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1319

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %.loopexit
  %i.bo = load i8, ptr %i.ai, align 8, !tbaa !275, !range !216, !noundef !217
  %i.bp = icmp eq i8 %i.bo, 0
  %.pre142 = load i32, ptr %i.aj, align 4, !tbaa !279 ; 2 uses
  br i1 %i.bp, label %bb.g, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre143 = load i32, ptr %i.al, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bq = load i32, ptr %i.ak, align 4, !tbaa !281
  %i.br = icmp eq i32 %.pre142, %i.bq
  %.pre144 = load i32, ptr %i.al, align 8, !tbaa !280 ; 3 uses
  %i.bs = load i32, ptr %i.am, align 4
  %i.bt = icmp eq i32 %.pre144, %i.bs
  %or.cond = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.g
  %i.bu = load i32, ptr %i.an, align 4, !tbaa !282
  %i.bv = load i32, ptr %i.ao, align 8, !tbaa !283
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !284
  %.not.i66 = icmp eq ptr %i.cb, null
  br i1 %.not.i66, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.g, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cf = phi i32 [ %.pre143, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre144, %bb.g ], [ %.pre144, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.cg = sub nsw i32 %.pre142, %.sroa.speculated94 ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1313, !nonnull !217, !align !422
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = add nsw i32 %i.ci, %i.cg
  %i.ck = sub nsw i32 %i.cf, %i.m                 ; 2 uses
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !1315, !nonnull !217, !align !422
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add nsw i32 %i.cm, %i.ck
  %i.co = load i32, ptr %i.an, align 4, !tbaa !282 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.cg, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef 2)
          to label %.preheader109 unwind label %bb.p

.preheader109:                                    ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %.preheader109.backedge
  %.052 = phi i32 [ %.052.be, %.preheader109.backedge ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread ] ; 7 uses
  %i.cq = load i8, ptr %i.ap, align 8, !tbaa !275, !range !216, !noundef !217
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit68.thread
end_hunk_6
begin_hunk_7_@_ZZN11OpenImageIO4v3_1L18median_filter_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_3ROIEiENKUlS8_E_clES8_:bb.a
  %i.gw = zext i1 %i.gv to i16
  %i.gx = trunc nuw nsw i32 %i.gu to i16
  %i.gy = or i16 %i.gx, %i.gw
  %i.gz = or disjoint i16 %i.gy, %i.gr
  br label %bb.aw

bb.ap:                                            ; preds = %bb.am
  %i.ha = icmp samesign ugt i32 %i.gl, 1199566847
  br i1 %i.ha, label %bb.aq, label %bb.ar, !prof !288

bb.aq:                                            ; preds = %bb.ap
  %i.hb = or disjoint i16 %i.go, 31744
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.hc = add nuw nsw i32 %i.gl, 134221823
  %i.hd = lshr i32 %i.gl, 13
  %i.he = and i32 %i.hd, 1
  %i.hf = add nuw nsw i32 %i.hc, %i.he
  %i.hg = lshr i32 %i.hf, 13
  %i.hh = and i32 %i.gm, 32768
  %i.hi = or i32 %i.hg, %i.hh
  %i.hj = trunc i32 %i.hi to i16
  br label %bb.aw

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i
  %i.hk = icmp samesign ult i32 %i.gl, 855638017
  br i1 %i.hk, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hl = lshr i32 %i.gl, 23                      ; 2 uses
  %i.hm = sub nuw nsw i32 126, %i.hl
  %i.hn = and i32 %i.gl, 8388607
  %i.ho = or disjoint i32 %i.hn, 8388608          ; 2 uses
  %i.hp = add nsw i32 %i.hl, -94
  %i.hq = shl i32 %i.ho, %i.hp                    ; 2 uses
  %i.hr = lshr i32 %i.ho, %i.hm                   ; 2 uses
  %i.hs = and i32 %i.gm, 32768
  %i.ht = or i32 %i.hr, %i.hs
  %i.hu = trunc nuw i32 %i.ht to i16              ; 2 uses
  %i.hv = icmp ugt i32 %i.hq, -2147483648
  br i1 %i.hv, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hw = icmp ne i32 %i.hq, -2147483648
  %i.hx = and i32 %i.hr, 1
  %.not.i.i.i.i.i80 = icmp eq i32 %i.hx, 0
  %or.cond.i.i.i.i.i = select i1 %i.hw, i1 true, i1 %.not.i.i.i.i.i80
  br i1 %or.cond.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hy = add nuw i16 %i.hu, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.as, %bb.au, %bb.av
  %.0.i.i.i.i.i = phi i16 [ %i.go, %bb.as ], [ %i.gz, %bb.ao ], [ %i.hb, %bb.aq ], [ %i.hj, %bb.ar ], [ %i.gr, %bb.an ], [ %i.hy, %bb.av ], [ %i.hu, %bb.au ]
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %indvars.iv132
  store i16 %.0.i.i.i.i.i, ptr %i.hz, align 2, !tbaa !1177
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.loopexit, label %bb.aj, !llvm.loop !1321

bb.ax:                                            ; preds = %.noexc73, %bb.aj
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ay:                                            ; preds = %bb.al, %bb.ak
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph119:                                        ; preds = %.preheader107, %bb.ba
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.ba ], [ 0, %.preheader107 ] ; 2 uses
  %i.ic = load ptr, ptr %3, align 8, !tbaa !287
  %i.id = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic)
          to label %.noexc85 unwind label %bb.bb

.noexc85:                                         ; preds = %.lr.ph119
  %i.ie = icmp eq i32 %i.id, 3
  br i1 %i.ie, label %bb.az, label %bb.ba, !prof !288

bb.az:                                            ; preds = %.noexc85
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az, %.noexc85
  %i.if = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv137
  store i16 0, ptr %i.ig, align 2, !tbaa !1177
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %.loopexit, label %.lr.ph119, !llvm.loop !1322

bb.bb:                                            ; preds = %bb.az, %.lr.ph119
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit:                                        ; preds = %bb.aw, %bb.ba, %bb.ai, %.preheader107
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1323

bb.bc:                                            ; preds = %bb.ag, %bb.bb, %bb.ay, %bb.ax, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.df, %bb.p ], [ %i.ia, %bb.ax ], [ %i.fs, %bb.ag ], [ %i.ih, %bb.bb ], [ %i.ib, %bb.ay ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.bc ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIttEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L18median_filter_implIttEEbRNS1_8ImageBufERKS5_iiS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS2_8ImageBufERKS4_iiNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 32 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.179", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1324, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1326, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = mul nsw i32 %i.i, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1327, !nonnull !217, !align !420
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 10 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = alloca i8, i64 %i.s, align 16            ; 7 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.not64 = icmp eq i32 %i.j, 0
  %i.v = sext i32 %i.n to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = zext nneg i32 %i.q to i64                ; 4 uses
  br i1 %.not64, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = alloca i8, i64 %i.w, align 16
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.z, align 16, !tbaa !327
  store <2 x ptr> %broadcast.splat, ptr %i.aa, align 16, !tbaa !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader159

.lr.ph.split.preheader159:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.t, i8 0, i64 %i.ac, i1 false), !tbaa !327
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %middle.block, %bb.e, %.lr.ph.split.us.preheader, %bb.f
  %i.ad = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %.lr.ph.split.us.preheader ], [ true, %middle.block ], [ true, %.lr.ph.split ] ; 3 uses
  %i.ae = phi ptr [ null, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %.lr.ph.split.us.preheader ], [ %i.t, %middle.block ], [ %i.t, %.lr.ph.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1329, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !1327, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.m

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.trip.count124 = zext i32 %i.q to i64      ; 2 uses
  %wide.trip.count129 = zext nneg i32 %i.q to i64
  %wide.trip.count134 = zext nneg i32 %i.q to i64
  %xtraiter = and i64 %wide.trip.count124, 1
  %i.bm = icmp eq i32 %i.q, 1
  %unroll_iter = and i64 %wide.trip.count124, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i32 %i.q to i1
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader159, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader159 ] ; 2 uses
  %i.bn = alloca i8, i64 %i.w, align 16
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1330

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %.loopexit
  %i.bp = load i8, ptr %i.ai, align 8, !tbaa !275, !range !216, !noundef !217
  %i.bq = icmp eq i8 %i.bp, 0
  %.pre136 = load i32, ptr %i.aj, align 4, !tbaa !279 ; 2 uses
  br i1 %i.bq, label %bb.g, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre137 = load i32, ptr %i.al, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.br = load i32, ptr %i.ak, align 4, !tbaa !281
  %i.bs = icmp eq i32 %.pre136, %i.br
  %.pre138 = load i32, ptr %i.al, align 8, !tbaa !280 ; 3 uses
  %i.bt = load i32, ptr %i.am, align 4
  %i.bu = icmp eq i32 %.pre138, %i.bt
  %or.cond = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.g
  %i.bv = load i32, ptr %i.an, align 4, !tbaa !282
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !283
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !284
  %.not.i66 = icmp eq ptr %i.cc, null
  br i1 %.not.i66, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit67: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.g, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cg = phi i32 [ %.pre137, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre138, %bb.g ], [ %.pre138, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ch = sub nsw i32 %.pre136, %.sroa.speculated88 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !1324, !nonnull !217, !align !422
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, %i.ch
  %i.cl = sub nsw i32 %i.cg, %i.m                 ; 2 uses
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !1326, !nonnull !217, !align !422
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add nsw i32 %i.cn, %i.cl
  %i.cp = load i32, ptr %i.an, align 4, !tbaa !282 ; 2 uses
  %i.cq = add nsw i32 %i.cp, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef 2)
          to label %.preheader103 unwind label %bb.p

end_hunk_7
begin_hunk_8_@_ZZN11OpenImageIO4v3_1L18median_filter_implIttEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_:bb.a

.preheader101:                                    ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph113, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ad, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %bb.ab
  %i.fu = sdiv i32 %.052, 2
  %i.fv = sext i32 %.052 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.fv, 2
  %i.fw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = xor i64 %i.fx, 126
  %i.fz = sext i32 %i.fu to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph111, %bb.af
  %indvars.iv126 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next127, %bb.af ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !327 ; 3 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %.idx ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc, i64 noundef %i.fy)
          to label %.noexc73 unwind label %bb.ag

.noexc73:                                         ; preds = %bb.ac
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %.noexc73
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !327
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.fz
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !254
  %i.gg = load ptr, ptr %3, align 8, !tbaa !287
  %i.gh = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg)
          to label %.noexc75 unwind label %bb.ah

.noexc75:                                         ; preds = %bb.ad
  %i.gi = icmp eq i32 %i.gh, 3
  br i1 %i.gi, label %bb.ae, label %bb.af, !prof !288

bb.ae:                                            ; preds = %.noexc75
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.noexc75, %bb.ae
  %i.gj = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %indvars.iv126
  %i.gl = fmul float %i.gf, 6.553500e+04          ; 2 uses
  %i.gm = fcmp olt float %i.gl, 0.000000e+00
  %i.gn = select i1 %i.gm, float -5.000000e-01, float 5.000000e-01
  %i.go = fadd float %i.gl, %i.gn                 ; 2 uses
  %.inv.i.i.i.i.i = fcmp oge float %i.go, 0.000000e+00
  %.0.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, float %i.go, float 0.000000e+00 ; 2 uses
  %i.gp = fcmp ogt float %.0.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i = select i1 %i.gp, float 6.553500e+04, float %.0.i.i.i.i.i.i
  %i.gq = fptoui float %.1.i.i.i.i.i.i to i16
  store i16 %i.gq, ptr %i.gk, align 2, !tbaa !1177
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.ac, !llvm.loop !1332

bb.ag:                                            ; preds = %.noexc73, %bb.ac
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph113:                                        ; preds = %.preheader101, %bb.aj
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.aj ], [ 0, %.preheader101 ] ; 2 uses
  %i.gt = load ptr, ptr %3, align 8, !tbaa !287
  %i.gu = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %.noexc79 unwind label %bb.ak

.noexc79:                                         ; preds = %.lr.ph113
  %i.gv = icmp eq i32 %i.gu, 3
  br i1 %i.gv, label %bb.ai, label %bb.aj, !prof !288

bb.ai:                                            ; preds = %.noexc79
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc79, %bb.ai
  %i.gw = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %indvars.iv131
  store i16 0, ptr %i.gx, align 2, !tbaa !1177
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %.lr.ph113, !llvm.loop !1333

bb.ak:                                            ; preds = %bb.ai, %.lr.ph113
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %bb.af, %bb.aj, %bb.ab, %.preheader101
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1334

bb.al:                                            ; preds = %bb.z, %bb.ak, %bb.ah, %bb.ag, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.dg, %bb.p ], [ %i.gr, %bb.ag ], [ %i.ft, %bb.z ], [ %i.gy, %bb.ak ], [ %i.gs, %bb.ah ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.al ], [ %i.cf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIffEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIffEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiEUlS7_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1335
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIffEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1336, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1338, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1339, !nonnull !217, !align !420
  %i.p = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 12 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1340, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1339, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.n

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp sgt i32 %i.p, 0                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.trip.count = zext i32 %i.p to i64         ; 9 uses
  %wide.trip.count121 = zext nneg i32 %i.p to i64
  %wide.trip.count126 = zext nneg i32 %i.p to i64
  %wide.trip.count131 = zext nneg i32 %i.p to i64
  %wide.trip.count136 = zext nneg i32 %i.p to i64
  %min.iters.check196 = icmp ult i32 %i.p, 8
  %n.vec199 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count
  %min.iters.check181 = icmp ult i32 %i.p, 8
  %n.vec184 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n193 = icmp eq i64 %n.vec184, %wide.trip.count
  %min.iters.check170 = icmp ult i32 %i.p, 8
  %n.vec173 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec173, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.p, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge115
  %i.bd = load i8, ptr %i.x, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  %.pre138 = load i32, ptr %i.y, align 4, !tbaa !279 ; 2 uses
  br i1 %i.be, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre139 = load i32, ptr %i.aa, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !281
  %i.bg = icmp eq i32 %.pre138, %i.bf
  %.pre140 = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = icmp eq i32 %.pre140, %i.bh
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !283
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !284
  %.not.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i53, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.n:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bu = phi i32 [ %.pre139, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre140, %bb.h ], [ %.pre140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bv = sub nsw i32 %.pre138, %.sroa.speculated86 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1336, !nonnull !217, !align !422
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sub nsw i32 %i.bu, %i.m                 ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !1338, !nonnull !217, !align !422
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !282 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !1341, !nonnull !217, !align !422
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !344
  switch i32 %i.cg, label %bb.al [
    i32 0, label %.preheader97
    i32 1, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader98.preheader

.lr.ph.preheader:                                 ; preds = %.preheader103
  br i1 %min.iters.check196, label %.lr.ph.preheader208, label %vector.body200

vector.body200:                                   ; preds = %.lr.ph.preheader, %vector.body200
  %index201 = phi i64 [ %index.next202, %vector.body200 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index201 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ch, align 16, !tbaa !254
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ci, align 16, !tbaa !254
  %index.next202 = add nuw i64 %index201, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.cj, label %middle.block203, label %vector.body200, !llvm.loop !1342

middle.block203:                                  ; preds = %vector.body200
  br i1 %cmp.n204, label %.preheader98.preheader, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %.lr.ph.preheader, %middle.block203
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec199, %middle.block203 ]
  br label %.lr.ph

.preheader97:                                     ; preds = %bb.o
  br i1 %i.af, label %.lr.ph108.preheader, label %.preheader95.preheader

.lr.ph108.preheader:                              ; preds = %.preheader97
  br i1 %min.iters.check170, label %.lr.ph108.preheader206, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph108.preheader, %vector.body174
  %index175 = phi i64 [ %index.next176, %vector.body174 ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index175 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.ck, align 16, !tbaa !254
end_hunk_8
begin_hunk_9_@_ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_:bb.a
  %i.ha = load ptr, ptr %i.ap, align 8, !tbaa !289
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 %i.gz
  store ptr %i.hb, ptr %i.ap, align 8, !tbaa !289
  %i.hc = load i32, ptr %i.au, align 8, !tbaa !313
  %i.hd = icmp slt i32 %i.gk, %i.hc               ; 3 uses
  %i.he = load i32, ptr %i.av, align 4
  %i.hf = icmp sge i32 %i.gk, %i.he
  %not..i.i67 = xor i1 %i.hd, true
  %or.cond.i.i68 = select i1 %not..i.i67, i1 true, i1 %i.hf, !prof !315
  %i.hg = load ptr, ptr %i.aw, align 8
  %i.hh = icmp eq ptr %i.hg, null
  %i.hi = select i1 %or.cond.i.i68, i1 true, i1 %i.hh, !prof !315
  br i1 %i.hi, label %bb.ah, label %.preheader98.backedge, !prof !288

bb.ah:                                            ; preds = %bb.ag
  %i.hj = load ptr, ptr %2, align 8, !tbaa !287
  %i.hk = load i32, ptr %i.aj, align 8, !tbaa !280
  %i.hl = load i32, ptr %i.al, align 4, !tbaa !282
  %i.hm = load i32, ptr %i.bb, align 8, !tbaa !316
  %i.hn = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i32 noundef %i.gk, i32 noundef %i.hk, i32 noundef %i.hl, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.ba, i1 noundef zeroext %i.hd, i32 noundef %i.hm)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %bb.ah
  %i.ho = zext i1 %i.hd to i8
  store ptr %i.hn, ptr %i.ap, align 8, !tbaa !289
  store i8 %i.ho, ptr %i.an, align 1, !tbaa !310
  br label %.preheader98.backedge

bb.ai:                                            ; preds = %._crit_edge._crit_edge, %.thread92
  %.pre144 = phi i32 [ %.pre144.pre, %._crit_edge._crit_edge ], [ %.pre144.pre149, %.thread92 ] ; 2 uses
  %i.hp = phi i32 [ %.pre141, %._crit_edge._crit_edge ], [ %.pre142, %.thread92 ]
  %i.hq = load i32, ptr %i.ai, align 4, !tbaa !281 ; 3 uses
  store i32 %i.hq, ptr %i.ah, align 4, !tbaa !279
  %i.hr = add nsw i32 %i.hp, 1                    ; 3 uses
  store i32 %i.hr, ptr %i.aj, align 8, !tbaa !280
  %i.hs = load i32, ptr %i.aq, align 8, !tbaa !317
  %.not.i62 = icmp slt i32 %i.hr, %i.hs
  br i1 %.not.i62, label %._crit_edge.i64, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ht = load i32, ptr %i.ak, align 4, !tbaa !300 ; 2 uses
  store i32 %i.ht, ptr %i.aj, align 8, !tbaa !280
  %i.hu = add nsw i32 %.pre144, 1                 ; 3 uses
  store i32 %i.hu, ptr %i.al, align 4, !tbaa !282
  %i.hv = load i32, ptr %i.am, align 8, !tbaa !283
  %.not1.i63 = icmp slt i32 %i.hu, %i.hv
  br i1 %.not1.i63, label %._crit_edge.i64, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.ag, align 8, !tbaa !275
  br label %.preheader98.backedge

._crit_edge.i64:                                  ; preds = %.thread92, %bb.aj, %bb.ai
  %i.hw = phi i32 [ %.pre144, %bb.ai ], [ %i.hu, %bb.aj ], [ %.pre144.pre149, %.thread92 ]
  %i.hx = phi i32 [ %i.hr, %bb.ai ], [ %i.ht, %bb.aj ], [ %.pre142, %.thread92 ]
  %i.hy = phi i32 [ %i.hq, %bb.ai ], [ %i.hq, %bb.aj ], [ %i.go, %.thread92 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.hy, i32 noundef %i.hx, i32 noundef %i.hw)
          to label %.preheader98.backedge unwind label %.loopexit.split-lp.loopexit

.preheader98.backedge:                            ; preds = %._crit_edge.i64, %bb.ae, %bb.ad, %bb.af, %bb.ag, %.noexc71, %bb.ak
  br label %.preheader98

bb.al:                                            ; preds = %bb.o
  %i.hz = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.ia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hz, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1200, ptr noundef nonnull @__FUNCTION__._ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_, ptr noundef nonnull @.str.121) #37 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit60, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit55, %bb.al
  br i1 %i.af, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.an, %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !llvm.loop !1350

.lr.ph114:                                        ; preds = %.loopexit, %bb.an
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.an ], [ 0, %.loopexit ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv133
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !254
  %i.id = load ptr, ptr %3, align 8, !tbaa !287
  %i.ie = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id)
          to label %.noexc74 unwind label %bb.ao

.noexc74:                                         ; preds = %.lr.ph114
  %i.if = icmp eq i32 %i.ie, 3
  br i1 %i.if, label %bb.am, label %bb.an, !prof !288

bb.am:                                            ; preds = %.noexc74
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc74, %bb.am
  %i.ig = load ptr, ptr %i.bc, align 8, !tbaa !289
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv133
  store float %i.ic, ptr %i.ih, align 4, !tbaa !254
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !1351

bb.ao:                                            ; preds = %bb.am, %.lr.ph114
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit96, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.ii, %bb.ao ], [ %lpad.loopexit, %.loopexit96 ], [ %lpad.loopexit100, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bt, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIfhEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIfhEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiEUlS7_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1335
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1352, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1354, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1355, !nonnull !217, !align !420
  %i.p = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 12 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1356, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1355, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.n

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp sgt i32 %i.p, 0                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.trip.count = zext i32 %i.p to i64         ; 9 uses
  %wide.trip.count121 = zext nneg i32 %i.p to i64
  %wide.trip.count126 = zext nneg i32 %i.p to i64
  %wide.trip.count131 = zext nneg i32 %i.p to i64
  %wide.trip.count136 = zext nneg i32 %i.p to i64
  %min.iters.check196 = icmp ult i32 %i.p, 8
  %n.vec199 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count
  %min.iters.check181 = icmp ult i32 %i.p, 8
  %n.vec184 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n193 = icmp eq i64 %n.vec184, %wide.trip.count
  %min.iters.check170 = icmp ult i32 %i.p, 8
  %n.vec173 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec173, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.p, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge115
  %i.bd = load i8, ptr %i.x, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  %.pre138 = load i32, ptr %i.y, align 4, !tbaa !279 ; 2 uses
  br i1 %i.be, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre139 = load i32, ptr %i.aa, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !281
  %i.bg = icmp eq i32 %.pre138, %i.bf
  %.pre140 = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = icmp eq i32 %.pre140, %i.bh
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !283
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !284
  %.not.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i53, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.n:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bu = phi i32 [ %.pre139, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre140, %bb.h ], [ %.pre140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bv = sub nsw i32 %.pre138, %.sroa.speculated86 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1352, !nonnull !217, !align !422
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sub nsw i32 %i.bu, %i.m                 ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !1354, !nonnull !217, !align !422
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !282 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !1357, !nonnull !217, !align !422
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !344
  switch i32 %i.cg, label %bb.al [
    i32 0, label %.preheader97
    i32 1, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader98.preheader

.lr.ph.preheader:                                 ; preds = %.preheader103
  br i1 %min.iters.check196, label %.lr.ph.preheader208, label %vector.body200

vector.body200:                                   ; preds = %.lr.ph.preheader, %vector.body200
  %index201 = phi i64 [ %index.next202, %vector.body200 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index201 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ch, align 16, !tbaa !254
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ci, align 16, !tbaa !254
  %index.next202 = add nuw i64 %index201, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.cj, label %middle.block203, label %vector.body200, !llvm.loop !1358

middle.block203:                                  ; preds = %vector.body200
  br i1 %cmp.n204, label %.preheader98.preheader, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %.lr.ph.preheader, %middle.block203
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec199, %middle.block203 ]
  br label %.lr.ph

.preheader97:                                     ; preds = %bb.o
  br i1 %i.af, label %.lr.ph108.preheader, label %.preheader95.preheader

.lr.ph108.preheader:                              ; preds = %.preheader97
  br i1 %min.iters.check170, label %.lr.ph108.preheader206, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph108.preheader, %vector.body174
  %index175 = phi i64 [ %index.next176, %vector.body174 ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index175 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.ck, align 16, !tbaa !254
end_hunk_9
begin_hunk_10_@_ZZN11OpenImageIO4v3_1L10morph_implIfhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_:bb.a
  %i.hm = load ptr, ptr %i.ap, align 8, !tbaa !289
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hl
  store ptr %i.hn, ptr %i.ap, align 8, !tbaa !289
  %i.ho = load i32, ptr %i.au, align 8, !tbaa !313
  %i.hp = icmp slt i32 %i.gw, %i.ho               ; 3 uses
  %i.hq = load i32, ptr %i.av, align 4
  %i.hr = icmp sge i32 %i.gw, %i.hq
  %not..i.i67 = xor i1 %i.hp, true
  %or.cond.i.i68 = select i1 %not..i.i67, i1 true, i1 %i.hr, !prof !315
  %i.hs = load ptr, ptr %i.aw, align 8
  %i.ht = icmp eq ptr %i.hs, null
  %i.hu = select i1 %or.cond.i.i68, i1 true, i1 %i.ht, !prof !315
  br i1 %i.hu, label %bb.ah, label %.preheader98.backedge, !prof !288

bb.ah:                                            ; preds = %bb.ag
  %i.hv = load ptr, ptr %2, align 8, !tbaa !287
  %i.hw = load i32, ptr %i.aj, align 8, !tbaa !280
  %i.hx = load i32, ptr %i.al, align 4, !tbaa !282
  %i.hy = load i32, ptr %i.bb, align 8, !tbaa !316
  %i.hz = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i32 noundef %i.gw, i32 noundef %i.hw, i32 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.ba, i1 noundef zeroext %i.hp, i32 noundef %i.hy)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %bb.ah
  %i.ia = zext i1 %i.hp to i8
  store ptr %i.hz, ptr %i.ap, align 8, !tbaa !289
  store i8 %i.ia, ptr %i.an, align 1, !tbaa !310
  br label %.preheader98.backedge

bb.ai:                                            ; preds = %._crit_edge._crit_edge, %.thread92
  %.pre144 = phi i32 [ %.pre144.pre, %._crit_edge._crit_edge ], [ %.pre144.pre149, %.thread92 ] ; 2 uses
  %i.ib = phi i32 [ %.pre141, %._crit_edge._crit_edge ], [ %.pre142, %.thread92 ]
  %i.ic = load i32, ptr %i.ai, align 4, !tbaa !281 ; 3 uses
  store i32 %i.ic, ptr %i.ah, align 4, !tbaa !279
  %i.id = add nsw i32 %i.ib, 1                    ; 3 uses
  store i32 %i.id, ptr %i.aj, align 8, !tbaa !280
  %i.ie = load i32, ptr %i.aq, align 8, !tbaa !317
  %.not.i62 = icmp slt i32 %i.id, %i.ie
  br i1 %.not.i62, label %._crit_edge.i64, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = load i32, ptr %i.ak, align 4, !tbaa !300 ; 2 uses
  store i32 %i.if, ptr %i.aj, align 8, !tbaa !280
  %i.ig = add nsw i32 %.pre144, 1                 ; 3 uses
  store i32 %i.ig, ptr %i.al, align 4, !tbaa !282
  %i.ih = load i32, ptr %i.am, align 8, !tbaa !283
  %.not1.i63 = icmp slt i32 %i.ig, %i.ih
  br i1 %.not1.i63, label %._crit_edge.i64, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.ag, align 8, !tbaa !275
  br label %.preheader98.backedge

._crit_edge.i64:                                  ; preds = %.thread92, %bb.aj, %bb.ai
  %i.ii = phi i32 [ %.pre144, %bb.ai ], [ %i.ig, %bb.aj ], [ %.pre144.pre149, %.thread92 ]
  %i.ij = phi i32 [ %i.id, %bb.ai ], [ %i.if, %bb.aj ], [ %.pre142, %.thread92 ]
  %i.ik = phi i32 [ %i.ic, %bb.ai ], [ %i.ic, %bb.aj ], [ %i.ha, %.thread92 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ik, i32 noundef %i.ij, i32 noundef %i.ii)
          to label %.preheader98.backedge unwind label %.loopexit.split-lp.loopexit

.preheader98.backedge:                            ; preds = %._crit_edge.i64, %bb.ae, %bb.ad, %bb.af, %bb.ag, %.noexc71, %bb.ak
  br label %.preheader98

bb.al:                                            ; preds = %bb.o
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.im = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1200, ptr noundef nonnull @__FUNCTION__._ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_, ptr noundef nonnull @.str.121) #37 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit60, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit55, %bb.al
  br i1 %i.af, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.an, %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !llvm.loop !1366

.lr.ph114:                                        ; preds = %.loopexit, %bb.an
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.an ], [ 0, %.loopexit ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv133
  %i.io = load float, ptr %i.in, align 4, !tbaa !254
  %i.ip = load ptr, ptr %3, align 8, !tbaa !287
  %i.iq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ip)
          to label %.noexc74 unwind label %bb.ao

.noexc74:                                         ; preds = %.lr.ph114
  %i.ir = icmp eq i32 %i.iq, 3
  br i1 %i.ir, label %bb.am, label %bb.an, !prof !288

bb.am:                                            ; preds = %.noexc74
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc74, %bb.am
  %i.is = load ptr, ptr %i.bc, align 8, !tbaa !289
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv133
  store float %i.io, ptr %i.it, align 4, !tbaa !254
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !1367

bb.ao:                                            ; preds = %bb.am, %.lr.ph114
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit96, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.iu, %bb.ao ], [ %lpad.loopexit, %.loopexit96 ], [ %lpad.loopexit100, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bt, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_iiNS1_7MorphOpES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_iiNS1_7MorphOpES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1335
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.161", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1368, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1370, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated90 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1371, !nonnull !217, !align !420
  %i.p = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 12 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1372, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1371, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.n

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp sgt i32 %i.p, 0                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.trip.count = zext i32 %i.p to i64         ; 9 uses
  %wide.trip.count125 = zext nneg i32 %i.p to i64
  %wide.trip.count130 = zext nneg i32 %i.p to i64
  %wide.trip.count135 = zext nneg i32 %i.p to i64
  %wide.trip.count140 = zext nneg i32 %i.p to i64
  %min.iters.check205 = icmp ult i32 %i.p, 8
  %n.vec208 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec208, %wide.trip.count
  %min.iters.check189 = icmp ult i32 %i.p, 4
  %n.vec192 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n202 = icmp eq i64 %n.vec192, %wide.trip.count
  %min.iters.check178 = icmp ult i32 %i.p, 8
  %n.vec181 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n186 = icmp eq i64 %n.vec181, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.p, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge119
  %i.bd = load i8, ptr %i.x, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  %.pre142 = load i32, ptr %i.y, align 4, !tbaa !279 ; 2 uses
  br i1 %i.be, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre143 = load i32, ptr %i.aa, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !281
  %i.bg = icmp eq i32 %.pre142, %i.bf
  %.pre144 = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = icmp eq i32 %.pre144, %i.bh
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !283
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !284
  %.not.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i53, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.n:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bu = phi i32 [ %.pre143, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre144, %bb.h ], [ %.pre144, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bv = sub nsw i32 %.pre142, %.sroa.speculated90 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1368, !nonnull !217, !align !422
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sub nsw i32 %i.bu, %i.m                 ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !1370, !nonnull !217, !align !422
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !282 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !1373, !nonnull !217, !align !422
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !344
  switch i32 %i.cg, label %bb.ax [
    i32 0, label %.preheader101
    i32 1, label %.preheader107
  ]

.preheader107:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader102.preheader

.lr.ph.preheader:                                 ; preds = %.preheader107
  br i1 %min.iters.check205, label %.lr.ph.preheader217, label %vector.body209

vector.body209:                                   ; preds = %.lr.ph.preheader, %vector.body209
  %index210 = phi i64 [ %index.next211, %vector.body209 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index210 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ch, align 16, !tbaa !254
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ci, align 16, !tbaa !254
  %index.next211 = add nuw i64 %index210, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next211, %n.vec208
  br i1 %i.cj, label %middle.block212, label %vector.body209, !llvm.loop !1374

middle.block212:                                  ; preds = %vector.body209
  br i1 %cmp.n213, label %.preheader102.preheader, label %.lr.ph.preheader217

.lr.ph.preheader217:                              ; preds = %.lr.ph.preheader, %middle.block212
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec208, %middle.block212 ]
  br label %.lr.ph

.preheader101:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph112.preheader, label %.preheader99.preheader

.lr.ph112.preheader:                              ; preds = %.preheader101
  br i1 %min.iters.check178, label %.lr.ph112.preheader215, label %vector.body182

vector.body182:                                   ; preds = %.lr.ph112.preheader, %vector.body182
  %index183 = phi i64 [ %index.next184, %vector.body182 ], [ 0, %.lr.ph112.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index183 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.ck, align 16, !tbaa !254
end_hunk_10
begin_hunk_11_@_ZZN11OpenImageIO4v3_1L10morph_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.jo = load ptr, ptr %i.ap, align 8, !tbaa !289
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 %i.jn
  store ptr %i.jp, ptr %i.ap, align 8, !tbaa !289
  %i.jq = load i32, ptr %i.au, align 8, !tbaa !313
  %i.jr = icmp slt i32 %i.iy, %i.jq               ; 3 uses
  %i.js = load i32, ptr %i.av, align 4
  %i.jt = icmp sge i32 %i.iy, %i.js
  %not..i.i71 = xor i1 %i.jr, true
  %or.cond.i.i72 = select i1 %not..i.i71, i1 true, i1 %i.jt, !prof !315
  %i.ju = load ptr, ptr %i.aw, align 8
  %i.jv = icmp eq ptr %i.ju, null
  %i.jw = select i1 %or.cond.i.i72, i1 true, i1 %i.jv, !prof !315
  br i1 %i.jw, label %bb.at, label %.preheader102.backedge, !prof !288

bb.at:                                            ; preds = %bb.as
  %i.jx = load ptr, ptr %2, align 8, !tbaa !287
  %i.jy = load i32, ptr %i.aj, align 8, !tbaa !280
  %i.jz = load i32, ptr %i.al, align 4, !tbaa !282
  %i.ka = load i32, ptr %i.bb, align 8, !tbaa !316
  %i.kb = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i32 noundef %i.iy, i32 noundef %i.jy, i32 noundef %i.jz, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.ba, i1 noundef zeroext %i.jr, i32 noundef %i.ka)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit

.noexc75:                                         ; preds = %bb.at
  %i.kc = zext i1 %i.jr to i8
  store ptr %i.kb, ptr %i.ap, align 8, !tbaa !289
  store i8 %i.kc, ptr %i.an, align 1, !tbaa !310
  br label %.preheader102.backedge

bb.au:                                            ; preds = %._crit_edge._crit_edge, %.thread96
  %.pre148 = phi i32 [ %.pre148.pre, %._crit_edge._crit_edge ], [ %.pre148.pre153, %.thread96 ] ; 2 uses
  %i.kd = phi i32 [ %.pre145, %._crit_edge._crit_edge ], [ %.pre146, %.thread96 ]
  %i.ke = load i32, ptr %i.ai, align 4, !tbaa !281 ; 3 uses
  store i32 %i.ke, ptr %i.ah, align 4, !tbaa !279
  %i.kf = add nsw i32 %i.kd, 1                    ; 3 uses
  store i32 %i.kf, ptr %i.aj, align 8, !tbaa !280
  %i.kg = load i32, ptr %i.aq, align 8, !tbaa !317
  %.not.i66 = icmp slt i32 %i.kf, %i.kg
  br i1 %.not.i66, label %._crit_edge.i68, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kh = load i32, ptr %i.ak, align 4, !tbaa !300 ; 2 uses
  store i32 %i.kh, ptr %i.aj, align 8, !tbaa !280
  %i.ki = add nsw i32 %.pre148, 1                 ; 3 uses
  store i32 %i.ki, ptr %i.al, align 4, !tbaa !282
  %i.kj = load i32, ptr %i.am, align 8, !tbaa !283
  %.not1.i67 = icmp slt i32 %i.ki, %i.kj
  br i1 %.not1.i67, label %._crit_edge.i68, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 0, ptr %i.ag, align 8, !tbaa !275
  br label %.preheader102.backedge

._crit_edge.i68:                                  ; preds = %.thread96, %bb.av, %bb.au
  %i.kk = phi i32 [ %.pre148, %bb.au ], [ %i.ki, %bb.av ], [ %.pre148.pre153, %.thread96 ]
  %i.kl = phi i32 [ %i.kf, %bb.au ], [ %i.kh, %bb.av ], [ %.pre146, %.thread96 ]
  %i.km = phi i32 [ %i.ke, %bb.au ], [ %i.ke, %bb.av ], [ %i.jc, %.thread96 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.km, i32 noundef %i.kl, i32 noundef %i.kk)
          to label %.preheader102.backedge unwind label %.loopexit.split-lp.loopexit

.preheader102.backedge:                           ; preds = %._crit_edge.i68, %bb.aq, %bb.ap, %bb.ar, %bb.as, %.noexc75, %bb.aw
  br label %.preheader102

bb.ax:                                            ; preds = %bb.o
  %i.kn = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.ko = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kn, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1200, ptr noundef nonnull @__FUNCTION__._ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_, ptr noundef nonnull @.str.121) #37 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit60, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit55, %bb.ax
  br i1 %i.af, label %.lr.ph118, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.az, %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !llvm.loop !1382

.lr.ph118:                                        ; preds = %.loopexit, %bb.az
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.az ], [ 0, %.loopexit ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv137
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !254
  %i.kr = load ptr, ptr %3, align 8, !tbaa !287
  %i.ks = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kr)
          to label %.noexc78 unwind label %bb.ba

.noexc78:                                         ; preds = %.lr.ph118
  %i.kt = icmp eq i32 %i.ks, 3
  br i1 %i.kt, label %bb.ay, label %bb.az, !prof !288

bb.ay:                                            ; preds = %.noexc78
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc78, %bb.ay
  %i.ku = load ptr, ptr %i.bc, align 8, !tbaa !289
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv137
  store float %i.kq, ptr %i.kv, align 4, !tbaa !254
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge119, label %.lr.ph118, !llvm.loop !1383

bb.ba:                                            ; preds = %bb.ay, %.lr.ph118
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit100, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.kw, %bb.ba ], [ %lpad.loopexit, %.loopexit100 ], [ %lpad.loopexit104, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bt, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIftEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIftEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIftEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiEUlS7_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1335
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIftEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIftEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1384, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1386, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1387, !nonnull !217, !align !420
  %i.p = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 12 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1388, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1387, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.n

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp sgt i32 %i.p, 0                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.trip.count = zext i32 %i.p to i64         ; 9 uses
  %wide.trip.count121 = zext nneg i32 %i.p to i64
  %wide.trip.count126 = zext nneg i32 %i.p to i64
  %wide.trip.count131 = zext nneg i32 %i.p to i64
  %wide.trip.count136 = zext nneg i32 %i.p to i64
  %min.iters.check196 = icmp ult i32 %i.p, 8
  %n.vec199 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count
  %min.iters.check181 = icmp ult i32 %i.p, 8
  %n.vec184 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n193 = icmp eq i64 %n.vec184, %wide.trip.count
  %min.iters.check170 = icmp ult i32 %i.p, 8
  %n.vec173 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec173, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.p, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge115
  %i.bd = load i8, ptr %i.x, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  %.pre138 = load i32, ptr %i.y, align 4, !tbaa !279 ; 2 uses
  br i1 %i.be, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre139 = load i32, ptr %i.aa, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !281
  %i.bg = icmp eq i32 %.pre138, %i.bf
  %.pre140 = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = icmp eq i32 %.pre140, %i.bh
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !283
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !284
  %.not.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i53, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.n:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bu = phi i32 [ %.pre139, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre140, %bb.h ], [ %.pre140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bv = sub nsw i32 %.pre138, %.sroa.speculated86 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1384, !nonnull !217, !align !422
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sub nsw i32 %i.bu, %i.m                 ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !1386, !nonnull !217, !align !422
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !282 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !1389, !nonnull !217, !align !422
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !344
  switch i32 %i.cg, label %bb.al [
    i32 0, label %.preheader97
    i32 1, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader98.preheader

.lr.ph.preheader:                                 ; preds = %.preheader103
  br i1 %min.iters.check196, label %.lr.ph.preheader208, label %vector.body200

vector.body200:                                   ; preds = %.lr.ph.preheader, %vector.body200
  %index201 = phi i64 [ %index.next202, %vector.body200 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index201 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ch, align 16, !tbaa !254
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ci, align 16, !tbaa !254
  %index.next202 = add nuw i64 %index201, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.cj, label %middle.block203, label %vector.body200, !llvm.loop !1390

middle.block203:                                  ; preds = %vector.body200
  br i1 %cmp.n204, label %.preheader98.preheader, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %.lr.ph.preheader, %middle.block203
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec199, %middle.block203 ]
  br label %.lr.ph

.preheader97:                                     ; preds = %bb.o
  br i1 %i.af, label %.lr.ph108.preheader, label %.preheader95.preheader

.lr.ph108.preheader:                              ; preds = %.preheader97
  br i1 %min.iters.check170, label %.lr.ph108.preheader206, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph108.preheader, %vector.body174
  %index175 = phi i64 [ %index.next176, %vector.body174 ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index175 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.ck, align 16, !tbaa !254
end_hunk_11
begin_hunk_12_@_ZZN11OpenImageIO4v3_1L10morph_implIftEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_:bb.a
  %i.hm = load ptr, ptr %i.ap, align 8, !tbaa !289
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hl
  store ptr %i.hn, ptr %i.ap, align 8, !tbaa !289
  %i.ho = load i32, ptr %i.au, align 8, !tbaa !313
  %i.hp = icmp slt i32 %i.gw, %i.ho               ; 3 uses
  %i.hq = load i32, ptr %i.av, align 4
  %i.hr = icmp sge i32 %i.gw, %i.hq
  %not..i.i67 = xor i1 %i.hp, true
  %or.cond.i.i68 = select i1 %not..i.i67, i1 true, i1 %i.hr, !prof !315
  %i.hs = load ptr, ptr %i.aw, align 8
  %i.ht = icmp eq ptr %i.hs, null
  %i.hu = select i1 %or.cond.i.i68, i1 true, i1 %i.ht, !prof !315
  br i1 %i.hu, label %bb.ah, label %.preheader98.backedge, !prof !288

bb.ah:                                            ; preds = %bb.ag
  %i.hv = load ptr, ptr %2, align 8, !tbaa !287
  %i.hw = load i32, ptr %i.aj, align 8, !tbaa !280
  %i.hx = load i32, ptr %i.al, align 4, !tbaa !282
  %i.hy = load i32, ptr %i.bb, align 8, !tbaa !316
  %i.hz = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i32 noundef %i.gw, i32 noundef %i.hw, i32 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.ba, i1 noundef zeroext %i.hp, i32 noundef %i.hy)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %bb.ah
  %i.ia = zext i1 %i.hp to i8
  store ptr %i.hz, ptr %i.ap, align 8, !tbaa !289
  store i8 %i.ia, ptr %i.an, align 1, !tbaa !310
  br label %.preheader98.backedge

bb.ai:                                            ; preds = %._crit_edge._crit_edge, %.thread92
  %.pre144 = phi i32 [ %.pre144.pre, %._crit_edge._crit_edge ], [ %.pre144.pre149, %.thread92 ] ; 2 uses
  %i.ib = phi i32 [ %.pre141, %._crit_edge._crit_edge ], [ %.pre142, %.thread92 ]
  %i.ic = load i32, ptr %i.ai, align 4, !tbaa !281 ; 3 uses
  store i32 %i.ic, ptr %i.ah, align 4, !tbaa !279
  %i.id = add nsw i32 %i.ib, 1                    ; 3 uses
  store i32 %i.id, ptr %i.aj, align 8, !tbaa !280
  %i.ie = load i32, ptr %i.aq, align 8, !tbaa !317
  %.not.i62 = icmp slt i32 %i.id, %i.ie
  br i1 %.not.i62, label %._crit_edge.i64, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = load i32, ptr %i.ak, align 4, !tbaa !300 ; 2 uses
  store i32 %i.if, ptr %i.aj, align 8, !tbaa !280
  %i.ig = add nsw i32 %.pre144, 1                 ; 3 uses
  store i32 %i.ig, ptr %i.al, align 4, !tbaa !282
  %i.ih = load i32, ptr %i.am, align 8, !tbaa !283
  %.not1.i63 = icmp slt i32 %i.ig, %i.ih
  br i1 %.not1.i63, label %._crit_edge.i64, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.ag, align 8, !tbaa !275
  br label %.preheader98.backedge

._crit_edge.i64:                                  ; preds = %.thread92, %bb.aj, %bb.ai
  %i.ii = phi i32 [ %.pre144, %bb.ai ], [ %i.ig, %bb.aj ], [ %.pre144.pre149, %.thread92 ]
  %i.ij = phi i32 [ %i.id, %bb.ai ], [ %i.if, %bb.aj ], [ %.pre142, %.thread92 ]
  %i.ik = phi i32 [ %i.ic, %bb.ai ], [ %i.ic, %bb.aj ], [ %i.ha, %.thread92 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ik, i32 noundef %i.ij, i32 noundef %i.ii)
          to label %.preheader98.backedge unwind label %.loopexit.split-lp.loopexit

.preheader98.backedge:                            ; preds = %._crit_edge.i64, %bb.ae, %bb.ad, %bb.af, %bb.ag, %.noexc71, %bb.ak
  br label %.preheader98

bb.al:                                            ; preds = %bb.o
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.im = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1200, ptr noundef nonnull @__FUNCTION__._ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_, ptr noundef nonnull @.str.121) #37 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit60, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit55, %bb.al
  br i1 %i.af, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.an, %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !llvm.loop !1398

.lr.ph114:                                        ; preds = %.loopexit, %bb.an
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.an ], [ 0, %.loopexit ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv133
  %i.io = load float, ptr %i.in, align 4, !tbaa !254
  %i.ip = load ptr, ptr %3, align 8, !tbaa !287
  %i.iq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ip)
          to label %.noexc74 unwind label %bb.ao

.noexc74:                                         ; preds = %.lr.ph114
  %i.ir = icmp eq i32 %i.iq, 3
  br i1 %i.ir, label %bb.am, label %bb.an, !prof !288

bb.am:                                            ; preds = %.noexc74
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc74, %bb.am
  %i.is = load ptr, ptr %i.bc, align 8, !tbaa !289
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv133
  store float %i.io, ptr %i.it, align 4, !tbaa !254
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !1399

bb.ao:                                            ; preds = %bb.am, %.lr.ph114
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit96, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.iu, %bb.ao ], [ %lpad.loopexit, %.loopexit96 ], [ %lpad.loopexit100, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bt, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIhhEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIhhEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiEUlS7_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1335
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.169", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1400, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1402, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1403, !nonnull !217, !align !420
  %i.p = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 12 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1404, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1403, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.n

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp sgt i32 %i.p, 0                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.trip.count = zext i32 %i.p to i64         ; 9 uses
  %wide.trip.count121 = zext nneg i32 %i.p to i64
  %wide.trip.count126 = zext nneg i32 %i.p to i64
  %wide.trip.count131 = zext nneg i32 %i.p to i64
  %wide.trip.count136 = zext nneg i32 %i.p to i64
  %min.iters.check196 = icmp ult i32 %i.p, 8
  %n.vec199 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count
  %min.iters.check181 = icmp ult i32 %i.p, 8
  %n.vec184 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n193 = icmp eq i64 %n.vec184, %wide.trip.count
  %min.iters.check170 = icmp ult i32 %i.p, 8
  %n.vec173 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec173, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.p, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge115
  %i.bd = load i8, ptr %i.x, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  %.pre138 = load i32, ptr %i.y, align 4, !tbaa !279 ; 2 uses
  br i1 %i.be, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre139 = load i32, ptr %i.aa, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !281
  %i.bg = icmp eq i32 %.pre138, %i.bf
  %.pre140 = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = icmp eq i32 %.pre140, %i.bh
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !283
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !284
  %.not.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i53, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.n:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bu = phi i32 [ %.pre139, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre140, %bb.h ], [ %.pre140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bv = sub nsw i32 %.pre138, %.sroa.speculated86 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1400, !nonnull !217, !align !422
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sub nsw i32 %i.bu, %i.m                 ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !1402, !nonnull !217, !align !422
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !282 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !1405, !nonnull !217, !align !422
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !344
  switch i32 %i.cg, label %bb.al [
    i32 0, label %.preheader97
    i32 1, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader98.preheader

.lr.ph.preheader:                                 ; preds = %.preheader103
  br i1 %min.iters.check196, label %.lr.ph.preheader208, label %vector.body200

vector.body200:                                   ; preds = %.lr.ph.preheader, %vector.body200
  %index201 = phi i64 [ %index.next202, %vector.body200 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index201 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ch, align 16, !tbaa !254
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ci, align 16, !tbaa !254
  %index.next202 = add nuw i64 %index201, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.cj, label %middle.block203, label %vector.body200, !llvm.loop !1406

middle.block203:                                  ; preds = %vector.body200
  br i1 %cmp.n204, label %.preheader98.preheader, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %.lr.ph.preheader, %middle.block203
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec199, %middle.block203 ]
  br label %.lr.ph

.preheader97:                                     ; preds = %bb.o
  br i1 %i.af, label %.lr.ph108.preheader, label %.preheader95.preheader

.lr.ph108.preheader:                              ; preds = %.preheader97
  br i1 %min.iters.check170, label %.lr.ph108.preheader206, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph108.preheader, %vector.body174
  %index175 = phi i64 [ %index.next176, %vector.body174 ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index175 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.ck, align 16, !tbaa !254
end_hunk_12
begin_hunk_13_@_ZZN11OpenImageIO4v3_1L10morph_implIhhEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_:bb.a
  %i.hs = load ptr, ptr %i.aw, align 8
  %i.ht = icmp eq ptr %i.hs, null
  %i.hu = select i1 %or.cond.i.i68, i1 true, i1 %i.ht, !prof !315
  br i1 %i.hu, label %bb.ah, label %.preheader98.backedge, !prof !288

bb.ah:                                            ; preds = %bb.ag
  %i.hv = load ptr, ptr %2, align 8, !tbaa !287
  %i.hw = load i32, ptr %i.aj, align 8, !tbaa !280
  %i.hx = load i32, ptr %i.al, align 4, !tbaa !282
  %i.hy = load i32, ptr %i.bb, align 8, !tbaa !316
  %i.hz = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i32 noundef %i.gw, i32 noundef %i.hw, i32 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.ba, i1 noundef zeroext %i.hp, i32 noundef %i.hy)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %bb.ah
  %i.ia = zext i1 %i.hp to i8
  store ptr %i.hz, ptr %i.ap, align 8, !tbaa !289
  store i8 %i.ia, ptr %i.an, align 1, !tbaa !310
  br label %.preheader98.backedge

bb.ai:                                            ; preds = %._crit_edge._crit_edge, %.thread92
  %.pre144 = phi i32 [ %.pre144.pre, %._crit_edge._crit_edge ], [ %.pre144.pre149, %.thread92 ] ; 2 uses
  %i.ib = phi i32 [ %.pre141, %._crit_edge._crit_edge ], [ %.pre142, %.thread92 ]
  %i.ic = load i32, ptr %i.ai, align 4, !tbaa !281 ; 3 uses
  store i32 %i.ic, ptr %i.ah, align 4, !tbaa !279
  %i.id = add nsw i32 %i.ib, 1                    ; 3 uses
  store i32 %i.id, ptr %i.aj, align 8, !tbaa !280
  %i.ie = load i32, ptr %i.aq, align 8, !tbaa !317
  %.not.i62 = icmp slt i32 %i.id, %i.ie
  br i1 %.not.i62, label %._crit_edge.i64, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = load i32, ptr %i.ak, align 4, !tbaa !300 ; 2 uses
  store i32 %i.if, ptr %i.aj, align 8, !tbaa !280
  %i.ig = add nsw i32 %.pre144, 1                 ; 3 uses
  store i32 %i.ig, ptr %i.al, align 4, !tbaa !282
  %i.ih = load i32, ptr %i.am, align 8, !tbaa !283
  %.not1.i63 = icmp slt i32 %i.ig, %i.ih
  br i1 %.not1.i63, label %._crit_edge.i64, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.ag, align 8, !tbaa !275
  br label %.preheader98.backedge

._crit_edge.i64:                                  ; preds = %.thread92, %bb.aj, %bb.ai
  %i.ii = phi i32 [ %.pre144, %bb.ai ], [ %i.ig, %bb.aj ], [ %.pre144.pre149, %.thread92 ]
  %i.ij = phi i32 [ %i.id, %bb.ai ], [ %i.if, %bb.aj ], [ %.pre142, %.thread92 ]
  %i.ik = phi i32 [ %i.ic, %bb.ai ], [ %i.ic, %bb.aj ], [ %i.ha, %.thread92 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ik, i32 noundef %i.ij, i32 noundef %i.ii)
          to label %.preheader98.backedge unwind label %.loopexit.split-lp.loopexit

.preheader98.backedge:                            ; preds = %._crit_edge.i64, %bb.ae, %bb.ad, %bb.af, %bb.ag, %.noexc71, %bb.ak
  br label %.preheader98

bb.al:                                            ; preds = %bb.o
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !233
  %i.im = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 1200, ptr noundef nonnull @__FUNCTION__._ZZN11OpenImageIO4v3_1L10morph_implIffEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_, ptr noundef nonnull @.str.121) #37 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit60, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit55, %bb.al
  br i1 %i.af, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.an, %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !llvm.loop !1414

.lr.ph114:                                        ; preds = %.loopexit, %bb.an
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.an ], [ 0, %.loopexit ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv133
  %i.io = load float, ptr %i.in, align 4, !tbaa !254
  %i.ip = load ptr, ptr %3, align 8, !tbaa !287
  %i.iq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ip)
          to label %.noexc74 unwind label %bb.ao

.noexc74:                                         ; preds = %.lr.ph114
  %i.ir = icmp eq i32 %i.iq, 3
  br i1 %i.ir, label %bb.am, label %bb.an, !prof !288

bb.am:                                            ; preds = %.noexc74
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc74, %bb.am
  %i.is = load ptr, ptr %i.bc, align 8, !tbaa !289
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %indvars.iv133
  %i.iu = fmul float %i.io, 2.550000e+02          ; 2 uses
  %i.iv = fcmp olt float %i.iu, 0.000000e+00
  %i.iw = select i1 %i.iv, float -5.000000e-01, float 5.000000e-01
  %i.ix = fadd float %i.iu, %i.iw                 ; 2 uses
  %.inv.i.i.i.i.i = fcmp oge float %i.ix, 0.000000e+00
  %.0.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, float %i.ix, float 0.000000e+00 ; 2 uses
  %i.iy = fcmp ogt float %.0.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i = select i1 %i.iy, float 2.550000e+02, float %.0.i.i.i.i.i.i
  %i.iz = fptoui float %.1.i.i.i.i.i.i to i8
  store i8 %i.iz, ptr %i.it, align 1, !tbaa !96
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !1415

bb.ao:                                            ; preds = %bb.am, %.lr.ph114
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit96, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.ja, %bb.ao ], [ %lpad.loopexit, %.loopexit96 ], [ %lpad.loopexit100, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bt, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_iiNS1_7MorphOpES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_iiNS1_7MorphOpES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1335
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_iiNS2_7MorphOpENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.161", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.173", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1416, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1418, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated92 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1419, !nonnull !217, !align !420
  %i.p = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 12 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1420, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1419, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.n

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp sgt i32 %i.p, 0                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.trip.count = zext i32 %i.p to i64         ; 9 uses
  %wide.trip.count127 = zext nneg i32 %i.p to i64
  %wide.trip.count132 = zext nneg i32 %i.p to i64
  %wide.trip.count137 = zext nneg i32 %i.p to i64
  %wide.trip.count142 = zext nneg i32 %i.p to i64
  %min.iters.check210 = icmp ult i32 %i.p, 8
  %n.vec213 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n218 = icmp eq i64 %n.vec213, %wide.trip.count
  %min.iters.check194 = icmp ult i32 %i.p, 4
  %n.vec197 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n207 = icmp eq i64 %n.vec197, %wide.trip.count
  %min.iters.check183 = icmp ult i32 %i.p, 8
  %n.vec186 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec186, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.p, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge121
  %i.bd = load i8, ptr %i.x, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  %.pre144 = load i32, ptr %i.y, align 4, !tbaa !279 ; 2 uses
  br i1 %i.be, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre145 = load i32, ptr %i.aa, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !281
  %i.bg = icmp eq i32 %.pre144, %i.bf
  %.pre146 = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = icmp eq i32 %.pre146, %i.bh
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !283
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !284
  %.not.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i53, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.n:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bu = phi i32 [ %.pre145, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre146, %bb.h ], [ %.pre146, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bv = sub nsw i32 %.pre144, %.sroa.speculated92 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1416, !nonnull !217, !align !422
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sub nsw i32 %i.bu, %i.m                 ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !1418, !nonnull !217, !align !422
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !282 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !1421, !nonnull !217, !align !422
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !344
  switch i32 %i.cg, label %bb.ax [
    i32 0, label %.preheader103
    i32 1, label %.preheader109
  ]

.preheader109:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader104.preheader

.lr.ph.preheader:                                 ; preds = %.preheader109
  br i1 %min.iters.check210, label %.lr.ph.preheader222, label %vector.body214

vector.body214:                                   ; preds = %.lr.ph.preheader, %vector.body214
  %index215 = phi i64 [ %index.next216, %vector.body214 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index215 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ch, align 16, !tbaa !254
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ci, align 16, !tbaa !254
  %index.next216 = add nuw i64 %index215, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next216, %n.vec213
  br i1 %i.cj, label %middle.block217, label %vector.body214, !llvm.loop !1422

middle.block217:                                  ; preds = %vector.body214
  br i1 %cmp.n218, label %.preheader104.preheader, label %.lr.ph.preheader222

.lr.ph.preheader222:                              ; preds = %.lr.ph.preheader, %middle.block217
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec213, %middle.block217 ]
  br label %.lr.ph

.preheader103:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph114.preheader, label %.preheader101.preheader

.lr.ph114.preheader:                              ; preds = %.preheader103
  br i1 %min.iters.check183, label %.lr.ph114.preheader220, label %vector.body187

vector.body187:                                   ; preds = %.lr.ph114.preheader, %vector.body187
  %index188 = phi i64 [ %index.next189, %vector.body187 ], [ 0, %.lr.ph114.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index188 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.ck, align 16, !tbaa !254
end_hunk_13
begin_hunk_14_@_ZZN11OpenImageIO4v3_1L10morph_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_iiNS0_7MorphOpENS0_3ROIEiENKUlS9_E_clES9_:bb.a
  %i.kr = load ptr, ptr %3, align 8, !tbaa !287
  %i.ks = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kr)
          to label %.noexc80 unwind label %bb.bk

.noexc80:                                         ; preds = %.lr.ph120
  %i.kt = icmp eq i32 %i.ks, 3
  br i1 %i.kt, label %bb.ay, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i, !prof !288

bb.ay:                                            ; preds = %.noexc80
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i unwind label %bb.bk

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i: ; preds = %bb.ay, %.noexc80
  %i.ku = load ptr, ptr %i.bc, align 8, !tbaa !289
  %i.kv = bitcast float %i.kq to i32
  %i.kw = call float @llvm.fabs.f32(float %i.kq)
  %i.kx = bitcast float %i.kw to i32              ; 10 uses
  %i.ky = lshr i32 %i.kv, 16                      ; 3 uses
  %i.kz = trunc nuw i32 %i.ky to i16
  %i.la = and i16 %i.kz, -32768                   ; 3 uses
  %i.lb = icmp samesign ugt i32 %i.kx, 947912703
  br i1 %i.lb, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i
  %i.lc = icmp samesign ugt i32 %i.kx, 2139095039
  br i1 %i.lc, label %bb.ba, label %bb.bc, !prof !288

bb.ba:                                            ; preds = %bb.az
  %i.ld = or disjoint i16 %i.la, 31744            ; 2 uses
  %i.le = icmp eq i32 %i.kx, 2139095040
  br i1 %i.le, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lf = lshr i32 %i.kx, 13
  %i.lg = and i32 %i.lf, 1023                     ; 2 uses
  %i.lh = icmp eq i32 %i.lg, 0
  %i.li = zext i1 %i.lh to i16
  %i.lj = trunc nuw nsw i32 %i.lg to i16
  %i.lk = or i16 %i.lj, %i.li
  %i.ll = or disjoint i16 %i.lk, %i.ld
  br label %bb.bj

bb.bc:                                            ; preds = %bb.az
  %i.lm = icmp samesign ugt i32 %i.kx, 1199566847
  br i1 %i.lm, label %bb.bd, label %bb.be, !prof !288

bb.bd:                                            ; preds = %bb.bc
  %i.ln = or disjoint i16 %i.la, 31744
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %i.lo = add nuw nsw i32 %i.kx, 134221823
  %i.lp = lshr i32 %i.kx, 13
  %i.lq = and i32 %i.lp, 1
  %i.lr = add nuw nsw i32 %i.lo, %i.lq
  %i.ls = lshr i32 %i.lr, 13
  %i.lt = and i32 %i.ky, 32768
  %i.lu = or i32 %i.ls, %i.lt
  %i.lv = trunc i32 %i.lu to i16
  br label %bb.bj

bb.bf:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i
  %i.lw = icmp samesign ult i32 %i.kx, 855638017
  br i1 %i.lw, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lx = lshr i32 %i.kx, 23                      ; 2 uses
  %i.ly = sub nuw nsw i32 126, %i.lx
  %i.lz = and i32 %i.kx, 8388607
  %i.ma = or disjoint i32 %i.lz, 8388608          ; 2 uses
  %i.mb = add nsw i32 %i.lx, -94
  %i.mc = shl i32 %i.ma, %i.mb                    ; 2 uses
  %i.md = lshr i32 %i.ma, %i.ly                   ; 2 uses
  %i.me = and i32 %i.ky, 32768
  %i.mf = or i32 %i.md, %i.me
  %i.mg = trunc nuw i32 %i.mf to i16              ; 2 uses
  %i.mh = icmp ugt i32 %i.mc, -2147483648
  br i1 %i.mh, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mi = icmp ne i32 %i.mc, -2147483648
  %i.mj = and i32 %i.md, 1
  %.not.i.i.i.i.i79 = icmp eq i32 %i.mj, 0
  %or.cond.i.i.i.i.i = select i1 %i.mi, i1 true, i1 %.not.i.i.i.i.i79
  br i1 %or.cond.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.mk = add nuw i16 %i.mg, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.ba, %bb.bb, %bb.bd, %bb.be, %bb.bf, %bb.bh, %bb.bi
  %.0.i.i.i.i.i = phi i16 [ %i.la, %bb.bf ], [ %i.ll, %bb.bb ], [ %i.ln, %bb.bd ], [ %i.lv, %bb.be ], [ %i.ld, %bb.ba ], [ %i.mk, %bb.bi ], [ %i.mg, %bb.bh ]
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %indvars.iv139
  store i16 %.0.i.i.i.i.i, ptr %i.ml, align 2, !tbaa !1177
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge121, label %.lr.ph120, !llvm.loop !1431

bb.bk:                                            ; preds = %bb.ay, %.lr.ph120
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit102, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.mm, %bb.bk ], [ %lpad.loopexit, %.loopexit102 ], [ %lpad.loopexit106, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bt, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIttEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !14
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIttEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L10morph_implIttEEbRNS1_8ImageBufERKS5_iiNS1_7MorphOpES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiEUlS7_E_, ptr %0, align 8, !tbaa !424
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !1335
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L10morph_implIttEEbRNS2_8ImageBufERKS4_iiNS2_7MorphOpENS2_3ROIEiEUlS9_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L10morph_implIttEEbRNS0_8ImageBufERKS2_iiNS0_7MorphOpENS0_3ROIEiENKUlS7_E_clES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.179", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1432, !nonnull !217, !align !422 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.b ], [ %i.b, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1434, !nonnull !217, !align !422 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.f, align 4, !tbaa !3
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %i.d, %bb.d ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.k = sdiv i32 %i.j, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = lshr i32 %i.i, 1
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1435, !nonnull !217, !align !420
  %i.p = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) ; 12 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1436, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1435, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.n

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp sgt i32 %i.p, 0                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.trip.count = zext i32 %i.p to i64         ; 9 uses
  %wide.trip.count121 = zext nneg i32 %i.p to i64
  %wide.trip.count126 = zext nneg i32 %i.p to i64
  %wide.trip.count131 = zext nneg i32 %i.p to i64
  %wide.trip.count136 = zext nneg i32 %i.p to i64
  %min.iters.check196 = icmp ult i32 %i.p, 8
  %n.vec199 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count
  %min.iters.check181 = icmp ult i32 %i.p, 8
  %n.vec184 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n193 = icmp eq i64 %n.vec184, %wide.trip.count
  %min.iters.check170 = icmp ult i32 %i.p, 8
  %n.vec173 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec173, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.p, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge115
  %i.bd = load i8, ptr %i.x, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  %.pre138 = load i32, ptr %i.y, align 4, !tbaa !279 ; 2 uses
  br i1 %i.be, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre139 = load i32, ptr %i.aa, align 8, !tbaa !280
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !281
  %i.bg = icmp eq i32 %.pre138, %i.bf
  %.pre140 = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = icmp eq i32 %.pre140, %i.bh
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !282
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !283
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !284
  %.not.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i53, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit54: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.n:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.bu = phi i32 [ %.pre139, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre140, %bb.h ], [ %.pre140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.bv = sub nsw i32 %.pre138, %.sroa.speculated86 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1432, !nonnull !217, !align !422
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, %i.bv
  %i.bz = sub nsw i32 %i.bu, %i.m                 ; 2 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !1434, !nonnull !217, !align !422
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, %i.bz
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !282 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !1437, !nonnull !217, !align !422
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !344
  switch i32 %i.cg, label %bb.al [
    i32 0, label %.preheader97
    i32 1, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.o
  br i1 %i.af, label %.lr.ph.preheader, label %.preheader98.preheader

.lr.ph.preheader:                                 ; preds = %.preheader103
  br i1 %min.iters.check196, label %.lr.ph.preheader208, label %vector.body200

vector.body200:                                   ; preds = %.lr.ph.preheader, %vector.body200
  %index201 = phi i64 [ %index.next202, %vector.body200 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index201 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ch, align 16, !tbaa !254
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ci, align 16, !tbaa !254
  %index.next202 = add nuw i64 %index201, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.cj, label %middle.block203, label %vector.body200, !llvm.loop !1438

middle.block203:                                  ; preds = %vector.body200
  br i1 %cmp.n204, label %.preheader98.preheader, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %.lr.ph.preheader, %middle.block203
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec199, %middle.block203 ]
  br label %.lr.ph

.preheader97:                                     ; preds = %bb.o
  br i1 %i.af, label %.lr.ph108.preheader, label %.preheader95.preheader

.lr.ph108.preheader:                              ; preds = %.preheader97
  br i1 %min.iters.check170, label %.lr.ph108.preheader206, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph108.preheader, %vector.body174
  %index175 = phi i64 [ %index.next176, %vector.body174 ], [ 0, %.lr.ph108.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index175 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.ck, align 16, !tbaa !254
end_hunk_14
