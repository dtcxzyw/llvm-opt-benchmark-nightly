inline.NumInlined: 12592
inline.NumDeleted: 3317
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.pn126.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn126.pn.pn.i.i.i, %bb.an ], [ %.pn116.pn.pn.pn.i.i.i, %bb.cu ]
  resume { ptr, i32 } %.pn126.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L14rangecompress_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !891
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1303
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L14rangecompress_IttEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IffEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1352, !nonnull !83, !align !417
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1354, !nonnull !83
  store i8 0, ptr %i.q, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1355, !nonnull !83, !align !417 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1352, !nonnull !83, !align !417 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %sext244.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext245.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !897, !range !82, !noundef !83
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !901
  %i.av = load i32, ptr %i.x, align 4, !tbaa !904
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !902
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !920
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !921
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !905
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1354, !nonnull !83
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99, !range !82, !noundef !83
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !54
  %i.bo = getelementptr i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !54
  %i.bq = fmul float %i.bp, 7.151700e-01
  %i.br = call float @llvm.fmuladd.f32(float %i.bn, float 2.126400e-01, float %i.bq)
  %i.bs = getelementptr i8, ptr %i.bm, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !54
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float 7.219000e-02, float %i.br) ; 5 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = fcmp ugt float %i.bu, 1.800000e-01
  br i1 %i.bw, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bx = fadd float %i.bu, f0x3F0BB782
  %i.by = fdiv float %i.bx, f0x3E3BEBCD
  %i.bz = call float @llvm.exp.f32(float %i.by)   ; 2 uses
  %6 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.bz, i64 0
  %i.ca = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bz, i64 1
  %7 = fsub <2 x float> %6, %i.ca
  %i.cb = fdiv <2 x float> %7, splat (float f0x438E2DCC) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = fcmp olt float %i.cc, 1.800000e-01
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %.0.i.i.i.i = select i1 %i.cd, float %i.ce, float %i.cc
  %i.cf = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.cf, %bb.n ], [ %i.bu, %bb.m ]
  %i.cg = fdiv float %.010.i.i.i.i, %i.bu
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.ch = phi float [ %i.cg, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.ci = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.cj = icmp slt i32 %i.bj, %i.ci
  br i1 %i.cj, label %.lr.ph232.i.i.i, label %.loopexit.i.i.i

.lr.ph232.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.ck = phi i32 [ %i.cw, %bb.s ], [ %i.ci, %bb.o ]
  %i.cl = phi ptr [ %i.cx, %bb.s ], [ %i.bk, %bb.o ] ; 2 uses
  %indvars.iv247.i.i.i = phi i64 [ %indvars.iv.next248.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.cm = icmp eq i64 %indvars.iv247.i.i.i, %sext245.i.i.i
  %i.cn = icmp eq i64 %indvars.iv247.i.i.i, %sext244.i.i.i
  %or.cond138.i.i.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph232.i.i.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv247.i.i.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !54
  %i.cq = fmul float %i.ch, %i.cp
  %i.cr = load ptr, ptr %2, align 8, !tbaa !906
  %i.cs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.ct = icmp eq i32 %i.cs, 3
  br i1 %i.ct, label %bb.q, label %bb.r, !prof !48

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv247.i.i.i
  store float %i.cq, ptr %i.cv, align 4, !tbaa !54
  %.pre252.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph232.i.i.i
  %i.cw = phi i32 [ %i.ck, %.lr.ph232.i.i.i ], [ %.pre252.i.i.i, %bb.r ] ; 2 uses
  %i.cx = phi ptr [ %i.cl, %.lr.ph232.i.i.i ], [ %i.cu, %bb.r ]
  %indvars.iv.next248.i.i.i = add nsw i64 %indvars.iv247.i.i.i, 1 ; 2 uses
  %i.cy = sext i32 %i.cw to i64
  %i.cz = icmp slt i64 %indvars.iv.next248.i.i.i, %i.cy
  br i1 %i.cz, label %.lr.ph232.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1356

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.db = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.dc = icmp slt i32 %i.bj, %i.db
  br i1 %i.dc, label %.lr.ph230.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph230.preheader.i.i.i:                        ; preds = %bb.u
  %i.dd = sext i32 %i.bj to i64
  br label %.lr.ph230.i.i.i

.lr.ph230.i.i.i:                                  ; preds = %bb.z, %.lr.ph230.preheader.i.i.i
  %i.de = phi i32 [ %i.db, %.lr.ph230.preheader.i.i.i ], [ %i.ea, %bb.z ]
  %indvars.iv242.i.i.i = phi i64 [ %i.dd, %.lr.ph230.preheader.i.i.i ], [ %indvars.iv.next243.i.i.i, %bb.z ] ; 5 uses
  %i.df = icmp eq i64 %indvars.iv242.i.i.i, %sext245.i.i.i
  %i.dg = icmp eq i64 %indvars.iv242.i.i.i, %sext244.i.i.i
  %or.cond139.i.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph230.i.i.i
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv242.i.i.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !54 ; 3 uses
  %i.dk = call float @llvm.fabs.f32(float %i.dj)  ; 2 uses
  %i.dl = fcmp ugt float %i.dk, 1.800000e-01
  br i1 %i.dl, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dm = fadd float %i.dk, f0x3F0BB782
  %i.dn = fdiv float %i.dm, f0x3E3BEBCD
  %i.do = call float @llvm.exp.f32(float %i.dn)   ; 2 uses
  %8 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.do, i64 0
  %i.dp = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.do, i64 1
  %9 = fsub <2 x float> %8, %i.dp
  %i.dq = fdiv <2 x float> %9, splat (float f0x438E2DCC) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.ds = fcmp olt float %i.dr, 1.800000e-01
  %i.dt = extractelement <2 x float> %i.dq, i64 1
  %.0.i154.i.i.i = select i1 %i.ds, float %i.dt, float %i.dr
  %i.du = call noundef float @llvm.copysign.f32(float %.0.i154.i.i.i, float %i.dj)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.du, %bb.w ], [ %i.dj, %bb.v ]
  %i.dv = load ptr, ptr %2, align 8, !tbaa !906
  %i.dw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %.noexc158.i.i.i unwind label %bb.aa

.noexc158.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.dx = icmp eq i32 %i.dw, 3
  br i1 %i.dx, label %bb.x, label %bb.y, !prof !48

bb.x:                                             ; preds = %.noexc158.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc158.i.i.i
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv242.i.i.i
  store float %.010.i153.i.i.i, ptr %i.dz, align 4, !tbaa !54
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph230.i.i.i
  %i.ea = phi i32 [ %i.de, %.lr.ph230.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next243.i.i.i = add nsw i64 %indvars.iv242.i.i.i, 1 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next243.i.i.i, %i.eb
  br i1 %i.ec, label %.lr.ph230.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1357

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ee = load i32, ptr %i.w, align 4, !tbaa !901
  %i.ef = add nsw i32 %i.ee, 1                    ; 7 uses
  store i32 %i.ef, ptr %i.w, align 4, !tbaa !901
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !910
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.ei = load i8, ptr %i.ag, align 1, !tbaa !911, !range !82, !noundef !83
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !902
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !903
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load i8, ptr %i.ah, align 1, !tbaa !912, !range !82, !noundef !83
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.em = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.em
  store ptr %i.eo, ptr %i.ad, align 8, !tbaa !914
  %i.ep = load i32, ptr %i.ak, align 8, !tbaa !915
  %.not.i.i26.i.i = icmp slt i32 %i.ef, %i.ep
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.eq = load i8, ptr %i.ai, align 2, !tbaa !916, !range !82, !noundef !83
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.et = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.es
  store ptr %i.eu, ptr %i.ad, align 8, !tbaa !914
  %i.ev = load i32, ptr %i.ak, align 8, !tbaa !915
  %i.ew = icmp slt i32 %i.ef, %i.ev               ; 3 uses
  %i.ex = load i32, ptr %i.al, align 4
  %i.ey = icmp sge i32 %i.ef, %i.ex
  %not..i.i24.i.i = xor i1 %i.ew, true
  %or.cond.i.i25.i.i = select i1 %not..i.i24.i.i, i1 true, i1 %i.ey, !prof !917
  %i.ez = load ptr, ptr %i.am, align 8
  %i.fa = icmp eq ptr %i.ez, null
  %i.fb = select i1 %or.cond.i.i25.i.i, i1 true, i1 %i.fa, !prof !917
  br i1 %i.fb, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !48

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load ptr, ptr %2, align 8, !tbaa !906
  %i.fd = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fe = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.ff = load i32, ptr %i.ar, align 8, !tbaa !918
  %i.fg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i32 noundef %i.ef, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.ew, i32 noundef %i.ff)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fh = zext i1 %i.ew to i8
  store ptr %i.fg, ptr %i.ad, align 8, !tbaa !914
  store i8 %i.fh, ptr %i.ag, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fi = load i32, ptr %i.x, align 4, !tbaa !904 ; 3 uses
  store i32 %i.fi, ptr %i.w, align 4, !tbaa !901
  %i.fj = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fk = add nsw i32 %i.fj, 1                    ; 3 uses
  store i32 %i.fk, ptr %i.y, align 8, !tbaa !902
  %i.fl = load i32, ptr %i.af, align 8, !tbaa !919
  %.not.i19.i.i = icmp slt i32 %i.fk, %i.fl
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load i32, ptr %i.z, align 4, !tbaa !920 ; 2 uses
  store i32 %i.fm, ptr %i.y, align 8, !tbaa !902
  %i.fn = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fn, ptr %i.aa, align 4, !tbaa !903
  %i.fo = load i32, ptr %i.ab, align 8, !tbaa !921
  %.not1.i20.i.i = icmp slt i32 %i.fn, %i.fo
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.fp = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fn, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fq = phi i32 [ %i.fk, %bb.ai ], [ %i.fm, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fr = phi i32 [ %i.fi, %bb.ai ], [ %i.fi, %bb.aj ], [ %i.ef, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fr, i32 noundef %i.fq, i32 noundef %i.fp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.da, %bb.t ], [ %i.fs, %bb.am ], [ %i.ed, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cr

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !1355, !nonnull !83, !align !417
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext235.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.hn = load i8, ptr %i.fu, align 8, !tbaa !897, !range !82, !noundef !83
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hp = load i32, ptr %i.fv, align 4, !tbaa !901
  %i.hq = load i32, ptr %i.fw, align 4, !tbaa !904
  %i.hr = icmp eq i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hs = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.ht = load i32, ptr %i.fy, align 4, !tbaa !920
  %i.hu = icmp eq i32 %i.hs, %i.ht
  br i1 %i.hu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i: ; preds = %bb.aq
  %i.hv = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.hw = load i32, ptr %i.ga, align 8, !tbaa !921
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i
  %i.hy = load ptr, ptr %i.gm, align 8, !tbaa !905
  %.not.i163.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ib = load ptr, ptr %i.hh, align 8, !tbaa !905
  %.not.i165.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i165.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.if = load ptr, ptr %i.gb, align 8, !tbaa !1354, !nonnull !83
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ih = trunc nuw i8 %i.ig to i1
  %i.ii = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.ih, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.ij = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.ik = sext i32 %i.ii to i64                   ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %i.ij, i64 %i.ik ; 3 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !54
  %i.in = getelementptr i8, ptr %i.il, i64 4
  %i.io = load float, ptr %i.in, align 4, !tbaa !54
  %i.ip = getelementptr i8, ptr %i.il, i64 8
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !54
  %i.ir = fmul float %i.io, 7.151700e-01
  %i.is = call float @llvm.fmuladd.f32(float %i.im, float 2.126400e-01, float %i.ir)
  %i.it = call float @llvm.fmuladd.f32(float %i.iq, float 7.219000e-02, float %i.is) ; 5 uses
  %i.iu = fcmp ogt float %i.it, 0.000000e+00
  br i1 %i.iu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iv = fcmp ugt float %i.it, 1.800000e-01
  br i1 %i.iv, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.iw = fadd float %i.it, f0x3F0BB782
  %i.ix = fdiv float %i.iw, f0x3E3BEBCD
  %i.iy = call float @llvm.exp.f32(float %i.ix)   ; 2 uses
  %10 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.iy, i64 0
  %i.iz = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.iy, i64 1
  %11 = fsub <2 x float> %10, %i.iz
  %i.ja = fdiv <2 x float> %11, splat (float f0x438E2DCC) ; 2 uses
  %i.jb = extractelement <2 x float> %i.ja, i64 0 ; 2 uses
  %i.jc = fcmp olt float %i.jb, 1.800000e-01
  %i.jd = extractelement <2 x float> %i.ja, i64 1
  %.0.i168.i.i.i = select i1 %i.jc, float %i.jd, float %i.jb
  %i.je = call float @llvm.fabs.f32(float %.0.i168.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i167.i.i.i = phi float [ %i.je, %bb.az ], [ %i.it, %bb.ay ]
  %i.jf = fdiv float %.010.i167.i.i.i, %i.it
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i, %bb.ax
  %i.jg = phi float [ %i.jf, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.jh = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ji = icmp slt i32 %i.ii, %i.jh
  br i1 %i.ji, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i

.lr.ph228.i.i.i:                                  ; preds = %bb.ba, %bb.bh
  %indvars.iv237.i.i.i = phi i64 [ %indvars.iv.next238.i.i.i, %bb.bh ], [ %i.ik, %bb.ba ] ; 5 uses
  %i.jj = icmp eq i64 %indvars.iv237.i.i.i, %sext235.i.i.i
  %i.jk = icmp eq i64 %indvars.iv237.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.jj, i1 true, i1 %i.jk
  %i.jl = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %indvars.iv237.i.i.i
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !54 ; 3 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph228.i.i.i
  %i.jo = load ptr, ptr %4, align 8, !tbaa !906
  %i.jp = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo)
          to label %.noexc172.i.i.i unwind label %bb.bd

.noexc172.i.i.i:                                  ; preds = %bb.bb
  %i.jq = icmp eq i32 %i.jp, 3
  br i1 %i.jq, label %bb.bc, label %bb.bh, !prof !48

bb.bc:                                            ; preds = %.noexc172.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %.lr.ph228.i.i.i
  %i.js = fmul float %i.jg, %i.jn                 ; 2 uses
  %i.jt = load ptr, ptr %4, align 8, !tbaa !906
  %i.ju = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt)
          to label %.noexc177.i.i.i unwind label %bb.bg

.noexc177.i.i.i:                                  ; preds = %bb.be
  %i.jv = icmp eq i32 %i.ju, 3
  br i1 %i.jv, label %bb.bf, label %bb.bh, !prof !48

bb.bf:                                            ; preds = %.noexc177.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.bf, %.noexc177.i.i.i, %bb.bc, %.noexc172.i.i.i
  %.sink.i.i.i = phi float [ %i.jn, %bb.bc ], [ %i.jn, %.noexc172.i.i.i ], [ %i.js, %.noexc177.i.i.i ], [ %i.js, %bb.bf ]
  %i.jx = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %indvars.iv237.i.i.i
  store float %.sink.i.i.i, ptr %i.jy, align 4, !tbaa !54
  %indvars.iv.next238.i.i.i = add nsw i64 %indvars.iv237.i.i.i, 1 ; 2 uses
  %i.jz = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ka = sext i32 %i.jz to i64
  %i.kb = icmp slt i64 %indvars.iv.next238.i.i.i, %i.ka
  br i1 %i.kb, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1358

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.kc = load i32, ptr %i.g, align 4, !tbaa !20
  %i.kd = icmp slt i32 %i.ii, %i.kc
  br i1 %i.kd, label %.lr.ph.preheader.i.i.i, label %.loopexit224.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bi
  %i.ke = sext i32 %i.ii to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.ke, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.br ] ; 5 uses
  %i.kf = icmp eq i64 %indvars.iv.i.i.i, %sext235.i.i.i
  %i.kg = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.kf, i1 true, i1 %i.kg
  %i.kh = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %indvars.iv.i.i.i
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !54 ; 5 uses
  br i1 %or.cond141.i.i.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.kk = load ptr, ptr %4, align 8, !tbaa !906
  %i.kl = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %.noexc182.i.i.i unwind label %bb.bl

.noexc182.i.i.i:                                  ; preds = %bb.bj
  %i.km = icmp eq i32 %i.kl, 3
  br i1 %i.km, label %bb.bk, label %bb.br, !prof !48

bb.bk:                                            ; preds = %.noexc182.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.ko = call float @llvm.fabs.f32(float %i.kj)  ; 2 uses
  %i.kp = fcmp ugt float %i.ko, 1.800000e-01
  br i1 %i.kp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kq = fadd float %i.ko, f0x3F0BB782
  %i.kr = fdiv float %i.kq, f0x3E3BEBCD
  %i.ks = call float @llvm.exp.f32(float %i.kr)   ; 2 uses
  %12 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.ks, i64 0
  %i.kt = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ks, i64 1
  %13 = fsub <2 x float> %12, %i.kt
  %i.ku = fdiv <2 x float> %13, splat (float f0x438E2DCC) ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0 ; 2 uses
  %i.kw = fcmp olt float %i.kv, 1.800000e-01
  %i.kx = extractelement <2 x float> %i.ku, i64 1
  %.0.i186.i.i.i = select i1 %i.kw, float %i.kx, float %i.kv
  %i.ky = call noundef float @llvm.copysign.f32(float %.0.i186.i.i.i, float %i.kj)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.010.i185.i.i.i = phi float [ %i.ky, %bb.bn ], [ %i.kj, %bb.bm ] ; 2 uses
  %i.kz = load ptr, ptr %4, align 8, !tbaa !906
  %i.la = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz)
          to label %.noexc190.i.i.i unwind label %bb.bq

.noexc190.i.i.i:                                  ; preds = %bb.bo
  %i.lb = icmp eq i32 %i.la, 3
  br i1 %i.lb, label %bb.bp, label %bb.br, !prof !48

bb.bp:                                            ; preds = %.noexc190.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.br:                                            ; preds = %bb.bp, %.noexc190.i.i.i, %bb.bk, %.noexc182.i.i.i
  %.sink266.i.i.i = phi float [ %i.kj, %bb.bk ], [ %i.kj, %.noexc182.i.i.i ], [ %.010.i185.i.i.i, %.noexc190.i.i.i ], [ %.010.i185.i.i.i, %bb.bp ]
  %i.ld = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.le = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %indvars.iv.i.i.i
  store float %.sink266.i.i.i, ptr %i.le, align 4, !tbaa !54
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.lf = load i32, ptr %i.g, align 4, !tbaa !20
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp slt i64 %indvars.iv.next.i.i.i, %i.lg
  br i1 %i.lh, label %.lr.ph.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1359

.loopexit224.i.i.i:                               ; preds = %bb.br, %bb.bh, %bb.bi, %bb.ba
  %i.li = load i32, ptr %i.fv, align 4, !tbaa !901
  %i.lj = add nsw i32 %i.li, 1                    ; 7 uses
  store i32 %i.lj, ptr %i.fv, align 4, !tbaa !901
  %i.lk = load i32, ptr %i.ge, align 8, !tbaa !910
  %i.ll = icmp slt i32 %i.lj, %i.lk
  br i1 %i.ll, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %.loopexit224.i.i.i
  %i.lm = load i8, ptr %i.gg, align 1, !tbaa !911, !range !82, !noundef !83
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.bt, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bs
  %.pre.i11.i.i = load i32, ptr %i.fx, align 8, !tbaa !902
  %.pre.i.i = load i32, ptr %i.fz, align 4, !tbaa !903
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.lo = load i8, ptr %i.gh, align 1, !tbaa !912, !range !82, !noundef !83
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.lq = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.lr = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 %i.lq
  store ptr %i.ls, ptr %i.gd, align 8, !tbaa !914
  %i.lt = load i32, ptr %i.gk, align 8, !tbaa !915
  %.not.i.i14.i.i = icmp slt i32 %i.lj, %i.lt
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bv, !prof !22

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co

bb.bw:                                            ; preds = %bb.bt
  %i.lu = load i8, ptr %i.gi, align 2, !tbaa !916, !range !82, !noundef !83
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lw = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.lx = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %i.lw
  store ptr %i.ly, ptr %i.gd, align 8, !tbaa !914
  %i.lz = load i32, ptr %i.gk, align 8, !tbaa !915
  %i.ma = icmp slt i32 %i.lj, %i.lz               ; 3 uses
  %i.mb = load i32, ptr %i.gl, align 4
  %i.mc = icmp sge i32 %i.lj, %i.mb
  %not..i.i12.i.i = xor i1 %i.ma, true
  %or.cond.i.i13.i.i = select i1 %not..i.i12.i.i, i1 true, i1 %i.mc, !prof !917
  %i.md = load ptr, ptr %i.gm, align 8
  %i.me = icmp eq ptr %i.md, null
  %i.mf = select i1 %or.cond.i.i13.i.i, i1 true, i1 %i.me, !prof !917
  br i1 %i.mf, label %bb.by, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, !prof !48

bb.by:                                            ; preds = %bb.bx
  %i.mg = load ptr, ptr %4, align 8, !tbaa !906
  %i.mh = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.mi = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.mj = load i32, ptr %i.gr, align 8, !tbaa !918
  %i.mk = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, i32 noundef %i.lj, i32 noundef %i.mh, i32 noundef %i.mi, ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.go, ptr noundef nonnull align 4 dereferenceable(4) %i.gp, ptr noundef nonnull align 4 dereferenceable(4) %i.gl, ptr noundef nonnull align 1 dereferenceable(1) %i.gq, i1 noundef zeroext %i.ma, i32 noundef %i.mj)
          to label %.noexc16.i.i unwind label %bb.co

.noexc16.i.i:                                     ; preds = %bb.by
  %i.ml = zext i1 %i.ma to i8
  store ptr %i.mk, ptr %i.gd, align 8, !tbaa !914
  store i8 %i.ml, ptr %i.gg, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.bz:                                            ; preds = %.loopexit224.i.i.i
  %i.mm = load i32, ptr %i.fw, align 4, !tbaa !904 ; 3 uses
  store i32 %i.mm, ptr %i.fv, align 4, !tbaa !901
  %i.mn = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.mo = add nsw i32 %i.mn, 1                    ; 3 uses
  store i32 %i.mo, ptr %i.fx, align 8, !tbaa !902
  %i.mp = load i32, ptr %i.gf, align 8, !tbaa !919
  %.not.i7.i.i = icmp slt i32 %i.mo, %i.mp
  %.pre35.i.i = load i32, ptr %i.fz, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i7.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mq = load i32, ptr %i.fy, align 4, !tbaa !920 ; 2 uses
  store i32 %i.mq, ptr %i.fx, align 8, !tbaa !902
  %i.mr = add nsw i32 %.pre35.i.i, 1              ; 3 uses
  store i32 %i.mr, ptr %i.fz, align 4, !tbaa !903
  %i.ms = load i32, ptr %i.ga, align 8, !tbaa !921
  %.not1.i8.i.i = icmp slt i32 %i.mr, %i.ms
  br i1 %.not1.i8.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i8 0, ptr %i.fu, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %._crit_edge.i9.i.i
  %i.mt = phi i32 [ %.pre35.i.i, %bb.bz ], [ %i.mr, %bb.ca ], [ %.pre.i.i, %._crit_edge.i9.i.i ]
  %i.mu = phi i32 [ %i.mo, %bb.bz ], [ %i.mq, %bb.ca ], [ %.pre.i11.i.i, %._crit_edge.i9.i.i ]
  %i.mv = phi i32 [ %i.mm, %bb.bz ], [ %i.mm, %bb.ca ], [ %i.lj, %._crit_edge.i9.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %4, i32 noundef %i.mv, i32 noundef %i.mu, i32 noundef %i.mt)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i: ; preds = %bb.cc, %bb.cb, %.noexc16.i.i, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %i.mw = load i32, ptr %i.gs, align 4, !tbaa !901
  %i.mx = add nsw i32 %i.mw, 1                    ; 7 uses
  store i32 %i.mx, ptr %i.gs, align 4, !tbaa !901
  %i.my = load i32, ptr %i.gt, align 8, !tbaa !910
  %i.mz = icmp slt i32 %i.mx, %i.my
  br i1 %i.mz, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i
  %i.na = load i8, ptr %i.hb, align 1, !tbaa !911, !range !82, !noundef !83
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.ce, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cd
  %.pre.i3.i.i = load i32, ptr %i.gv, align 8, !tbaa !902
  %.pre36.i.i = load i32, ptr %i.gy, align 4, !tbaa !903
  br label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  %i.nc = load i8, ptr %i.hc, align 1, !tbaa !912, !range !82, !noundef !83
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ne = load i64, ptr %i.he, align 8, !tbaa !913
  %i.nf = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 %i.ne
  store ptr %i.ng, ptr %i.gc, align 8, !tbaa !914
  %i.nh = load i32, ptr %i.hf, align 8, !tbaa !915
  %.not.i.i4.i.i = icmp slt i32 %i.mx, %i.nh
  br i1 %.not.i.i4.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.cg, !prof !22

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.co

bb.ch:                                            ; preds = %bb.ce
  %i.ni = load i8, ptr %i.hd, align 2, !tbaa !916, !range !82, !noundef !83
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nk = load i64, ptr %i.he, align 8, !tbaa !913
  %i.nl = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 %i.nk
  store ptr %i.nm, ptr %i.gc, align 8, !tbaa !914
  %i.nn = load i32, ptr %i.hf, align 8, !tbaa !915
  %i.no = icmp slt i32 %i.mx, %i.nn               ; 3 uses
  %i.np = load i32, ptr %i.hg, align 4
  %i.nq = icmp sge i32 %i.mx, %i.np
  %not..i.i.i.i = xor i1 %i.no, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.nq, !prof !917
  %i.nr = load ptr, ptr %i.hh, align 8
  %i.ns = icmp eq ptr %i.nr, null
  %i.nt = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ns, !prof !917
  br i1 %i.nt, label %bb.cj, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !48

bb.cj:                                            ; preds = %bb.ci
  %i.nu = load ptr, ptr %3, align 8, !tbaa !906
  %i.nv = load i32, ptr %i.gv, align 8, !tbaa !902
  %i.nw = load i32, ptr %i.gy, align 4, !tbaa !903
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IffEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IffEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !891
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1303
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IffEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #23

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.95", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1360, !nonnull !83, !align !417
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1362, !nonnull !83
  store i8 0, ptr %i.q, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1363, !nonnull !83, !align !417 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1360, !nonnull !83, !align !417 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %sext244.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext245.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !897, !range !82, !noundef !83
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !901
  %i.av = load i32, ptr %i.x, align 4, !tbaa !904
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !902
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !920
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !921
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !905
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1362, !nonnull !83
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99, !range !82, !noundef !83
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !54
  %i.bo = getelementptr i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !54
  %i.bq = fmul float %i.bp, 7.151700e-01
  %i.br = call float @llvm.fmuladd.f32(float %i.bn, float 2.126400e-01, float %i.bq)
  %i.bs = getelementptr i8, ptr %i.bm, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !54
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float 7.219000e-02, float %i.br) ; 5 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = fcmp ugt float %i.bu, 1.800000e-01
  br i1 %i.bw, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bx = fadd float %i.bu, f0x3F0BB782
  %i.by = fdiv float %i.bx, f0x3E3BEBCD
  %i.bz = call float @llvm.exp.f32(float %i.by)   ; 2 uses
  %6 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.bz, i64 0
  %i.ca = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bz, i64 1
  %7 = fsub <2 x float> %6, %i.ca
  %i.cb = fdiv <2 x float> %7, splat (float f0x438E2DCC) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = fcmp olt float %i.cc, 1.800000e-01
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %.0.i.i.i.i = select i1 %i.cd, float %i.ce, float %i.cc
  %i.cf = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.cf, %bb.n ], [ %i.bu, %bb.m ]
  %i.cg = fdiv float %.010.i.i.i.i, %i.bu
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.ch = phi float [ %i.cg, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.ci = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.cj = icmp slt i32 %i.bj, %i.ci
  br i1 %i.cj, label %.lr.ph232.i.i.i, label %.loopexit.i.i.i

.lr.ph232.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.ck = phi i32 [ %i.cw, %bb.s ], [ %i.ci, %bb.o ]
  %i.cl = phi ptr [ %i.cx, %bb.s ], [ %i.bk, %bb.o ] ; 2 uses
  %indvars.iv247.i.i.i = phi i64 [ %indvars.iv.next248.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.cm = icmp eq i64 %indvars.iv247.i.i.i, %sext245.i.i.i
  %i.cn = icmp eq i64 %indvars.iv247.i.i.i, %sext244.i.i.i
  %or.cond138.i.i.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph232.i.i.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv247.i.i.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !54
  %i.cq = fmul float %i.ch, %i.cp
  %i.cr = load ptr, ptr %2, align 8, !tbaa !906
  %i.cs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.ct = icmp eq i32 %i.cs, 3
  br i1 %i.ct, label %bb.q, label %bb.r, !prof !48

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv247.i.i.i
  store float %i.cq, ptr %i.cv, align 4, !tbaa !54
  %.pre252.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph232.i.i.i
  %i.cw = phi i32 [ %i.ck, %.lr.ph232.i.i.i ], [ %.pre252.i.i.i, %bb.r ] ; 2 uses
  %i.cx = phi ptr [ %i.cl, %.lr.ph232.i.i.i ], [ %i.cu, %bb.r ]
  %indvars.iv.next248.i.i.i = add nsw i64 %indvars.iv247.i.i.i, 1 ; 2 uses
  %i.cy = sext i32 %i.cw to i64
  %i.cz = icmp slt i64 %indvars.iv.next248.i.i.i, %i.cy
  br i1 %i.cz, label %.lr.ph232.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1364

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.db = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.dc = icmp slt i32 %i.bj, %i.db
  br i1 %i.dc, label %.lr.ph230.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph230.preheader.i.i.i:                        ; preds = %bb.u
  %i.dd = sext i32 %i.bj to i64
  br label %.lr.ph230.i.i.i

.lr.ph230.i.i.i:                                  ; preds = %bb.z, %.lr.ph230.preheader.i.i.i
  %i.de = phi i32 [ %i.db, %.lr.ph230.preheader.i.i.i ], [ %i.ea, %bb.z ]
  %indvars.iv242.i.i.i = phi i64 [ %i.dd, %.lr.ph230.preheader.i.i.i ], [ %indvars.iv.next243.i.i.i, %bb.z ] ; 5 uses
  %i.df = icmp eq i64 %indvars.iv242.i.i.i, %sext245.i.i.i
  %i.dg = icmp eq i64 %indvars.iv242.i.i.i, %sext244.i.i.i
  %or.cond139.i.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph230.i.i.i
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv242.i.i.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !54 ; 3 uses
  %i.dk = call float @llvm.fabs.f32(float %i.dj)  ; 2 uses
  %i.dl = fcmp ugt float %i.dk, 1.800000e-01
  br i1 %i.dl, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dm = fadd float %i.dk, f0x3F0BB782
  %i.dn = fdiv float %i.dm, f0x3E3BEBCD
  %i.do = call float @llvm.exp.f32(float %i.dn)   ; 2 uses
  %8 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.do, i64 0
  %i.dp = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.do, i64 1
  %9 = fsub <2 x float> %8, %i.dp
  %i.dq = fdiv <2 x float> %9, splat (float f0x438E2DCC) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.ds = fcmp olt float %i.dr, 1.800000e-01
  %i.dt = extractelement <2 x float> %i.dq, i64 1
  %.0.i154.i.i.i = select i1 %i.ds, float %i.dt, float %i.dr
  %i.du = call noundef float @llvm.copysign.f32(float %.0.i154.i.i.i, float %i.dj)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.du, %bb.w ], [ %i.dj, %bb.v ]
  %i.dv = load ptr, ptr %2, align 8, !tbaa !906
  %i.dw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %.noexc158.i.i.i unwind label %bb.aa

.noexc158.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.dx = icmp eq i32 %i.dw, 3
  br i1 %i.dx, label %bb.x, label %bb.y, !prof !48

bb.x:                                             ; preds = %.noexc158.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc158.i.i.i
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv242.i.i.i
  store float %.010.i153.i.i.i, ptr %i.dz, align 4, !tbaa !54
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph230.i.i.i
  %i.ea = phi i32 [ %i.de, %.lr.ph230.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next243.i.i.i = add nsw i64 %indvars.iv242.i.i.i, 1 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next243.i.i.i, %i.eb
  br i1 %i.ec, label %.lr.ph230.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1365

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ee = load i32, ptr %i.w, align 4, !tbaa !901
  %i.ef = add nsw i32 %i.ee, 1                    ; 7 uses
  store i32 %i.ef, ptr %i.w, align 4, !tbaa !901
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !910
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.ei = load i8, ptr %i.ag, align 1, !tbaa !911, !range !82, !noundef !83
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !902
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !903
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load i8, ptr %i.ah, align 1, !tbaa !912, !range !82, !noundef !83
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.em = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.em
  store ptr %i.eo, ptr %i.ad, align 8, !tbaa !914
  %i.ep = load i32, ptr %i.ak, align 8, !tbaa !915
  %.not.i.i26.i.i = icmp slt i32 %i.ef, %i.ep
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.eq = load i8, ptr %i.ai, align 2, !tbaa !916, !range !82, !noundef !83
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.et = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.es
  store ptr %i.eu, ptr %i.ad, align 8, !tbaa !914
  %i.ev = load i32, ptr %i.ak, align 8, !tbaa !915
  %i.ew = icmp slt i32 %i.ef, %i.ev               ; 3 uses
  %i.ex = load i32, ptr %i.al, align 4
  %i.ey = icmp sge i32 %i.ef, %i.ex
  %not..i.i24.i.i = xor i1 %i.ew, true
  %or.cond.i.i25.i.i = select i1 %not..i.i24.i.i, i1 true, i1 %i.ey, !prof !917
  %i.ez = load ptr, ptr %i.am, align 8
  %i.fa = icmp eq ptr %i.ez, null
  %i.fb = select i1 %or.cond.i.i25.i.i, i1 true, i1 %i.fa, !prof !917
  br i1 %i.fb, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !48

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load ptr, ptr %2, align 8, !tbaa !906
  %i.fd = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fe = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.ff = load i32, ptr %i.ar, align 8, !tbaa !918
  %i.fg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i32 noundef %i.ef, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.ew, i32 noundef %i.ff)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fh = zext i1 %i.ew to i8
  store ptr %i.fg, ptr %i.ad, align 8, !tbaa !914
  store i8 %i.fh, ptr %i.ag, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fi = load i32, ptr %i.x, align 4, !tbaa !904 ; 3 uses
  store i32 %i.fi, ptr %i.w, align 4, !tbaa !901
  %i.fj = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fk = add nsw i32 %i.fj, 1                    ; 3 uses
  store i32 %i.fk, ptr %i.y, align 8, !tbaa !902
  %i.fl = load i32, ptr %i.af, align 8, !tbaa !919
  %.not.i19.i.i = icmp slt i32 %i.fk, %i.fl
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load i32, ptr %i.z, align 4, !tbaa !920 ; 2 uses
  store i32 %i.fm, ptr %i.y, align 8, !tbaa !902
  %i.fn = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fn, ptr %i.aa, align 4, !tbaa !903
  %i.fo = load i32, ptr %i.ab, align 8, !tbaa !921
  %.not1.i20.i.i = icmp slt i32 %i.fn, %i.fo
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.fp = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fn, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fq = phi i32 [ %i.fk, %bb.ai ], [ %i.fm, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fr = phi i32 [ %i.fi, %bb.ai ], [ %i.fi, %bb.aj ], [ %i.ef, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fr, i32 noundef %i.fq, i32 noundef %i.fp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.da, %bb.t ], [ %i.fs, %bb.am ], [ %i.ed, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cr

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !1363, !nonnull !83, !align !417
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext235.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.hn = load i8, ptr %i.fu, align 8, !tbaa !897, !range !82, !noundef !83
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hp = load i32, ptr %i.fv, align 4, !tbaa !901
  %i.hq = load i32, ptr %i.fw, align 4, !tbaa !904
  %i.hr = icmp eq i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hs = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.ht = load i32, ptr %i.fy, align 4, !tbaa !920
  %i.hu = icmp eq i32 %i.hs, %i.ht
  br i1 %i.hu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i: ; preds = %bb.aq
  %i.hv = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.hw = load i32, ptr %i.ga, align 8, !tbaa !921
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i
  %i.hy = load ptr, ptr %i.gm, align 8, !tbaa !905
  %.not.i163.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ib = load ptr, ptr %i.hh, align 8, !tbaa !905
  %.not.i165.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i165.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.if = load ptr, ptr %i.gb, align 8, !tbaa !1362, !nonnull !83
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ih = trunc nuw i8 %i.ig to i1
  %i.ii = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.ih, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.ij = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.ik = sext i32 %i.ii to i64                   ; 2 uses
  %i.il = getelementptr i8, ptr %i.ij, i64 %i.ik  ; 3 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !47
  %i.in = uitofp i8 %i.im to float
  %i.io = fmul nnan float %i.in, f0x3B808081
  %i.ip = getelementptr i8, ptr %i.il, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !47
  %i.ir = uitofp i8 %i.iq to float
  %i.is = fmul nnan float %i.ir, f0x3B808081
  %i.it = getelementptr i8, ptr %i.il, i64 2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !47
  %i.iv = uitofp i8 %i.iu to float
  %i.iw = fmul nnan float %i.iv, f0x3B808081
  %i.ix = fmul nnan float %i.is, 7.151700e-01
  %i.iy = call float @llvm.fmuladd.f32(float %i.io, float 2.126400e-01, float %i.ix)
  %i.iz = call float @llvm.fmuladd.f32(float %i.iw, float 7.219000e-02, float %i.iy) ; 5 uses
  %i.ja = fcmp ogt float %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.jb = fcmp ugt float %i.iz, 1.800000e-01
  br i1 %i.jb, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jc = fadd float %i.iz, f0x3F0BB782
  %i.jd = fdiv float %i.jc, f0x3E3BEBCD
  %i.je = call float @llvm.exp.f32(float %i.jd)   ; 2 uses
  %10 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.je, i64 0
  %i.jf = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.je, i64 1
  %11 = fsub <2 x float> %10, %i.jf
  %i.jg = fdiv <2 x float> %11, splat (float f0x438E2DCC) ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 0 ; 2 uses
  %i.ji = fcmp olt float %i.jh, 1.800000e-01
  %i.jj = extractelement <2 x float> %i.jg, i64 1
  %.0.i168.i.i.i = select i1 %i.ji, float %i.jj, float %i.jh
  %i.jk = call float @llvm.fabs.f32(float %.0.i168.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i167.i.i.i = phi float [ %i.jk, %bb.az ], [ %i.iz, %bb.ay ]
  %i.jl = fdiv float %.010.i167.i.i.i, %i.iz
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i, %bb.ax
  %i.jm = phi float [ %i.jl, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !20
  %i.jo = icmp slt i32 %i.ii, %i.jn
  br i1 %i.jo, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i

.lr.ph228.i.i.i:                                  ; preds = %bb.ba, %bb.bh
  %indvars.iv237.i.i.i = phi i64 [ %indvars.iv.next238.i.i.i, %bb.bh ], [ %i.ik, %bb.ba ] ; 5 uses
  %i.jp = icmp eq i64 %indvars.iv237.i.i.i, %sext235.i.i.i
  %i.jq = icmp eq i64 %indvars.iv237.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.jp, i1 true, i1 %i.jq
  %i.jr = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %indvars.iv237.i.i.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !47
  %i.ju = uitofp i8 %i.jt to float
  %i.jv = fmul nnan float %i.ju, f0x3B808081      ; 3 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph228.i.i.i
  %i.jw = load ptr, ptr %4, align 8, !tbaa !906
  %i.jx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jw)
          to label %.noexc172.i.i.i unwind label %bb.bd

.noexc172.i.i.i:                                  ; preds = %bb.bb
  %i.jy = icmp eq i32 %i.jx, 3
  br i1 %i.jy, label %bb.bc, label %bb.bh, !prof !48

bb.bc:                                            ; preds = %.noexc172.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %.lr.ph228.i.i.i
  %i.ka = fmul float %i.jm, %i.jv                 ; 2 uses
  %i.kb = load ptr, ptr %4, align 8, !tbaa !906
  %i.kc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb)
          to label %.noexc177.i.i.i unwind label %bb.bg

.noexc177.i.i.i:                                  ; preds = %bb.be
  %i.kd = icmp eq i32 %i.kc, 3
  br i1 %i.kd, label %bb.bf, label %bb.bh, !prof !48

bb.bf:                                            ; preds = %.noexc177.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.bf, %.noexc177.i.i.i, %bb.bc, %.noexc172.i.i.i
  %.sink.i.i.i = phi float [ %i.jv, %bb.bc ], [ %i.jv, %.noexc172.i.i.i ], [ %i.ka, %.noexc177.i.i.i ], [ %i.ka, %bb.bf ]
  %i.kf = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %indvars.iv237.i.i.i
  store float %.sink.i.i.i, ptr %i.kg, align 4, !tbaa !54
  %indvars.iv.next238.i.i.i = add nsw i64 %indvars.iv237.i.i.i, 1 ; 2 uses
  %i.kh = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next238.i.i.i, %i.ki
  br i1 %i.kj, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1366

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.kk = load i32, ptr %i.g, align 4, !tbaa !20
  %i.kl = icmp slt i32 %i.ii, %i.kk
  br i1 %i.kl, label %.lr.ph.preheader.i.i.i, label %.loopexit224.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bi
  %i.km = sext i32 %i.ii to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.km, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.br ] ; 5 uses
  %i.kn = icmp eq i64 %indvars.iv.i.i.i, %sext235.i.i.i
  %i.ko = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.kn, i1 true, i1 %i.ko
  %i.kp = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %indvars.iv.i.i.i
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !47
  %i.ks = uitofp i8 %i.kr to float
  %i.kt = fmul nnan float %i.ks, f0x3B808081      ; 5 uses
  br i1 %or.cond141.i.i.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.ku = load ptr, ptr %4, align 8, !tbaa !906
  %i.kv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku)
          to label %.noexc182.i.i.i unwind label %bb.bl

.noexc182.i.i.i:                                  ; preds = %bb.bj
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %bb.bk, label %bb.br, !prof !48

bb.bk:                                            ; preds = %.noexc182.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.ky = fcmp ugt float %i.kt, 1.800000e-01
  br i1 %i.ky, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kz = fadd float %i.kt, f0x3F0BB782
  %i.la = fdiv float %i.kz, f0x3E3BEBCD
  %i.lb = call float @llvm.exp.f32(float %i.la)   ; 2 uses
  %12 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.lb, i64 0
  %i.lc = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.lb, i64 1
  %13 = fsub <2 x float> %12, %i.lc
  %i.ld = fdiv <2 x float> %13, splat (float f0x438E2DCC) ; 2 uses
  %i.le = extractelement <2 x float> %i.ld, i64 0 ; 2 uses
  %i.lf = fcmp olt float %i.le, 1.800000e-01
  %i.lg = extractelement <2 x float> %i.ld, i64 1
  %.0.i186.i.i.i = select i1 %i.lf, float %i.lg, float %i.le
  %i.lh = call float @llvm.fabs.f32(float %.0.i186.i.i.i)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.010.i185.i.i.i = phi float [ %i.lh, %bb.bn ], [ %i.kt, %bb.bm ] ; 2 uses
  %i.li = load ptr, ptr %4, align 8, !tbaa !906
  %i.lj = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.li)
          to label %.noexc190.i.i.i unwind label %bb.bq

.noexc190.i.i.i:                                  ; preds = %bb.bo
  %i.lk = icmp eq i32 %i.lj, 3
  br i1 %i.lk, label %bb.bp, label %bb.br, !prof !48

bb.bp:                                            ; preds = %.noexc190.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.br:                                            ; preds = %bb.bp, %.noexc190.i.i.i, %bb.bk, %.noexc182.i.i.i
  %.sink266.i.i.i = phi float [ %i.kt, %bb.bk ], [ %i.kt, %.noexc182.i.i.i ], [ %.010.i185.i.i.i, %.noexc190.i.i.i ], [ %.010.i185.i.i.i, %bb.bp ]
  %i.lm = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %indvars.iv.i.i.i
  store float %.sink266.i.i.i, ptr %i.ln, align 4, !tbaa !54
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.lo = load i32, ptr %i.g, align 4, !tbaa !20
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv.next.i.i.i, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1367

.loopexit224.i.i.i:                               ; preds = %bb.br, %bb.bh, %bb.bi, %bb.ba
  %i.lr = load i32, ptr %i.fv, align 4, !tbaa !901
  %i.ls = add nsw i32 %i.lr, 1                    ; 7 uses
  store i32 %i.ls, ptr %i.fv, align 4, !tbaa !901
  %i.lt = load i32, ptr %i.ge, align 8, !tbaa !910
  %i.lu = icmp slt i32 %i.ls, %i.lt
  br i1 %i.lu, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %.loopexit224.i.i.i
  %i.lv = load i8, ptr %i.gg, align 1, !tbaa !911, !range !82, !noundef !83
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.bt, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bs
  %.pre.i11.i.i = load i32, ptr %i.fx, align 8, !tbaa !902
  %.pre.i.i = load i32, ptr %i.fz, align 4, !tbaa !903
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.lx = load i8, ptr %i.gh, align 1, !tbaa !912, !range !82, !noundef !83
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.lz = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.ma = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.mb = getelementptr inbounds i8, ptr %i.ma, i64 %i.lz
  store ptr %i.mb, ptr %i.gd, align 8, !tbaa !914
  %i.mc = load i32, ptr %i.gk, align 8, !tbaa !915
  %.not.i.i14.i.i = icmp slt i32 %i.ls, %i.mc
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bv, !prof !22

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co

bb.bw:                                            ; preds = %bb.bt
  %i.md = load i8, ptr %i.gi, align 2, !tbaa !916, !range !82, !noundef !83
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mf = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.mg = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.mf
  store ptr %i.mh, ptr %i.gd, align 8, !tbaa !914
  %i.mi = load i32, ptr %i.gk, align 8, !tbaa !915
  %i.mj = icmp slt i32 %i.ls, %i.mi               ; 3 uses
  %i.mk = load i32, ptr %i.gl, align 4
  %i.ml = icmp sge i32 %i.ls, %i.mk
  %not..i.i12.i.i = xor i1 %i.mj, true
  %or.cond.i.i13.i.i = select i1 %not..i.i12.i.i, i1 true, i1 %i.ml, !prof !917
  %i.mm = load ptr, ptr %i.gm, align 8
  %i.mn = icmp eq ptr %i.mm, null
  %i.mo = select i1 %or.cond.i.i13.i.i, i1 true, i1 %i.mn, !prof !917
  br i1 %i.mo, label %bb.by, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, !prof !48

bb.by:                                            ; preds = %bb.bx
  %i.mp = load ptr, ptr %4, align 8, !tbaa !906
  %i.mq = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.mr = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.ms = load i32, ptr %i.gr, align 8, !tbaa !918
  %i.mt = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i32 noundef %i.ls, i32 noundef %i.mq, i32 noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.go, ptr noundef nonnull align 4 dereferenceable(4) %i.gp, ptr noundef nonnull align 4 dereferenceable(4) %i.gl, ptr noundef nonnull align 1 dereferenceable(1) %i.gq, i1 noundef zeroext %i.mj, i32 noundef %i.ms)
          to label %.noexc16.i.i unwind label %bb.co

.noexc16.i.i:                                     ; preds = %bb.by
  %i.mu = zext i1 %i.mj to i8
  store ptr %i.mt, ptr %i.gd, align 8, !tbaa !914
  store i8 %i.mu, ptr %i.gg, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.bz:                                            ; preds = %.loopexit224.i.i.i
  %i.mv = load i32, ptr %i.fw, align 4, !tbaa !904 ; 3 uses
  store i32 %i.mv, ptr %i.fv, align 4, !tbaa !901
  %i.mw = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.mx = add nsw i32 %i.mw, 1                    ; 3 uses
  store i32 %i.mx, ptr %i.fx, align 8, !tbaa !902
  %i.my = load i32, ptr %i.gf, align 8, !tbaa !919
  %.not.i7.i.i = icmp slt i32 %i.mx, %i.my
  %.pre35.i.i = load i32, ptr %i.fz, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i7.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mz = load i32, ptr %i.fy, align 4, !tbaa !920 ; 2 uses
  store i32 %i.mz, ptr %i.fx, align 8, !tbaa !902
  %i.na = add nsw i32 %.pre35.i.i, 1              ; 3 uses
  store i32 %i.na, ptr %i.fz, align 4, !tbaa !903
  %i.nb = load i32, ptr %i.ga, align 8, !tbaa !921
  %.not1.i8.i.i = icmp slt i32 %i.na, %i.nb
  br i1 %.not1.i8.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i8 0, ptr %i.fu, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %._crit_edge.i9.i.i
  %i.nc = phi i32 [ %.pre35.i.i, %bb.bz ], [ %i.na, %bb.ca ], [ %.pre.i.i, %._crit_edge.i9.i.i ]
  %i.nd = phi i32 [ %i.mx, %bb.bz ], [ %i.mz, %bb.ca ], [ %.pre.i11.i.i, %._crit_edge.i9.i.i ]
  %i.ne = phi i32 [ %i.mv, %bb.bz ], [ %i.mv, %bb.ca ], [ %i.ls, %._crit_edge.i9.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %4, i32 noundef %i.ne, i32 noundef %i.nd, i32 noundef %i.nc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i: ; preds = %bb.cc, %bb.cb, %.noexc16.i.i, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %i.nf = load i32, ptr %i.gs, align 4, !tbaa !901
  %i.ng = add nsw i32 %i.nf, 1                    ; 7 uses
  store i32 %i.ng, ptr %i.gs, align 4, !tbaa !901
  %i.nh = load i32, ptr %i.gt, align 8, !tbaa !910
  %i.ni = icmp slt i32 %i.ng, %i.nh
  br i1 %i.ni, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i
  %i.nj = load i8, ptr %i.hb, align 1, !tbaa !911, !range !82, !noundef !83
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.ce, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cd
  %.pre.i3.i.i = load i32, ptr %i.gv, align 8, !tbaa !902
  %.pre36.i.i = load i32, ptr %i.gy, align 4, !tbaa !903
  br label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  %i.nl = load i8, ptr %i.hc, align 1, !tbaa !912, !range !82, !noundef !83
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.nn = load i64, ptr %i.he, align 8, !tbaa !913
  %i.no = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 %i.nn
  store ptr %i.np, ptr %i.gc, align 8, !tbaa !914
  %i.nq = load i32, ptr %i.hf, align 8, !tbaa !915
  %.not.i.i4.i.i = icmp slt i32 %i.ng, %i.nq
  br i1 %.not.i.i4.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.cg, !prof !22

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.co

bb.ch:                                            ; preds = %bb.ce
  %i.nr = load i8, ptr %i.hd, align 2, !tbaa !916, !range !82, !noundef !83
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nt = load i64, ptr %i.he, align 8, !tbaa !913
  %i.nu = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %i.nt
  store ptr %i.nv, ptr %i.gc, align 8, !tbaa !914
  %i.nw = load i32, ptr %i.hf, align 8, !tbaa !915
  %i.nx = icmp slt i32 %i.ng, %i.nw               ; 3 uses
  %i.ny = load i32, ptr %i.hg, align 4
  %i.nz = icmp sge i32 %i.ng, %i.ny
  %not..i.i.i.i = xor i1 %i.nx, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.nz, !prof !917
  %i.oa = load ptr, ptr %i.hh, align 8
  %i.ob = icmp eq ptr %i.oa, null
  %i.oc = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ob, !prof !917
  br i1 %i.oc, label %bb.cj, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !48

bb.cj:                                            ; preds = %bb.ci
  %i.od = load ptr, ptr %3, align 8, !tbaa !906
  %i.oe = load i32, ptr %i.gv, align 8, !tbaa !902
  %i.of = load i32, ptr %i.gy, align 4, !tbaa !903
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.pn129.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn129.pn.pn.pn.i.i.i, %bb.an ], [ %.pn118.pn.pn.pn.pn.i.i.i, %bb.cq ]
  resume { ptr, i32 } %.pn129.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !891
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1303
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1368, !nonnull !83, !align !417
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1370, !nonnull !83
  store i8 0, ptr %i.q, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1371, !nonnull !83, !align !417 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1368, !nonnull !83, !align !417 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %sext268.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext269.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !897, !range !82, !noundef !83
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !901
  %i.av = load i32, ptr %i.x, align 4, !tbaa !904
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !902
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !920
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !921
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !905
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_bNS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1370, !nonnull !83
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99, !range !82, !noundef !83
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !54
  %i.bo = getelementptr i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !54
  %i.bq = fmul float %i.bp, 7.151700e-01
  %i.br = call float @llvm.fmuladd.f32(float %i.bn, float 2.126400e-01, float %i.bq)
  %i.bs = getelementptr i8, ptr %i.bm, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !54
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float 7.219000e-02, float %i.br) ; 5 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = fcmp ugt float %i.bu, 1.800000e-01
  br i1 %i.bw, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bx = fadd float %i.bu, f0x3F0BB782
  %i.by = fdiv float %i.bx, f0x3E3BEBCD
  %i.bz = call float @llvm.exp.f32(float %i.by)   ; 2 uses
  %6 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.bz, i64 0
  %i.ca = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bz, i64 1
  %7 = fsub <2 x float> %6, %i.ca
  %i.cb = fdiv <2 x float> %7, splat (float f0x438E2DCC) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = fcmp olt float %i.cc, 1.800000e-01
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %.0.i.i.i.i = select i1 %i.cd, float %i.ce, float %i.cc
  %i.cf = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.cf, %bb.n ], [ %i.bu, %bb.m ]
  %i.cg = fdiv float %.010.i.i.i.i, %i.bu
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.ch = phi float [ %i.cg, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.ci = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.cj = icmp slt i32 %i.bj, %i.ci
  br i1 %i.cj, label %.lr.ph256.i.i.i, label %.loopexit.i.i.i

.lr.ph256.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.ck = phi i32 [ %i.cw, %bb.s ], [ %i.ci, %bb.o ]
  %i.cl = phi ptr [ %i.cx, %bb.s ], [ %i.bk, %bb.o ] ; 2 uses
  %indvars.iv271.i.i.i = phi i64 [ %indvars.iv.next272.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.cm = icmp eq i64 %indvars.iv271.i.i.i, %sext269.i.i.i
  %i.cn = icmp eq i64 %indvars.iv271.i.i.i, %sext268.i.i.i
  %or.cond138.i.i.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph256.i.i.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv271.i.i.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !54
  %i.cq = fmul float %i.ch, %i.cp
  %i.cr = load ptr, ptr %2, align 8, !tbaa !906
  %i.cs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.ct = icmp eq i32 %i.cs, 3
  br i1 %i.ct, label %bb.q, label %bb.r, !prof !48

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv271.i.i.i
  store float %i.cq, ptr %i.cv, align 4, !tbaa !54
  %.pre276.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph256.i.i.i
  %i.cw = phi i32 [ %i.ck, %.lr.ph256.i.i.i ], [ %.pre276.i.i.i, %bb.r ] ; 2 uses
  %i.cx = phi ptr [ %i.cl, %.lr.ph256.i.i.i ], [ %i.cu, %bb.r ]
  %indvars.iv.next272.i.i.i = add nsw i64 %indvars.iv271.i.i.i, 1 ; 2 uses
  %i.cy = sext i32 %i.cw to i64
  %i.cz = icmp slt i64 %indvars.iv.next272.i.i.i, %i.cy
  br i1 %i.cz, label %.lr.ph256.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1372

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.db = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.dc = icmp slt i32 %i.bj, %i.db
  br i1 %i.dc, label %.lr.ph254.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph254.preheader.i.i.i:                        ; preds = %bb.u
  %i.dd = sext i32 %i.bj to i64
  br label %.lr.ph254.i.i.i

.lr.ph254.i.i.i:                                  ; preds = %bb.z, %.lr.ph254.preheader.i.i.i
  %i.de = phi i32 [ %i.db, %.lr.ph254.preheader.i.i.i ], [ %i.ea, %bb.z ]
  %indvars.iv266.i.i.i = phi i64 [ %i.dd, %.lr.ph254.preheader.i.i.i ], [ %indvars.iv.next267.i.i.i, %bb.z ] ; 5 uses
  %i.df = icmp eq i64 %indvars.iv266.i.i.i, %sext269.i.i.i
  %i.dg = icmp eq i64 %indvars.iv266.i.i.i, %sext268.i.i.i
  %or.cond139.i.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph254.i.i.i
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv266.i.i.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !54 ; 3 uses
  %i.dk = call float @llvm.fabs.f32(float %i.dj)  ; 2 uses
  %i.dl = fcmp ugt float %i.dk, 1.800000e-01
  br i1 %i.dl, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dm = fadd float %i.dk, f0x3F0BB782
  %i.dn = fdiv float %i.dm, f0x3E3BEBCD
  %i.do = call float @llvm.exp.f32(float %i.dn)   ; 2 uses
  %8 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.do, i64 0
  %i.dp = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.do, i64 1
  %9 = fsub <2 x float> %8, %i.dp
  %i.dq = fdiv <2 x float> %9, splat (float f0x438E2DCC) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.ds = fcmp olt float %i.dr, 1.800000e-01
  %i.dt = extractelement <2 x float> %i.dq, i64 1
  %.0.i154.i.i.i = select i1 %i.ds, float %i.dt, float %i.dr
  %i.du = call noundef float @llvm.copysign.f32(float %.0.i154.i.i.i, float %i.dj)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.du, %bb.w ], [ %i.dj, %bb.v ]
  %i.dv = load ptr, ptr %2, align 8, !tbaa !906
  %i.dw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %.noexc158.i.i.i unwind label %bb.aa

.noexc158.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.dx = icmp eq i32 %i.dw, 3
  br i1 %i.dx, label %bb.x, label %bb.y, !prof !48

bb.x:                                             ; preds = %.noexc158.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc158.i.i.i
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv266.i.i.i
  store float %.010.i153.i.i.i, ptr %i.dz, align 4, !tbaa !54
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph254.i.i.i
  %i.ea = phi i32 [ %i.de, %.lr.ph254.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next267.i.i.i = add nsw i64 %indvars.iv266.i.i.i, 1 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next267.i.i.i, %i.eb
  br i1 %i.ec, label %.lr.ph254.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1373

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ee = load i32, ptr %i.w, align 4, !tbaa !901
  %i.ef = add nsw i32 %i.ee, 1                    ; 7 uses
  store i32 %i.ef, ptr %i.w, align 4, !tbaa !901
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !910
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.ei = load i8, ptr %i.ag, align 1, !tbaa !911, !range !82, !noundef !83
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !902
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !903
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load i8, ptr %i.ah, align 1, !tbaa !912, !range !82, !noundef !83
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.em = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.em
  store ptr %i.eo, ptr %i.ad, align 8, !tbaa !914
  %i.ep = load i32, ptr %i.ak, align 8, !tbaa !915
  %.not.i.i26.i.i = icmp slt i32 %i.ef, %i.ep
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.eq = load i8, ptr %i.ai, align 2, !tbaa !916, !range !82, !noundef !83
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.et = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.es
  store ptr %i.eu, ptr %i.ad, align 8, !tbaa !914
  %i.ev = load i32, ptr %i.ak, align 8, !tbaa !915
  %i.ew = icmp slt i32 %i.ef, %i.ev               ; 3 uses
  %i.ex = load i32, ptr %i.al, align 4
  %i.ey = icmp sge i32 %i.ef, %i.ex
  %not..i.i24.i.i = xor i1 %i.ew, true
  %or.cond.i.i25.i.i = select i1 %not..i.i24.i.i, i1 true, i1 %i.ey, !prof !917
  %i.ez = load ptr, ptr %i.am, align 8
  %i.fa = icmp eq ptr %i.ez, null
  %i.fb = select i1 %or.cond.i.i25.i.i, i1 true, i1 %i.fa, !prof !917
  br i1 %i.fb, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !48

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load ptr, ptr %2, align 8, !tbaa !906
  %i.fd = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fe = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.ff = load i32, ptr %i.ar, align 8, !tbaa !918
  %i.fg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i32 noundef %i.ef, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.ew, i32 noundef %i.ff)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fh = zext i1 %i.ew to i8
  store ptr %i.fg, ptr %i.ad, align 8, !tbaa !914
  store i8 %i.fh, ptr %i.ag, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fi = load i32, ptr %i.x, align 4, !tbaa !904 ; 3 uses
  store i32 %i.fi, ptr %i.w, align 4, !tbaa !901
  %i.fj = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fk = add nsw i32 %i.fj, 1                    ; 3 uses
  store i32 %i.fk, ptr %i.y, align 8, !tbaa !902
  %i.fl = load i32, ptr %i.af, align 8, !tbaa !919
  %.not.i19.i.i = icmp slt i32 %i.fk, %i.fl
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load i32, ptr %i.z, align 4, !tbaa !920 ; 2 uses
  store i32 %i.fm, ptr %i.y, align 8, !tbaa !902
  %i.fn = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fn, ptr %i.aa, align 4, !tbaa !903
  %i.fo = load i32, ptr %i.ab, align 8, !tbaa !921
  %.not1.i20.i.i = icmp slt i32 %i.fn, %i.fo
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.fp = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fn, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fq = phi i32 [ %i.fk, %bb.ai ], [ %i.fm, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fr = phi i32 [ %i.fi, %bb.ai ], [ %i.fi, %bb.aj ], [ %i.ef, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fr, i32 noundef %i.fq, i32 noundef %i.fp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.da, %bb.t ], [ %i.fs, %bb.am ], [ %i.ed, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.el

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !1371, !nonnull !83, !align !417
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 9 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext259.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.hr, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hs = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.ht = load i32, ptr %i.fy, align 4, !tbaa !920
  %i.hu = icmp eq i32 %i.hs, %i.ht
  br i1 %i.hu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i: ; preds = %bb.aq
  %i.hv = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.hw = load i32, ptr %i.ga, align 8, !tbaa !921
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i
  %i.hy = load ptr, ptr %i.gm, align 8, !tbaa !905
  %.not.i163.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ib = load ptr, ptr %i.hh, align 8, !tbaa !905
  %.not.i165.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i165.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_bNS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.if = load ptr, ptr %i.gb, align 8, !tbaa !1370, !nonnull !83
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ih = trunc nuw i8 %i.ig to i1
  %i.ii = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.ih, label %bb.ax, label %bb.co

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.ij = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.ik = sext i32 %i.ii to i64                   ; 2 uses
  %i.il = getelementptr [2 x i8], ptr %i.ij, i64 %i.ik ; 3 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !954 ; 2 uses
  %i.in = zext i16 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 13
  %i.ip = and i32 %i.io, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i = sext i16 %i.im to i32
  %i.iq = and i32 %.signext.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.ir = icmp samesign ugt i32 %i.ip, 8388607
  br i1 %i.ir, label %bb.ay, label %bb.bb, !prof !22

bb.ay:                                            ; preds = %bb.ax
  %i.is = or disjoint i32 %i.ip, %i.iq            ; 2 uses
  %i.it = icmp samesign ult i32 %i.ip, 260046848
  br i1 %i.it, label %bb.az, label %bb.ba, !prof !22

bb.az:                                            ; preds = %bb.ay
  %i.iu = add nuw nsw i32 %i.is, 939524096
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.iv = or i32 %i.is, 2139095040
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iw = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ip, i1 true)
  %i.ix = add nsw i32 %i.iw, -8                   ; 2 uses
  %i.iy = shl i32 %i.ip, %i.ix
  %i.iz = or i32 %i.iq, %i.iy
  %i.ja = or i32 %i.iz, 947912704
  %i.jb = shl nuw nsw i32 %i.ix, 23
  %i.jc = sub nuw i32 %i.ja, %i.jb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.iu, %bb.az ], [ %i.iv, %bb.ba ], [ %i.jc, %bb.bc ], [ %i.iq, %bb.bb ]
  %i.jd = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i to float
  %i.je = getelementptr i8, ptr %i.il, i64 2
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !954 ; 2 uses
  %i.jg = zext i16 %i.jf to i32
  %i.jh = shl nuw nsw i32 %i.jg, 13
  %i.ji = and i32 %i.jh, 268427264                ; 6 uses
  %.signext.i.i.i.i.i167.i.i.i = sext i16 %i.jf to i32
  %i.jj = and i32 %.signext.i.i.i.i.i167.i.i.i, -2147483648 ; 3 uses
  %i.jk = icmp samesign ugt i32 %i.ji, 8388607
  br i1 %i.jk, label %bb.be, label %bb.bh, !prof !22

bb.be:                                            ; preds = %bb.bd
  %i.jl = or disjoint i32 %i.ji, %i.jj            ; 2 uses
  %i.jm = icmp samesign ult i32 %i.ji, 260046848
  br i1 %i.jm, label %bb.bf, label %bb.bg, !prof !22

bb.bf:                                            ; preds = %bb.be
  %i.jn = add nuw nsw i32 %i.jl, 939524096
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.jo = or i32 %i.jl, 2139095040
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bd
  %.not.i.i.i.i.i168.i.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.i.i.i168.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jp = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ji, i1 true)
  %i.jq = add nsw i32 %i.jp, -8                   ; 2 uses
  %i.jr = shl i32 %i.ji, %i.jq
  %i.js = or i32 %i.jj, %i.jr
  %i.jt = or i32 %i.js, 947912704
  %i.ju = shl nuw nsw i32 %i.jq, 23
  %i.jv = sub nuw i32 %i.jt, %i.ju
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.sroa.0.0.i.i.i.i.i169.i.i.i = phi i32 [ %i.jn, %bb.bf ], [ %i.jo, %bb.bg ], [ %i.jv, %bb.bi ], [ %i.jj, %bb.bh ]
  %i.jw = bitcast i32 %.sroa.0.0.i.i.i.i.i169.i.i.i to float
  %i.jx = getelementptr i8, ptr %i.il, i64 4
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !954 ; 2 uses
  %i.jz = zext i16 %i.jy to i32
  %i.ka = shl nuw nsw i32 %i.jz, 13
  %i.kb = and i32 %i.ka, 268427264                ; 6 uses
  %.signext.i.i.i.i.i171.i.i.i = sext i16 %i.jy to i32
  %i.kc = and i32 %.signext.i.i.i.i.i171.i.i.i, -2147483648 ; 3 uses
  %i.kd = icmp samesign ugt i32 %i.kb, 8388607
  br i1 %i.kd, label %bb.bk, label %bb.bn, !prof !22

bb.bk:                                            ; preds = %bb.bj
  %i.ke = or disjoint i32 %i.kb, %i.kc            ; 2 uses
  %i.kf = icmp samesign ult i32 %i.kb, 260046848
  br i1 %i.kf, label %bb.bl, label %bb.bm, !prof !22

bb.bl:                                            ; preds = %bb.bk
  %i.kg = add nuw nsw i32 %i.ke, 939524096
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bk
  %i.kh = or i32 %i.ke, 2139095040
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bj
  %.not.i.i.i.i.i172.i.i.i = icmp eq i32 %i.kb, 0
  br i1 %.not.i.i.i.i.i172.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ki = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.kb, i1 true)
  %i.kj = add nsw i32 %i.ki, -8                   ; 2 uses
  %i.kk = shl i32 %i.kb, %i.kj
  %i.kl = or i32 %i.kc, %i.kk
  %i.km = or i32 %i.kl, 947912704
  %i.kn = shl nuw nsw i32 %i.kj, 23
  %i.ko = sub nuw i32 %i.km, %i.kn
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %.sroa.0.0.i.i.i.i.i173.i.i.i = phi i32 [ %i.kg, %bb.bl ], [ %i.kh, %bb.bm ], [ %i.ko, %bb.bo ], [ %i.kc, %bb.bn ]
  %i.kp = bitcast i32 %.sroa.0.0.i.i.i.i.i173.i.i.i to float
  %i.kq = fmul float %i.jw, 7.151700e-01
  %i.kr = call float @llvm.fmuladd.f32(float %i.jd, float 2.126400e-01, float %i.kq)
  %i.ks = call float @llvm.fmuladd.f32(float %i.kp, float 7.219000e-02, float %i.kr) ; 5 uses
  %i.kt = fcmp ogt float %i.ks, 0.000000e+00
  br i1 %i.kt, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ku = fcmp ugt float %i.ks, 1.800000e-01
  br i1 %i.ku, label %bb.br, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit177.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.kv = fadd float %i.ks, f0x3F0BB782
  %i.kw = fdiv float %i.kv, f0x3E3BEBCD
  %i.kx = call float @llvm.exp.f32(float %i.kw)   ; 2 uses
  %10 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.kx, i64 0
  %i.ky = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.kx, i64 1
  %11 = fsub <2 x float> %10, %i.ky
  %i.kz = fdiv <2 x float> %11, splat (float f0x438E2DCC) ; 2 uses
  %i.la = extractelement <2 x float> %i.kz, i64 0 ; 2 uses
  %i.lb = fcmp olt float %i.la, 1.800000e-01
  %i.lc = extractelement <2 x float> %i.kz, i64 1
  %.0.i176.i.i.i = select i1 %i.lb, float %i.lc, float %i.la
  %i.ld = call float @llvm.fabs.f32(float %.0.i176.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit177.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit177.i.i.i: ; preds = %bb.br, %bb.bq
  %.010.i175.i.i.i = phi float [ %i.ld, %bb.br ], [ %i.ks, %bb.bq ]
  %i.le = fdiv float %.010.i175.i.i.i, %i.ks
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit177.i.i.i, %bb.bp
  %i.lf = phi float [ %i.le, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit177.i.i.i ], [ 0.000000e+00, %bb.bp ]
  %i.lg = load i32, ptr %i.g, align 4, !tbaa !20
  %i.lh = icmp slt i32 %i.ii, %i.lg
  br i1 %i.lh, label %.lr.ph252.i.i.i, label %.loopexit248.i.i.i

.lr.ph252.i.i.i:                                  ; preds = %bb.bs, %bb.cn
  %indvars.iv261.i.i.i = phi i64 [ %indvars.iv.next262.i.i.i, %bb.cn ], [ %i.ik, %bb.bs ] ; 6 uses
  %i.li = icmp eq i64 %indvars.iv261.i.i.i, %sext259.i.i.i
  %i.lj = icmp eq i64 %indvars.iv261.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.li, i1 true, i1 %i.lj
  %i.lk = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %indvars.iv261.i.i.i
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !954 ; 2 uses
  %i.ln = zext i16 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 13
  %i.lp = and i32 %i.lo, 268427264                ; 11 uses
  %.signext.i.i.i.i.i178.i.i.i = sext i16 %i.lm to i32
  %i.lq = and i32 %.signext.i.i.i.i.i178.i.i.i, -2147483648 ; 6 uses
  %i.lr = icmp samesign ugt i32 %i.lp, 8388607    ; 2 uses
  br i1 %or.cond140.i.i.i, label %bb.bt, label %bb.cd

bb.bt:                                            ; preds = %.lr.ph252.i.i.i
  br i1 %i.lr, label %bb.bu, label %bb.bx, !prof !22

bb.bu:                                            ; preds = %bb.bt
  %i.ls = or disjoint i32 %i.lp, %i.lq            ; 2 uses
  %i.lt = icmp samesign ult i32 %i.lp, 260046848
  br i1 %i.lt, label %bb.bv, label %bb.bw, !prof !22

bb.bv:                                            ; preds = %bb.bu
  %i.lu = add nuw nsw i32 %i.ls, 939524096
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  %i.lv = or i32 %i.ls, 2139095040
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bt
  %.not.i.i.i.i.i179.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i.i.i.i179.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lw = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.lp, i1 true)
  %i.lx = add nsw i32 %i.lw, -8                   ; 2 uses
  %i.ly = shl i32 %i.lp, %i.lx
  %i.lz = or i32 %i.lq, %i.ly
  %i.ma = or i32 %i.lz, 947912704
  %i.mb = shl nuw nsw i32 %i.lx, 23
  %i.mc = sub nuw i32 %i.ma, %i.mb
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sroa.0.0.i.i.i.i.i180.i.i.i = phi i32 [ %i.lu, %bb.bv ], [ %i.lv, %bb.bw ], [ %i.mc, %bb.by ], [ %i.lq, %bb.bx ]
  %i.md = load ptr, ptr %4, align 8, !tbaa !906
  %i.me = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.md)
          to label %.noexc184.i.i.i unwind label %bb.cc

.noexc184.i.i.i:                                  ; preds = %bb.bz
  %i.mf = icmp eq i32 %i.me, 3
  br i1 %i.mf, label %bb.ca, label %bb.cb, !prof !48

bb.ca:                                            ; preds = %.noexc184.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %.noexc184.i.i.i
  %i.mg = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %indvars.iv261.i.i.i
  store i32 %.sroa.0.0.i.i.i.i.i180.i.i.i, ptr %i.mh, align 4, !tbaa !54
  br label %bb.cn

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.cd:                                            ; preds = %.lr.ph252.i.i.i
  br i1 %i.lr, label %bb.ce, label %bb.ch, !prof !22

bb.ce:                                            ; preds = %bb.cd
  %i.mj = or disjoint i32 %i.lp, %i.lq            ; 2 uses
  %i.mk = icmp samesign ult i32 %i.lp, 260046848
  br i1 %i.mk, label %bb.cf, label %bb.cg, !prof !22

bb.cf:                                            ; preds = %bb.ce
  %i.ml = add nuw nsw i32 %i.mj, 939524096
  br label %bb.cj

bb.cg:                                            ; preds = %bb.ce
  %i.mm = or i32 %i.mj, 2139095040
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cd
  %.not.i.i.i.i.i188.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i.i.i.i188.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mn = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.lp, i1 true)
  %i.mo = add nsw i32 %i.mn, -8                   ; 2 uses
  %i.mp = shl i32 %i.lp, %i.mo
  %i.mq = or i32 %i.lq, %i.mp
  %i.mr = or i32 %i.mq, 947912704
  %i.ms = shl nuw nsw i32 %i.mo, 23
  %i.mt = sub nuw i32 %i.mr, %i.ms
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %.sroa.0.0.i.i.i.i.i189.i.i.i = phi i32 [ %i.ml, %bb.cf ], [ %i.mm, %bb.cg ], [ %i.mt, %bb.ci ], [ %i.lq, %bb.ch ]
  %i.mu = bitcast i32 %.sroa.0.0.i.i.i.i.i189.i.i.i to float
  %i.mv = fmul float %i.lf, %i.mu
  %i.mw = load ptr, ptr %4, align 8, !tbaa !906
  %i.mx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mw)
          to label %.noexc193.i.i.i unwind label %bb.cm

.noexc193.i.i.i:                                  ; preds = %bb.cj
  %i.my = icmp eq i32 %i.mx, 3
  br i1 %i.my, label %bb.ck, label %bb.cl, !prof !48

bb.ck:                                            ; preds = %.noexc193.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %.noexc193.i.i.i
  %i.mz = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %indvars.iv261.i.i.i
  store float %i.mv, ptr %i.na, align 4, !tbaa !54
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.cn:                                            ; preds = %bb.cl, %bb.cb
  %indvars.iv.next262.i.i.i = add nsw i64 %indvars.iv261.i.i.i, 1 ; 2 uses
  %i.nc = load i32, ptr %i.g, align 4, !tbaa !20
  %i.nd = sext i32 %i.nc to i64
  %i.ne = icmp slt i64 %indvars.iv.next262.i.i.i, %i.nd
  br i1 %i.ne, label %.lr.ph252.i.i.i, label %.loopexit248.i.i.i, !llvm.loop !1374

bb.co:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.nf = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ng = icmp slt i32 %i.ii, %i.nf
  br i1 %i.ng, label %.lr.ph.preheader.i.i.i, label %.loopexit248.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.co
  %i.nh = sext i32 %i.ii to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dl, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.nh, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.dl ] ; 6 uses
  %i.ni = icmp eq i64 %indvars.iv.i.i.i, %sext259.i.i.i
  %i.nj = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.ni, i1 true, i1 %i.nj
  %i.nk = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.nl = getelementptr inbounds [2 x i8], ptr %i.nk, i64 %indvars.iv.i.i.i
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !954 ; 2 uses
  %i.nn = zext i16 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 13
  %i.np = and i32 %i.no, 268427264                ; 11 uses
  %.signext.i.i.i.i.i196.i.i.i = sext i16 %i.nm to i32
  %i.nq = and i32 %.signext.i.i.i.i.i196.i.i.i, -2147483648 ; 6 uses
  %i.nr = icmp samesign ugt i32 %i.np, 8388607    ; 2 uses
  br i1 %or.cond141.i.i.i, label %bb.cp, label %bb.cz

bb.cp:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.nr, label %bb.cq, label %bb.ct, !prof !22

bb.cq:                                            ; preds = %bb.cp
  %i.ns = or disjoint i32 %i.np, %i.nq            ; 2 uses
  %i.nt = icmp samesign ult i32 %i.np, 260046848
  br i1 %i.nt, label %bb.cr, label %bb.cs, !prof !22

bb.cr:                                            ; preds = %bb.cq
  %i.nu = add nuw nsw i32 %i.ns, 939524096
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.nv = or i32 %i.ns, 2139095040
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cp
  %.not.i.i.i.i.i197.i.i.i = icmp eq i32 %i.np, 0
  br i1 %.not.i.i.i.i.i197.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nw = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.np, i1 true)
  %i.nx = add nsw i32 %i.nw, -8                   ; 2 uses
  %i.ny = shl i32 %i.np, %i.nx
  %i.nz = or i32 %i.nq, %i.ny
  %i.oa = or i32 %i.nz, 947912704
  %i.ob = shl nuw nsw i32 %i.nx, 23
  %i.oc = sub nuw i32 %i.oa, %i.ob
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr
  %.sroa.0.0.i.i.i.i.i198.i.i.i = phi i32 [ %i.nu, %bb.cr ], [ %i.nv, %bb.cs ], [ %i.oc, %bb.cu ], [ %i.nq, %bb.ct ]
  %i.od = load ptr, ptr %4, align 8, !tbaa !906
  %i.oe = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.od)
          to label %.noexc202.i.i.i unwind label %bb.cy

.noexc202.i.i.i:                                  ; preds = %bb.cv
  %i.of = icmp eq i32 %i.oe, 3
  br i1 %i.of, label %bb.cw, label %bb.cx, !prof !48

bb.cw:                                            ; preds = %.noexc202.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %.noexc202.i.i.i
  %i.og = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.og, i64 %indvars.iv.i.i.i
  store i32 %.sroa.0.0.i.i.i.i.i198.i.i.i, ptr %i.oh, align 4, !tbaa !54
  br label %bb.dl

bb.cy:                                            ; preds = %bb.cw, %bb.cv
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.cz:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.nr, label %bb.da, label %bb.dd, !prof !22

bb.da:                                            ; preds = %bb.cz
  %i.oj = or disjoint i32 %i.np, %i.nq            ; 2 uses
  %i.ok = icmp samesign ult i32 %i.np, 260046848
  br i1 %i.ok, label %bb.db, label %bb.dc, !prof !22

bb.db:                                            ; preds = %bb.da
  %i.ol = add nuw nsw i32 %i.oj, 939524096
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.om = or i32 %i.oj, 2139095040
  br label %bb.df

bb.dd:                                            ; preds = %bb.cz
  %.not.i.i.i.i.i206.i.i.i = icmp eq i32 %i.np, 0
  br i1 %.not.i.i.i.i.i206.i.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.on = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.np, i1 true)
  %i.oo = add nsw i32 %i.on, -8                   ; 2 uses
  %i.op = shl i32 %i.np, %i.oo
  %i.oq = or i32 %i.nq, %i.op
  %i.or = or i32 %i.oq, 947912704
  %i.os = shl nuw nsw i32 %i.oo, 23
  %i.ot = sub nuw i32 %i.or, %i.os
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %.sroa.0.0.i.i.i.i.i207.i.i.i = phi i32 [ %i.ol, %bb.db ], [ %i.om, %bb.dc ], [ %i.ot, %bb.de ], [ %i.nq, %bb.dd ]
  %i.ou = bitcast i32 %.sroa.0.0.i.i.i.i.i207.i.i.i to float ; 3 uses
  %i.ov = call float @llvm.fabs.f32(float %i.ou)  ; 2 uses
  %i.ow = fcmp ugt float %i.ov, 1.800000e-01
  br i1 %i.ow, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ox = fadd float %i.ov, f0x3F0BB782
  %i.oy = fdiv float %i.ox, f0x3E3BEBCD
  %i.oz = call float @llvm.exp.f32(float %i.oy)   ; 2 uses
  %12 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.oz, i64 0
  %i.pa = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.oz, i64 1
  %13 = fsub <2 x float> %12, %i.pa
  %i.pb = fdiv <2 x float> %13, splat (float f0x438E2DCC) ; 2 uses
  %i.pc = extractelement <2 x float> %i.pb, i64 0 ; 2 uses
  %i.pd = fcmp olt float %i.pc, 1.800000e-01
  %i.pe = extractelement <2 x float> %i.pb, i64 1
  %.0.i210.i.i.i = select i1 %i.pd, float %i.pe, float %i.pc
  %i.pf = call noundef float @llvm.copysign.f32(float %.0.i210.i.i.i, float %i.ou)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.010.i209.i.i.i = phi float [ %i.pf, %bb.dg ], [ %i.ou, %bb.df ]
  %i.pg = load ptr, ptr %4, align 8, !tbaa !906
  %i.ph = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pg)
          to label %.noexc214.i.i.i unwind label %bb.dk

.noexc214.i.i.i:                                  ; preds = %bb.dh
  %i.pi = icmp eq i32 %i.ph, 3
  br i1 %i.pi, label %bb.di, label %bb.dj, !prof !48

bb.di:                                            ; preds = %.noexc214.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di, %.noexc214.i.i.i
  %i.pj = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %indvars.iv.i.i.i
  store float %.010.i209.i.i.i, ptr %i.pk, align 4, !tbaa !54
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di, %bb.dh
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.dl:                                            ; preds = %bb.dj, %bb.cx
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.pm = load i32, ptr %i.g, align 4, !tbaa !20
  %i.pn = sext i32 %i.pm to i64
  %i.po = icmp slt i64 %indvars.iv.next.i.i.i, %i.pn
  br i1 %i.po, label %.lr.ph.i.i.i, label %.loopexit248.i.i.i, !llvm.loop !1375

.loopexit248.i.i.i:                               ; preds = %bb.dl, %bb.cn, %bb.co, %bb.bs
  %i.pp = load i32, ptr %i.fv, align 4, !tbaa !901
  %i.pq = add nsw i32 %i.pp, 1                    ; 7 uses
  store i32 %i.pq, ptr %i.fv, align 4, !tbaa !901
  %i.pr = load i32, ptr %i.ge, align 8, !tbaa !910
  %i.ps = icmp slt i32 %i.pq, %i.pr
  br i1 %i.ps, label %bb.dm, label %bb.dt

bb.dm:                                            ; preds = %.loopexit248.i.i.i
  %i.pt = load i8, ptr %i.gg, align 1, !tbaa !911, !range !82, !noundef !83
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.dn, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.dm
  %.pre.i11.i.i = load i32, ptr %i.fx, align 8, !tbaa !902
  %.pre.i.i = load i32, ptr %i.fz, align 4, !tbaa !903
  br label %bb.dw

bb.dn:                                            ; preds = %bb.dm
  %i.pv = load i8, ptr %i.gh, align 1, !tbaa !912, !range !82, !noundef !83
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.px = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.py = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 %i.px
  store ptr %i.pz, ptr %i.gd, align 8, !tbaa !914
  %i.qa = load i32, ptr %i.gk, align 8, !tbaa !915
  %.not.i.i14.i.i = icmp slt i32 %i.pq, %i.qa
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.dp, !prof !22

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.ei

bb.dq:                                            ; preds = %bb.dn
  %i.qb = load i8, ptr %i.gi, align 2, !tbaa !916, !range !82, !noundef !83
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qd = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.qe = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.qf = getelementptr inbounds i8, ptr %i.qe, i64 %i.qd
  store ptr %i.qf, ptr %i.gd, align 8, !tbaa !914
  %i.qg = load i32, ptr %i.gk, align 8, !tbaa !915
  %i.qh = icmp slt i32 %i.pq, %i.qg               ; 3 uses
  %i.qi = load i32, ptr %i.gl, align 4
  %i.qj = icmp sge i32 %i.pq, %i.qi
  %not..i.i12.i.i = xor i1 %i.qh, true
  %or.cond.i.i13.i.i = select i1 %not..i.i12.i.i, i1 true, i1 %i.qj, !prof !917
  %i.qk = load ptr, ptr %i.gm, align 8
  %i.ql = icmp eq ptr %i.qk, null
  %i.qm = select i1 %or.cond.i.i13.i.i, i1 true, i1 %i.ql, !prof !917
  br i1 %i.qm, label %bb.ds, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, !prof !48

bb.ds:                                            ; preds = %bb.dr
  %i.qn = load ptr, ptr %4, align 8, !tbaa !906
  %i.qo = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.qp = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.qq = load i32, ptr %i.gr, align 8, !tbaa !918
  %i.qr = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.qn, i32 noundef %i.pq, i32 noundef %i.qo, i32 noundef %i.qp, ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.go, ptr noundef nonnull align 4 dereferenceable(4) %i.gp, ptr noundef nonnull align 4 dereferenceable(4) %i.gl, ptr noundef nonnull align 1 dereferenceable(1) %i.gq, i1 noundef zeroext %i.qh, i32 noundef %i.qq)
          to label %.noexc16.i.i unwind label %bb.ei

.noexc16.i.i:                                     ; preds = %bb.ds
  %i.qs = zext i1 %i.qh to i8
  store ptr %i.qr, ptr %i.gd, align 8, !tbaa !914
  store i8 %i.qs, ptr %i.gg, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.dt:                                            ; preds = %.loopexit248.i.i.i
  %i.qt = load i32, ptr %i.fw, align 4, !tbaa !904 ; 3 uses
  store i32 %i.qt, ptr %i.fv, align 4, !tbaa !901
  %i.qu = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.qv = add nsw i32 %i.qu, 1                    ; 3 uses
  store i32 %i.qv, ptr %i.fx, align 8, !tbaa !902
  %i.qw = load i32, ptr %i.gf, align 8, !tbaa !919
  %.not.i7.i.i = icmp slt i32 %i.qv, %i.qw
  %.pre35.i.i = load i32, ptr %i.fz, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i7.i.i, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.qx = load i32, ptr %i.fy, align 4, !tbaa !920 ; 2 uses
  store i32 %i.qx, ptr %i.fx, align 8, !tbaa !902
  %i.qy = add nsw i32 %.pre35.i.i, 1              ; 3 uses
  store i32 %i.qy, ptr %i.fz, align 4, !tbaa !903
  %i.qz = load i32, ptr %i.ga, align 8, !tbaa !921
  %.not1.i8.i.i = icmp slt i32 %i.qy, %i.qz
  br i1 %.not1.i8.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i8 0, ptr %i.fu, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.dw:                                            ; preds = %bb.du, %bb.dt, %._crit_edge.i9.i.i
  %i.ra = phi i32 [ %.pre35.i.i, %bb.dt ], [ %i.qy, %bb.du ], [ %.pre.i.i, %._crit_edge.i9.i.i ]
  %i.rb = phi i32 [ %i.qv, %bb.dt ], [ %i.qx, %bb.du ], [ %.pre.i11.i.i, %._crit_edge.i9.i.i ]
  %i.rc = phi i32 [ %i.qt, %bb.dt ], [ %i.qt, %bb.du ], [ %i.pq, %._crit_edge.i9.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %4, i32 noundef %i.rc, i32 noundef %i.rb, i32 noundef %i.ra)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.ei

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i: ; preds = %bb.dw, %bb.dv, %.noexc16.i.i, %bb.dr, %bb.dq, %bb.dp, %bb.do
  %i.rd = load i32, ptr %i.gs, align 4, !tbaa !901
  %i.re = add nsw i32 %i.rd, 1                    ; 7 uses
  store i32 %i.re, ptr %i.gs, align 4, !tbaa !901
  %i.rf = load i32, ptr %i.gt, align 8, !tbaa !910
  %i.rg = icmp slt i32 %i.re, %i.rf
  br i1 %i.rg, label %bb.dx, label %bb.ee

bb.dx:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i
  %i.rh = load i8, ptr %i.hb, align 1, !tbaa !911, !range !82, !noundef !83
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.dy, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.dx
  %.pre.i3.i.i = load i32, ptr %i.gv, align 8, !tbaa !902
  %.pre36.i.i = load i32, ptr %i.gy, align 4, !tbaa !903
  br label %bb.eh

bb.dy:                                            ; preds = %bb.dx
  %i.rj = load i8, ptr %i.hc, align 1, !tbaa !912, !range !82, !noundef !83
  %i.rk = trunc nuw i8 %i.rj to i1
  br i1 %i.rk, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.rl = load i64, ptr %i.he, align 8, !tbaa !913
  %i.rm = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.rn = getelementptr inbounds i8, ptr %i.rm, i64 %i.rl
  store ptr %i.rn, ptr %i.gc, align 8, !tbaa !914
  %i.ro = load i32, ptr %i.hf, align 8, !tbaa !915
  %.not.i.i4.i.i = icmp slt i32 %i.re, %i.ro
  br i1 %.not.i.i4.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ea, !prof !22

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.ei

bb.eb:                                            ; preds = %bb.dy
  %i.rp = load i8, ptr %i.hd, align 2, !tbaa !916, !range !82, !noundef !83
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rr = load i64, ptr %i.he, align 8, !tbaa !913
  %i.rs = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.rt = getelementptr inbounds i8, ptr %i.rs, i64 %i.rr
  store ptr %i.rt, ptr %i.gc, align 8, !tbaa !914
  %i.ru = load i32, ptr %i.hf, align 8, !tbaa !915
  %i.rv = icmp slt i32 %i.re, %i.ru               ; 3 uses
  %i.rw = load i32, ptr %i.hg, align 4
  %i.rx = icmp sge i32 %i.re, %i.rw
  %not..i.i.i.i = xor i1 %i.rv, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.rx, !prof !917
  %i.ry = load ptr, ptr %i.hh, align 8
  %i.rz = icmp eq ptr %i.ry, null
  %i.sa = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.rz, !prof !917
  br i1 %i.sa, label %bb.ed, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !48

bb.ed:                                            ; preds = %bb.ec
  %i.sb = load ptr, ptr %3, align 8, !tbaa !906
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.pn129.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn129.pn.pn.pn.i.i.i, %bb.an ], [ %.pn118.pn.pn.pn.pn.i.i.i, %bb.ek ]
  resume { ptr, i32 } %.pn129.pn.pn.pn.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_bNS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !891
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1303
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.113", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1376, !nonnull !83, !align !417
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1378, !nonnull !83
  store i8 0, ptr %i.q, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1379, !nonnull !83, !align !417 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1376, !nonnull !83, !align !417 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %sext244.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext245.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !897, !range !82, !noundef !83
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !901
  %i.av = load i32, ptr %i.x, align 4, !tbaa !904
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !902
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !920
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !921
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !905
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1378, !nonnull !83
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99, !range !82, !noundef !83
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !54
  %i.bo = getelementptr i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !54
  %i.bq = fmul float %i.bp, 7.151700e-01
  %i.br = call float @llvm.fmuladd.f32(float %i.bn, float 2.126400e-01, float %i.bq)
  %i.bs = getelementptr i8, ptr %i.bm, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !54
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float 7.219000e-02, float %i.br) ; 5 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = fcmp ugt float %i.bu, 1.800000e-01
  br i1 %i.bw, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bx = fadd float %i.bu, f0x3F0BB782
  %i.by = fdiv float %i.bx, f0x3E3BEBCD
  %i.bz = call float @llvm.exp.f32(float %i.by)   ; 2 uses
  %6 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.bz, i64 0
  %i.ca = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bz, i64 1
  %7 = fsub <2 x float> %6, %i.ca
  %i.cb = fdiv <2 x float> %7, splat (float f0x438E2DCC) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = fcmp olt float %i.cc, 1.800000e-01
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %.0.i.i.i.i = select i1 %i.cd, float %i.ce, float %i.cc
  %i.cf = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.cf, %bb.n ], [ %i.bu, %bb.m ]
  %i.cg = fdiv float %.010.i.i.i.i, %i.bu
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.ch = phi float [ %i.cg, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.ci = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.cj = icmp slt i32 %i.bj, %i.ci
  br i1 %i.cj, label %.lr.ph232.i.i.i, label %.loopexit.i.i.i

.lr.ph232.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.ck = phi i32 [ %i.cw, %bb.s ], [ %i.ci, %bb.o ]
  %i.cl = phi ptr [ %i.cx, %bb.s ], [ %i.bk, %bb.o ] ; 2 uses
  %indvars.iv247.i.i.i = phi i64 [ %indvars.iv.next248.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.cm = icmp eq i64 %indvars.iv247.i.i.i, %sext245.i.i.i
  %i.cn = icmp eq i64 %indvars.iv247.i.i.i, %sext244.i.i.i
  %or.cond138.i.i.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph232.i.i.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv247.i.i.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !54
  %i.cq = fmul float %i.ch, %i.cp
  %i.cr = load ptr, ptr %2, align 8, !tbaa !906
  %i.cs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.ct = icmp eq i32 %i.cs, 3
  br i1 %i.ct, label %bb.q, label %bb.r, !prof !48

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv247.i.i.i
  store float %i.cq, ptr %i.cv, align 4, !tbaa !54
  %.pre252.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph232.i.i.i
  %i.cw = phi i32 [ %i.ck, %.lr.ph232.i.i.i ], [ %.pre252.i.i.i, %bb.r ] ; 2 uses
  %i.cx = phi ptr [ %i.cl, %.lr.ph232.i.i.i ], [ %i.cu, %bb.r ]
  %indvars.iv.next248.i.i.i = add nsw i64 %indvars.iv247.i.i.i, 1 ; 2 uses
  %i.cy = sext i32 %i.cw to i64
  %i.cz = icmp slt i64 %indvars.iv.next248.i.i.i, %i.cy
  br i1 %i.cz, label %.lr.ph232.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1380

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.db = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.dc = icmp slt i32 %i.bj, %i.db
  br i1 %i.dc, label %.lr.ph230.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph230.preheader.i.i.i:                        ; preds = %bb.u
  %i.dd = sext i32 %i.bj to i64
  br label %.lr.ph230.i.i.i

.lr.ph230.i.i.i:                                  ; preds = %bb.z, %.lr.ph230.preheader.i.i.i
  %i.de = phi i32 [ %i.db, %.lr.ph230.preheader.i.i.i ], [ %i.ea, %bb.z ]
  %indvars.iv242.i.i.i = phi i64 [ %i.dd, %.lr.ph230.preheader.i.i.i ], [ %indvars.iv.next243.i.i.i, %bb.z ] ; 5 uses
  %i.df = icmp eq i64 %indvars.iv242.i.i.i, %sext245.i.i.i
  %i.dg = icmp eq i64 %indvars.iv242.i.i.i, %sext244.i.i.i
  %or.cond139.i.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph230.i.i.i
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv242.i.i.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !54 ; 3 uses
  %i.dk = call float @llvm.fabs.f32(float %i.dj)  ; 2 uses
  %i.dl = fcmp ugt float %i.dk, 1.800000e-01
  br i1 %i.dl, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dm = fadd float %i.dk, f0x3F0BB782
  %i.dn = fdiv float %i.dm, f0x3E3BEBCD
  %i.do = call float @llvm.exp.f32(float %i.dn)   ; 2 uses
  %8 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.do, i64 0
  %i.dp = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.do, i64 1
  %9 = fsub <2 x float> %8, %i.dp
  %i.dq = fdiv <2 x float> %9, splat (float f0x438E2DCC) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.ds = fcmp olt float %i.dr, 1.800000e-01
  %i.dt = extractelement <2 x float> %i.dq, i64 1
  %.0.i154.i.i.i = select i1 %i.ds, float %i.dt, float %i.dr
  %i.du = call noundef float @llvm.copysign.f32(float %.0.i154.i.i.i, float %i.dj)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.du, %bb.w ], [ %i.dj, %bb.v ]
  %i.dv = load ptr, ptr %2, align 8, !tbaa !906
  %i.dw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
          to label %.noexc158.i.i.i unwind label %bb.aa

.noexc158.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.dx = icmp eq i32 %i.dw, 3
  br i1 %i.dx, label %bb.x, label %bb.y, !prof !48

bb.x:                                             ; preds = %.noexc158.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc158.i.i.i
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv242.i.i.i
  store float %.010.i153.i.i.i, ptr %i.dz, align 4, !tbaa !54
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph230.i.i.i
  %i.ea = phi i32 [ %i.de, %.lr.ph230.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next243.i.i.i = add nsw i64 %indvars.iv242.i.i.i, 1 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next243.i.i.i, %i.eb
  br i1 %i.ec, label %.lr.ph230.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1381

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ee = load i32, ptr %i.w, align 4, !tbaa !901
  %i.ef = add nsw i32 %i.ee, 1                    ; 7 uses
  store i32 %i.ef, ptr %i.w, align 4, !tbaa !901
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !910
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.ei = load i8, ptr %i.ag, align 1, !tbaa !911, !range !82, !noundef !83
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !902
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !903
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load i8, ptr %i.ah, align 1, !tbaa !912, !range !82, !noundef !83
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.em = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.em
  store ptr %i.eo, ptr %i.ad, align 8, !tbaa !914
  %i.ep = load i32, ptr %i.ak, align 8, !tbaa !915
  %.not.i.i26.i.i = icmp slt i32 %i.ef, %i.ep
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.eq = load i8, ptr %i.ai, align 2, !tbaa !916, !range !82, !noundef !83
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.et = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.es
  store ptr %i.eu, ptr %i.ad, align 8, !tbaa !914
  %i.ev = load i32, ptr %i.ak, align 8, !tbaa !915
  %i.ew = icmp slt i32 %i.ef, %i.ev               ; 3 uses
  %i.ex = load i32, ptr %i.al, align 4
  %i.ey = icmp sge i32 %i.ef, %i.ex
  %not..i.i24.i.i = xor i1 %i.ew, true
  %or.cond.i.i25.i.i = select i1 %not..i.i24.i.i, i1 true, i1 %i.ey, !prof !917
  %i.ez = load ptr, ptr %i.am, align 8
  %i.fa = icmp eq ptr %i.ez, null
  %i.fb = select i1 %or.cond.i.i25.i.i, i1 true, i1 %i.fa, !prof !917
  br i1 %i.fb, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !48

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load ptr, ptr %2, align 8, !tbaa !906
  %i.fd = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fe = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.ff = load i32, ptr %i.ar, align 8, !tbaa !918
  %i.fg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i32 noundef %i.ef, i32 noundef %i.fd, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.ew, i32 noundef %i.ff)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fh = zext i1 %i.ew to i8
  store ptr %i.fg, ptr %i.ad, align 8, !tbaa !914
  store i8 %i.fh, ptr %i.ag, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.fi = load i32, ptr %i.x, align 4, !tbaa !904 ; 3 uses
  store i32 %i.fi, ptr %i.w, align 4, !tbaa !901
  %i.fj = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fk = add nsw i32 %i.fj, 1                    ; 3 uses
  store i32 %i.fk, ptr %i.y, align 8, !tbaa !902
  %i.fl = load i32, ptr %i.af, align 8, !tbaa !919
  %.not.i19.i.i = icmp slt i32 %i.fk, %i.fl
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load i32, ptr %i.z, align 4, !tbaa !920 ; 2 uses
  store i32 %i.fm, ptr %i.y, align 8, !tbaa !902
  %i.fn = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.fn, ptr %i.aa, align 4, !tbaa !903
  %i.fo = load i32, ptr %i.ab, align 8, !tbaa !921
  %.not1.i20.i.i = icmp slt i32 %i.fn, %i.fo
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.fp = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.fn, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.fq = phi i32 [ %i.fk, %bb.ai ], [ %i.fm, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.fr = phi i32 [ %i.fi, %bb.ai ], [ %i.fi, %bb.aj ], [ %i.ef, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fr, i32 noundef %i.fq, i32 noundef %i.fp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.da, %bb.t ], [ %i.fs, %bb.am ], [ %i.ed, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cr

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !1379, !nonnull !83, !align !417
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 7 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext235.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.hn = load i8, ptr %i.fu, align 8, !tbaa !897, !range !82, !noundef !83
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.hp = load i32, ptr %i.fv, align 4, !tbaa !901
  %i.hq = load i32, ptr %i.fw, align 4, !tbaa !904
  %i.hr = icmp eq i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hs = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.ht = load i32, ptr %i.fy, align 4, !tbaa !920
  %i.hu = icmp eq i32 %i.hs, %i.ht
  br i1 %i.hu, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i: ; preds = %bb.aq
  %i.hv = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.hw = load i32, ptr %i.ga, align 8, !tbaa !921
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i
  %i.hy = load ptr, ptr %i.gm, align 8, !tbaa !905
  %.not.i163.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i163.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ib = load ptr, ptr %i.hh, align 8, !tbaa !905
  %.not.i165.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i165.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit166.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.if = load ptr, ptr %i.gb, align 8, !tbaa !1378, !nonnull !83
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ih = trunc nuw i8 %i.ig to i1
  %i.ii = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.ih, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.ij = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.ik = sext i32 %i.ii to i64                   ; 2 uses
  %i.il = getelementptr [2 x i8], ptr %i.ij, i64 %i.ik ; 3 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !961
  %i.in = uitofp i16 %i.im to float
  %i.io = fmul nnan float %i.in, f0x37800080
  %i.ip = getelementptr i8, ptr %i.il, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !961
  %i.ir = uitofp i16 %i.iq to float
  %i.is = fmul nnan float %i.ir, f0x37800080
  %i.it = getelementptr i8, ptr %i.il, i64 4
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !961
  %i.iv = uitofp i16 %i.iu to float
  %i.iw = fmul nnan float %i.iv, f0x37800080
  %i.ix = fmul nnan float %i.is, 7.151700e-01
  %i.iy = call float @llvm.fmuladd.f32(float %i.io, float 2.126400e-01, float %i.ix)
  %i.iz = call float @llvm.fmuladd.f32(float %i.iw, float 7.219000e-02, float %i.iy) ; 5 uses
  %i.ja = fcmp ogt float %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.jb = fcmp ugt float %i.iz, 1.800000e-01
  br i1 %i.jb, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jc = fadd float %i.iz, f0x3F0BB782
  %i.jd = fdiv float %i.jc, f0x3E3BEBCD
  %i.je = call float @llvm.exp.f32(float %i.jd)   ; 2 uses
  %10 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.je, i64 0
  %i.jf = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.je, i64 1
  %11 = fsub <2 x float> %10, %i.jf
  %i.jg = fdiv <2 x float> %11, splat (float f0x438E2DCC) ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 0 ; 2 uses
  %i.ji = fcmp olt float %i.jh, 1.800000e-01
  %i.jj = extractelement <2 x float> %i.jg, i64 1
  %.0.i168.i.i.i = select i1 %i.ji, float %i.jj, float %i.jh
  %i.jk = call float @llvm.fabs.f32(float %.0.i168.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i167.i.i.i = phi float [ %i.jk, %bb.az ], [ %i.iz, %bb.ay ]
  %i.jl = fdiv float %.010.i167.i.i.i, %i.iz
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i, %bb.ax
  %i.jm = phi float [ %i.jl, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit169.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.jn = load i32, ptr %i.g, align 4, !tbaa !20
  %i.jo = icmp slt i32 %i.ii, %i.jn
  br i1 %i.jo, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i

.lr.ph228.i.i.i:                                  ; preds = %bb.ba, %bb.bh
  %indvars.iv237.i.i.i = phi i64 [ %indvars.iv.next238.i.i.i, %bb.bh ], [ %i.ik, %bb.ba ] ; 5 uses
  %i.jp = icmp eq i64 %indvars.iv237.i.i.i, %sext235.i.i.i
  %i.jq = icmp eq i64 %indvars.iv237.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.jp, i1 true, i1 %i.jq
  %i.jr = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.js = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv237.i.i.i
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !961
  %i.ju = uitofp i16 %i.jt to float
  %i.jv = fmul nnan float %i.ju, f0x37800080      ; 3 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.lr.ph228.i.i.i
  %i.jw = load ptr, ptr %4, align 8, !tbaa !906
  %i.jx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jw)
          to label %.noexc172.i.i.i unwind label %bb.bd

.noexc172.i.i.i:                                  ; preds = %bb.bb
  %i.jy = icmp eq i32 %i.jx, 3
  br i1 %i.jy, label %bb.bc, label %bb.bh, !prof !48

bb.bc:                                            ; preds = %.noexc172.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %.lr.ph228.i.i.i
  %i.ka = fmul float %i.jm, %i.jv                 ; 2 uses
  %i.kb = load ptr, ptr %4, align 8, !tbaa !906
  %i.kc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb)
          to label %.noexc177.i.i.i unwind label %bb.bg

.noexc177.i.i.i:                                  ; preds = %bb.be
  %i.kd = icmp eq i32 %i.kc, 3
  br i1 %i.kd, label %bb.bf, label %bb.bh, !prof !48

bb.bf:                                            ; preds = %.noexc177.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.bf, %.noexc177.i.i.i, %bb.bc, %.noexc172.i.i.i
  %.sink.i.i.i = phi float [ %i.jv, %bb.bc ], [ %i.jv, %.noexc172.i.i.i ], [ %i.ka, %.noexc177.i.i.i ], [ %i.ka, %bb.bf ]
  %i.kf = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %indvars.iv237.i.i.i
  store float %.sink.i.i.i, ptr %i.kg, align 4, !tbaa !54
  %indvars.iv.next238.i.i.i = add nsw i64 %indvars.iv237.i.i.i, 1 ; 2 uses
  %i.kh = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next238.i.i.i, %i.ki
  br i1 %i.kj, label %.lr.ph228.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1382

bb.bi:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit162.thread.i.i.i
  %i.kk = load i32, ptr %i.g, align 4, !tbaa !20
  %i.kl = icmp slt i32 %i.ii, %i.kk
  br i1 %i.kl, label %.lr.ph.preheader.i.i.i, label %.loopexit224.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bi
  %i.km = sext i32 %i.ii to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.km, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.br ] ; 5 uses
  %i.kn = icmp eq i64 %indvars.iv.i.i.i, %sext235.i.i.i
  %i.ko = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.kn, i1 true, i1 %i.ko
  %i.kp = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.kp, i64 %indvars.iv.i.i.i
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !961
  %i.ks = uitofp i16 %i.kr to float
  %i.kt = fmul nnan float %i.ks, f0x37800080      ; 5 uses
  br i1 %or.cond141.i.i.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.ku = load ptr, ptr %4, align 8, !tbaa !906
  %i.kv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku)
          to label %.noexc182.i.i.i unwind label %bb.bl

.noexc182.i.i.i:                                  ; preds = %bb.bj
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %bb.bk, label %bb.br, !prof !48

bb.bk:                                            ; preds = %.noexc182.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bm:                                            ; preds = %.lr.ph.i.i.i
  %i.ky = fcmp ugt float %i.kt, 1.800000e-01
  br i1 %i.ky, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kz = fadd float %i.kt, f0x3F0BB782
  %i.la = fdiv float %i.kz, f0x3E3BEBCD
  %i.lb = call float @llvm.exp.f32(float %i.la)   ; 2 uses
  %12 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.lb, i64 0
  %i.lc = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.lb, i64 1
  %13 = fsub <2 x float> %12, %i.lc
  %i.ld = fdiv <2 x float> %13, splat (float f0x438E2DCC) ; 2 uses
  %i.le = extractelement <2 x float> %i.ld, i64 0 ; 2 uses
  %i.lf = fcmp olt float %i.le, 1.800000e-01
  %i.lg = extractelement <2 x float> %i.ld, i64 1
  %.0.i186.i.i.i = select i1 %i.lf, float %i.lg, float %i.le
  %i.lh = call float @llvm.fabs.f32(float %.0.i186.i.i.i)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.010.i185.i.i.i = phi float [ %i.lh, %bb.bn ], [ %i.kt, %bb.bm ] ; 2 uses
  %i.li = load ptr, ptr %4, align 8, !tbaa !906
  %i.lj = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.li)
          to label %.noexc190.i.i.i unwind label %bb.bq

.noexc190.i.i.i:                                  ; preds = %bb.bo
  %i.lk = icmp eq i32 %i.lj, 3
  br i1 %i.lk, label %bb.bp, label %bb.br, !prof !48

bb.bp:                                            ; preds = %.noexc190.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.br:                                            ; preds = %bb.bp, %.noexc190.i.i.i, %bb.bk, %.noexc182.i.i.i
  %.sink266.i.i.i = phi float [ %i.kt, %bb.bk ], [ %i.kt, %.noexc182.i.i.i ], [ %.010.i185.i.i.i, %.noexc190.i.i.i ], [ %.010.i185.i.i.i, %bb.bp ]
  %i.lm = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %indvars.iv.i.i.i
  store float %.sink266.i.i.i, ptr %i.ln, align 4, !tbaa !54
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.lo = load i32, ptr %i.g, align 4, !tbaa !20
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv.next.i.i.i, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i.i, label %.loopexit224.i.i.i, !llvm.loop !1383

.loopexit224.i.i.i:                               ; preds = %bb.br, %bb.bh, %bb.bi, %bb.ba
  %i.lr = load i32, ptr %i.fv, align 4, !tbaa !901
  %i.ls = add nsw i32 %i.lr, 1                    ; 7 uses
  store i32 %i.ls, ptr %i.fv, align 4, !tbaa !901
  %i.lt = load i32, ptr %i.ge, align 8, !tbaa !910
  %i.lu = icmp slt i32 %i.ls, %i.lt
  br i1 %i.lu, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %.loopexit224.i.i.i
  %i.lv = load i8, ptr %i.gg, align 1, !tbaa !911, !range !82, !noundef !83
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.bt, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bs
  %.pre.i11.i.i = load i32, ptr %i.fx, align 8, !tbaa !902
  %.pre.i.i = load i32, ptr %i.fz, align 4, !tbaa !903
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.lx = load i8, ptr %i.gh, align 1, !tbaa !912, !range !82, !noundef !83
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.lz = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.ma = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.mb = getelementptr inbounds i8, ptr %i.ma, i64 %i.lz
  store ptr %i.mb, ptr %i.gd, align 8, !tbaa !914
  %i.mc = load i32, ptr %i.gk, align 8, !tbaa !915
  %.not.i.i14.i.i = icmp slt i32 %i.ls, %i.mc
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bv, !prof !22

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co

bb.bw:                                            ; preds = %bb.bt
  %i.md = load i8, ptr %i.gi, align 2, !tbaa !916, !range !82, !noundef !83
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mf = load i64, ptr %i.gj, align 8, !tbaa !913
  %i.mg = load ptr, ptr %i.gd, align 8, !tbaa !914
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.mf
  store ptr %i.mh, ptr %i.gd, align 8, !tbaa !914
  %i.mi = load i32, ptr %i.gk, align 8, !tbaa !915
  %i.mj = icmp slt i32 %i.ls, %i.mi               ; 3 uses
  %i.mk = load i32, ptr %i.gl, align 4
  %i.ml = icmp sge i32 %i.ls, %i.mk
  %not..i.i12.i.i = xor i1 %i.mj, true
  %or.cond.i.i13.i.i = select i1 %not..i.i12.i.i, i1 true, i1 %i.ml, !prof !917
  %i.mm = load ptr, ptr %i.gm, align 8
  %i.mn = icmp eq ptr %i.mm, null
  %i.mo = select i1 %or.cond.i.i13.i.i, i1 true, i1 %i.mn, !prof !917
  br i1 %i.mo, label %bb.by, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, !prof !48

bb.by:                                            ; preds = %bb.bx
  %i.mp = load ptr, ptr %4, align 8, !tbaa !906
  %i.mq = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.mr = load i32, ptr %i.fz, align 4, !tbaa !903
  %i.ms = load i32, ptr %i.gr, align 8, !tbaa !918
  %i.mt = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i32 noundef %i.ls, i32 noundef %i.mq, i32 noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.go, ptr noundef nonnull align 4 dereferenceable(4) %i.gp, ptr noundef nonnull align 4 dereferenceable(4) %i.gl, ptr noundef nonnull align 1 dereferenceable(1) %i.gq, i1 noundef zeroext %i.mj, i32 noundef %i.ms)
          to label %.noexc16.i.i unwind label %bb.co

.noexc16.i.i:                                     ; preds = %bb.by
  %i.mu = zext i1 %i.mj to i8
  store ptr %i.mt, ptr %i.gd, align 8, !tbaa !914
  store i8 %i.mu, ptr %i.gg, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.bz:                                            ; preds = %.loopexit224.i.i.i
  %i.mv = load i32, ptr %i.fw, align 4, !tbaa !904 ; 3 uses
  store i32 %i.mv, ptr %i.fv, align 4, !tbaa !901
  %i.mw = load i32, ptr %i.fx, align 8, !tbaa !902
  %i.mx = add nsw i32 %i.mw, 1                    ; 3 uses
  store i32 %i.mx, ptr %i.fx, align 8, !tbaa !902
  %i.my = load i32, ptr %i.gf, align 8, !tbaa !919
  %.not.i7.i.i = icmp slt i32 %i.mx, %i.my
  %.pre35.i.i = load i32, ptr %i.fz, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i7.i.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mz = load i32, ptr %i.fy, align 4, !tbaa !920 ; 2 uses
  store i32 %i.mz, ptr %i.fx, align 8, !tbaa !902
  %i.na = add nsw i32 %.pre35.i.i, 1              ; 3 uses
  store i32 %i.na, ptr %i.fz, align 4, !tbaa !903
  %i.nb = load i32, ptr %i.ga, align 8, !tbaa !921
  %.not1.i8.i.i = icmp slt i32 %i.na, %i.nb
  br i1 %.not1.i8.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i8 0, ptr %i.fu, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %._crit_edge.i9.i.i
  %i.nc = phi i32 [ %.pre35.i.i, %bb.bz ], [ %i.na, %bb.ca ], [ %.pre.i.i, %._crit_edge.i9.i.i ]
  %i.nd = phi i32 [ %i.mx, %bb.bz ], [ %i.mz, %bb.ca ], [ %.pre.i11.i.i, %._crit_edge.i9.i.i ]
  %i.ne = phi i32 [ %i.mv, %bb.bz ], [ %i.mv, %bb.ca ], [ %i.ls, %._crit_edge.i9.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %4, i32 noundef %i.ne, i32 noundef %i.nd, i32 noundef %i.nc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.co

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i: ; preds = %bb.cc, %bb.cb, %.noexc16.i.i, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %i.nf = load i32, ptr %i.gs, align 4, !tbaa !901
  %i.ng = add nsw i32 %i.nf, 1                    ; 7 uses
  store i32 %i.ng, ptr %i.gs, align 4, !tbaa !901
  %i.nh = load i32, ptr %i.gt, align 8, !tbaa !910
  %i.ni = icmp slt i32 %i.ng, %i.nh
  br i1 %i.ni, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i
  %i.nj = load i8, ptr %i.hb, align 1, !tbaa !911, !range !82, !noundef !83
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.ce, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cd
  %.pre.i3.i.i = load i32, ptr %i.gv, align 8, !tbaa !902
  %.pre36.i.i = load i32, ptr %i.gy, align 4, !tbaa !903
  br label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  %i.nl = load i8, ptr %i.hc, align 1, !tbaa !912, !range !82, !noundef !83
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.nn = load i64, ptr %i.he, align 8, !tbaa !913
  %i.no = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 %i.nn
  store ptr %i.np, ptr %i.gc, align 8, !tbaa !914
  %i.nq = load i32, ptr %i.hf, align 8, !tbaa !915
  %.not.i.i4.i.i = icmp slt i32 %i.ng, %i.nq
  br i1 %.not.i.i4.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.cg, !prof !22

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.co

bb.ch:                                            ; preds = %bb.ce
  %i.nr = load i8, ptr %i.hd, align 2, !tbaa !916, !range !82, !noundef !83
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nt = load i64, ptr %i.he, align 8, !tbaa !913
  %i.nu = load ptr, ptr %i.gc, align 8, !tbaa !914
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %i.nt
  store ptr %i.nv, ptr %i.gc, align 8, !tbaa !914
  %i.nw = load i32, ptr %i.hf, align 8, !tbaa !915
  %i.nx = icmp slt i32 %i.ng, %i.nw               ; 3 uses
  %i.ny = load i32, ptr %i.hg, align 4
  %i.nz = icmp sge i32 %i.ng, %i.ny
  %not..i.i.i.i = xor i1 %i.nx, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.nz, !prof !917
  %i.oa = load ptr, ptr %i.hh, align 8
  %i.ob = icmp eq ptr %i.oa, null
  %i.oc = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ob, !prof !917
  br i1 %i.oc, label %bb.cj, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !48

bb.cj:                                            ; preds = %bb.ci
  %i.od = load ptr, ptr %3, align 8, !tbaa !906
  %i.oe = load i32, ptr %i.gv, align 8, !tbaa !902
  %i.of = load i32, ptr %i.gy, align 4, !tbaa !903
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !891
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1303
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IhhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.99", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.95", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.99", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1384, !nonnull !83, !align !417
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1386, !nonnull !83
  store i8 0, ptr %i.q, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1387, !nonnull !83, !align !417 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1384, !nonnull !83, !align !417 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  %sext259.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext260.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !897, !range !82, !noundef !83
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !901
  %i.av = load i32, ptr %i.x, align 4, !tbaa !904
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !902
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !920
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !921
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !905
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IhhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1386, !nonnull !83
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99, !range !82, !noundef !83
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl  ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fmul nnan float %i.bo, f0x3B808081
  %i.bq = getelementptr i8, ptr %i.bm, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bs = uitofp i8 %i.br to float
  %i.bt = fmul nnan float %i.bs, f0x3B808081
  %i.bu = fmul nnan float %i.bt, 7.151700e-01
  %i.bv = call float @llvm.fmuladd.f32(float %i.bp, float 2.126400e-01, float %i.bu)
  %i.bw = getelementptr i8, ptr %i.bm, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !47
  %i.by = uitofp i8 %i.bx to float
  %i.bz = fmul nnan float %i.by, f0x3B808081
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float 7.219000e-02, float %i.bv) ; 5 uses
  %i.cb = fcmp ogt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cc = fcmp ugt float %i.ca, 1.800000e-01
  br i1 %i.cc, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cd = fadd float %i.ca, f0x3F0BB782
  %i.ce = fdiv float %i.cd, f0x3E3BEBCD
  %i.cf = call float @llvm.exp.f32(float %i.ce)   ; 2 uses
  %6 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.cf, i64 0
  %i.cg = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.cf, i64 1
  %7 = fsub <2 x float> %6, %i.cg
  %i.ch = fdiv <2 x float> %7, splat (float f0x438E2DCC) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0 ; 2 uses
  %i.cj = fcmp olt float %i.ci, 1.800000e-01
  %i.ck = extractelement <2 x float> %i.ch, i64 1
  %.0.i.i.i.i = select i1 %i.cj, float %i.ck, float %i.ci
  %i.cl = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.cl, %bb.n ], [ %i.ca, %bb.m ]
  %i.cm = fdiv float %.010.i.i.i.i, %i.ca
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.cn = phi float [ %i.cm, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.co = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.cp = icmp slt i32 %i.bj, %i.co
  br i1 %i.cp, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i

.lr.ph247.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.cq = phi i32 [ %i.dk, %bb.s ], [ %i.co, %bb.o ]
  %indvars.iv262.i.i.i = phi i64 [ %indvars.iv.next263.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.cr = icmp eq i64 %indvars.iv262.i.i.i, %sext260.i.i.i
  %i.cs = icmp eq i64 %indvars.iv262.i.i.i, %sext259.i.i.i
  %or.cond138.i.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph247.i.i.i
  %i.ct = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %indvars.iv262.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !47
  %i.cw = uitofp i8 %i.cv to float
  %i.cx = fmul nnan float %i.cw, f0x3B808081
  %i.cy = fmul float %i.cn, %i.cx
  %i.cz = load ptr, ptr %2, align 8, !tbaa !906
  %i.da = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.db = icmp eq i32 %i.da, 3
  br i1 %i.db, label %bb.q, label %bb.r, !prof !48

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.dc = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %indvars.iv262.i.i.i
  %i.de = fmul float %i.cy, 2.550000e+02          ; 2 uses
  %i.df = fcmp olt float %i.de, 0.000000e+00
  %i.dg = select i1 %i.df, float -5.000000e-01, float 5.000000e-01
  %i.dh = fadd float %i.de, %i.dg                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.dh, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.dh, float 0.000000e+00 ; 2 uses
  %i.di = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.di, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.dj = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.dj, ptr %i.dd, align 1, !tbaa !47
  %.pre267.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph247.i.i.i
  %i.dk = phi i32 [ %i.cq, %.lr.ph247.i.i.i ], [ %.pre267.i.i.i, %bb.r ] ; 2 uses
  %indvars.iv.next263.i.i.i = add nsw i64 %indvars.iv262.i.i.i, 1 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next263.i.i.i, %i.dl
  br i1 %i.dm, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1388

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.do = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.dp = icmp slt i32 %i.bj, %i.do
  br i1 %i.dp, label %.lr.ph245.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph245.preheader.i.i.i:                        ; preds = %bb.u
  %i.dq = sext i32 %i.bj to i64
  br label %.lr.ph245.i.i.i

.lr.ph245.i.i.i:                                  ; preds = %bb.z, %.lr.ph245.preheader.i.i.i
  %i.dr = phi i32 [ %i.do, %.lr.ph245.preheader.i.i.i ], [ %i.es, %bb.z ]
  %indvars.iv257.i.i.i = phi i64 [ %i.dq, %.lr.ph245.preheader.i.i.i ], [ %indvars.iv.next258.i.i.i, %bb.z ] ; 5 uses
  %i.ds = icmp eq i64 %indvars.iv257.i.i.i, %sext260.i.i.i
  %i.dt = icmp eq i64 %indvars.iv257.i.i.i, %sext259.i.i.i
  %or.cond139.i.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph245.i.i.i
  %i.du = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %indvars.iv257.i.i.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !47
  %i.dx = uitofp i8 %i.dw to float
  %i.dy = fmul nnan float %i.dx, f0x3B808081      ; 3 uses
  %i.dz = fcmp ugt float %i.dy, 1.800000e-01
  br i1 %i.dz, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ea = fadd float %i.dy, f0x3F0BB782
  %i.eb = fdiv float %i.ea, f0x3E3BEBCD
  %i.ec = call float @llvm.exp.f32(float %i.eb)   ; 2 uses
  %8 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.ec, i64 0
  %i.ed = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ec, i64 1
  %9 = fsub <2 x float> %8, %i.ed
  %i.ee = fdiv <2 x float> %9, splat (float f0x438E2DCC) ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eg = fcmp olt float %i.ef, 1.800000e-01
  %i.eh = extractelement <2 x float> %i.ee, i64 1
  %.0.i154.i.i.i = select i1 %i.eg, float %i.eh, float %i.ef
  %i.ei = call float @llvm.fabs.f32(float %.0.i154.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.ei, %bb.w ], [ %i.dy, %bb.v ]
  %i.ej = load ptr, ptr %2, align 8, !tbaa !906
  %i.ek = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
          to label %.noexc161.i.i.i unwind label %bb.aa

.noexc161.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.el = icmp eq i32 %i.ek, 3
  br i1 %i.el, label %bb.x, label %bb.y, !prof !48

bb.x:                                             ; preds = %.noexc161.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc161.i.i.i
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %indvars.iv257.i.i.i
  %i.eo = fmul float %.010.i153.i.i.i, 2.550000e+02
  %i.ep = fadd float %i.eo, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i158.i.i.i = fcmp oge float %i.ep, 0.000000e+00
  %.0.i.i.i.i.i.i159.i.i.i = select i1 %.inv.i.i.i.i.i158.i.i.i, float %i.ep, float 0.000000e+00 ; 2 uses
  %i.eq = fcmp ogt float %.0.i.i.i.i.i.i159.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i160.i.i.i = select i1 %i.eq, float 2.550000e+02, float %.0.i.i.i.i.i.i159.i.i.i
  %i.er = fptoui float %.1.i.i.i.i.i.i160.i.i.i to i8
  store i8 %i.er, ptr %i.en, align 1, !tbaa !47
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph245.i.i.i
  %i.es = phi i32 [ %i.dr, %.lr.ph245.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next258.i.i.i = add nsw i64 %indvars.iv257.i.i.i, 1 ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next258.i.i.i, %i.et
  br i1 %i.eu, label %.lr.ph245.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1389

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ew = load i32, ptr %i.w, align 4, !tbaa !901
  %i.ex = add nsw i32 %i.ew, 1                    ; 7 uses
  store i32 %i.ex, ptr %i.w, align 4, !tbaa !901
  %i.ey = load i32, ptr %i.ae, align 8, !tbaa !910
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.fa = load i8, ptr %i.ag, align 1, !tbaa !911, !range !82, !noundef !83
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !902
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !903
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.fc = load i8, ptr %i.ah, align 1, !tbaa !912, !range !82, !noundef !83
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.ff = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.fe
  store ptr %i.fg, ptr %i.ad, align 8, !tbaa !914
  %i.fh = load i32, ptr %i.ak, align 8, !tbaa !915
  %.not.i.i26.i.i = icmp slt i32 %i.ex, %i.fh
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.fi = load i8, ptr %i.ai, align 2, !tbaa !916, !range !82, !noundef !83
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fk = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.fl = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fk
  store ptr %i.fm, ptr %i.ad, align 8, !tbaa !914
  %i.fn = load i32, ptr %i.ak, align 8, !tbaa !915
  %i.fo = icmp slt i32 %i.ex, %i.fn               ; 3 uses
  %i.fp = load i32, ptr %i.al, align 4
  %i.fq = icmp sge i32 %i.ex, %i.fp
  %not..i.i24.i.i = xor i1 %i.fo, true
  %or.cond.i.i25.i.i = select i1 %not..i.i24.i.i, i1 true, i1 %i.fq, !prof !917
  %i.fr = load ptr, ptr %i.am, align 8
  %i.fs = icmp eq ptr %i.fr, null
  %i.ft = select i1 %or.cond.i.i25.i.i, i1 true, i1 %i.fs, !prof !917
  br i1 %i.ft, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !48

bb.ah:                                            ; preds = %bb.ag
  %i.fu = load ptr, ptr %2, align 8, !tbaa !906
  %i.fv = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fw = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.fx = load i32, ptr %i.ar, align 8, !tbaa !918
  %i.fy = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i32 noundef %i.ex, i32 noundef %i.fv, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.fo, i32 noundef %i.fx)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.fz = zext i1 %i.fo to i8
  store ptr %i.fy, ptr %i.ad, align 8, !tbaa !914
  store i8 %i.fz, ptr %i.ag, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.ga = load i32, ptr %i.x, align 4, !tbaa !904 ; 3 uses
  store i32 %i.ga, ptr %i.w, align 4, !tbaa !901
  %i.gb = load i32, ptr %i.y, align 8, !tbaa !902
  %i.gc = add nsw i32 %i.gb, 1                    ; 3 uses
  store i32 %i.gc, ptr %i.y, align 8, !tbaa !902
  %i.gd = load i32, ptr %i.af, align 8, !tbaa !919
  %.not.i19.i.i = icmp slt i32 %i.gc, %i.gd
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = load i32, ptr %i.z, align 4, !tbaa !920 ; 2 uses
  store i32 %i.ge, ptr %i.y, align 8, !tbaa !902
  %i.gf = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.gf, ptr %i.aa, align 4, !tbaa !903
  %i.gg = load i32, ptr %i.ab, align 8, !tbaa !921
  %.not1.i20.i.i = icmp slt i32 %i.gf, %i.gg
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.gh = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.gf, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.gi = phi i32 [ %i.gc, %bb.ai ], [ %i.ge, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.gj = phi i32 [ %i.ga, %bb.ai ], [ %i.ga, %bb.aj ], [ %i.ex, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gj, i32 noundef %i.gi, i32 noundef %i.gh)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.t ], [ %i.gk, %bb.am ], [ %i.ev, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cv

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.gl = load ptr, ptr %i.r, align 8, !tbaa !1387, !nonnull !83, !align !417
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 9 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext250.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.if = load i8, ptr %i.gm, align 8, !tbaa !897, !range !82, !noundef !83
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ih = load i32, ptr %i.gn, align 4, !tbaa !901
  %i.ii = load i32, ptr %i.go, align 4, !tbaa !904
  %i.ij = icmp eq i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ik = load i32, ptr %i.gp, align 8, !tbaa !902
  %i.il = load i32, ptr %i.gq, align 4, !tbaa !920
  %i.im = icmp eq i32 %i.ik, %i.il
  br i1 %i.im, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i: ; preds = %bb.aq
  %i.in = load i32, ptr %i.gr, align 4, !tbaa !903
  %i.io = load i32, ptr %i.gs, align 8, !tbaa !921
  %i.ip = icmp eq i32 %i.in, %i.io
  br i1 %i.ip, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i
  %i.iq = load ptr, ptr %i.he, align 8, !tbaa !905
  %.not.i166.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i166.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.it = load ptr, ptr %i.hz, align 8, !tbaa !905
  %.not.i168.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i168.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IhhEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ix = load ptr, ptr %i.gt, align 8, !tbaa !1386, !nonnull !83
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !99, !range !82, !noundef !83
  %i.iz = trunc nuw i8 %i.iy to i1
  %i.ja = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.iz, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.jb = load ptr, ptr %i.gu, align 8, !tbaa !914
  %i.jc = sext i32 %i.ja to i64                   ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jb, i64 %i.jc  ; 3 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !47
  %i.jf = uitofp i8 %i.je to float
  %i.jg = fmul nnan float %i.jf, f0x3B808081
  %i.jh = getelementptr i8, ptr %i.jd, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !47
  %i.jj = uitofp i8 %i.ji to float
  %i.jk = fmul nnan float %i.jj, f0x3B808081
  %i.jl = getelementptr i8, ptr %i.jd, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !47
  %i.jn = uitofp i8 %i.jm to float
  %i.jo = fmul nnan float %i.jn, f0x3B808081
  %i.jp = fmul nnan float %i.jk, 7.151700e-01
  %i.jq = call float @llvm.fmuladd.f32(float %i.jg, float 2.126400e-01, float %i.jp)
  %i.jr = call float @llvm.fmuladd.f32(float %i.jo, float 7.219000e-02, float %i.jq) ; 5 uses
  %i.js = fcmp ogt float %i.jr, 0.000000e+00
  br i1 %i.js, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.jt = fcmp ugt float %i.jr, 1.800000e-01
  br i1 %i.jt, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ju = fadd float %i.jr, f0x3F0BB782
  %i.jv = fdiv float %i.ju, f0x3E3BEBCD
  %i.jw = call float @llvm.exp.f32(float %i.jv)   ; 2 uses
  %10 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.jw, i64 0
  %i.jx = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.jw, i64 1
  %11 = fsub <2 x float> %10, %i.jx
  %i.jy = fdiv <2 x float> %11, splat (float f0x438E2DCC) ; 2 uses
  %i.jz = extractelement <2 x float> %i.jy, i64 0 ; 2 uses
  %i.ka = fcmp olt float %i.jz, 1.800000e-01
  %i.kb = extractelement <2 x float> %i.jy, i64 1
  %.0.i171.i.i.i = select i1 %i.ka, float %i.kb, float %i.jz
  %i.kc = call float @llvm.fabs.f32(float %.0.i171.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i170.i.i.i = phi float [ %i.kc, %bb.az ], [ %i.jr, %bb.ay ]
  %i.kd = fdiv float %.010.i170.i.i.i, %i.jr
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i, %bb.ax
  %i.ke = phi float [ %i.kd, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.kf = load i32, ptr %i.g, align 4, !tbaa !20
  %i.kg = icmp slt i32 %i.ja, %i.kf
  br i1 %i.kg, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i

.lr.ph243.i.i.i:                                  ; preds = %bb.ba, %bb.bj
  %indvars.iv252.i.i.i = phi i64 [ %indvars.iv.next253.i.i.i, %bb.bj ], [ %i.jc, %bb.ba ] ; 6 uses
  %i.kh = icmp eq i64 %indvars.iv252.i.i.i, %sext250.i.i.i
  %i.ki = icmp eq i64 %indvars.iv252.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.kh, i1 true, i1 %i.ki
  %i.kj = load ptr, ptr %i.gu, align 8, !tbaa !914
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 %indvars.iv252.i.i.i
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !47
  %i.km = uitofp i8 %i.kl to float
  %i.kn = fmul nnan float %i.km, f0x3B808081      ; 2 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph243.i.i.i
  %i.ko = load ptr, ptr %4, align 8, !tbaa !906
  %i.kp = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ko)
          to label %.noexc178.i.i.i unwind label %bb.be

.noexc178.i.i.i:                                  ; preds = %bb.bb
  %i.kq = icmp eq i32 %i.kp, 3
  br i1 %i.kq, label %bb.bc, label %bb.bd, !prof !48

bb.bc:                                            ; preds = %.noexc178.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc178.i.i.i
  %i.kr = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %indvars.iv252.i.i.i
  %i.kt = fmul nnan float %i.kn, 2.550000e+02
  %i.ku = fadd float %i.kt, 5.000000e-01          ; 2 uses
  %i.kv = fcmp ogt float %i.ku, 2.550000e+02
  %.1.i.i.i.i.i.i177.i.i.i = select i1 %i.kv, float 2.550000e+02, float %i.ku
  %i.kw = fptoui float %.1.i.i.i.i.i.i177.i.i.i to i8
  store i8 %i.kw, ptr %i.ks, align 1, !tbaa !47
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bf:                                            ; preds = %.lr.ph243.i.i.i
  %i.ky = fmul float %i.ke, %i.kn
  %i.kz = load ptr, ptr %4, align 8, !tbaa !906
  %i.la = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz)
          to label %.noexc186.i.i.i unwind label %bb.bi

.noexc186.i.i.i:                                  ; preds = %bb.bf
  %i.lb = icmp eq i32 %i.la, 3
  br i1 %i.lb, label %bb.bg, label %bb.bh, !prof !48

bb.bg:                                            ; preds = %.noexc186.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.noexc186.i.i.i
  %i.lc = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %indvars.iv252.i.i.i
  %i.le = fmul float %i.ky, 2.550000e+02          ; 2 uses
  %i.lf = fcmp olt float %i.le, 0.000000e+00
  %i.lg = select i1 %i.lf, float -5.000000e-01, float 5.000000e-01
  %i.lh = fadd float %i.le, %i.lg                 ; 2 uses
  %.inv.i.i.i.i.i183.i.i.i = fcmp oge float %i.lh, 0.000000e+00
  %.0.i.i.i.i.i.i184.i.i.i = select i1 %.inv.i.i.i.i.i183.i.i.i, float %i.lh, float 0.000000e+00 ; 2 uses
  %i.li = fcmp ogt float %.0.i.i.i.i.i.i184.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i185.i.i.i = select i1 %i.li, float 2.550000e+02, float %.0.i.i.i.i.i.i184.i.i.i
  %i.lj = fptoui float %.1.i.i.i.i.i.i185.i.i.i to i8
  store i8 %i.lj, ptr %i.ld, align 1, !tbaa !47
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bj:                                            ; preds = %bb.bh, %bb.bd
  %indvars.iv.next253.i.i.i = add nsw i64 %indvars.iv252.i.i.i, 1 ; 2 uses
  %i.ll = load i32, ptr %i.g, align 4, !tbaa !20
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp slt i64 %indvars.iv.next253.i.i.i, %i.lm
  br i1 %i.ln, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i, !llvm.loop !1390

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.lo = load i32, ptr %i.g, align 4, !tbaa !20
  %i.lp = icmp slt i32 %i.ja, %i.lo
  br i1 %i.lp, label %.lr.ph.preheader.i.i.i, label %.loopexit239.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bk
  %i.lq = sext i32 %i.ja to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.lq, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bv ] ; 6 uses
  %i.lr = icmp eq i64 %indvars.iv.i.i.i, %sext250.i.i.i
  %i.ls = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.lr, i1 true, i1 %i.ls
  %i.lt = load ptr, ptr %i.gu, align 8, !tbaa !914
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 %indvars.iv.i.i.i
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !47
  %i.lw = uitofp i8 %i.lv to float
  %i.lx = fmul nnan float %i.lw, f0x3B808081      ; 4 uses
  br i1 %or.cond141.i.i.i, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.ly = load ptr, ptr %4, align 8, !tbaa !906
  %i.lz = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly)
          to label %.noexc194.i.i.i unwind label %bb.bo

.noexc194.i.i.i:                                  ; preds = %bb.bl
  %i.ma = icmp eq i32 %i.lz, 3
  br i1 %i.ma, label %bb.bm, label %bb.bn, !prof !48

bb.bm:                                            ; preds = %.noexc194.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %.noexc194.i.i.i
  %i.mb = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 %indvars.iv.i.i.i
  %i.md = fmul nnan float %i.lx, 2.550000e+02
  %i.me = fadd float %i.md, 5.000000e-01          ; 2 uses
  %i.mf = fcmp ogt float %i.me, 2.550000e+02
  %.1.i.i.i.i.i.i193.i.i.i = select i1 %i.mf, float 2.550000e+02, float %i.me
  %i.mg = fptoui float %.1.i.i.i.i.i.i193.i.i.i to i8
  store i8 %i.mg, ptr %i.mc, align 1, !tbaa !47
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.mi = fcmp ugt float %i.lx, 1.800000e-01
  br i1 %i.mi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mj = fadd float %i.lx, f0x3F0BB782
  %i.mk = fdiv float %i.mj, f0x3E3BEBCD
  %i.ml = call float @llvm.exp.f32(float %i.mk)   ; 2 uses
  %12 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.ml, i64 0
  %i.mm = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ml, i64 1
  %13 = fsub <2 x float> %12, %i.mm
  %i.mn = fdiv <2 x float> %13, splat (float f0x438E2DCC) ; 2 uses
  %i.mo = extractelement <2 x float> %i.mn, i64 0 ; 2 uses
  %i.mp = fcmp olt float %i.mo, 1.800000e-01
  %i.mq = extractelement <2 x float> %i.mn, i64 1
  %.0.i198.i.i.i = select i1 %i.mp, float %i.mq, float %i.mo
  %i.mr = call float @llvm.fabs.f32(float %.0.i198.i.i.i)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.010.i197.i.i.i = phi float [ %i.mr, %bb.bq ], [ %i.lx, %bb.bp ]
  %i.ms = load ptr, ptr %4, align 8, !tbaa !906
  %i.mt = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ms)
          to label %.noexc205.i.i.i unwind label %bb.bu

.noexc205.i.i.i:                                  ; preds = %bb.br
  %i.mu = icmp eq i32 %i.mt, 3
  br i1 %i.mu, label %bb.bs, label %bb.bt, !prof !48

bb.bs:                                            ; preds = %.noexc205.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.noexc205.i.i.i
  %i.mv = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 %indvars.iv.i.i.i
  %i.mx = fmul float %.010.i197.i.i.i, 2.550000e+02
  %i.my = fadd float %i.mx, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i202.i.i.i = fcmp oge float %i.my, 0.000000e+00
  %.0.i.i.i.i.i.i203.i.i.i = select i1 %.inv.i.i.i.i.i202.i.i.i, float %i.my, float 0.000000e+00 ; 2 uses
  %i.mz = fcmp ogt float %.0.i.i.i.i.i.i203.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i204.i.i.i = select i1 %i.mz, float 2.550000e+02, float %.0.i.i.i.i.i.i203.i.i.i
  %i.na = fptoui float %.1.i.i.i.i.i.i204.i.i.i to i8
  store i8 %i.na, ptr %i.mw, align 1, !tbaa !47
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bv:                                            ; preds = %bb.bt, %bb.bn
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.nc = load i32, ptr %i.g, align 4, !tbaa !20
  %i.nd = sext i32 %i.nc to i64
  %i.ne = icmp slt i64 %indvars.iv.next.i.i.i, %i.nd
  br i1 %i.ne, label %.lr.ph.i.i.i, label %.loopexit239.i.i.i, !llvm.loop !1391

.loopexit239.i.i.i:                               ; preds = %bb.bv, %bb.bj, %bb.bk, %bb.ba
  %i.nf = load i32, ptr %i.gn, align 4, !tbaa !901
  %i.ng = add nsw i32 %i.nf, 1                    ; 7 uses
  store i32 %i.ng, ptr %i.gn, align 4, !tbaa !901
  %i.nh = load i32, ptr %i.gw, align 8, !tbaa !910
  %i.ni = icmp slt i32 %i.ng, %i.nh
  br i1 %i.ni, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %.loopexit239.i.i.i
  %i.nj = load i8, ptr %i.gy, align 1, !tbaa !911, !range !82, !noundef !83
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.bx, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bw
  %.pre.i11.i.i = load i32, ptr %i.gp, align 8, !tbaa !902
  %.pre.i.i = load i32, ptr %i.gr, align 4, !tbaa !903
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.nl = load i8, ptr %i.gz, align 1, !tbaa !912, !range !82, !noundef !83
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.nn = load i64, ptr %i.hb, align 8, !tbaa !913
  %i.no = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 %i.nn
  store ptr %i.np, ptr %i.gv, align 8, !tbaa !914
  %i.nq = load i32, ptr %i.hc, align 8, !tbaa !915
  %.not.i.i14.i.i = icmp slt i32 %i.ng, %i.nq
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bz, !prof !22

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.cs

bb.ca:                                            ; preds = %bb.bx
  %i.nr = load i8, ptr %i.ha, align 2, !tbaa !916, !range !82, !noundef !83
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nt = load i64, ptr %i.hb, align 8, !tbaa !913
  %i.nu = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %i.nt
  store ptr %i.nv, ptr %i.gv, align 8, !tbaa !914
  %i.nw = load i32, ptr %i.hc, align 8, !tbaa !915
  %i.nx = icmp slt i32 %i.ng, %i.nw               ; 3 uses
  %i.ny = load i32, ptr %i.hd, align 4
  %i.nz = icmp sge i32 %i.ng, %i.ny
  %not..i.i12.i.i = xor i1 %i.nx, true
  %or.cond.i.i13.i.i = select i1 %not..i.i12.i.i, i1 true, i1 %i.nz, !prof !917
  %i.oa = load ptr, ptr %i.he, align 8
  %i.ob = icmp eq ptr %i.oa, null
  %i.oc = select i1 %or.cond.i.i13.i.i, i1 true, i1 %i.ob, !prof !917
  br i1 %i.oc, label %bb.cc, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, !prof !48

bb.cc:                                            ; preds = %bb.cb
  %i.od = load ptr, ptr %4, align 8, !tbaa !906
  %i.oe = load i32, ptr %i.gp, align 8, !tbaa !902
  %i.of = load i32, ptr %i.gr, align 4, !tbaa !903
  %i.og = load i32, ptr %i.hj, align 8, !tbaa !918
  %i.oh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.od, i32 noundef %i.ng, i32 noundef %i.oe, i32 noundef %i.of, ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull align 4 dereferenceable(4) %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %i.hg, ptr noundef nonnull align 4 dereferenceable(4) %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %i.hd, ptr noundef nonnull align 1 dereferenceable(1) %i.hi, i1 noundef zeroext %i.nx, i32 noundef %i.og)
          to label %.noexc16.i.i unwind label %bb.cs

.noexc16.i.i:                                     ; preds = %bb.cc
  %i.oi = zext i1 %i.nx to i8
  store ptr %i.oh, ptr %i.gv, align 8, !tbaa !914
  store i8 %i.oi, ptr %i.gy, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.cd:                                            ; preds = %.loopexit239.i.i.i
  %i.oj = load i32, ptr %i.go, align 4, !tbaa !904 ; 3 uses
  store i32 %i.oj, ptr %i.gn, align 4, !tbaa !901
  %i.ok = load i32, ptr %i.gp, align 8, !tbaa !902
  %i.ol = add nsw i32 %i.ok, 1                    ; 3 uses
  store i32 %i.ol, ptr %i.gp, align 8, !tbaa !902
  %i.om = load i32, ptr %i.gx, align 8, !tbaa !919
  %.not.i7.i.i = icmp slt i32 %i.ol, %i.om
  %.pre35.i.i = load i32, ptr %i.gr, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i7.i.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.on = load i32, ptr %i.gq, align 4, !tbaa !920 ; 2 uses
  store i32 %i.on, ptr %i.gp, align 8, !tbaa !902
  %i.oo = add nsw i32 %.pre35.i.i, 1              ; 3 uses
  store i32 %i.oo, ptr %i.gr, align 4, !tbaa !903
  %i.op = load i32, ptr %i.gs, align 8, !tbaa !921
  %.not1.i8.i.i = icmp slt i32 %i.oo, %i.op
  br i1 %.not1.i8.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i8 0, ptr %i.gm, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge.i9.i.i
  %i.oq = phi i32 [ %.pre35.i.i, %bb.cd ], [ %i.oo, %bb.ce ], [ %.pre.i.i, %._crit_edge.i9.i.i ]
  %i.or = phi i32 [ %i.ol, %bb.cd ], [ %i.on, %bb.ce ], [ %.pre.i11.i.i, %._crit_edge.i9.i.i ]
  %i.os = phi i32 [ %i.oj, %bb.cd ], [ %i.oj, %bb.ce ], [ %i.ng, %._crit_edge.i9.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %4, i32 noundef %i.os, i32 noundef %i.or, i32 noundef %i.oq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.cs

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i: ; preds = %bb.cg, %bb.cf, %.noexc16.i.i, %bb.cb, %bb.ca, %bb.bz, %bb.by
  %i.ot = load i32, ptr %i.hk, align 4, !tbaa !901
  %i.ou = add nsw i32 %i.ot, 1                    ; 7 uses
  store i32 %i.ou, ptr %i.hk, align 4, !tbaa !901
  %i.ov = load i32, ptr %i.hl, align 8, !tbaa !910
  %i.ow = icmp slt i32 %i.ou, %i.ov
  br i1 %i.ow, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i
  %i.ox = load i8, ptr %i.ht, align 1, !tbaa !911, !range !82, !noundef !83
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.ci, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ch
  %.pre.i3.i.i = load i32, ptr %i.hn, align 8, !tbaa !902
  %.pre36.i.i = load i32, ptr %i.hq, align 4, !tbaa !903
  br label %bb.cr

bb.ci:                                            ; preds = %bb.ch
  %i.oz = load i8, ptr %i.hu, align 1, !tbaa !912, !range !82, !noundef !83
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.pb = load i64, ptr %i.hw, align 8, !tbaa !913
  %i.pc = load ptr, ptr %i.gu, align 8, !tbaa !914
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 %i.pb
  store ptr %i.pd, ptr %i.gu, align 8, !tbaa !914
  %i.pe = load i32, ptr %i.hx, align 8, !tbaa !915
  %.not.i.i4.i.i = icmp slt i32 %i.ou, %i.pe
  br i1 %.not.i.i4.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ck, !prof !22

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.cs

bb.cl:                                            ; preds = %bb.ci
  %i.pf = load i8, ptr %i.hv, align 2, !tbaa !916, !range !82, !noundef !83
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ph = load i64, ptr %i.hw, align 8, !tbaa !913
  %i.pi = load ptr, ptr %i.gu, align 8, !tbaa !914
  %i.pj = getelementptr inbounds i8, ptr %i.pi, i64 %i.ph
  store ptr %i.pj, ptr %i.gu, align 8, !tbaa !914
  %i.pk = load i32, ptr %i.hx, align 8, !tbaa !915
  %i.pl = icmp slt i32 %i.ou, %i.pk               ; 3 uses
  %i.pm = load i32, ptr %i.hy, align 4
  %i.pn = icmp sge i32 %i.ou, %i.pm
  %not..i.i.i.i = xor i1 %i.pl, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.pn, !prof !917
end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !897, !range !82, !noundef !83
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !901
  %i.av = load i32, ptr %i.x, align 4, !tbaa !904
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !902
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !920
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !921
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !905
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_bNS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1394, !nonnull !83
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99, !range !82, !noundef !83
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.bc

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [2 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !954 ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 13
  %i.bq = and i32 %i.bp, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i = sext i16 %i.bn to i32
  %i.br = and i32 %.signext.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.bs = icmp samesign ugt i32 %i.bq, 8388607
  br i1 %i.bs, label %bb.m, label %bb.p, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.bt = or disjoint i32 %i.bq, %i.br            ; 2 uses
  %i.bu = icmp samesign ult i32 %i.bq, 260046848
  br i1 %i.bu, label %bb.n, label %bb.o, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.bv = add nuw nsw i32 %i.bt, 939524096
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bw = or i32 %i.bt, 2139095040
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.by = add nsw i32 %i.bx, -8                   ; 2 uses
  %i.bz = shl i32 %i.bq, %i.by
  %i.ca = or i32 %i.br, %i.bz
  %i.cb = or i32 %i.ca, 947912704
  %i.cc = shl nuw nsw i32 %i.by, 23
  %i.cd = sub nuw i32 %i.cb, %i.cc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.n ], [ %i.bw, %bb.o ], [ %i.cd, %bb.q ], [ %i.br, %bb.p ]
  %i.ce = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i to float
  %i.cf = getelementptr i8, ptr %i.bm, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !954 ; 2 uses
  %i.ch = zext i16 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 13
  %i.cj = and i32 %i.ci, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i144.i.i.i = sext i16 %i.cg to i32
  %i.ck = and i32 %.signext.i.i.i.i.i.i144.i.i.i, -2147483648 ; 3 uses
  %i.cl = icmp samesign ugt i32 %i.cj, 8388607
  br i1 %i.cl, label %bb.s, label %bb.v, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.cm = or disjoint i32 %i.cj, %i.ck            ; 2 uses
  %i.cn = icmp samesign ult i32 %i.cj, 260046848
  br i1 %i.cn, label %bb.t, label %bb.u, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.co = add nuw nsw i32 %i.cm, 939524096
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.cp = or i32 %i.cm, 2139095040
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %.not.i.i.i.i.i.i145.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i145.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.cj, i1 true)
  %i.cr = add nsw i32 %i.cq, -8                   ; 2 uses
  %i.cs = shl i32 %i.cj, %i.cr
  %i.ct = or i32 %i.ck, %i.cs
  %i.cu = or i32 %i.ct, 947912704
  %i.cv = shl nuw nsw i32 %i.cr, 23
  %i.cw = sub nuw i32 %i.cu, %i.cv
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i.i.i.i.i.i146.i.i.i = phi i32 [ %i.co, %bb.t ], [ %i.cp, %bb.u ], [ %i.cw, %bb.w ], [ %i.ck, %bb.v ]
  %i.cx = bitcast i32 %.sroa.0.0.i.i.i.i.i.i146.i.i.i to float
  %i.cy = fmul float %i.cx, 7.151700e-01
  %i.cz = call float @llvm.fmuladd.f32(float %i.ce, float 2.126400e-01, float %i.cy)
  %i.da = getelementptr i8, ptr %i.bm, i64 4
  %i.db = load i16, ptr %i.da, align 2, !tbaa !954 ; 2 uses
  %i.dc = zext i16 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 13
  %i.de = and i32 %i.dd, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i150.i.i.i = sext i16 %i.db to i32
  %i.df = and i32 %.signext.i.i.i.i.i.i150.i.i.i, -2147483648 ; 3 uses
  %i.dg = icmp samesign ugt i32 %i.de, 8388607
  br i1 %i.dg, label %bb.y, label %bb.ab, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.dh = or disjoint i32 %i.de, %i.df            ; 2 uses
  %i.di = icmp samesign ult i32 %i.de, 260046848
  br i1 %i.di, label %bb.z, label %bb.aa, !prof !22

bb.z:                                             ; preds = %bb.y
  %i.dj = add nuw nsw i32 %i.dh, 939524096
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.dk = or i32 %i.dh, 2139095040
  br label %bb.ad

bb.ab:                                            ; preds = %bb.x
  %.not.i.i.i.i.i.i151.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i.i.i.i151.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.de, i1 true)
  %i.dm = add nsw i32 %i.dl, -8                   ; 2 uses
  %i.dn = shl i32 %i.de, %i.dm
  %i.do = or i32 %i.df, %i.dn
  %i.dp = or i32 %i.do, 947912704
  %i.dq = shl nuw nsw i32 %i.dm, 23
  %i.dr = sub nuw i32 %i.dp, %i.dq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i.i152.i.i.i = phi i32 [ %i.dj, %bb.z ], [ %i.dk, %bb.aa ], [ %i.dr, %bb.ac ], [ %i.df, %bb.ab ]
  %i.ds = bitcast i32 %.sroa.0.0.i.i.i.i.i.i152.i.i.i to float
  %i.dt = call float @llvm.fmuladd.f32(float %i.ds, float 7.219000e-02, float %i.cz) ; 5 uses
  %i.du = fcmp ogt float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dv = fcmp ugt float %i.dt, 1.800000e-01
  br i1 %i.dv, label %bb.af, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.dw = fadd float %i.dt, f0x3F0BB782
  %i.dx = fdiv float %i.dw, f0x3E3BEBCD
  %i.dy = call float @llvm.exp.f32(float %i.dx)   ; 2 uses
  %6 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.dy, i64 0
  %i.dz = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dy, i64 1
  %7 = fsub <2 x float> %6, %i.dz
  %i.ea = fdiv <2 x float> %7, splat (float f0x438E2DCC) ; 2 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0 ; 2 uses
  %i.ec = fcmp olt float %i.eb, 1.800000e-01
  %i.ed = extractelement <2 x float> %i.ea, i64 1
  %.0.i.i.i.i = select i1 %i.ec, float %i.ed, float %i.eb
  %i.ee = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.af, %bb.ae
  %.010.i.i.i.i = phi float [ %i.ee, %bb.af ], [ %i.dt, %bb.ae ]
  %i.ef = fdiv float %.010.i.i.i.i, %i.dt
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.ad
  %i.eg = phi float [ %i.ef, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.ad ]
  %i.eh = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.ei = icmp slt i32 %i.bj, %i.eh
  br i1 %i.ei, label %.lr.ph297.i.i.i, label %.loopexit.i.i.i

.lr.ph297.i.i.i:                                  ; preds = %bb.ag, %bb.ba
  %i.ej = phi i32 [ %i.hc, %bb.ba ], [ %i.eh, %bb.ag ]
  %i.ek = phi ptr [ %i.hd, %bb.ba ], [ %i.bk, %bb.ag ] ; 2 uses
  %indvars.iv312.i.i.i = phi i64 [ %indvars.iv.next313.i.i.i, %bb.ba ], [ %i.bl, %bb.ag ] ; 5 uses
  %i.el = icmp eq i64 %indvars.iv312.i.i.i, %sext310.i.i.i
  %i.em = icmp eq i64 %indvars.iv312.i.i.i, %sext309.i.i.i
  %or.cond138.i.i.i = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond138.i.i.i, label %bb.ba, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph297.i.i.i
  %i.en = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %indvars.iv312.i.i.i
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !954 ; 2 uses
  %i.ep = zext i16 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 13
  %i.er = and i32 %i.eq, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i156.i.i.i = sext i16 %i.eo to i32
  %i.es = and i32 %.signext.i.i.i.i.i.i156.i.i.i, -2147483648 ; 3 uses
  %i.et = icmp samesign ugt i32 %i.er, 8388607
  br i1 %i.et, label %bb.ai, label %bb.al, !prof !22

bb.ai:                                            ; preds = %bb.ah
  %i.eu = or disjoint i32 %i.er, %i.es            ; 2 uses
  %i.ev = icmp samesign ult i32 %i.er, 260046848
  br i1 %i.ev, label %bb.aj, label %bb.ak, !prof !22

bb.aj:                                            ; preds = %bb.ai
  %i.ew = add nuw nsw i32 %i.eu, 939524096
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.ex = or i32 %i.eu, 2139095040
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  %.not.i.i.i.i.i.i157.i.i.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i.i.i.i.i157.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.er, i1 true)
  %i.ez = add nsw i32 %i.ey, -8                   ; 2 uses
  %i.fa = shl i32 %i.er, %i.ez
  %i.fb = or i32 %i.es, %i.fa
  %i.fc = or i32 %i.fb, 947912704
  %i.fd = shl nuw nsw i32 %i.ez, 23
  %i.fe = sub nuw i32 %i.fc, %i.fd
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.0.0.i.i.i.i.i.i158.i.i.i = phi i32 [ %i.ew, %bb.aj ], [ %i.ex, %bb.ak ], [ %i.fe, %bb.am ], [ %i.es, %bb.al ]
  %i.ff = bitcast i32 %.sroa.0.0.i.i.i.i.i.i158.i.i.i to float
  %i.fg = fmul float %i.eg, %i.ff                 ; 2 uses
  %i.fh = load ptr, ptr %2, align 8, !tbaa !906
  %i.fi = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh)
          to label %.noexc.i.i.i unwind label %bb.bb

.noexc.i.i.i:                                     ; preds = %bb.an
  %i.fj = icmp eq i32 %i.fi, 3
  br i1 %i.fj, label %bb.ao, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i, !prof !48

bb.ao:                                            ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i unwind label %bb.bb

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i: ; preds = %bb.ao, %.noexc.i.i.i
  %i.fk = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.fl = bitcast float %i.fg to i32
  %i.fm = call float @llvm.fabs.f32(float %i.fg)
  %i.fn = bitcast float %i.fm to i32              ; 10 uses
  %i.fo = lshr i32 %i.fl, 16                      ; 3 uses
  %i.fp = trunc nuw i32 %i.fo to i16
  %i.fq = and i16 %i.fp, -32768                   ; 3 uses
  %i.fr = icmp samesign ugt i32 %i.fn, 947912703
  br i1 %i.fr, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i
  %i.fs = icmp samesign ugt i32 %i.fn, 2139095039
  br i1 %i.fs, label %bb.aq, label %bb.as, !prof !48

bb.aq:                                            ; preds = %bb.ap
  %i.ft = or disjoint i16 %i.fq, 31744            ; 2 uses
  %i.fu = icmp eq i32 %i.fn, 2139095040
  br i1 %i.fu, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = lshr i32 %i.fn, 13
  %i.fw = and i32 %i.fv, 1023                     ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  %i.fy = zext i1 %i.fx to i16
  %i.fz = trunc nuw nsw i32 %i.fw to i16
  %i.ga = or i16 %i.fz, %i.fy
  %i.gb = or disjoint i16 %i.ga, %i.ft
  br label %bb.az

bb.as:                                            ; preds = %bb.ap
  %i.gc = icmp samesign ugt i32 %i.fn, 1199566847
  br i1 %i.gc, label %bb.at, label %bb.au, !prof !48

bb.at:                                            ; preds = %bb.as
  %i.gd = or disjoint i16 %i.fq, 31744
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.ge = add nuw nsw i32 %i.fn, 134221823
  %i.gf = lshr i32 %i.fn, 13
  %i.gg = and i32 %i.gf, 1
  %i.gh = add nuw nsw i32 %i.ge, %i.gg
  %i.gi = lshr i32 %i.gh, 13
  %i.gj = and i32 %i.fo, 32768
  %i.gk = or i32 %i.gi, %i.gj
  %i.gl = trunc i32 %i.gk to i16
  br label %bb.az

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i.i.i.i
  %i.gm = icmp samesign ult i32 %i.fn, 855638017
  br i1 %i.gm, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gn = lshr i32 %i.fn, 23                      ; 2 uses
  %i.go = sub nuw nsw i32 126, %i.gn
  %i.gp = and i32 %i.fn, 8388607
  %i.gq = or disjoint i32 %i.gp, 8388608          ; 2 uses
  %i.gr = add nsw i32 %i.gn, -94
  %i.gs = shl i32 %i.gq, %i.gr                    ; 2 uses
  %i.gt = lshr i32 %i.gq, %i.go                   ; 2 uses
  %i.gu = and i32 %i.fo, 32768
  %i.gv = or i32 %i.gt, %i.gu
  %i.gw = trunc nuw i32 %i.gv to i16              ; 2 uses
  %i.gx = icmp ugt i32 %i.gs, -2147483648
  br i1 %i.gx, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gy = icmp ne i32 %i.gs, -2147483648
  %i.gz = and i32 %i.gt, 1
  %.not.i.i.i.i.i221.i.i.i = icmp eq i32 %i.gz, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.gy, i1 true, i1 %.not.i.i.i.i.i221.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ha = add nuw i16 %i.gw, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i.i = phi i16 [ %i.fq, %bb.av ], [ %i.gb, %bb.ar ], [ %i.gd, %bb.at ], [ %i.gl, %bb.au ], [ %i.ft, %bb.aq ], [ %i.ha, %bb.ay ], [ %i.gw, %bb.ax ]
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %indvars.iv312.i.i.i
  store i16 %.0.i.i.i.i.i.i.i.i, ptr %i.hb, align 2, !tbaa !961
  %.pre317.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph297.i.i.i
  %i.hc = phi i32 [ %i.ej, %.lr.ph297.i.i.i ], [ %.pre317.i.i.i, %bb.az ] ; 2 uses
  %i.hd = phi ptr [ %i.ek, %.lr.ph297.i.i.i ], [ %i.fk, %bb.az ]
  %indvars.iv.next313.i.i.i = add nsw i64 %indvars.iv312.i.i.i, 1 ; 2 uses
  %i.he = sext i32 %i.hc to i64
  %i.hf = icmp slt i64 %indvars.iv.next313.i.i.i, %i.he
  br i1 %i.hf, label %.lr.ph297.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1396

bb.bb:                                            ; preds = %bb.ao, %bb.an
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bc:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.hh = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.hi = icmp slt i32 %i.bj, %i.hh
  br i1 %i.hi, label %.lr.ph295.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph295.preheader.i.i.i:                        ; preds = %bb.bc
  %i.hj = sext i32 %i.bj to i64
  br label %.lr.ph295.i.i.i

.lr.ph295.i.i.i:                                  ; preds = %bb.bx, %.lr.ph295.preheader.i.i.i
  %i.hk = phi i32 [ %i.hh, %.lr.ph295.preheader.i.i.i ], [ %i.kn, %bb.bx ]
  %indvars.iv307.i.i.i = phi i64 [ %i.hj, %.lr.ph295.preheader.i.i.i ], [ %indvars.iv.next308.i.i.i, %bb.bx ] ; 5 uses
  %i.hl = icmp eq i64 %indvars.iv307.i.i.i, %sext310.i.i.i
  %i.hm = icmp eq i64 %indvars.iv307.i.i.i, %sext309.i.i.i
  %or.cond139.i.i.i = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %or.cond139.i.i.i, label %bb.bx, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph295.i.i.i
  %i.hn = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %indvars.iv307.i.i.i
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !954 ; 2 uses
  %i.hq = zext i16 %i.hp to i32
  %i.hr = shl nuw nsw i32 %i.hq, 13
  %i.hs = and i32 %i.hr, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i164.i.i.i = sext i16 %i.hp to i32
  %i.ht = and i32 %.signext.i.i.i.i.i.i164.i.i.i, -2147483648 ; 3 uses
  %i.hu = icmp samesign ugt i32 %i.hs, 8388607
  br i1 %i.hu, label %bb.be, label %bb.bh, !prof !22

bb.be:                                            ; preds = %bb.bd
  %i.hv = or disjoint i32 %i.hs, %i.ht            ; 2 uses
  %i.hw = icmp samesign ult i32 %i.hs, 260046848
  br i1 %i.hw, label %bb.bf, label %bb.bg, !prof !22

bb.bf:                                            ; preds = %bb.be
  %i.hx = add nuw nsw i32 %i.hv, 939524096
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.hy = or i32 %i.hv, 2139095040
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bd
  %.not.i.i.i.i.i.i165.i.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i.i.i.i.i165.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hz = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.hs, i1 true)
  %i.ia = add nsw i32 %i.hz, -8                   ; 2 uses
  %i.ib = shl i32 %i.hs, %i.ia
  %i.ic = or i32 %i.ht, %i.ib
  %i.id = or i32 %i.ic, 947912704
  %i.ie = shl nuw nsw i32 %i.ia, 23
  %i.if = sub nuw i32 %i.id, %i.ie
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.sroa.0.0.i.i.i.i.i.i166.i.i.i = phi i32 [ %i.hx, %bb.bf ], [ %i.hy, %bb.bg ], [ %i.if, %bb.bi ], [ %i.ht, %bb.bh ]
  %i.ig = bitcast i32 %.sroa.0.0.i.i.i.i.i.i166.i.i.i to float ; 3 uses
  %i.ih = call float @llvm.fabs.f32(float %i.ig)  ; 2 uses
  %i.ii = fcmp ugt float %i.ih, 1.800000e-01
  br i1 %i.ii, label %bb.bk, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit170.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ij = fadd float %i.ih, f0x3F0BB782
  %i.ik = fdiv float %i.ij, f0x3E3BEBCD
  %i.il = call float @llvm.exp.f32(float %i.ik)   ; 2 uses
  %8 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.il, i64 0
  %i.im = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.il, i64 1
  %9 = fsub <2 x float> %8, %i.im
  %i.in = fdiv <2 x float> %9, splat (float f0x438E2DCC) ; 2 uses
  %i.io = extractelement <2 x float> %i.in, i64 0 ; 2 uses
  %i.ip = fcmp olt float %i.io, 1.800000e-01
  %i.iq = extractelement <2 x float> %i.in, i64 1
  %.0.i169.i.i.i = select i1 %i.ip, float %i.iq, float %i.io
  %i.ir = call noundef float @llvm.copysign.f32(float %.0.i169.i.i.i, float %i.ig)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit170.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit170.i.i.i: ; preds = %bb.bk, %bb.bj
  %.010.i168.i.i.i = phi float [ %i.ir, %bb.bk ], [ %i.ig, %bb.bj ] ; 2 uses
  %i.is = load ptr, ptr %2, align 8, !tbaa !906
  %i.it = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is)
          to label %.noexc227.i.i.i unwind label %bb.by

.noexc227.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit170.i.i.i
  %i.iu = icmp eq i32 %i.it, 3
  br i1 %i.iu, label %bb.bl, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i223.i.i.i, !prof !48

bb.bl:                                            ; preds = %.noexc227.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i223.i.i.i unwind label %bb.by

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i223.i.i.i: ; preds = %bb.bl, %.noexc227.i.i.i
  %i.iv = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.iw = bitcast float %.010.i168.i.i.i to i32
  %i.ix = call float @llvm.fabs.f32(float %.010.i168.i.i.i)
  %i.iy = bitcast float %i.ix to i32              ; 10 uses
  %i.iz = lshr i32 %i.iw, 16                      ; 3 uses
  %i.ja = trunc nuw i32 %i.iz to i16
  %i.jb = and i16 %i.ja, -32768                   ; 3 uses
  %i.jc = icmp samesign ugt i32 %i.iy, 947912703
  br i1 %i.jc, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i223.i.i.i
  %i.jd = icmp samesign ugt i32 %i.iy, 2139095039
  br i1 %i.jd, label %bb.bn, label %bb.bp, !prof !48

bb.bn:                                            ; preds = %bb.bm
  %i.je = or disjoint i16 %i.jb, 31744            ; 2 uses
  %i.jf = icmp eq i32 %i.iy, 2139095040
  br i1 %i.jf, label %bb.bw, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jg = lshr i32 %i.iy, 13
  %i.jh = and i32 %i.jg, 1023                     ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  %i.jj = zext i1 %i.ji to i16
  %i.jk = trunc nuw nsw i32 %i.jh to i16
  %i.jl = or i16 %i.jk, %i.jj
  %i.jm = or disjoint i16 %i.jl, %i.je
  br label %bb.bw

bb.bp:                                            ; preds = %bb.bm
  %i.jn = icmp samesign ugt i32 %i.iy, 1199566847
  br i1 %i.jn, label %bb.bq, label %bb.br, !prof !48

bb.bq:                                            ; preds = %bb.bp
  %i.jo = or disjoint i16 %i.jb, 31744
  br label %bb.bw

bb.br:                                            ; preds = %bb.bp
  %i.jp = add nuw nsw i32 %i.iy, 134221823
  %i.jq = lshr i32 %i.iy, 13
  %i.jr = and i32 %i.jq, 1
  %i.js = add nuw nsw i32 %i.jp, %i.jr
  %i.jt = lshr i32 %i.js, 13
  %i.ju = and i32 %i.iz, 32768
  %i.jv = or i32 %i.jt, %i.ju
  %i.jw = trunc i32 %i.jv to i16
  br label %bb.bw

bb.bs:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i223.i.i.i
  %i.jx = icmp samesign ult i32 %i.iy, 855638017
  br i1 %i.jx, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jy = lshr i32 %i.iy, 23                      ; 2 uses
  %i.jz = sub nuw nsw i32 126, %i.jy
  %i.ka = and i32 %i.iy, 8388607
  %i.kb = or disjoint i32 %i.ka, 8388608          ; 2 uses
  %i.kc = add nsw i32 %i.jy, -94
  %i.kd = shl i32 %i.kb, %i.kc                    ; 2 uses
  %i.ke = lshr i32 %i.kb, %i.jz                   ; 2 uses
  %i.kf = and i32 %i.iz, 32768
  %i.kg = or i32 %i.ke, %i.kf
  %i.kh = trunc nuw i32 %i.kg to i16              ; 2 uses
  %i.ki = icmp ugt i32 %i.kd, -2147483648
  br i1 %i.ki, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kj = icmp ne i32 %i.kd, -2147483648
  %i.kk = and i32 %i.ke, 1
  %.not.i.i.i.i.i224.i.i.i = icmp eq i32 %i.kk, 0
  %or.cond.i.i.i.i.i225.i.i.i = select i1 %i.kj, i1 true, i1 %.not.i.i.i.i.i224.i.i.i
  br i1 %or.cond.i.i.i.i.i225.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kl = add nuw i16 %i.kh, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn
  %.0.i.i.i.i.i226.i.i.i = phi i16 [ %i.jb, %bb.bs ], [ %i.jm, %bb.bo ], [ %i.jo, %bb.bq ], [ %i.jw, %bb.br ], [ %i.je, %bb.bn ], [ %i.kl, %bb.bv ], [ %i.kh, %bb.bu ]
  %i.km = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %indvars.iv307.i.i.i
  store i16 %.0.i.i.i.i.i226.i.i.i, ptr %i.km, align 2, !tbaa !961
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph295.i.i.i
  %i.kn = phi i32 [ %i.hk, %.lr.ph295.i.i.i ], [ %.pre.i.i.i, %bb.bw ] ; 2 uses
  %indvars.iv.next308.i.i.i = add nsw i64 %indvars.iv307.i.i.i, 1 ; 2 uses
  %i.ko = sext i32 %i.kn to i64
  %i.kp = icmp slt i64 %indvars.iv.next308.i.i.i, %i.ko
  br i1 %i.kp, label %.lr.ph295.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1397

bb.by:                                            ; preds = %bb.bl, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit170.i.i.i
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.i.i.i:                                  ; preds = %bb.bx, %bb.ba, %bb.bc, %bb.ag
  %i.kr = load i32, ptr %i.w, align 4, !tbaa !901
  %i.ks = add nsw i32 %i.kr, 1                    ; 7 uses
  store i32 %i.ks, ptr %i.w, align 4, !tbaa !901
  %i.kt = load i32, ptr %i.ae, align 8, !tbaa !910
  %i.ku = icmp slt i32 %i.ks, %i.kt
  br i1 %i.ku, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %.loopexit.i.i.i
  %i.kv = load i8, ptr %i.ag, align 1, !tbaa !911, !range !82, !noundef !83
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.ca, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.bz
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !902
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !903
  br label %bb.cj

bb.ca:                                            ; preds = %bb.bz
  %i.kx = load i8, ptr %i.ah, align 1, !tbaa !912, !range !82, !noundef !83
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.kz = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.la = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %i.kz
  store ptr %i.lb, ptr %i.ad, align 8, !tbaa !914
  %i.lc = load i32, ptr %i.ak, align 8, !tbaa !915
  %.not.i.i26.i.i = icmp slt i32 %i.ks, %i.lc
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.cc, !prof !22

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.ck

bb.cd:                                            ; preds = %bb.ca
  %i.ld = load i8, ptr %i.ai, align 2, !tbaa !916, !range !82, !noundef !83
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lf = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.lg = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 %i.lf
  store ptr %i.lh, ptr %i.ad, align 8, !tbaa !914
  %i.li = load i32, ptr %i.ak, align 8, !tbaa !915
  %i.lj = icmp slt i32 %i.ks, %i.li               ; 3 uses
  %i.lk = load i32, ptr %i.al, align 4
  %i.ll = icmp sge i32 %i.ks, %i.lk
  %not..i.i24.i.i = xor i1 %i.lj, true
  %or.cond.i.i25.i.i = select i1 %not..i.i24.i.i, i1 true, i1 %i.ll, !prof !917
  %i.lm = load ptr, ptr %i.am, align 8
  %i.ln = icmp eq ptr %i.lm, null
  %i.lo = select i1 %or.cond.i.i25.i.i, i1 true, i1 %i.ln, !prof !917
  br i1 %i.lo, label %bb.cf, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !48

bb.cf:                                            ; preds = %bb.ce
  %i.lp = load ptr, ptr %2, align 8, !tbaa !906
  %i.lq = load i32, ptr %i.y, align 8, !tbaa !902
  %i.lr = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.ls = load i32, ptr %i.ar, align 8, !tbaa !918
  %i.lt = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, i32 noundef %i.ks, i32 noundef %i.lq, i32 noundef %i.lr, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.lj, i32 noundef %i.ls)
          to label %.noexc28.i.i unwind label %bb.ck

.noexc28.i.i:                                     ; preds = %bb.cf
  %i.lu = zext i1 %i.lj to i8
  store ptr %i.lt, ptr %i.ad, align 8, !tbaa !914
  store i8 %i.lu, ptr %i.ag, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.cg:                                            ; preds = %.loopexit.i.i.i
  %i.lv = load i32, ptr %i.x, align 4, !tbaa !904 ; 3 uses
  store i32 %i.lv, ptr %i.w, align 4, !tbaa !901
  %i.lw = load i32, ptr %i.y, align 8, !tbaa !902
  %i.lx = add nsw i32 %i.lw, 1                    ; 3 uses
  store i32 %i.lx, ptr %i.y, align 8, !tbaa !902
  %i.ly = load i32, ptr %i.af, align 8, !tbaa !919
  %.not.i19.i.i = icmp slt i32 %i.lx, %i.ly
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.cj, label %bb.ch

end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  br i1 %i.oe, label %bb.co, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.thread.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.of = load i32, ptr %i.mk, align 8, !tbaa !902
  %i.og = load i32, ptr %i.ml, align 4, !tbaa !920
  %i.oh = icmp eq i32 %i.of, %i.og
  br i1 %i.oh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.i.i.i: ; preds = %bb.co
  %i.oi = load i32, ptr %i.mm, align 4, !tbaa !903
  %i.oj = load i32, ptr %i.mn, align 8, !tbaa !921
  %i.ok = icmp eq i32 %i.oi, %i.oj
  br i1 %i.ok, label %bb.cp, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.thread.i.i.i

bb.cp:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.i.i.i
  %i.ol = load ptr, ptr %i.mz, align 8, !tbaa !905
  %.not.i175.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not.i175.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit176.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit176.i.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.om = landingpad { ptr, i32 }
          catch ptr null
  %i.on = extractvalue { ptr, i32 } %i.om, 0
  call void @__clang_call_terminate(ptr %i.on) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit176.i.i.i: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.oo = load ptr, ptr %i.nu, align 8, !tbaa !905
  %.not.i177.i.i.i = icmp eq ptr %i.oo, null
  br i1 %.not.i177.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit178.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit176.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit178.i.i.i unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit178.i.i.i: ; preds = %bb.cs, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit176.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_bNS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

bb.cu:                                            ; preds = %bb.cm
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.i.i.i, %bb.co, %bb.cn, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.os = load ptr, ptr %i.mo, align 8, !tbaa !1394, !nonnull !83
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ou = trunc nuw i8 %i.ot to i1
  %i.ov = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.ou, label %bb.cv, label %bb.fe

bb.cv:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.thread.i.i.i
  %i.ow = load ptr, ptr %i.mp, align 8, !tbaa !914
  %i.ox = sext i32 %i.ov to i64                   ; 2 uses
  %i.oy = getelementptr [2 x i8], ptr %i.ow, i64 %i.ox ; 3 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !954 ; 2 uses
  %i.pa = zext i16 %i.oz to i32
  %i.pb = shl nuw nsw i32 %i.pa, 13
  %i.pc = and i32 %i.pb, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i = sext i16 %i.oz to i32
  %i.pd = and i32 %.signext.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.pe = icmp samesign ugt i32 %i.pc, 8388607
  br i1 %i.pe, label %bb.cw, label %bb.cz, !prof !22

bb.cw:                                            ; preds = %bb.cv
  %i.pf = or disjoint i32 %i.pc, %i.pd            ; 2 uses
  %i.pg = icmp samesign ult i32 %i.pc, 260046848
  br i1 %i.pg, label %bb.cx, label %bb.cy, !prof !22

bb.cx:                                            ; preds = %bb.cw
  %i.ph = add nuw nsw i32 %i.pf, 939524096
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.pi = or i32 %i.pf, 2139095040
  br label %bb.db

bb.cz:                                            ; preds = %bb.cv
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.pc, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pj = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.pc, i1 true)
  %i.pk = add nsw i32 %i.pj, -8                   ; 2 uses
  %i.pl = shl i32 %i.pc, %i.pk
  %i.pm = or i32 %i.pd, %i.pl
  %i.pn = or i32 %i.pm, 947912704
  %i.po = shl nuw nsw i32 %i.pk, 23
  %i.pp = sub nuw i32 %i.pn, %i.po
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ph, %bb.cx ], [ %i.pi, %bb.cy ], [ %i.pp, %bb.da ], [ %i.pd, %bb.cz ]
  %i.pq = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i to float
  %i.pr = getelementptr i8, ptr %i.oy, i64 2
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !954 ; 2 uses
  %i.pt = zext i16 %i.ps to i32
  %i.pu = shl nuw nsw i32 %i.pt, 13
  %i.pv = and i32 %i.pu, 268427264                ; 6 uses
  %.signext.i.i.i.i.i179.i.i.i = sext i16 %i.ps to i32
  %i.pw = and i32 %.signext.i.i.i.i.i179.i.i.i, -2147483648 ; 3 uses
  %i.px = icmp samesign ugt i32 %i.pv, 8388607
  br i1 %i.px, label %bb.dc, label %bb.df, !prof !22

bb.dc:                                            ; preds = %bb.db
  %i.py = or disjoint i32 %i.pv, %i.pw            ; 2 uses
  %i.pz = icmp samesign ult i32 %i.pv, 260046848
  br i1 %i.pz, label %bb.dd, label %bb.de, !prof !22

bb.dd:                                            ; preds = %bb.dc
  %i.qa = add nuw nsw i32 %i.py, 939524096
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.qb = or i32 %i.py, 2139095040
  br label %bb.dh

bb.df:                                            ; preds = %bb.db
  %.not.i.i.i.i.i180.i.i.i = icmp eq i32 %i.pv, 0
  br i1 %.not.i.i.i.i.i180.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qc = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.pv, i1 true)
  %i.qd = add nsw i32 %i.qc, -8                   ; 2 uses
  %i.qe = shl i32 %i.pv, %i.qd
  %i.qf = or i32 %i.pw, %i.qe
  %i.qg = or i32 %i.qf, 947912704
  %i.qh = shl nuw nsw i32 %i.qd, 23
  %i.qi = sub nuw i32 %i.qg, %i.qh
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd
  %.sroa.0.0.i.i.i.i.i181.i.i.i = phi i32 [ %i.qa, %bb.dd ], [ %i.qb, %bb.de ], [ %i.qi, %bb.dg ], [ %i.pw, %bb.df ]
  %i.qj = bitcast i32 %.sroa.0.0.i.i.i.i.i181.i.i.i to float
  %i.qk = getelementptr i8, ptr %i.oy, i64 4
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !954 ; 2 uses
  %i.qm = zext i16 %i.ql to i32
  %i.qn = shl nuw nsw i32 %i.qm, 13
  %i.qo = and i32 %i.qn, 268427264                ; 6 uses
  %.signext.i.i.i.i.i183.i.i.i = sext i16 %i.ql to i32
  %i.qp = and i32 %.signext.i.i.i.i.i183.i.i.i, -2147483648 ; 3 uses
  %i.qq = icmp samesign ugt i32 %i.qo, 8388607
  br i1 %i.qq, label %bb.di, label %bb.dl, !prof !22

bb.di:                                            ; preds = %bb.dh
  %i.qr = or disjoint i32 %i.qo, %i.qp            ; 2 uses
  %i.qs = icmp samesign ult i32 %i.qo, 260046848
  br i1 %i.qs, label %bb.dj, label %bb.dk, !prof !22

bb.dj:                                            ; preds = %bb.di
  %i.qt = add nuw nsw i32 %i.qr, 939524096
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di
  %i.qu = or i32 %i.qr, 2139095040
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dh
  %.not.i.i.i.i.i184.i.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i.i.i.i184.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qv = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.qo, i1 true)
  %i.qw = add nsw i32 %i.qv, -8                   ; 2 uses
  %i.qx = shl i32 %i.qo, %i.qw
  %i.qy = or i32 %i.qp, %i.qx
  %i.qz = or i32 %i.qy, 947912704
  %i.ra = shl nuw nsw i32 %i.qw, 23
  %i.rb = sub nuw i32 %i.qz, %i.ra
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %.sroa.0.0.i.i.i.i.i185.i.i.i = phi i32 [ %i.qt, %bb.dj ], [ %i.qu, %bb.dk ], [ %i.rb, %bb.dm ], [ %i.qp, %bb.dl ]
  %i.rc = bitcast i32 %.sroa.0.0.i.i.i.i.i185.i.i.i to float
  %i.rd = fmul float %i.qj, 7.151700e-01
  %i.re = call float @llvm.fmuladd.f32(float %i.pq, float 2.126400e-01, float %i.rd)
  %i.rf = call float @llvm.fmuladd.f32(float %i.rc, float 7.219000e-02, float %i.re) ; 5 uses
  %i.rg = fcmp ogt float %i.rf, 0.000000e+00
  br i1 %i.rg, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.rh = fcmp ugt float %i.rf, 1.800000e-01
  br i1 %i.rh, label %bb.dp, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit189.i.i.i

bb.dp:                                            ; preds = %bb.do
  %i.ri = fadd float %i.rf, f0x3F0BB782
  %i.rj = fdiv float %i.ri, f0x3E3BEBCD
  %i.rk = call float @llvm.exp.f32(float %i.rj)   ; 2 uses
  %10 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.rk, i64 0
  %i.rl = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.rk, i64 1
  %11 = fsub <2 x float> %10, %i.rl
  %i.rm = fdiv <2 x float> %11, splat (float f0x438E2DCC) ; 2 uses
  %i.rn = extractelement <2 x float> %i.rm, i64 0 ; 2 uses
  %i.ro = fcmp olt float %i.rn, 1.800000e-01
  %i.rp = extractelement <2 x float> %i.rm, i64 1
  %.0.i188.i.i.i = select i1 %i.ro, float %i.rp, float %i.rn
  %i.rq = call float @llvm.fabs.f32(float %.0.i188.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit189.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit189.i.i.i: ; preds = %bb.dp, %bb.do
  %.010.i187.i.i.i = phi float [ %i.rq, %bb.dp ], [ %i.rf, %bb.do ]
  %i.rr = fdiv float %.010.i187.i.i.i, %i.rf
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit189.i.i.i, %bb.dn
  %i.rs = phi float [ %i.rr, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit189.i.i.i ], [ 0.000000e+00, %bb.dn ]
  %i.rt = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ru = icmp slt i32 %i.ov, %i.rt
  br i1 %i.ru, label %.lr.ph293.i.i.i, label %.loopexit289.i.i.i

.lr.ph293.i.i.i:                                  ; preds = %bb.dq, %bb.fd
  %indvars.iv302.i.i.i = phi i64 [ %indvars.iv.next303.i.i.i, %bb.fd ], [ %i.ox, %bb.dq ] ; 5 uses
  %i.rv = icmp eq i64 %indvars.iv302.i.i.i, %sext300.i.i.i
  %i.rw = icmp eq i64 %indvars.iv302.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.rv, i1 true, i1 %i.rw
  %i.rx = load ptr, ptr %i.mp, align 8, !tbaa !914
  %i.ry = getelementptr inbounds [2 x i8], ptr %i.rx, i64 %indvars.iv302.i.i.i
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !954 ; 2 uses
  %i.sa = zext i16 %i.rz to i32
  %i.sb = shl nuw nsw i32 %i.sa, 13
  %i.sc = and i32 %i.sb, 268427264                ; 11 uses
  %.signext.i.i.i.i.i190.i.i.i = sext i16 %i.rz to i32
  %i.sd = and i32 %.signext.i.i.i.i.i190.i.i.i, -2147483648 ; 6 uses
  %i.se = icmp samesign ugt i32 %i.sc, 8388607    ; 2 uses
  br i1 %or.cond140.i.i.i, label %bb.dr, label %bb.ek

bb.dr:                                            ; preds = %.lr.ph293.i.i.i
  br i1 %i.se, label %bb.ds, label %bb.dv, !prof !22

bb.ds:                                            ; preds = %bb.dr
  %i.sf = or disjoint i32 %i.sc, %i.sd            ; 2 uses
  %i.sg = icmp samesign ult i32 %i.sc, 260046848
  br i1 %i.sg, label %bb.dt, label %bb.du, !prof !22

bb.dt:                                            ; preds = %bb.ds
  %i.sh = add nuw nsw i32 %i.sf, 939524096
  br label %bb.dx

bb.du:                                            ; preds = %bb.ds
  %i.si = or i32 %i.sf, 2139095040
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dr
  %.not.i.i.i.i.i191.i.i.i = icmp eq i32 %i.sc, 0
  br i1 %.not.i.i.i.i.i191.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sj = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sc, i1 true)
  %i.sk = add nsw i32 %i.sj, -8                   ; 2 uses
  %i.sl = shl i32 %i.sc, %i.sk
  %i.sm = or i32 %i.sd, %i.sl
  %i.sn = or i32 %i.sm, 947912704
  %i.so = shl nuw nsw i32 %i.sk, 23
  %i.sp = sub nuw i32 %i.sn, %i.so
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt
  %.sroa.0.0.i.i.i.i.i192.i.i.i = phi i32 [ %i.sh, %bb.dt ], [ %i.si, %bb.du ], [ %i.sp, %bb.dw ], [ %i.sd, %bb.dv ] ; 2 uses
  %i.sq = bitcast i32 %.sroa.0.0.i.i.i.i.i192.i.i.i to float
  %i.sr = load ptr, ptr %4, align 8, !tbaa !906
  %i.ss = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sr)
          to label %.noexc234.i.i.i unwind label %bb.ej

.noexc234.i.i.i:                                  ; preds = %bb.dx
  %i.st = icmp eq i32 %i.ss, 3
  br i1 %i.st, label %bb.dy, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i230.i.i.i, !prof !48

bb.dy:                                            ; preds = %.noexc234.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i230.i.i.i unwind label %bb.ej

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i230.i.i.i: ; preds = %bb.dy, %.noexc234.i.i.i
  %i.su = load ptr, ptr %i.mq, align 8, !tbaa !914 ; 7 uses
  %i.sv = call float @llvm.fabs.f32(float %i.sq)
  %i.sw = bitcast float %i.sv to i32              ; 10 uses
  %i.sx = lshr i32 %.sroa.0.0.i.i.i.i.i192.i.i.i, 16 ; 3 uses
  %i.sy = trunc nuw i32 %i.sx to i16
  %i.sz = and i16 %i.sy, -32768                   ; 3 uses
  %i.ta = icmp samesign ugt i32 %i.sw, 947912703
  br i1 %i.ta, label %bb.dz, label %bb.ef

bb.dz:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i230.i.i.i
  %i.tb = icmp samesign ugt i32 %i.sw, 2139095039
  br i1 %i.tb, label %bb.ea, label %bb.ec, !prof !48

bb.ea:                                            ; preds = %bb.dz
  %i.tc = or disjoint i16 %i.sz, 31744            ; 2 uses
  %i.td = icmp eq i32 %i.sw, 2139095040
  br i1 %i.td, label %bb.fd, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.te = lshr i32 %i.sw, 13
  %i.tf = and i32 %i.te, 1023                     ; 2 uses
  %i.tg = icmp eq i32 %i.tf, 0
  %i.th = zext i1 %i.tg to i16
  %i.ti = trunc nuw nsw i32 %i.tf to i16
  %i.tj = or i16 %i.ti, %i.th
  %i.tk = or disjoint i16 %i.tj, %i.tc
  br label %bb.fd

bb.ec:                                            ; preds = %bb.dz
  %i.tl = icmp samesign ugt i32 %i.sw, 1199566847
  br i1 %i.tl, label %bb.ed, label %bb.ee, !prof !48

bb.ed:                                            ; preds = %bb.ec
  %i.tm = or disjoint i16 %i.sz, 31744
  br label %bb.fd

bb.ee:                                            ; preds = %bb.ec
  %i.tn = add nuw nsw i32 %i.sw, 134221823
  %i.to = lshr i32 %i.sw, 13
  %i.tp = and i32 %i.to, 1
  %i.tq = add nuw nsw i32 %i.tn, %i.tp
  %i.tr = lshr i32 %i.tq, 13
  %i.ts = and i32 %i.sx, 32768
  %i.tt = or i32 %i.tr, %i.ts
  %i.tu = trunc i32 %i.tt to i16
  br label %bb.fd

bb.ef:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i230.i.i.i
  %i.tv = icmp samesign ult i32 %i.sw, 855638017
  br i1 %i.tv, label %bb.fd, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.tw = lshr i32 %i.sw, 23                      ; 2 uses
  %i.tx = sub nuw nsw i32 126, %i.tw
  %i.ty = and i32 %i.sw, 8388607
  %i.tz = or disjoint i32 %i.ty, 8388608          ; 2 uses
  %i.ua = add nsw i32 %i.tw, -94
  %i.ub = shl i32 %i.tz, %i.ua                    ; 2 uses
  %i.uc = lshr i32 %i.tz, %i.tx                   ; 2 uses
  %i.ud = and i32 %i.sx, 32768
  %i.ue = or i32 %i.uc, %i.ud
  %i.uf = trunc nuw i32 %i.ue to i16              ; 2 uses
  %i.ug = icmp ugt i32 %i.ub, -2147483648
  br i1 %i.ug, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.uh = icmp ne i32 %i.ub, -2147483648
  %i.ui = and i32 %i.uc, 1
  %.not.i.i.i.i.i231.i.i.i = icmp eq i32 %i.ui, 0
  %or.cond.i.i.i.i.i232.i.i.i = select i1 %i.uh, i1 true, i1 %.not.i.i.i.i.i231.i.i.i
  br i1 %or.cond.i.i.i.i.i232.i.i.i, label %bb.fd, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.uj = add nuw i16 %i.uf, 1
  br label %bb.fd

bb.ej:                                            ; preds = %bb.dy, %bb.dx
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.ek:                                            ; preds = %.lr.ph293.i.i.i
  br i1 %i.se, label %bb.el, label %bb.eo, !prof !22

bb.el:                                            ; preds = %bb.ek
  %i.ul = or disjoint i32 %i.sc, %i.sd            ; 2 uses
  %i.um = icmp samesign ult i32 %i.sc, 260046848
  br i1 %i.um, label %bb.em, label %bb.en, !prof !22

bb.em:                                            ; preds = %bb.el
  %i.un = add nuw nsw i32 %i.ul, 939524096
  br label %bb.eq

bb.en:                                            ; preds = %bb.el
  %i.uo = or i32 %i.ul, 2139095040
  br label %bb.eq

bb.eo:                                            ; preds = %bb.ek
  %.not.i.i.i.i.i198.i.i.i = icmp eq i32 %i.sc, 0
  br i1 %.not.i.i.i.i.i198.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.up = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sc, i1 true)
  %i.uq = add nsw i32 %i.up, -8                   ; 2 uses
  %i.ur = shl i32 %i.sc, %i.uq
  %i.us = or i32 %i.sd, %i.ur
  %i.ut = or i32 %i.us, 947912704
  %i.uu = shl nuw nsw i32 %i.uq, 23
  %i.uv = sub nuw i32 %i.ut, %i.uu
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en, %bb.em
  %.sroa.0.0.i.i.i.i.i199.i.i.i = phi i32 [ %i.un, %bb.em ], [ %i.uo, %bb.en ], [ %i.uv, %bb.ep ], [ %i.sd, %bb.eo ]
  %i.uw = bitcast i32 %.sroa.0.0.i.i.i.i.i199.i.i.i to float
  %i.ux = fmul float %i.rs, %i.uw                 ; 2 uses
  %i.uy = load ptr, ptr %4, align 8, !tbaa !906
  %i.uz = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uy)
          to label %.noexc241.i.i.i unwind label %bb.fc

.noexc241.i.i.i:                                  ; preds = %bb.eq
end_hunk_7
begin_hunk_8_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store i16 %.0.i.i.i.i.i233.sink.i.i.i, ptr %i.wt, align 2, !tbaa !961
  %indvars.iv.next303.i.i.i = add nsw i64 %indvars.iv302.i.i.i, 1 ; 2 uses
  %i.wu = load i32, ptr %i.g, align 4, !tbaa !20
  %i.wv = sext i32 %i.wu to i64
  %i.ww = icmp slt i64 %indvars.iv.next303.i.i.i, %i.wv
  br i1 %i.ww, label %.lr.ph293.i.i.i, label %.loopexit289.i.i.i, !llvm.loop !1398

bb.fe:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit174.thread.i.i.i
  %i.wx = load i32, ptr %i.g, align 4, !tbaa !20
  %i.wy = icmp slt i32 %i.ov, %i.wx
  br i1 %i.wy, label %.lr.ph.preheader.i.i.i, label %.loopexit289.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.fe
  %i.wz = sext i32 %i.ov to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.gt, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.wz, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.gt ] ; 5 uses
  %i.xa = icmp eq i64 %indvars.iv.i.i.i, %sext300.i.i.i
  %i.xb = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.xa, i1 true, i1 %i.xb
  %i.xc = load ptr, ptr %i.mp, align 8, !tbaa !914
  %i.xd = getelementptr inbounds [2 x i8], ptr %i.xc, i64 %indvars.iv.i.i.i
  %i.xe = load i16, ptr %i.xd, align 2, !tbaa !954 ; 2 uses
  %i.xf = zext i16 %i.xe to i32
  %i.xg = shl nuw nsw i32 %i.xf, 13
  %i.xh = and i32 %i.xg, 268427264                ; 11 uses
  %.signext.i.i.i.i.i204.i.i.i = sext i16 %i.xe to i32
  %i.xi = and i32 %.signext.i.i.i.i.i204.i.i.i, -2147483648 ; 6 uses
  %i.xj = icmp samesign ugt i32 %i.xh, 8388607    ; 2 uses
  br i1 %or.cond141.i.i.i, label %bb.ff, label %bb.fy

bb.ff:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.xj, label %bb.fg, label %bb.fj, !prof !22

bb.fg:                                            ; preds = %bb.ff
  %i.xk = or disjoint i32 %i.xh, %i.xi            ; 2 uses
  %i.xl = icmp samesign ult i32 %i.xh, 260046848
  br i1 %i.xl, label %bb.fh, label %bb.fi, !prof !22

bb.fh:                                            ; preds = %bb.fg
  %i.xm = add nuw nsw i32 %i.xk, 939524096
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fg
  %i.xn = or i32 %i.xk, 2139095040
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ff
  %.not.i.i.i.i.i205.i.i.i = icmp eq i32 %i.xh, 0
  br i1 %.not.i.i.i.i.i205.i.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xo = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.xh, i1 true)
  %i.xp = add nsw i32 %i.xo, -8                   ; 2 uses
  %i.xq = shl i32 %i.xh, %i.xp
  %i.xr = or i32 %i.xi, %i.xq
  %i.xs = or i32 %i.xr, 947912704
  %i.xt = shl nuw nsw i32 %i.xp, 23
  %i.xu = sub nuw i32 %i.xs, %i.xt
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fh
  %.sroa.0.0.i.i.i.i.i206.i.i.i = phi i32 [ %i.xm, %bb.fh ], [ %i.xn, %bb.fi ], [ %i.xu, %bb.fk ], [ %i.xi, %bb.fj ] ; 2 uses
  %i.xv = bitcast i32 %.sroa.0.0.i.i.i.i.i206.i.i.i to float
  %i.xw = load ptr, ptr %4, align 8, !tbaa !906
  %i.xx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xw)
          to label %.noexc248.i.i.i unwind label %bb.fx

.noexc248.i.i.i:                                  ; preds = %bb.fl
  %i.xy = icmp eq i32 %i.xx, 3
  br i1 %i.xy, label %bb.fm, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i244.i.i.i, !prof !48

bb.fm:                                            ; preds = %.noexc248.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i244.i.i.i unwind label %bb.fx

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i244.i.i.i: ; preds = %bb.fm, %.noexc248.i.i.i
  %i.xz = load ptr, ptr %i.mq, align 8, !tbaa !914 ; 7 uses
  %i.ya = call float @llvm.fabs.f32(float %i.xv)
  %i.yb = bitcast float %i.ya to i32              ; 10 uses
  %i.yc = lshr i32 %.sroa.0.0.i.i.i.i.i206.i.i.i, 16 ; 3 uses
  %i.yd = trunc nuw i32 %i.yc to i16
  %i.ye = and i16 %i.yd, -32768                   ; 3 uses
  %i.yf = icmp samesign ugt i32 %i.yb, 947912703
  br i1 %i.yf, label %bb.fn, label %bb.ft

bb.fn:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i244.i.i.i
  %i.yg = icmp samesign ugt i32 %i.yb, 2139095039
  br i1 %i.yg, label %bb.fo, label %bb.fq, !prof !48

bb.fo:                                            ; preds = %bb.fn
  %i.yh = or disjoint i16 %i.ye, 31744            ; 2 uses
  %i.yi = icmp eq i32 %i.yb, 2139095040
  br i1 %i.yi, label %bb.gt, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.yj = lshr i32 %i.yb, 13
  %i.yk = and i32 %i.yj, 1023                     ; 2 uses
  %i.yl = icmp eq i32 %i.yk, 0
  %i.ym = zext i1 %i.yl to i16
  %i.yn = trunc nuw nsw i32 %i.yk to i16
  %i.yo = or i16 %i.yn, %i.ym
  %i.yp = or disjoint i16 %i.yo, %i.yh
  br label %bb.gt

bb.fq:                                            ; preds = %bb.fn
  %i.yq = icmp samesign ugt i32 %i.yb, 1199566847
  br i1 %i.yq, label %bb.fr, label %bb.fs, !prof !48

bb.fr:                                            ; preds = %bb.fq
  %i.yr = or disjoint i16 %i.ye, 31744
  br label %bb.gt

bb.fs:                                            ; preds = %bb.fq
  %i.ys = add nuw nsw i32 %i.yb, 134221823
  %i.yt = lshr i32 %i.yb, 13
  %i.yu = and i32 %i.yt, 1
  %i.yv = add nuw nsw i32 %i.ys, %i.yu
  %i.yw = lshr i32 %i.yv, 13
  %i.yx = and i32 %i.yc, 32768
  %i.yy = or i32 %i.yw, %i.yx
  %i.yz = trunc i32 %i.yy to i16
  br label %bb.gt

bb.ft:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i244.i.i.i
  %i.za = icmp samesign ult i32 %i.yb, 855638017
  br i1 %i.za, label %bb.gt, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.zb = lshr i32 %i.yb, 23                      ; 2 uses
  %i.zc = sub nuw nsw i32 126, %i.zb
  %i.zd = and i32 %i.yb, 8388607
  %i.ze = or disjoint i32 %i.zd, 8388608          ; 2 uses
  %i.zf = add nsw i32 %i.zb, -94
  %i.zg = shl i32 %i.ze, %i.zf                    ; 2 uses
  %i.zh = lshr i32 %i.ze, %i.zc                   ; 2 uses
  %i.zi = and i32 %i.yc, 32768
  %i.zj = or i32 %i.zh, %i.zi
  %i.zk = trunc nuw i32 %i.zj to i16              ; 2 uses
  %i.zl = icmp ugt i32 %i.zg, -2147483648
  br i1 %i.zl, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.zm = icmp ne i32 %i.zg, -2147483648
  %i.zn = and i32 %i.zh, 1
  %.not.i.i.i.i.i245.i.i.i = icmp eq i32 %i.zn, 0
  %or.cond.i.i.i.i.i246.i.i.i = select i1 %i.zm, i1 true, i1 %.not.i.i.i.i.i245.i.i.i
  br i1 %or.cond.i.i.i.i.i246.i.i.i, label %bb.gt, label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.zo = add nuw i16 %i.zk, 1
  br label %bb.gt

bb.fx:                                            ; preds = %bb.fm, %bb.fl
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.fy:                                            ; preds = %.lr.ph.i.i.i
  br i1 %i.xj, label %bb.fz, label %bb.gc, !prof !22

bb.fz:                                            ; preds = %bb.fy
  %i.zq = or disjoint i32 %i.xh, %i.xi            ; 2 uses
  %i.zr = icmp samesign ult i32 %i.xh, 260046848
  br i1 %i.zr, label %bb.ga, label %bb.gb, !prof !22

bb.ga:                                            ; preds = %bb.fz
  %i.zs = add nuw nsw i32 %i.zq, 939524096
  br label %bb.ge

bb.gb:                                            ; preds = %bb.fz
  %i.zt = or i32 %i.zq, 2139095040
  br label %bb.ge

bb.gc:                                            ; preds = %bb.fy
  %.not.i.i.i.i.i212.i.i.i = icmp eq i32 %i.xh, 0
  br i1 %.not.i.i.i.i.i212.i.i.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.zu = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.xh, i1 true)
  %i.zv = add nsw i32 %i.zu, -8                   ; 2 uses
  %i.zw = shl i32 %i.xh, %i.zv
  %i.zx = or i32 %i.xi, %i.zw
  %i.zy = or i32 %i.zx, 947912704
  %i.zz = shl nuw nsw i32 %i.zv, 23
  %i.aaa = sub nuw i32 %i.zy, %i.zz
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.ga
  %.sroa.0.0.i.i.i.i.i213.i.i.i = phi i32 [ %i.zs, %bb.ga ], [ %i.zt, %bb.gb ], [ %i.aaa, %bb.gd ], [ %i.xi, %bb.gc ]
  %i.aab = bitcast i32 %.sroa.0.0.i.i.i.i.i213.i.i.i to float ; 3 uses
  %i.aac = call float @llvm.fabs.f32(float %i.aab) ; 2 uses
  %i.aad = fcmp ugt float %i.aac, 1.800000e-01
  br i1 %i.aad, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aae = fadd float %i.aac, f0x3F0BB782
  %i.aaf = fdiv float %i.aae, f0x3E3BEBCD
  %i.aag = call float @llvm.exp.f32(float %i.aaf) ; 2 uses
  %12 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.aag, i64 0
  %i.aah = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.aag, i64 1
  %13 = fsub <2 x float> %12, %i.aah
  %i.aai = fdiv <2 x float> %13, splat (float f0x438E2DCC) ; 2 uses
  %i.aaj = extractelement <2 x float> %i.aai, i64 0 ; 2 uses
  %i.aak = fcmp olt float %i.aaj, 1.800000e-01
  %i.aal = extractelement <2 x float> %i.aai, i64 1
  %.0.i216.i.i.i = select i1 %i.aak, float %i.aal, float %i.aaj
  %i.aam = call noundef float @llvm.copysign.f32(float %.0.i216.i.i.i, float %i.aab)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.010.i215.i.i.i = phi float [ %i.aam, %bb.gf ], [ %i.aab, %bb.ge ] ; 2 uses
  %i.aan = load ptr, ptr %4, align 8, !tbaa !906
  %i.aao = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aan)
          to label %.noexc255.i.i.i unwind label %bb.gs

.noexc255.i.i.i:                                  ; preds = %bb.gg
  %i.aap = icmp eq i32 %i.aao, 3
  br i1 %i.aap, label %bb.gh, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i251.i.i.i, !prof !48

bb.gh:                                            ; preds = %.noexc255.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i251.i.i.i unwind label %bb.gs

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i251.i.i.i: ; preds = %bb.gh, %.noexc255.i.i.i
  %i.aaq = load ptr, ptr %i.mq, align 8, !tbaa !914 ; 7 uses
  %i.aar = bitcast float %.010.i215.i.i.i to i32
  %i.aas = call float @llvm.fabs.f32(float %.010.i215.i.i.i)
  %i.aat = bitcast float %i.aas to i32            ; 10 uses
  %i.aau = lshr i32 %i.aar, 16                    ; 3 uses
  %i.aav = trunc nuw i32 %i.aau to i16
  %i.aaw = and i16 %i.aav, -32768                 ; 3 uses
  %i.aax = icmp samesign ugt i32 %i.aat, 947912703
  br i1 %i.aax, label %bb.gi, label %bb.go

bb.gi:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i251.i.i.i
  %i.aay = icmp samesign ugt i32 %i.aat, 2139095039
  br i1 %i.aay, label %bb.gj, label %bb.gl, !prof !48

bb.gj:                                            ; preds = %bb.gi
  %i.aaz = or disjoint i16 %i.aaw, 31744          ; 2 uses
  %i.aba = icmp eq i32 %i.aat, 2139095040
  br i1 %i.aba, label %bb.gt, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.abb = lshr i32 %i.aat, 13
  %i.abc = and i32 %i.abb, 1023                   ; 2 uses
  %i.abd = icmp eq i32 %i.abc, 0
  %i.abe = zext i1 %i.abd to i16
  %i.abf = trunc nuw nsw i32 %i.abc to i16
  %i.abg = or i16 %i.abf, %i.abe
  %i.abh = or disjoint i16 %i.abg, %i.aaz
  br label %bb.gt

bb.gl:                                            ; preds = %bb.gi
  %i.abi = icmp samesign ugt i32 %i.aat, 1199566847
  br i1 %i.abi, label %bb.gm, label %bb.gn, !prof !48

bb.gm:                                            ; preds = %bb.gl
  %i.abj = or disjoint i16 %i.aaw, 31744
  br label %bb.gt

bb.gn:                                            ; preds = %bb.gl
  %i.abk = add nuw nsw i32 %i.aat, 134221823
  %i.abl = lshr i32 %i.aat, 13
  %i.abm = and i32 %i.abl, 1
  %i.abn = add nuw nsw i32 %i.abk, %i.abm
  %i.abo = lshr i32 %i.abn, 13
  %i.abp = and i32 %i.aau, 32768
  %i.abq = or i32 %i.abo, %i.abp
  %i.abr = trunc i32 %i.abq to i16
  br label %bb.gt

bb.go:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase15ensure_writableEv.exit.i251.i.i.i
  %i.abs = icmp samesign ult i32 %i.aat, 855638017
  br i1 %i.abs, label %bb.gt, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.abt = lshr i32 %i.aat, 23                    ; 2 uses
  %i.abu = sub nuw nsw i32 126, %i.abt
  %i.abv = and i32 %i.aat, 8388607
  %i.abw = or disjoint i32 %i.abv, 8388608        ; 2 uses
  %i.abx = add nsw i32 %i.abt, -94
  %i.aby = shl i32 %i.abw, %i.abx                 ; 2 uses
  %i.abz = lshr i32 %i.abw, %i.abu                ; 2 uses
  %i.aca = and i32 %i.aau, 32768
  %i.acb = or i32 %i.abz, %i.aca
  %i.acc = trunc nuw i32 %i.acb to i16            ; 2 uses
  %i.acd = icmp ugt i32 %i.aby, -2147483648
  br i1 %i.acd, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ace = icmp ne i32 %i.aby, -2147483648
  %i.acf = and i32 %i.abz, 1
  %.not.i.i.i.i.i252.i.i.i = icmp eq i32 %i.acf, 0
  %or.cond.i.i.i.i.i253.i.i.i = select i1 %i.ace, i1 true, i1 %.not.i.i.i.i.i252.i.i.i
  br i1 %or.cond.i.i.i.i.i253.i.i.i, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.acg = add nuw i16 %i.acc, 1
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gh, %bb.gg
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.gt:                                            ; preds = %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gm, %bb.gk, %bb.gj, %bb.fw, %bb.fv, %bb.ft, %bb.fs, %bb.fr, %bb.fp, %bb.fo
  %.sink370.i.i.i = phi ptr [ %i.xz, %bb.fw ], [ %i.xz, %bb.fo ], [ %i.xz, %bb.fp ], [ %i.xz, %bb.fr ], [ %i.xz, %bb.fs ], [ %i.xz, %bb.ft ], [ %i.xz, %bb.fv ], [ %i.aaq, %bb.gj ], [ %i.aaq, %bb.gk ], [ %i.aaq, %bb.gm ], [ %i.aaq, %bb.gn ], [ %i.aaq, %bb.go ], [ %i.aaq, %bb.gq ], [ %i.aaq, %bb.gr ]
  %.0.i.i.i.i.i247.sink.i.i.i = phi i16 [ %i.zo, %bb.fw ], [ %i.yh, %bb.fo ], [ %i.yp, %bb.fp ], [ %i.yr, %bb.fr ], [ %i.yz, %bb.fs ], [ %i.ye, %bb.ft ], [ %i.zk, %bb.fv ], [ %i.aaz, %bb.gj ], [ %i.abh, %bb.gk ], [ %i.abj, %bb.gm ], [ %i.abr, %bb.gn ], [ %i.aaw, %bb.go ], [ %i.acc, %bb.gq ], [ %i.acg, %bb.gr ]
  %i.aci = getelementptr inbounds [2 x i8], ptr %.sink370.i.i.i, i64 %indvars.iv.i.i.i
  store i16 %.0.i.i.i.i.i247.sink.i.i.i, ptr %i.aci, align 2, !tbaa !961
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.acj = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ack = sext i32 %i.acj to i64
  %i.acl = icmp slt i64 %indvars.iv.next.i.i.i, %i.ack
  br i1 %i.acl, label %.lr.ph.i.i.i, label %.loopexit289.i.i.i, !llvm.loop !1399

.loopexit289.i.i.i:                               ; preds = %bb.gt, %bb.fd, %bb.fe, %bb.dq
  %i.acm = load i32, ptr %i.mi, align 4, !tbaa !901
  %i.acn = add nsw i32 %i.acm, 1                  ; 7 uses
  store i32 %i.acn, ptr %i.mi, align 4, !tbaa !901
  %i.aco = load i32, ptr %i.mr, align 8, !tbaa !910
  %i.acp = icmp slt i32 %i.acn, %i.aco
  br i1 %i.acp, label %bb.gu, label %bb.hb

bb.gu:                                            ; preds = %.loopexit289.i.i.i
  %i.acq = load i8, ptr %i.mt, align 1, !tbaa !911, !range !82, !noundef !83
  %i.acr = trunc nuw i8 %i.acq to i1
  br i1 %i.acr, label %bb.gv, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.gu
  %.pre.i11.i.i = load i32, ptr %i.mk, align 8, !tbaa !902
  %.pre.i.i = load i32, ptr %i.mm, align 4, !tbaa !903
  br label %bb.he

bb.gv:                                            ; preds = %bb.gu
  %i.acs = load i8, ptr %i.mu, align 1, !tbaa !912, !range !82, !noundef !83
  %i.act = trunc nuw i8 %i.acs to i1
  br i1 %i.act, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.acu = load i64, ptr %i.mw, align 8, !tbaa !913
  %i.acv = load ptr, ptr %i.mq, align 8, !tbaa !914
  %i.acw = getelementptr inbounds i8, ptr %i.acv, i64 %i.acu
  store ptr %i.acw, ptr %i.mq, align 8, !tbaa !914
  %i.acx = load i32, ptr %i.mx, align 8, !tbaa !915
  %.not.i.i14.i.i = icmp slt i32 %i.acn, %i.acx
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.gx, !prof !22

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.hq

bb.gy:                                            ; preds = %bb.gv
  %i.acy = load i8, ptr %i.mv, align 2, !tbaa !916, !range !82, !noundef !83
  %i.acz = trunc nuw i8 %i.acy to i1
  br i1 %i.acz, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ada = load i64, ptr %i.mw, align 8, !tbaa !913
  %i.adb = load ptr, ptr %i.mq, align 8, !tbaa !914
  %i.adc = getelementptr inbounds i8, ptr %i.adb, i64 %i.ada
  store ptr %i.adc, ptr %i.mq, align 8, !tbaa !914
  %i.add = load i32, ptr %i.mx, align 8, !tbaa !915
  %i.ade = icmp slt i32 %i.acn, %i.add            ; 3 uses
  %i.adf = load i32, ptr %i.my, align 4
  %i.adg = icmp sge i32 %i.acn, %i.adf
  %not..i.i12.i.i = xor i1 %i.ade, true
  %or.cond.i.i13.i.i = select i1 %not..i.i12.i.i, i1 true, i1 %i.adg, !prof !917
  %i.adh = load ptr, ptr %i.mz, align 8
  %i.adi = icmp eq ptr %i.adh, null
  %i.adj = select i1 %or.cond.i.i13.i.i, i1 true, i1 %i.adi, !prof !917
  br i1 %i.adj, label %bb.ha, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, !prof !48

bb.ha:                                            ; preds = %bb.gz
  %i.adk = load ptr, ptr %4, align 8, !tbaa !906
  %i.adl = load i32, ptr %i.mk, align 8, !tbaa !902
  %i.adm = load i32, ptr %i.mm, align 4, !tbaa !903
  %i.adn = load i32, ptr %i.ne, align 8, !tbaa !918
  %i.ado = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.adk, i32 noundef %i.acn, i32 noundef %i.adl, i32 noundef %i.adm, ptr noundef nonnull align 8 dereferenceable(8) %i.mz, ptr noundef nonnull align 4 dereferenceable(4) %i.na, ptr noundef nonnull align 4 dereferenceable(4) %i.nb, ptr noundef nonnull align 4 dereferenceable(4) %i.nc, ptr noundef nonnull align 4 dereferenceable(4) %i.my, ptr noundef nonnull align 1 dereferenceable(1) %i.nd, i1 noundef zeroext %i.ade, i32 noundef %i.adn)
          to label %.noexc16.i.i unwind label %bb.hq

.noexc16.i.i:                                     ; preds = %bb.ha
  %i.adp = zext i1 %i.ade to i8
  store ptr %i.ado, ptr %i.mq, align 8, !tbaa !914
  store i8 %i.adp, ptr %i.mt, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.hb:                                            ; preds = %.loopexit289.i.i.i
  %i.adq = load i32, ptr %i.mj, align 4, !tbaa !904 ; 3 uses
  store i32 %i.adq, ptr %i.mi, align 4, !tbaa !901
  %i.adr = load i32, ptr %i.mk, align 8, !tbaa !902
  %i.ads = add nsw i32 %i.adr, 1                  ; 3 uses
  store i32 %i.ads, ptr %i.mk, align 8, !tbaa !902
  %i.adt = load i32, ptr %i.ms, align 8, !tbaa !919
  %.not.i7.i.i = icmp slt i32 %i.ads, %i.adt
  %.pre35.i.i = load i32, ptr %i.mm, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i7.i.i, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.adu = load i32, ptr %i.ml, align 4, !tbaa !920 ; 2 uses
  store i32 %i.adu, ptr %i.mk, align 8, !tbaa !902
end_hunk_8
begin_hunk_9_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_bNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !891
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %.val, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1303
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #35
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12rangeexpand_IN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12rangeexpand_IttEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.117", align 8 ; 35 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.113", align 8 ; 31 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.117", align 8 ; 39 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !39    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1400, !nonnull !83, !align !417
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !216  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 4 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sge i32 %i.d, %i.j
  %i.m = add nsw i32 %i.j, 3                      ; 2 uses
  %i.n = icmp slt i32 %i.d, %i.m
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not116.i.i.i = icmp sge i32 %i.f, %i.j
  %i.o = icmp slt i32 %i.f, %i.m
  %or.cond137.i.i.i = select i1 %.not116.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond137.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1402, !nonnull !83
  store i8 0, ptr %i.q, align 1, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1403, !nonnull !83, !align !417 ; 2 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !1400, !nonnull !83, !align !417 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %sext259.i.i.i = sext i32 %i.f to i64           ; 2 uses
  %sext260.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, %bb.f
  %i.as = load i8, ptr %i.v, align 8, !tbaa !897, !range !82, !noundef !83
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.au = load i32, ptr %i.w, align 4, !tbaa !901
  %i.av = load i32, ptr %i.x, align 4, !tbaa !904
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !902
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !920
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.bb = load i32, ptr %i.ab, align 8, !tbaa !921
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !905
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IttEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !1402, !nonnull !83
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99, !range !82, !noundef !83
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = getelementptr [2 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !961
  %i.bo = uitofp i16 %i.bn to float
  %i.bp = fmul nnan float %i.bo, f0x37800080
  %i.bq = getelementptr i8, ptr %i.bm, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !961
  %i.bs = uitofp i16 %i.br to float
  %i.bt = fmul nnan float %i.bs, f0x37800080
  %i.bu = fmul nnan float %i.bt, 7.151700e-01
  %i.bv = call float @llvm.fmuladd.f32(float %i.bp, float 2.126400e-01, float %i.bu)
  %i.bw = getelementptr i8, ptr %i.bm, i64 4
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !961
  %i.by = uitofp i16 %i.bx to float
  %i.bz = fmul nnan float %i.by, f0x37800080
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float 7.219000e-02, float %i.bv) ; 5 uses
  %i.cb = fcmp ogt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cc = fcmp ugt float %i.ca, 1.800000e-01
  br i1 %i.cc, label %bb.n, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cd = fadd float %i.ca, f0x3F0BB782
  %i.ce = fdiv float %i.cd, f0x3E3BEBCD
  %i.cf = call float @llvm.exp.f32(float %i.ce)   ; 2 uses
  %6 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.cf, i64 0
  %i.cg = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.cf, i64 1
  %7 = fsub <2 x float> %6, %i.cg
  %i.ch = fdiv <2 x float> %7, splat (float f0x438E2DCC) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0 ; 2 uses
  %i.cj = fcmp olt float %i.ci, 1.800000e-01
  %i.ck = extractelement <2 x float> %i.ch, i64 1
  %.0.i.i.i.i = select i1 %i.cj, float %i.ck, float %i.ci
  %i.cl = call float @llvm.fabs.f32(float %.0.i.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i:  ; preds = %bb.n, %bb.m
  %.010.i.i.i.i = phi float [ %i.cl, %bb.n ], [ %i.ca, %bb.m ]
  %i.cm = fdiv float %.010.i.i.i.i, %i.ca
  br label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i, %bb.l
  %i.cn = phi float [ %i.cm, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit.i.i.i ], [ 0.000000e+00, %bb.l ]
  %i.co = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.cp = icmp slt i32 %i.bj, %i.co
  br i1 %i.cp, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i

.lr.ph247.i.i.i:                                  ; preds = %bb.o, %bb.s
  %i.cq = phi i32 [ %i.dk, %bb.s ], [ %i.co, %bb.o ]
  %i.cr = phi ptr [ %i.dl, %bb.s ], [ %i.bk, %bb.o ] ; 2 uses
  %indvars.iv262.i.i.i = phi i64 [ %indvars.iv.next263.i.i.i, %bb.s ], [ %i.bl, %bb.o ] ; 5 uses
  %i.cs = icmp eq i64 %indvars.iv262.i.i.i, %sext260.i.i.i
  %i.ct = icmp eq i64 %indvars.iv262.i.i.i, %sext259.i.i.i
  %or.cond138.i.i.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond138.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph247.i.i.i
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %indvars.iv262.i.i.i
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !961
  %i.cw = uitofp i16 %i.cv to float
  %i.cx = fmul nnan float %i.cw, f0x37800080
  %i.cy = fmul float %i.cn, %i.cx
  %i.cz = load ptr, ptr %2, align 8, !tbaa !906
  %i.da = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %.noexc.i.i.i unwind label %bb.t

.noexc.i.i.i:                                     ; preds = %bb.p
  %i.db = icmp eq i32 %i.da, 3
  br i1 %i.db, label %bb.q, label %bb.r, !prof !48

bb.q:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.dc = load ptr, ptr %i.ad, align 8, !tbaa !914 ; 2 uses
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %indvars.iv262.i.i.i
  %i.de = fmul float %i.cy, 6.553500e+04          ; 2 uses
  %i.df = fcmp olt float %i.de, 0.000000e+00
  %i.dg = select i1 %i.df, float -5.000000e-01, float 5.000000e-01
  %i.dh = fadd float %i.de, %i.dg                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.dh, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.dh, float 0.000000e+00 ; 2 uses
  %i.di = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.di, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.dj = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !961
  %.pre267.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph247.i.i.i
  %i.dk = phi i32 [ %i.cq, %.lr.ph247.i.i.i ], [ %.pre267.i.i.i, %bb.r ] ; 2 uses
  %i.dl = phi ptr [ %i.cr, %.lr.ph247.i.i.i ], [ %i.dc, %bb.r ]
  %indvars.iv.next263.i.i.i = add nsw i64 %indvars.iv262.i.i.i, 1 ; 2 uses
  %i.dm = sext i32 %i.dk to i64
  %i.dn = icmp slt i64 %indvars.iv.next263.i.i.i, %i.dm
  br i1 %i.dn, label %.lr.ph247.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1404

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.dp = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.dq = icmp slt i32 %i.bj, %i.dp
  br i1 %i.dq, label %.lr.ph245.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph245.preheader.i.i.i:                        ; preds = %bb.u
  %i.dr = sext i32 %i.bj to i64
  br label %.lr.ph245.i.i.i

.lr.ph245.i.i.i:                                  ; preds = %bb.z, %.lr.ph245.preheader.i.i.i
  %i.ds = phi i32 [ %i.dp, %.lr.ph245.preheader.i.i.i ], [ %i.et, %bb.z ]
  %indvars.iv257.i.i.i = phi i64 [ %i.dr, %.lr.ph245.preheader.i.i.i ], [ %indvars.iv.next258.i.i.i, %bb.z ] ; 5 uses
  %i.dt = icmp eq i64 %indvars.iv257.i.i.i, %sext260.i.i.i
  %i.du = icmp eq i64 %indvars.iv257.i.i.i, %sext259.i.i.i
  %or.cond139.i.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond139.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph245.i.i.i
  %i.dv = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %indvars.iv257.i.i.i
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !961
  %i.dy = uitofp i16 %i.dx to float
  %i.dz = fmul nnan float %i.dy, f0x37800080      ; 3 uses
  %i.ea = fcmp ugt float %i.dz, 1.800000e-01
  br i1 %i.ea, label %bb.w, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eb = fadd float %i.dz, f0x3F0BB782
  %i.ec = fdiv float %i.eb, f0x3E3BEBCD
  %i.ed = call float @llvm.exp.f32(float %i.ec)   ; 2 uses
  %8 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.ed, i64 0
  %i.ee = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ed, i64 1
  %9 = fsub <2 x float> %8, %i.ee
  %i.ef = fdiv <2 x float> %9, splat (float f0x438E2DCC) ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.eh = fcmp olt float %i.eg, 1.800000e-01
  %i.ei = extractelement <2 x float> %i.ef, i64 1
  %.0.i154.i.i.i = select i1 %i.eh, float %i.ei, float %i.eg
  %i.ej = call float @llvm.fabs.f32(float %.0.i154.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i: ; preds = %bb.w, %bb.v
  %.010.i153.i.i.i = phi float [ %i.ej, %bb.w ], [ %i.dz, %bb.v ]
  %i.ek = load ptr, ptr %2, align 8, !tbaa !906
  %i.el = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
          to label %.noexc161.i.i.i unwind label %bb.aa

.noexc161.i.i.i:                                  ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.em = icmp eq i32 %i.el, 3
  br i1 %i.em, label %bb.x, label %bb.y, !prof !48

bb.x:                                             ; preds = %.noexc161.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %.noexc161.i.i.i
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.en, i64 %indvars.iv257.i.i.i
  %i.ep = fmul float %.010.i153.i.i.i, 6.553500e+04
  %i.eq = fadd float %i.ep, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i158.i.i.i = fcmp oge float %i.eq, 0.000000e+00
  %.0.i.i.i.i.i.i159.i.i.i = select i1 %.inv.i.i.i.i.i158.i.i.i, float %i.eq, float 0.000000e+00 ; 2 uses
  %i.er = fcmp ogt float %.0.i.i.i.i.i.i159.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i160.i.i.i = select i1 %i.er, float 6.553500e+04, float %.0.i.i.i.i.i.i159.i.i.i
  %i.es = fptoui float %.1.i.i.i.i.i.i160.i.i.i to i16
  store i16 %i.es, ptr %i.eo, align 2, !tbaa !961
  %.pre.i.i.i = load i32, ptr %i.g, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph245.i.i.i
  %i.et = phi i32 [ %i.ds, %.lr.ph245.i.i.i ], [ %.pre.i.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next258.i.i.i = add nsw i64 %indvars.iv257.i.i.i, 1 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next258.i.i.i, %i.eu
  br i1 %i.ev, label %.lr.ph245.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1405

bb.aa:                                            ; preds = %bb.x, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit155.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.i.i.i:                                  ; preds = %bb.z, %bb.s, %bb.u, %bb.o
  %i.ex = load i32, ptr %i.w, align 4, !tbaa !901
  %i.ey = add nsw i32 %i.ex, 1                    ; 7 uses
  store i32 %i.ey, ptr %i.w, align 4, !tbaa !901
  %i.ez = load i32, ptr %i.ae, align 8, !tbaa !910
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %.loopexit.i.i.i
  %i.fb = load i8, ptr %i.ag, align 1, !tbaa !911, !range !82, !noundef !83
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ac, label %._crit_edge.i21.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ab
  %.pre.i23.i.i = load i32, ptr %i.y, align 8, !tbaa !902
  %.pre38.i.i = load i32, ptr %i.aa, align 4, !tbaa !903
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.fd = load i8, ptr %i.ah, align 1, !tbaa !912, !range !82, !noundef !83
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.fg = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.ff
  store ptr %i.fh, ptr %i.ad, align 8, !tbaa !914
  %i.fi = load i32, ptr %i.ak, align 8, !tbaa !915
  %.not.i.i26.i.i = icmp slt i32 %i.ey, %i.fi
  br i1 %.not.i.i26.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.fj = load i8, ptr %i.ai, align 2, !tbaa !916, !range !82, !noundef !83
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = load i64, ptr %i.aj, align 8, !tbaa !913
  %i.fm = load ptr, ptr %i.ad, align 8, !tbaa !914
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fl
  store ptr %i.fn, ptr %i.ad, align 8, !tbaa !914
  %i.fo = load i32, ptr %i.ak, align 8, !tbaa !915
  %i.fp = icmp slt i32 %i.ey, %i.fo               ; 3 uses
  %i.fq = load i32, ptr %i.al, align 4
  %i.fr = icmp sge i32 %i.ey, %i.fq
  %not..i.i24.i.i = xor i1 %i.fp, true
  %or.cond.i.i25.i.i = select i1 %not..i.i24.i.i, i1 true, i1 %i.fr, !prof !917
  %i.fs = load ptr, ptr %i.am, align 8
  %i.ft = icmp eq ptr %i.fs, null
  %i.fu = select i1 %or.cond.i.i25.i.i, i1 true, i1 %i.ft, !prof !917
  br i1 %i.fu, label %bb.ah, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge, !prof !48

bb.ah:                                            ; preds = %bb.ag
  %i.fv = load ptr, ptr %2, align 8, !tbaa !906
  %i.fw = load i32, ptr %i.y, align 8, !tbaa !902
  %i.fx = load i32, ptr %i.aa, align 4, !tbaa !903
  %i.fy = load i32, ptr %i.ar, align 8, !tbaa !918
  %i.fz = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i32 noundef %i.ey, i32 noundef %i.fw, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i1 noundef zeroext %i.fp, i32 noundef %i.fy)
          to label %.noexc28.i.i unwind label %bb.am

.noexc28.i.i:                                     ; preds = %bb.ah
  %i.ga = zext i1 %i.fp to i8
  store ptr %i.fz, ptr %i.ad, align 8, !tbaa !914
  store i8 %i.ga, ptr %i.ag, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.ai:                                            ; preds = %.loopexit.i.i.i
  %i.gb = load i32, ptr %i.x, align 4, !tbaa !904 ; 3 uses
  store i32 %i.gb, ptr %i.w, align 4, !tbaa !901
  %i.gc = load i32, ptr %i.y, align 8, !tbaa !902
  %i.gd = add nsw i32 %i.gc, 1                    ; 3 uses
  store i32 %i.gd, ptr %i.y, align 8, !tbaa !902
  %i.ge = load i32, ptr %i.af, align 8, !tbaa !919
  %.not.i19.i.i = icmp slt i32 %i.gd, %i.ge
  %.pre39.i.i = load i32, ptr %i.aa, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gf = load i32, ptr %i.z, align 4, !tbaa !920 ; 2 uses
  store i32 %i.gf, ptr %i.y, align 8, !tbaa !902
  %i.gg = add nsw i32 %.pre39.i.i, 1              ; 3 uses
  store i32 %i.gg, ptr %i.aa, align 4, !tbaa !903
  %i.gh = load i32, ptr %i.ab, align 8, !tbaa !921
  %.not1.i20.i.i = icmp slt i32 %i.gg, %i.gh
  br i1 %.not1.i20.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.v, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i21.i.i
  %i.gi = phi i32 [ %.pre39.i.i, %bb.ai ], [ %i.gg, %bb.aj ], [ %.pre38.i.i, %._crit_edge.i21.i.i ]
  %i.gj = phi i32 [ %i.gd, %bb.ai ], [ %i.gf, %bb.aj ], [ %.pre.i23.i.i, %._crit_edge.i21.i.i ]
  %i.gk = phi i32 [ %i.gb, %bb.ai ], [ %i.gb, %bb.aj ], [ %i.ey, %._crit_edge.i21.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gk, i32 noundef %i.gj, i32 noundef %i.gi)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge unwind label %bb.am

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i.backedge: ; preds = %bb.al, %bb.ak, %.noexc28.i.i, %bb.ag, %bb.af, %bb.ae, %bb.ad
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit30.i.i

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ae
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.t
  %.pn129.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.t ], [ %i.gl, %bb.am ], [ %i.ew, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.cv

bb.ao:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.gm = load ptr, ptr %i.r, align 8, !tbaa !1403, !nonnull !83, !align !417
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.aw

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 9 uses
  %sext.i.i.i = sext i32 %i.f to i64              ; 2 uses
  %sext250.i.i.i = sext i32 %i.d to i64           ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.ig = load i8, ptr %i.gn, align 8, !tbaa !897, !range !82, !noundef !83
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.ap, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ii = load i32, ptr %i.go, align 4, !tbaa !901
  %i.ij = load i32, ptr %i.gp, align 4, !tbaa !904
  %i.ik = icmp eq i32 %i.ii, %i.ij
  br i1 %i.ik, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.il = load i32, ptr %i.gq, align 8, !tbaa !902
  %i.im = load i32, ptr %i.gr, align 4, !tbaa !920
  %i.in = icmp eq i32 %i.il, %i.im
  br i1 %i.in, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i: ; preds = %bb.aq
  %i.io = load i32, ptr %i.gs, align 4, !tbaa !903
  %i.ip = load i32, ptr %i.gt, align 8, !tbaa !921
  %i.iq = icmp eq i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.ar, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i
  %i.ir = load ptr, ptr %i.hf, align 8, !tbaa !905
  %.not.i166.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i166.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.iu = load ptr, ptr %i.ia, align 8, !tbaa !905
  %.not.i168.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i168.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #34
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit169.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit167.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L12rangeexpand_IttEEbRNS1_8ImageBufERKS3_bNS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.aw:                                            ; preds = %bb.ao
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.i.i.i, %bb.aq, %bb.ap, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.iy = load ptr, ptr %i.gu, align 8, !tbaa !1402, !nonnull !83
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !99, !range !82, !noundef !83
  %i.ja = trunc nuw i8 %i.iz to i1
  %i.jb = load i32, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  br i1 %i.ja, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.jc = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.jd = sext i32 %i.jb to i64                   ; 2 uses
  %i.je = getelementptr [2 x i8], ptr %i.jc, i64 %i.jd ; 3 uses
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !961
  %i.jg = uitofp i16 %i.jf to float
  %i.jh = fmul nnan float %i.jg, f0x37800080
  %i.ji = getelementptr i8, ptr %i.je, i64 2
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !961
  %i.jk = uitofp i16 %i.jj to float
  %i.jl = fmul nnan float %i.jk, f0x37800080
  %i.jm = getelementptr i8, ptr %i.je, i64 4
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !961
  %i.jo = uitofp i16 %i.jn to float
  %i.jp = fmul nnan float %i.jo, f0x37800080
  %i.jq = fmul nnan float %i.jl, 7.151700e-01
  %i.jr = call float @llvm.fmuladd.f32(float %i.jh, float 2.126400e-01, float %i.jq)
  %i.js = call float @llvm.fmuladd.f32(float %i.jp, float 7.219000e-02, float %i.jr) ; 5 uses
  %i.jt = fcmp ogt float %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ju = fcmp ugt float %i.js, 1.800000e-01
  br i1 %i.ju, label %bb.az, label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jv = fadd float %i.js, f0x3F0BB782
  %i.jw = fdiv float %i.jv, f0x3E3BEBCD
  %i.jx = call float @llvm.exp.f32(float %i.jw)   ; 2 uses
  %10 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.jx, i64 0
  %i.jy = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.jx, i64 1
  %11 = fsub <2 x float> %10, %i.jy
  %i.jz = fdiv <2 x float> %11, splat (float f0x438E2DCC) ; 2 uses
  %i.ka = extractelement <2 x float> %i.jz, i64 0 ; 2 uses
  %i.kb = fcmp olt float %i.ka, 1.800000e-01
  %i.kc = extractelement <2 x float> %i.jz, i64 1
  %.0.i171.i.i.i = select i1 %i.kb, float %i.kc, float %i.ka
  %i.kd = call float @llvm.fabs.f32(float %.0.i171.i.i.i)
  br label %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i

_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i: ; preds = %bb.az, %bb.ay
  %.010.i170.i.i.i = phi float [ %i.kd, %bb.az ], [ %i.js, %bb.ay ]
  %i.ke = fdiv float %.010.i170.i.i.i, %i.js
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i, %bb.ax
  %i.kf = phi float [ %i.ke, %_ZN11OpenImageIO4v3_111rangeexpandEf.exit172.i.i.i ], [ 0.000000e+00, %bb.ax ]
  %i.kg = load i32, ptr %i.g, align 4, !tbaa !20
  %i.kh = icmp slt i32 %i.jb, %i.kg
  br i1 %i.kh, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i

.lr.ph243.i.i.i:                                  ; preds = %bb.ba, %bb.bj
  %indvars.iv252.i.i.i = phi i64 [ %indvars.iv.next253.i.i.i, %bb.bj ], [ %i.jd, %bb.ba ] ; 6 uses
  %i.ki = icmp eq i64 %indvars.iv252.i.i.i, %sext250.i.i.i
  %i.kj = icmp eq i64 %indvars.iv252.i.i.i, %sext.i.i.i
  %or.cond140.i.i.i = select i1 %i.ki, i1 true, i1 %i.kj
  %i.kk = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.kl = getelementptr inbounds [2 x i8], ptr %i.kk, i64 %indvars.iv252.i.i.i
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !961
  %i.kn = uitofp i16 %i.km to float
  %i.ko = fmul nnan float %i.kn, f0x37800080      ; 2 uses
  br i1 %or.cond140.i.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.lr.ph243.i.i.i
  %i.kp = load ptr, ptr %4, align 8, !tbaa !906
  %i.kq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kp)
          to label %.noexc178.i.i.i unwind label %bb.be

.noexc178.i.i.i:                                  ; preds = %bb.bb
  %i.kr = icmp eq i32 %i.kq, 3
  br i1 %i.kr, label %bb.bc, label %bb.bd, !prof !48

bb.bc:                                            ; preds = %.noexc178.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc178.i.i.i
  %i.ks = load ptr, ptr %i.gw, align 8, !tbaa !914
  %i.kt = getelementptr inbounds [2 x i8], ptr %i.ks, i64 %indvars.iv252.i.i.i
  %i.ku = fmul nnan float %i.ko, 6.553500e+04
  %i.kv = fadd float %i.ku, 5.000000e-01          ; 2 uses
  %i.kw = fcmp ogt float %i.kv, 6.553500e+04
  %.1.i.i.i.i.i.i177.i.i.i = select i1 %i.kw, float 6.553500e+04, float %i.kv
  %i.kx = fptoui float %.1.i.i.i.i.i.i177.i.i.i to i16
  store i16 %i.kx, ptr %i.kt, align 2, !tbaa !961
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bf:                                            ; preds = %.lr.ph243.i.i.i
  %i.kz = fmul float %i.kf, %i.ko
  %i.la = load ptr, ptr %4, align 8, !tbaa !906
  %i.lb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.la)
          to label %.noexc186.i.i.i unwind label %bb.bi

.noexc186.i.i.i:                                  ; preds = %bb.bf
  %i.lc = icmp eq i32 %i.lb, 3
  br i1 %i.lc, label %bb.bg, label %bb.bh, !prof !48

bb.bg:                                            ; preds = %.noexc186.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %.noexc186.i.i.i
  %i.ld = load ptr, ptr %i.gw, align 8, !tbaa !914
  %i.le = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %indvars.iv252.i.i.i
  %i.lf = fmul float %i.kz, 6.553500e+04          ; 2 uses
  %i.lg = fcmp olt float %i.lf, 0.000000e+00
  %i.lh = select i1 %i.lg, float -5.000000e-01, float 5.000000e-01
  %i.li = fadd float %i.lf, %i.lh                 ; 2 uses
  %.inv.i.i.i.i.i183.i.i.i = fcmp oge float %i.li, 0.000000e+00
  %.0.i.i.i.i.i.i184.i.i.i = select i1 %.inv.i.i.i.i.i183.i.i.i, float %i.li, float 0.000000e+00 ; 2 uses
  %i.lj = fcmp ogt float %.0.i.i.i.i.i.i184.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i185.i.i.i = select i1 %i.lj, float 6.553500e+04, float %.0.i.i.i.i.i.i184.i.i.i
  %i.lk = fptoui float %.1.i.i.i.i.i.i185.i.i.i to i16
  store i16 %i.lk, ptr %i.le, align 2, !tbaa !961
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bj:                                            ; preds = %bb.bh, %bb.bd
  %indvars.iv.next253.i.i.i = add nsw i64 %indvars.iv252.i.i.i, 1 ; 2 uses
  %i.lm = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ln = sext i32 %i.lm to i64
  %i.lo = icmp slt i64 %indvars.iv.next253.i.i.i, %i.ln
  br i1 %i.lo, label %.lr.ph243.i.i.i, label %.loopexit239.i.i.i, !llvm.loop !1406

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit165.thread.i.i.i
  %i.lp = load i32, ptr %i.g, align 4, !tbaa !20
  %i.lq = icmp slt i32 %i.jb, %i.lp
  br i1 %i.lq, label %.lr.ph.preheader.i.i.i, label %.loopexit239.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bk
  %i.lr = sext i32 %i.jb to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.lr, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bv ] ; 6 uses
  %i.ls = icmp eq i64 %indvars.iv.i.i.i, %sext250.i.i.i
  %i.lt = icmp eq i64 %indvars.iv.i.i.i, %sext.i.i.i
  %or.cond141.i.i.i = select i1 %i.ls, i1 true, i1 %i.lt
  %i.lu = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.lu, i64 %indvars.iv.i.i.i
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !961
  %i.lx = uitofp i16 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x37800080      ; 4 uses
  br i1 %or.cond141.i.i.i, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.lz = load ptr, ptr %4, align 8, !tbaa !906
  %i.ma = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lz)
          to label %.noexc194.i.i.i unwind label %bb.bo

.noexc194.i.i.i:                                  ; preds = %bb.bl
  %i.mb = icmp eq i32 %i.ma, 3
  br i1 %i.mb, label %bb.bm, label %bb.bn, !prof !48

bb.bm:                                            ; preds = %.noexc194.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %.noexc194.i.i.i
  %i.mc = load ptr, ptr %i.gw, align 8, !tbaa !914
  %i.md = getelementptr inbounds [2 x i8], ptr %i.mc, i64 %indvars.iv.i.i.i
  %i.me = fmul nnan float %i.ly, 6.553500e+04
  %i.mf = fadd float %i.me, 5.000000e-01          ; 2 uses
  %i.mg = fcmp ogt float %i.mf, 6.553500e+04
  %.1.i.i.i.i.i.i193.i.i.i = select i1 %i.mg, float 6.553500e+04, float %i.mf
  %i.mh = fptoui float %.1.i.i.i.i.i.i193.i.i.i to i16
  store i16 %i.mh, ptr %i.md, align 2, !tbaa !961
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.mj = fcmp ugt float %i.ly, 1.800000e-01
  br i1 %i.mj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mk = fadd float %i.ly, f0x3F0BB782
  %i.ml = fdiv float %i.mk, f0x3E3BEBCD
  %i.mm = call float @llvm.exp.f32(float %i.ml)   ; 2 uses
  %12 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.mm, i64 0
  %i.mn = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.mm, i64 1
  %13 = fsub <2 x float> %12, %i.mn
  %i.mo = fdiv <2 x float> %13, splat (float f0x438E2DCC) ; 2 uses
  %i.mp = extractelement <2 x float> %i.mo, i64 0 ; 2 uses
  %i.mq = fcmp olt float %i.mp, 1.800000e-01
  %i.mr = extractelement <2 x float> %i.mo, i64 1
  %.0.i198.i.i.i = select i1 %i.mq, float %i.mr, float %i.mp
  %i.ms = call float @llvm.fabs.f32(float %.0.i198.i.i.i)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.010.i197.i.i.i = phi float [ %i.ms, %bb.bq ], [ %i.ly, %bb.bp ]
  %i.mt = load ptr, ptr %4, align 8, !tbaa !906
  %i.mu = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mt)
          to label %.noexc205.i.i.i unwind label %bb.bu

.noexc205.i.i.i:                                  ; preds = %bb.br
  %i.mv = icmp eq i32 %i.mu, 3
  br i1 %i.mv, label %bb.bs, label %bb.bt, !prof !48

bb.bs:                                            ; preds = %.noexc205.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.noexc205.i.i.i
  %i.mw = load ptr, ptr %i.gw, align 8, !tbaa !914
  %i.mx = getelementptr inbounds [2 x i8], ptr %i.mw, i64 %indvars.iv.i.i.i
  %i.my = fmul float %.010.i197.i.i.i, 6.553500e+04
  %i.mz = fadd float %i.my, 5.000000e-01          ; 2 uses
  %.inv.i.i.i.i.i202.i.i.i = fcmp oge float %i.mz, 0.000000e+00
  %.0.i.i.i.i.i.i203.i.i.i = select i1 %.inv.i.i.i.i.i202.i.i.i, float %i.mz, float 0.000000e+00 ; 2 uses
  %i.na = fcmp ogt float %.0.i.i.i.i.i.i203.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i204.i.i.i = select i1 %i.na, float 6.553500e+04, float %.0.i.i.i.i.i.i203.i.i.i
  %i.nb = fptoui float %.1.i.i.i.i.i.i204.i.i.i to i16
  store i16 %i.nb, ptr %i.mx, align 2, !tbaa !961
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bv:                                            ; preds = %bb.bt, %bb.bn
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.nd = load i32, ptr %i.g, align 4, !tbaa !20
  %i.ne = sext i32 %i.nd to i64
  %i.nf = icmp slt i64 %indvars.iv.next.i.i.i, %i.ne
  br i1 %i.nf, label %.lr.ph.i.i.i, label %.loopexit239.i.i.i, !llvm.loop !1407

.loopexit239.i.i.i:                               ; preds = %bb.bv, %bb.bj, %bb.bk, %bb.ba
  %i.ng = load i32, ptr %i.go, align 4, !tbaa !901
  %i.nh = add nsw i32 %i.ng, 1                    ; 7 uses
  store i32 %i.nh, ptr %i.go, align 4, !tbaa !901
  %i.ni = load i32, ptr %i.gx, align 8, !tbaa !910
  %i.nj = icmp slt i32 %i.nh, %i.ni
  br i1 %i.nj, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %.loopexit239.i.i.i
  %i.nk = load i8, ptr %i.gz, align 1, !tbaa !911, !range !82, !noundef !83
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %bb.bx, label %._crit_edge.i9.i.i

._crit_edge.i9.i.i:                               ; preds = %bb.bw
  %.pre.i11.i.i = load i32, ptr %i.gq, align 8, !tbaa !902
  %.pre.i.i = load i32, ptr %i.gs, align 4, !tbaa !903
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.nm = load i8, ptr %i.ha, align 1, !tbaa !912, !range !82, !noundef !83
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.no = load i64, ptr %i.hc, align 8, !tbaa !913
  %i.np = load ptr, ptr %i.gw, align 8, !tbaa !914
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 %i.no
  store ptr %i.nq, ptr %i.gw, align 8, !tbaa !914
  %i.nr = load i32, ptr %i.hd, align 8, !tbaa !915
  %.not.i.i14.i.i = icmp slt i32 %i.nh, %i.nr
  br i1 %.not.i.i14.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.bz, !prof !22

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.cs

bb.ca:                                            ; preds = %bb.bx
  %i.ns = load i8, ptr %i.hb, align 2, !tbaa !916, !range !82, !noundef !83
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nu = load i64, ptr %i.hc, align 8, !tbaa !913
  %i.nv = load ptr, ptr %i.gw, align 8, !tbaa !914
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 %i.nu
  store ptr %i.nw, ptr %i.gw, align 8, !tbaa !914
  %i.nx = load i32, ptr %i.hd, align 8, !tbaa !915
  %i.ny = icmp slt i32 %i.nh, %i.nx               ; 3 uses
  %i.nz = load i32, ptr %i.he, align 4
  %i.oa = icmp sge i32 %i.nh, %i.nz
  %not..i.i12.i.i = xor i1 %i.ny, true
  %or.cond.i.i13.i.i = select i1 %not..i.i12.i.i, i1 true, i1 %i.oa, !prof !917
  %i.ob = load ptr, ptr %i.hf, align 8
  %i.oc = icmp eq ptr %i.ob, null
  %i.od = select i1 %or.cond.i.i13.i.i, i1 true, i1 %i.oc, !prof !917
  br i1 %i.od, label %bb.cc, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i, !prof !48

bb.cc:                                            ; preds = %bb.cb
  %i.oe = load ptr, ptr %4, align 8, !tbaa !906
  %i.of = load i32, ptr %i.gq, align 8, !tbaa !902
  %i.og = load i32, ptr %i.gs, align 4, !tbaa !903
  %i.oh = load i32, ptr %i.hk, align 8, !tbaa !918
  %i.oi = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i32 noundef %i.nh, i32 noundef %i.of, i32 noundef %i.og, ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %i.hg, ptr noundef nonnull align 4 dereferenceable(4) %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %i.hi, ptr noundef nonnull align 4 dereferenceable(4) %i.he, ptr noundef nonnull align 1 dereferenceable(1) %i.hj, i1 noundef zeroext %i.ny, i32 noundef %i.oh)
          to label %.noexc16.i.i unwind label %bb.cs

.noexc16.i.i:                                     ; preds = %bb.cc
  %i.oj = zext i1 %i.ny to i8
  store ptr %i.oi, ptr %i.gw, align 8, !tbaa !914
  store i8 %i.oj, ptr %i.gz, align 1, !tbaa !911
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.cd:                                            ; preds = %.loopexit239.i.i.i
  %i.ok = load i32, ptr %i.gp, align 4, !tbaa !904 ; 3 uses
  store i32 %i.ok, ptr %i.go, align 4, !tbaa !901
  %i.ol = load i32, ptr %i.gq, align 8, !tbaa !902
  %i.om = add nsw i32 %i.ol, 1                    ; 3 uses
  store i32 %i.om, ptr %i.gq, align 8, !tbaa !902
  %i.on = load i32, ptr %i.gy, align 8, !tbaa !919
  %.not.i7.i.i = icmp slt i32 %i.om, %i.on
  %.pre35.i.i = load i32, ptr %i.gs, align 4, !tbaa !903 ; 2 uses
  br i1 %.not.i7.i.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oo = load i32, ptr %i.gr, align 4, !tbaa !920 ; 2 uses
  store i32 %i.oo, ptr %i.gq, align 8, !tbaa !902
  %i.op = add nsw i32 %.pre35.i.i, 1              ; 3 uses
  store i32 %i.op, ptr %i.gs, align 4, !tbaa !903
  %i.oq = load i32, ptr %i.gt, align 8, !tbaa !921
  %.not1.i8.i.i = icmp slt i32 %i.op, %i.oq
  br i1 %.not1.i8.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i8 0, ptr %i.gn, align 8, !tbaa !897
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge.i9.i.i
  %i.or = phi i32 [ %.pre35.i.i, %bb.cd ], [ %i.op, %bb.ce ], [ %.pre.i.i, %._crit_edge.i9.i.i ]
  %i.os = phi i32 [ %i.om, %bb.cd ], [ %i.oo, %bb.ce ], [ %.pre.i11.i.i, %._crit_edge.i9.i.i ]
  %i.ot = phi i32 [ %i.ok, %bb.cd ], [ %i.ok, %bb.ce ], [ %i.nh, %._crit_edge.i9.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %4, i32 noundef %i.ot, i32 noundef %i.os, i32 noundef %i.or)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i unwind label %bb.cs

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i: ; preds = %bb.cg, %bb.cf, %.noexc16.i.i, %bb.cb, %bb.ca, %bb.bz, %bb.by
  %i.ou = load i32, ptr %i.hl, align 4, !tbaa !901
  %i.ov = add nsw i32 %i.ou, 1                    ; 7 uses
  store i32 %i.ov, ptr %i.hl, align 4, !tbaa !901
  %i.ow = load i32, ptr %i.hm, align 8, !tbaa !910
  %i.ox = icmp slt i32 %i.ov, %i.ow
  br i1 %i.ox, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit18.i.i
  %i.oy = load i8, ptr %i.hu, align 1, !tbaa !911, !range !82, !noundef !83
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.ci, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ch
  %.pre.i3.i.i = load i32, ptr %i.ho, align 8, !tbaa !902
  %.pre36.i.i = load i32, ptr %i.hr, align 4, !tbaa !903
  br label %bb.cr

bb.ci:                                            ; preds = %bb.ch
  %i.pa = load i8, ptr %i.hv, align 1, !tbaa !912, !range !82, !noundef !83
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.pc = load i64, ptr %i.hx, align 8, !tbaa !913
  %i.pd = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 %i.pc
  store ptr %i.pe, ptr %i.gv, align 8, !tbaa !914
  %i.pf = load i32, ptr %i.hy, align 8, !tbaa !915
  %.not.i.i4.i.i = icmp slt i32 %i.ov, %i.pf
  br i1 %.not.i.i4.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ck, !prof !22

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.cs

bb.cl:                                            ; preds = %bb.ci
  %i.pg = load i8, ptr %i.hw, align 2, !tbaa !916, !range !82, !noundef !83
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pi = load i64, ptr %i.hx, align 8, !tbaa !913
  %i.pj = load ptr, ptr %i.gv, align 8, !tbaa !914
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 %i.pi
  store ptr %i.pk, ptr %i.gv, align 8, !tbaa !914
  %i.pl = load i32, ptr %i.hy, align 8, !tbaa !915
  %i.pm = icmp slt i32 %i.ov, %i.pl               ; 3 uses
  %i.pn = load i32, ptr %i.hz, align 4
  %i.po = icmp sge i32 %i.ov, %i.pn
  %not..i.i.i.i = xor i1 %i.pm, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.po, !prof !917
end_hunk_9
