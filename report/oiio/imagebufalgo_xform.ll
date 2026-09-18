Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_xform?download=true
inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfffEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !103
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfffEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !357
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !389
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !85, !align !264
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1292, !nonnull !85, !align !264
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !85, !align !264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.k = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.n = fdiv <2 x float> %i.l, %i.m
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !85, !align !264
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !85, !align !264
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !85, !align !264
  %i.u = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !1293, !nonnull !85, !align !264
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !104
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fdiv <2 x float> %i.z, %i.n
  %i.ab = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !105 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !201 ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %i.ag                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1291, !nonnull !85, !align !264
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1294, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1292, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.bd = sext i32 %i.ah to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ah
  %i.cc = load i8, ptr %i.aq, align 8, !tbaa !193, !range !84, !noundef !85
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !194
  %i.cf = load i32, ptr %i.as, align 4, !tbaa !196
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !195
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !371
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !197
  %i.cl = load i32, ptr %i.aw, align 8, !tbaa !198
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !1295, !nonnull !85, !align !259
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !359 ; 2 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !104
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !1296, !nonnull !85, !align !259
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !104
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !1297, !nonnull !85
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !113, !range !84, !noundef !85
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !1298, !nonnull !85
  %i.db = load i8, ptr %i.da, align 1, !tbaa !113, !range !84, !noundef !85
  %i.dc = trunc nuw i8 %i.cz to i1
  %i.dd = insertelement <2 x i1> poison, i1 %i.dc, i64 0
  %i.de = trunc nuw i8 %i.db to i1
  %i.df = insertelement <2 x i1> %i.dd, i1 %i.de, i64 1
  %i.dg = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cx, i64 1 ; 2 uses
  %i.di = fsub <2 x float> splat (float 1.000000e+00), %i.dh
  %i.dj = select <2 x i1> %i.df, <2 x float> %i.di, <2 x float> %i.dh
  %i.dk = fmul <2 x float> %i.dj, %i.m            ; 3 uses
  %i.dl = fsub <2 x float> %i.dk, %i.bc           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = call float @llvm.floor.f32(float %i.dm)
  %i.do = fptosi float %i.dn to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.do)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.q)
  %i.dp = extractelement <2 x float> %i.dl, i64 1
  %i.dq = call float @llvm.floor.f32(float %i.dp)
  %i.dr = fptosi float %i.dq to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.dr)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.u)
  %i.ds = fadd <2 x float> %i.dk, %i.bc           ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = call float @llvm.ceil.f32(float %i.dt)
  %i.dv = fptosi float %i.du to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dv)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.q)
  %i.dw = extractelement <2 x float> %i.ds, i64 1
  %i.dx = call float @llvm.ceil.f32(float %i.dw)
  %i.dy = fptosi float %i.dx to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.dy)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.u)
  %i.dz = add nsw i32 %.1.i88, 1
  %i.ea = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.dz, i32 noundef %.1.i85, i32 noundef %i.ea, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.al, i8 0, i64 %i.be, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.er, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ed = load i8, ptr %i.bf, align 8, !tbaa !193, !range !84, !noundef !85
  %i.ee = icmp eq i8 %i.ed, 0
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !194 ; 2 uses
  br i1 %i.ee, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre158 = load i32, ptr %i.bi, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.ef = load i32, ptr %i.bh, align 4, !tbaa !196
  %i.eg = icmp eq i32 %.pre, %i.ef
  %.pre159 = load i32, ptr %i.bi, align 8, !tbaa !195 ; 3 uses
  %i.eh = load i32, ptr %i.bj, align 4
  %i.ei = icmp eq i32 %.pre159, %i.eh
  %or.cond = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.ej = load i32, ptr %i.bk, align 4, !tbaa !197
  %i.ek = load i32, ptr %i.bl, align 8, !tbaa !198
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.y, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.em = phi i32 [ %.pre158, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre159, %bb.i ], [ %.pre159, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.en = load ptr, ptr %i.i, align 8, !tbaa !1293, !nonnull !85, !align !264
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !86 ; 2 uses
  %5 = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %6 = insertelement <2 x i32> %5, i32 %i.em, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = fsub <2 x float> %7, %i.dk
  %9 = fadd <2 x float> %8, splat (float 5.000000e-01) ; 2 uses
  %10 = load ptr, ptr %i.eo, align 8, !tbaa !64
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ep = load ptr, ptr %11, align 8
  %12 = extractelement <2 x float> %9, i64 0
  %13 = extractelement <2 x float> %9, i64 1
  %i.eq = invoke noundef float %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, float noundef %12, float noundef %13)
          to label %bb.j unwind label %bb.w       ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.er = fadd float %.062, %i.eq
  %i.es = load i32, ptr %i.af, align 8, !tbaa !201 ; 3 uses
  %i.et = load i32, ptr %i.ad, align 4, !tbaa !105 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.ev = load ptr, ptr %i.bm, align 8, !tbaa !359 ; 2 uses
  %i.ew = sext i32 %i.es to i64                   ; 3 uses
  %i.ex = sub i32 %i.et, %i.es                    ; 2 uses
  %wide.trip.count = zext i32 %i.ex to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ex, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.ey = add nsw i64 %n.vec, %i.ew
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ev, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !104
  %wide.load175 = load <4 x float>, ptr %i.ez, align 4, !tbaa !104
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load176 = load <4 x float>, ptr %i.fa, align 16, !tbaa !104
  %wide.load177 = load <4 x float>, ptr %i.fb, align 16, !tbaa !104
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load176)
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load175, <4 x float> %broadcast.splat, <4 x float> %wide.load177)
  store <4 x float> %i.fc, ptr %i.fa, align 16, !tbaa !104
  store <4 x float> %i.fd, ptr %i.fb, align 16, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !1285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv143.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ew, %.lr.ph ], [ %i.ey, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.ff = load i32, ptr %i.bg, align 4, !tbaa !194
  %i.fg = add nsw i32 %i.ff, 1                    ; 7 uses
  store i32 %i.fg, ptr %i.bg, align 4, !tbaa !194
  %i.fh = load i32, ptr %i.bn, align 8, !tbaa !362
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fj = load i8, ptr %i.bp, align 1, !tbaa !363, !range !84, !noundef !85
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bi, align 8, !tbaa !195
  %.pre160 = load i32, ptr %i.bk, align 4, !tbaa !197
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fl = load i8, ptr %i.bq, align 1, !tbaa !364, !range !84, !noundef !85
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fn = load i64, ptr %i.bs, align 8, !tbaa !365
  %i.fo = load ptr, ptr %i.bm, align 8, !tbaa !359
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fn
  store ptr %i.fp, ptr %i.bm, align 8, !tbaa !359
  %i.fq = load i32, ptr %i.bt, align 8, !tbaa !366
  %.not.i.i = icmp slt i32 %i.fg, %i.fq
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !108

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.x

bb.o:                                             ; preds = %bb.l
  %i.fr = load i8, ptr %i.br, align 2, !tbaa !367, !range !84, !noundef !85
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ft = load i64, ptr %i.bs, align 8, !tbaa !365
  %i.fu = load ptr, ptr %i.bm, align 8, !tbaa !359
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.ft
  store ptr %i.fv, ptr %i.bm, align 8, !tbaa !359
  %i.fw = load i32, ptr %i.bt, align 8, !tbaa !366
  %i.fx = icmp slt i32 %i.fg, %i.fw               ; 3 uses
  %i.fy = load i32, ptr %i.bu, align 4
  %i.fz = icmp sge i32 %i.fg, %i.fy
  %not..i.i = xor i1 %i.fx, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.fz, !prof !368
  %i.ga = load ptr, ptr %i.bv, align 8
  %i.gb = icmp eq ptr %i.ga, null
  %i.gc = select i1 %or.cond.i.i, i1 true, i1 %i.gb, !prof !368
  br i1 %i.gc, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !66

bb.q:                                             ; preds = %bb.p
  %i.gd = load ptr, ptr %2, align 8, !tbaa !199
  %i.ge = load i32, ptr %i.bi, align 8, !tbaa !195
  %i.gf = load i32, ptr %i.bk, align 4, !tbaa !197
  %i.gg = load i32, ptr %i.ca, align 8, !tbaa !369
  %i.gh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i32 noundef %i.fg, i32 noundef %i.ge, i32 noundef %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %i.bz, i1 noundef zeroext %i.fx, i32 noundef %i.gg)
          to label %.noexc94 unwind label %bb.x

.noexc94:                                         ; preds = %bb.q
  %i.gi = zext i1 %i.fx to i8
  store ptr %i.gh, ptr %i.bm, align 8, !tbaa !359
  store i8 %i.gi, ptr %i.bp, align 1, !tbaa !363
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge

bb.r:                                             ; preds = %._crit_edge
  %i.gj = load i32, ptr %i.bh, align 4, !tbaa !196 ; 3 uses
  store i32 %i.gj, ptr %i.bg, align 4, !tbaa !194
  %i.gk = load i32, ptr %i.bi, align 8, !tbaa !195
  %i.gl = add nsw i32 %i.gk, 1                    ; 3 uses
  store i32 %i.gl, ptr %i.bi, align 8, !tbaa !195
  %i.gm = load i32, ptr %i.bo, align 8, !tbaa !370
  %.not.i93 = icmp slt i32 %i.gl, %i.gm
  %.pre161 = load i32, ptr %i.bk, align 4, !tbaa !197 ; 2 uses
  br i1 %.not.i93, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gn = load i32, ptr %i.bj, align 4, !tbaa !371 ; 2 uses
  store i32 %i.gn, ptr %i.bi, align 8, !tbaa !195
  %i.go = add nsw i32 %.pre161, 1                 ; 3 uses
  store i32 %i.go, ptr %i.bk, align 4, !tbaa !197
  %i.gp = load i32, ptr %i.bl, align 8, !tbaa !198
  %.not1.i = icmp slt i32 %i.go, %i.gp
  br i1 %.not1.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.bf, align 8, !tbaa !193
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge

bb.u:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i
  %i.gq = phi i32 [ %.pre161, %bb.r ], [ %i.go, %bb.s ], [ %.pre160, %._crit_edge.i ]
  %i.gr = phi i32 [ %i.gl, %bb.r ], [ %i.gn, %bb.s ], [ %.pre.i, %._crit_edge.i ]
  %i.gs = phi i32 [ %i.gj, %bb.r ], [ %i.gj, %bb.s ], [ %i.fg, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gs, i32 noundef %i.gr, i32 noundef %i.gq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.x

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge: ; preds = %bb.u, %bb.n, %bb.m, %bb.o, %bb.p, %.noexc94, %bb.t
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.w:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %scalar.ph ], [ %indvars.iv143.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %indvars.iv
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !104
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv143 ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !104
  %i.gz = call float @llvm.fmuladd.f32(float %i.gw, float %i.eq, float %i.gy)
  store float %i.gz, ptr %i.gx, align 4, !tbaa !104
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1286

bb.x:                                             ; preds = %bb.u, %bb.q, %bb.n
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.y:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.hb = fcmp ogt float %.062, 0.000000e+00
  %i.hc = load i32, ptr %i.af, align 8, !tbaa !201 ; 3 uses
  %i.hd = load i32, ptr %i.ad, align 4, !tbaa !105
  %i.he = icmp slt i32 %i.hc, %i.hd               ; 2 uses
  br i1 %i.hb, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  br i1 %i.he, label %.lr.ph139.preheader, label %.loopexit

.lr.ph139.preheader:                              ; preds = %bb.z
  %i.hf = sext i32 %i.hc to i64
  br label %.lr.ph139

end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L8st_warp_IfffEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a

bb.ag:                                            ; preds = %bb.ae, %.lr.ph135
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit:                                        ; preds = %bb.af, %bb.ab, %bb.ad, %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.ai, !llvm.loop !1289

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !200
  %.not.i103 = icmp eq ptr %i.ie, null
  br i1 %.not.i103, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !200
  %.not.i104 = icmp eq ptr %i.ii, null
  br i1 %.not.i104, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105, label %bb.am

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.il = load ptr, ptr %i.bv, align 8, !tbaa !200
  %.not.i106 = icmp eq ptr %i.il, null
  br i1 %.not.i106, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107, label %bb.ao

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.aq:                                            ; preds = %bb.v, %bb.w, %bb.ag, %bb.ac, %bb.x, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ic, %bb.ai ], [ %i.gu, %bb.w ], [ %i.hr, %bb.ac ], [ %i.gt, %bb.v ], [ %i.ib, %bb.ag ], [ %i.ha, %bb.x ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !200
  %.not.i108 = icmp eq ptr %i.ip, null
  br i1 %.not.i108, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109: ; preds = %bb.ar, %bb.aq, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.g ], [ %.pn.pn.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn.pn.pn.pn.pn, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !200
  %.not.i110 = icmp eq ptr %i.it, null
  br i1 %.not.i110, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, label %bb.at

bb.at:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111: ; preds = %bb.at, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.f ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !200
  %.not.i112 = icmp eq ptr %i.ix, null
  br i1 %.not.i112, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113, label %bb.av

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !103
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !357
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !389
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1305, !nonnull !85, !align !264
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1306, !nonnull !85, !align !264
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1305, !nonnull !85, !align !264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.j = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %6 = sitofp <2 x i32> %i.j to <2 x float>
  %i.k = sitofp <2 x i32> %5 to <2 x float>       ; 2 uses
  %i.l = fdiv <2 x float> %6, %i.k
  %i.m = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1305, !nonnull !85, !align !264
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1305, !nonnull !85, !align !264
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1305, !nonnull !85, !align !264
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !1307, !nonnull !85, !align !264
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !104
  %i.x = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fdiv <2 x float> %i.x, %i.l
  %i.z = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !201 ; 2 uses
  %i.af = sub nsw i32 %i.ac, %i.ae                ; 2 uses
  %.not = icmp eq i32 %i.ac, %i.ae
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = alloca i8, i64 %i.ah, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aj = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1305, !nonnull !85, !align !264
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1308, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1306, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = sitofp <2 x i32> %i.aa to <2 x float>   ; 2 uses
  %i.bb = sext i32 %i.af to i64
  %i.bc = shl nsw i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ah
  %i.ca = load i8, ptr %i.ao, align 8, !tbaa !193, !range !84, !noundef !85
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.cc = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.cd = load i32, ptr %i.aq, align 4, !tbaa !196
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.cg = load i32, ptr %i.as, align 4, !tbaa !371
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ci = load i32, ptr %i.at, align 4, !tbaa !197
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !198
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !1309, !nonnull !85, !align !259
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !359 ; 2 uses
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !65
  %i.cr = load ptr, ptr %i.ax, align 8, !tbaa !1310, !nonnull !85, !align !259
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !48
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cn, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !65
  %i.cw = load ptr, ptr %i.ay, align 8, !tbaa !1311, !nonnull !85
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !113, !range !84, !noundef !85
  %i.cy = load ptr, ptr %i.az, align 8, !tbaa !1312, !nonnull !85
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !113, !range !84, !noundef !85
  %i.da = insertelement <2 x i8> poison, i8 %i.cq, i64 0
  %i.db = insertelement <2 x i8> %i.da, i8 %i.cv, i64 1
  %i.dc = uitofp <2 x i8> %i.db to <2 x float>
  %i.dd = fmul nnan <2 x float> %i.dc, splat (float f0x3B808081) ; 2 uses
  %i.de = trunc nuw i8 %i.cx to i1
  %i.df = insertelement <2 x i1> poison, i1 %i.de, i64 0
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> %i.df, i1 %i.dg, i64 1
  %i.di = fsub nnan <2 x float> splat (float 1.000000e+00), %i.dd
  %i.dj = select <2 x i1> %i.dh, <2 x float> %i.di, <2 x float> %i.dd
  %i.dk = fmul <2 x float> %i.dj, %i.k            ; 3 uses
  %i.dl = fsub <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = call float @llvm.floor.f32(float %i.dm)
  %i.do = fptosi float %i.dn to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.do)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.o)
  %i.dp = extractelement <2 x float> %i.dl, i64 1
  %i.dq = call float @llvm.floor.f32(float %i.dp)
  %i.dr = fptosi float %i.dq to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dr)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.s)
  %i.ds = fadd <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = call float @llvm.ceil.f32(float %i.dt)
  %i.dv = fptosi float %i.du to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.dv)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.o)
  %i.dw = extractelement <2 x float> %i.ds, i64 1
  %i.dx = call float @llvm.ceil.f32(float %i.dw)
  %i.dy = fptosi float %i.dx to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dy)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.s)
  %i.dz = add nsw i32 %.1.i88, 1
  %i.ea = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.dz, i32 noundef %.1.i85, i32 noundef %i.ea, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.aj, i8 0, i64 %i.bc, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ed = load i8, ptr %i.bd, align 8, !tbaa !193, !range !84, !noundef !85
  %i.ee = icmp eq i8 %i.ed, 0
  %.pre = load i32, ptr %i.be, align 4, !tbaa !194 ; 2 uses
  br i1 %i.ee, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre158 = load i32, ptr %i.bg, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.ef = load i32, ptr %i.bf, align 4, !tbaa !196
  %i.eg = icmp eq i32 %.pre, %i.ef
  %.pre159 = load i32, ptr %i.bg, align 8, !tbaa !195 ; 3 uses
  %i.eh = load i32, ptr %i.bh, align 4
  %i.ei = icmp eq i32 %.pre159, %i.eh
  %or.cond = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.ej = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.ek = load i32, ptr %i.bj, align 8, !tbaa !198
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.y, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.em = phi i32 [ %.pre158, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre159, %bb.i ], [ %.pre159, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.en = load ptr, ptr %i.i, align 8, !tbaa !1307, !nonnull !85, !align !264
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !86 ; 2 uses
  %i.ep = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = sitofp <2 x i32> %i.eq to <2 x float>
  %i.es = fsub <2 x float> %i.er, %i.dk
  %i.et = fadd <2 x float> %i.es, splat (float 5.000000e-01) ; 2 uses
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = extractelement <2 x float> %i.et, i64 0
  %i.ey = extractelement <2 x float> %i.et, i64 1
  %i.ez = invoke noundef float %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, float noundef %i.ex, float noundef %i.ey)
          to label %bb.j unwind label %bb.w       ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fa = fadd float %.062, %i.ez
  %i.fb = load i32, ptr %i.ad, align 8, !tbaa !201 ; 3 uses
  %i.fc = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fe = load ptr, ptr %i.bk, align 8, !tbaa !359 ; 2 uses
  %i.ff = sext i32 %i.fb to i64                   ; 3 uses
  %i.fg = sub i32 %i.fc, %i.fb                    ; 2 uses
  %wide.trip.count = zext i32 %i.fg to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fh = add nsw i64 %n.vec, %i.ff
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ez, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fe, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !65
  %wide.load175 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !65
  %i.fj = uitofp <4 x i8> %wide.load to <4 x float>
  %i.fk = uitofp <4 x i8> %wide.load175 to <4 x float>
  %i.fl = fmul nnan <4 x float> %i.fj, splat (float f0x3B808081)
  %i.fm = fmul nnan <4 x float> %i.fk, splat (float f0x3B808081)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load176 = load <4 x float>, ptr %i.fn, align 16, !tbaa !104
  %wide.load177 = load <4 x float>, ptr %i.fo, align 16, !tbaa !104
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %broadcast.splat, <4 x float> %wide.load176)
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %broadcast.splat, <4 x float> %wide.load177)
  store <4 x float> %i.fp, ptr %i.fn, align 16, !tbaa !104
  store <4 x float> %i.fq, ptr %i.fo, align 16, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv143.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ff, %.lr.ph ], [ %i.fh, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fs = load i32, ptr %i.be, align 4, !tbaa !194
  %i.ft = add nsw i32 %i.fs, 1                    ; 7 uses
  store i32 %i.ft, ptr %i.be, align 4, !tbaa !194
  %i.fu = load i32, ptr %i.bl, align 8, !tbaa !362
  %i.fv = icmp slt i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fw = load i8, ptr %i.bn, align 1, !tbaa !363, !range !84, !noundef !85
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bg, align 8, !tbaa !195
  %.pre160 = load i32, ptr %i.bi, align 4, !tbaa !197
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fy = load i8, ptr %i.bo, align 1, !tbaa !364, !range !84, !noundef !85
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ga = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gb = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ga
  store ptr %i.gc, ptr %i.bk, align 8, !tbaa !359
  %i.gd = load i32, ptr %i.br, align 8, !tbaa !366
  %.not.i.i = icmp slt i32 %i.ft, %i.gd
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !108

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.x

bb.o:                                             ; preds = %bb.l
  %i.ge = load i8, ptr %i.bp, align 2, !tbaa !367, !range !84, !noundef !85
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gg = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gh = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.gg
  store ptr %i.gi, ptr %i.bk, align 8, !tbaa !359
  %i.gj = load i32, ptr %i.br, align 8, !tbaa !366
  %i.gk = icmp slt i32 %i.ft, %i.gj               ; 3 uses
  %i.gl = load i32, ptr %i.bs, align 4
  %i.gm = icmp sge i32 %i.ft, %i.gl
  %not..i.i = xor i1 %i.gk, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.gm, !prof !368
  %i.gn = load ptr, ptr %i.bt, align 8
  %i.go = icmp eq ptr %i.gn, null
  %i.gp = select i1 %or.cond.i.i, i1 true, i1 %i.go, !prof !368
  br i1 %i.gp, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !66

bb.q:                                             ; preds = %bb.p
  %i.gq = load ptr, ptr %2, align 8, !tbaa !199
  %i.gr = load i32, ptr %i.bg, align 8, !tbaa !195
  %i.gs = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.gt = load i32, ptr %i.by, align 8, !tbaa !369
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a

bb.ag:                                            ; preds = %bb.ae, %.lr.ph135
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit:                                        ; preds = %bb.af, %bb.ab, %bb.ad, %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.ai, !llvm.loop !1303

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !200
  %.not.i103 = icmp eq ptr %i.it, null
  br i1 %.not.i103, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !200
  %.not.i104 = icmp eq ptr %i.ix, null
  br i1 %.not.i104, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105, label %bb.am

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ja = load ptr, ptr %i.bt, align 8, !tbaa !200
  %.not.i106 = icmp eq ptr %i.ja, null
  br i1 %.not.i106, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107, label %bb.ao

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.aq:                                            ; preds = %bb.v, %bb.w, %bb.ag, %bb.ac, %bb.x, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ir, %bb.ai ], [ %i.hh, %bb.w ], [ %i.ig, %bb.ac ], [ %i.hg, %bb.v ], [ %i.iq, %bb.ag ], [ %i.hp, %bb.x ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !200
  %.not.i108 = icmp eq ptr %i.je, null
  br i1 %.not.i108, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109: ; preds = %bb.ar, %bb.aq, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.g ], [ %.pn.pn.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn.pn.pn.pn.pn, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !200
  %.not.i110 = icmp eq ptr %i.ji, null
  br i1 %.not.i110, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, label %bb.at

bb.at:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111: ; preds = %bb.at, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.f ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !200
  %.not.i112 = icmp eq ptr %i.jm, null
  br i1 %.not.i112, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113, label %bb.av

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IhhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !103
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IhhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !357
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !389
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.116", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1319, !nonnull !85, !align !264
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1320, !nonnull !85, !align !264
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1319, !nonnull !85, !align !264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.j = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %6 = sitofp <2 x i32> %i.j to <2 x float>
  %i.k = sitofp <2 x i32> %5 to <2 x float>       ; 2 uses
  %i.l = fdiv <2 x float> %6, %i.k
  %i.m = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1319, !nonnull !85, !align !264
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1319, !nonnull !85, !align !264
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1319, !nonnull !85, !align !264
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !1321, !nonnull !85, !align !264
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !104
  %i.x = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fdiv <2 x float> %i.x, %i.l
  %i.z = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !201 ; 2 uses
  %i.af = sub nsw i32 %i.ac, %i.ae                ; 2 uses
  %.not = icmp eq i32 %i.ac, %i.ae
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = alloca i8, i64 %i.ah, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aj = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1319, !nonnull !85, !align !264
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1322, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1320, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = sitofp <2 x i32> %i.aa to <2 x float>   ; 2 uses
  %i.bb = sext i32 %i.af to i64
  %i.bc = shl nsw i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ah
  %i.ca = load i8, ptr %i.ao, align 8, !tbaa !193, !range !84, !noundef !85
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.cc = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.cd = load i32, ptr %i.aq, align 4, !tbaa !196
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.cg = load i32, ptr %i.as, align 4, !tbaa !371
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ci = load i32, ptr %i.at, align 4, !tbaa !197
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !198
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !1323, !nonnull !85, !align !259
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !359 ; 2 uses
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !65
  %i.cr = load ptr, ptr %i.ax, align 8, !tbaa !1324, !nonnull !85, !align !259
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !48
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cn, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !65
  %i.cw = load ptr, ptr %i.ay, align 8, !tbaa !1325, !nonnull !85
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !113, !range !84, !noundef !85
  %i.cy = load ptr, ptr %i.az, align 8, !tbaa !1326, !nonnull !85
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !113, !range !84, !noundef !85
  %i.da = insertelement <2 x i8> poison, i8 %i.cq, i64 0
  %i.db = insertelement <2 x i8> %i.da, i8 %i.cv, i64 1
  %i.dc = uitofp <2 x i8> %i.db to <2 x float>
  %i.dd = fmul nnan <2 x float> %i.dc, splat (float f0x3B808081) ; 2 uses
  %i.de = trunc nuw i8 %i.cx to i1
  %i.df = insertelement <2 x i1> poison, i1 %i.de, i64 0
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> %i.df, i1 %i.dg, i64 1
  %i.di = fsub nnan <2 x float> splat (float 1.000000e+00), %i.dd
  %i.dj = select <2 x i1> %i.dh, <2 x float> %i.di, <2 x float> %i.dd
  %i.dk = fmul <2 x float> %i.dj, %i.k            ; 3 uses
  %i.dl = fsub <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = call float @llvm.floor.f32(float %i.dm)
  %i.do = fptosi float %i.dn to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.do)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.o)
  %i.dp = extractelement <2 x float> %i.dl, i64 1
  %i.dq = call float @llvm.floor.f32(float %i.dp)
  %i.dr = fptosi float %i.dq to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dr)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.s)
  %i.ds = fadd <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = call float @llvm.ceil.f32(float %i.dt)
  %i.dv = fptosi float %i.du to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.dv)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.o)
  %i.dw = extractelement <2 x float> %i.ds, i64 1
  %i.dx = call float @llvm.ceil.f32(float %i.dw)
  %i.dy = fptosi float %i.dx to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dy)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.s)
  %i.dz = add nsw i32 %.1.i88, 1
  %i.ea = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.dz, i32 noundef %.1.i85, i32 noundef %i.ea, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.aj, i8 0, i64 %i.bc, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ed = load i8, ptr %i.bd, align 8, !tbaa !193, !range !84, !noundef !85
  %i.ee = icmp eq i8 %i.ed, 0
  %.pre = load i32, ptr %i.be, align 4, !tbaa !194 ; 2 uses
  br i1 %i.ee, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre158 = load i32, ptr %i.bg, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.ef = load i32, ptr %i.bf, align 4, !tbaa !196
  %i.eg = icmp eq i32 %.pre, %i.ef
  %.pre159 = load i32, ptr %i.bg, align 8, !tbaa !195 ; 3 uses
  %i.eh = load i32, ptr %i.bh, align 4
  %i.ei = icmp eq i32 %.pre159, %i.eh
  %or.cond = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.ej = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.ek = load i32, ptr %i.bj, align 8, !tbaa !198
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.y, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.em = phi i32 [ %.pre158, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre159, %bb.i ], [ %.pre159, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.en = load ptr, ptr %i.i, align 8, !tbaa !1321, !nonnull !85, !align !264
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !86 ; 2 uses
  %i.ep = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = sitofp <2 x i32> %i.eq to <2 x float>
  %i.es = fsub <2 x float> %i.er, %i.dk
  %i.et = fadd <2 x float> %i.es, splat (float 5.000000e-01) ; 2 uses
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = extractelement <2 x float> %i.et, i64 0
  %i.ey = extractelement <2 x float> %i.et, i64 1
  %i.ez = invoke noundef float %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, float noundef %i.ex, float noundef %i.ey)
          to label %bb.j unwind label %bb.w       ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fa = fadd float %.062, %i.ez
  %i.fb = load i32, ptr %i.ad, align 8, !tbaa !201 ; 3 uses
  %i.fc = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fe = load ptr, ptr %i.bk, align 8, !tbaa !359 ; 2 uses
  %i.ff = sext i32 %i.fb to i64                   ; 3 uses
  %i.fg = sub i32 %i.fc, %i.fb                    ; 2 uses
  %wide.trip.count = zext i32 %i.fg to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fh = add nsw i64 %n.vec, %i.ff
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ez, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fe, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !65
  %wide.load175 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !65
  %i.fj = uitofp <4 x i8> %wide.load to <4 x float>
  %i.fk = uitofp <4 x i8> %wide.load175 to <4 x float>
  %i.fl = fmul nnan <4 x float> %i.fj, splat (float f0x3B808081)
  %i.fm = fmul nnan <4 x float> %i.fk, splat (float f0x3B808081)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load176 = load <4 x float>, ptr %i.fn, align 16, !tbaa !104
  %wide.load177 = load <4 x float>, ptr %i.fo, align 16, !tbaa !104
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %broadcast.splat, <4 x float> %wide.load176)
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %broadcast.splat, <4 x float> %wide.load177)
  store <4 x float> %i.fp, ptr %i.fn, align 16, !tbaa !104
  store <4 x float> %i.fq, ptr %i.fo, align 16, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv143.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ff, %.lr.ph ], [ %i.fh, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fs = load i32, ptr %i.be, align 4, !tbaa !194
  %i.ft = add nsw i32 %i.fs, 1                    ; 7 uses
  store i32 %i.ft, ptr %i.be, align 4, !tbaa !194
  %i.fu = load i32, ptr %i.bl, align 8, !tbaa !362
  %i.fv = icmp slt i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fw = load i8, ptr %i.bn, align 1, !tbaa !363, !range !84, !noundef !85
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bg, align 8, !tbaa !195
  %.pre160 = load i32, ptr %i.bi, align 4, !tbaa !197
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fy = load i8, ptr %i.bo, align 1, !tbaa !364, !range !84, !noundef !85
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ga = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gb = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ga
  store ptr %i.gc, ptr %i.bk, align 8, !tbaa !359
  %i.gd = load i32, ptr %i.br, align 8, !tbaa !366
  %.not.i.i = icmp slt i32 %i.ft, %i.gd
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !108

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.x

bb.o:                                             ; preds = %bb.l
  %i.ge = load i8, ptr %i.bp, align 2, !tbaa !367, !range !84, !noundef !85
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gg = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gh = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.gg
  store ptr %i.gi, ptr %i.bk, align 8, !tbaa !359
  %i.gj = load i32, ptr %i.br, align 8, !tbaa !366
  %i.gk = icmp slt i32 %i.ft, %i.gj               ; 3 uses
  %i.gl = load i32, ptr %i.bs, align 4
  %i.gm = icmp sge i32 %i.ft, %i.gl
  %not..i.i = xor i1 %i.gk, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.gm, !prof !368
  %i.gn = load ptr, ptr %i.bt, align 8
  %i.go = icmp eq ptr %i.gn, null
  %i.gp = select i1 %or.cond.i.i, i1 true, i1 %i.go, !prof !368
  br i1 %i.gp, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !66

bb.q:                                             ; preds = %bb.p
  %i.gq = load ptr, ptr %2, align 8, !tbaa !199
  %i.gr = load i32, ptr %i.bg, align 8, !tbaa !195
  %i.gs = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.gt = load i32, ptr %i.by, align 8, !tbaa !369
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L8st_warp_IfN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_S7_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !104
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fdiv <2 x float> %i.z, %i.n
  %i.ab = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !105 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !201 ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %i.ag                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1333, !nonnull !85, !align !264
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1336, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.r

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1334, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.s

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.bd = sext i32 %i.ah to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.az
  %i.cc = load i8, ptr %i.aq, align 8, !tbaa !193, !range !84, !noundef !85
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !194
  %i.cf = load i32, ptr %i.as, align 4, !tbaa !196
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !195
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !371
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !197
  %i.cl = load i32, ptr %i.aw, align 8, !tbaa !198
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.bb, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !1337, !nonnull !85, !align !259
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !359 ; 2 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !374 ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 13
  %i.cv = and i32 %i.cu, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.cs to i32
  %i.cw = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.cx = icmp samesign ugt i32 %i.cv, 8388607
  br i1 %i.cx, label %bb.f, label %bb.i, !prof !108

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cy = or disjoint i32 %i.cv, %i.cw            ; 2 uses
  %i.cz = icmp samesign ult i32 %i.cv, 260046848
  br i1 %i.cz, label %bb.g, label %bb.h, !prof !108

bb.g:                                             ; preds = %bb.f
  %i.da = add nuw nsw i32 %i.cy, 939524096
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.db = or i32 %i.cy, 2139095040
  br label %bb.k

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %.not.i.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.cv, i1 true)
  %i.dd = add nsw i32 %i.dc, -8                   ; 2 uses
  %i.de = shl i32 %i.cv, %i.dd
  %i.df = or i32 %i.cw, %i.de
  %i.dg = or i32 %i.df, 947912704
  %i.dh = shl nuw nsw i32 %i.dd, 23
  %i.di = sub nuw i32 %i.dg, %i.dh
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.da, %bb.g ], [ %i.db, %bb.h ], [ %i.di, %bb.j ], [ %i.cw, %bb.i ]
  %i.dj = load ptr, ptr %i.az, align 8, !tbaa !1338, !nonnull !85, !align !259
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !48
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !374 ; 2 uses
  %i.do = zext i16 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 13
  %i.dq = and i32 %i.dp, 268427264                ; 6 uses
  %.signext.i.i.i.i.i92 = sext i16 %i.dn to i32
  %i.dr = and i32 %.signext.i.i.i.i.i92, -2147483648 ; 3 uses
  %i.ds = icmp samesign ugt i32 %i.dq, 8388607
  br i1 %i.ds, label %bb.l, label %bb.o, !prof !108

bb.l:                                             ; preds = %bb.k
  %i.dt = or disjoint i32 %i.dq, %i.dr            ; 2 uses
  %i.du = icmp samesign ult i32 %i.dq, 260046848
  br i1 %i.du, label %bb.m, label %bb.n, !prof !108

bb.m:                                             ; preds = %bb.l
  %i.dv = add nuw nsw i32 %i.dt, 939524096
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.dw = or i32 %i.dt, 2139095040
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %.not.i.i.i.i.i93 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i.i93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dq, i1 true)
  %i.dy = add nsw i32 %i.dx, -8                   ; 2 uses
  %i.dz = shl i32 %i.dq, %i.dy
  %i.ea = or i32 %i.dr, %i.dz
  %i.eb = or i32 %i.ea, 947912704
  %i.ec = shl nuw nsw i32 %i.dy, 23
  %i.ed = sub nuw i32 %i.eb, %i.ec
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i94 = phi i32 [ %i.dv, %bb.m ], [ %i.dw, %bb.n ], [ %i.ed, %bb.p ], [ %i.dr, %bb.o ]
  %i.ee = load ptr, ptr %i.ba, align 8, !tbaa !1339, !nonnull !85
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !113, !range !84, !noundef !85
  %i.eg = load ptr, ptr %i.bb, align 8, !tbaa !1340, !nonnull !85
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !113, !range !84, !noundef !85
  %i.ei = trunc nuw i8 %i.ef to i1
  %i.ej = insertelement <2 x i1> poison, i1 %i.ei, i64 0
  %i.ek = trunc nuw i8 %i.eh to i1
  %i.el = insertelement <2 x i1> %i.ej, i1 %i.ek, i64 1
  %i.em = insertelement <2 x i32> poison, i32 %.sroa.0.0.i.i.i.i.i, i64 0
  %i.en = insertelement <2 x i32> %i.em, i32 %.sroa.0.0.i.i.i.i.i94, i64 1
  %i.eo = bitcast <2 x i32> %i.en to <2 x float>  ; 2 uses
  %i.ep = fsub <2 x float> splat (float 1.000000e+00), %i.eo
  %i.eq = select <2 x i1> %i.el, <2 x float> %i.ep, <2 x float> %i.eo
  %i.er = fmul <2 x float> %i.eq, %i.m            ; 3 uses
  %i.es = fsub <2 x float> %i.er, %i.bc           ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = call float @llvm.floor.f32(float %i.et)
  %i.ev = fptosi float %i.eu to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.ev)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.q)
  %i.ew = extractelement <2 x float> %i.es, i64 1
  %i.ex = call float @llvm.floor.f32(float %i.ew)
  %i.ey = fptosi float %i.ex to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ey)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.u)
  %i.ez = fadd <2 x float> %i.er, %i.bc           ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = call float @llvm.ceil.f32(float %i.fa)
  %i.fc = fptosi float %i.fb to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.fc)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.q)
  %i.fd = extractelement <2 x float> %i.ez, i64 1
  %i.fe = call float @llvm.ceil.f32(float %i.fd)
  %i.ff = fptosi float %i.fe to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ff)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.u)
  %i.fg = add nsw i32 %.1.i88, 1
  %i.fh = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.fg, i32 noundef %.1.i85, i32 noundef %i.fh, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.t unwind label %bb.ah

bb.r:                                             ; preds = %bb.c
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit119

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit117

bb.t:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 16 %i.al, i8 0, i64 %i.be, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.t
  %.062 = phi float [ 0.000000e+00, %bb.t ], [ %i.fy, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.fk = load i8, ptr %i.bf, align 8, !tbaa !193, !range !84, !noundef !85
  %i.fl = icmp eq i8 %i.fk, 0
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !194 ; 2 uses
  br i1 %i.fl, label %bb.u, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre166 = load i32, ptr %i.bi, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.fm = load i32, ptr %i.bh, align 4, !tbaa !196
  %i.fn = icmp eq i32 %.pre, %i.fm
  %.pre167 = load i32, ptr %i.bi, align 8, !tbaa !195 ; 3 uses
  %i.fo = load i32, ptr %i.bj, align 4
  %i.fp = icmp eq i32 %.pre167, %i.fo
  %or.cond = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96: ; preds = %bb.u
  %i.fq = load i32, ptr %i.bk, align 4, !tbaa !197
  %i.fr = load i32, ptr %i.bl, align 8, !tbaa !198
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge, %bb.u, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96
  %i.ft = phi i32 [ %.pre166, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge ], [ %.pre167, %bb.u ], [ %.pre167, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96 ]
  %i.fu = load ptr, ptr %i.i, align 8, !tbaa !1335, !nonnull !85, !align !264
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !86 ; 2 uses
  %5 = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %6 = insertelement <2 x i32> %5, i32 %i.ft, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = fsub <2 x float> %7, %i.er
  %9 = fadd <2 x float> %8, splat (float 5.000000e-01) ; 2 uses
  %10 = load ptr, ptr %i.fv, align 8, !tbaa !64
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fw = load ptr, ptr %11, align 8
  %12 = extractelement <2 x float> %9, i64 0
  %13 = extractelement <2 x float> %9, i64 1
  %i.fx = invoke noundef float %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, float noundef %12, float noundef %13)
          to label %bb.v unwind label %bb.ai      ; 3 uses

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread
  %i.fy = fadd float %.062, %i.fx
  %i.fz = load i32, ptr %i.af, align 8, !tbaa !201 ; 3 uses
  %i.ga = load i32, ptr %i.ad, align 4, !tbaa !105 ; 2 uses
  %i.gb = icmp slt i32 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.gc = load ptr, ptr %i.bm, align 8, !tbaa !359 ; 2 uses
  %i.gd = sext i32 %i.fz to i64                   ; 3 uses
  %i.ge = sub i32 %i.ga, %i.fz                    ; 2 uses
  %wide.trip.count = zext i32 %i.ge to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ge, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.gf = add nsw i64 %n.vec, %i.gd
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %i.gc, i64 %i.gd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i16>, ptr %gep, align 2, !tbaa !374 ; 2 uses
  %i.gg = zext <4 x i16> %wide.load to <4 x i32>
  %i.gh = shl nuw nsw <4 x i32> %i.gg, splat (i32 13)
  %i.gi = and <4 x i32> %i.gh, splat (i32 268427264) ; 6 uses
  %i.gj = sext <4 x i16> %wide.load to <4 x i32>
  %i.gk = and <4 x i32> %i.gj, splat (i32 -2147483648) ; 3 uses
  %i.gl = icmp eq <4 x i32> %i.gi, zeroinitializer
  %i.gm = call range(i32 4, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.gi, i1 true)
  %i.gn = add nsw <4 x i32> %i.gm, splat (i32 -8) ; 2 uses
  %i.go = shl <4 x i32> %i.gi, %i.gn
  %i.gp = or <4 x i32> %i.gk, %i.go
  %i.gq = or <4 x i32> %i.gp, splat (i32 947912704)
  %i.gr = shl nuw nsw <4 x i32> %i.gn, splat (i32 23)
  %i.gs = sub nuw <4 x i32> %i.gq, %i.gr
  %i.gt = or disjoint <4 x i32> %i.gi, %i.gk      ; 2 uses
  %i.gu = icmp samesign ugt <4 x i32> %i.gi, splat (i32 260046847)
  %i.gv = or <4 x i32> %i.gt, splat (i32 2139095040)
  %i.gw = add nsw <4 x i32> %i.gi, splat (i32 -8388608)
  %i.gx = icmp ult <4 x i32> %i.gw, splat (i32 251658240)
  %i.gy = add nuw nsw <4 x i32> %i.gt, splat (i32 939524096)
  %predphi = select <4 x i1> %i.gl, <4 x i32> %i.gk, <4 x i32> %i.gs
  %predphi188 = select <4 x i1> %i.gu, <4 x i32> %i.gv, <4 x i32> %predphi
  %predphi189 = select <4 x i1> %i.gx, <4 x i32> %i.gy, <4 x i32> %predphi188
  %i.gz = bitcast <4 x i32> %predphi189 to <4 x float>
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %wide.load190 = load <4 x float>, ptr %i.ha, align 16, !tbaa !104
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %broadcast.splat, <4 x float> %wide.load190)
  store <4 x float> %i.hb, ptr %i.ha, align 16, !tbaa !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !1327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv151.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.gd, %.lr.ph ], [ %i.gf, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %bb.ao, %middle.block, %bb.v
  %i.hd = load i32, ptr %i.bg, align 4, !tbaa !194
  %i.he = add nsw i32 %i.hd, 1                    ; 7 uses
  store i32 %i.he, ptr %i.bg, align 4, !tbaa !194
  %i.hf = load i32, ptr %i.bn, align 8, !tbaa !362
  %i.hg = icmp slt i32 %i.he, %i.hf
  br i1 %i.hg, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %._crit_edge
  %i.hh = load i8, ptr %i.bp, align 1, !tbaa !363, !range !84, !noundef !85
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.x, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load i32, ptr %i.bi, align 8, !tbaa !195
  %.pre168 = load i32, ptr %i.bk, align 4, !tbaa !197
  br label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.hj = load i8, ptr %i.bq, align 1, !tbaa !364, !range !84, !noundef !85
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hl = load i64, ptr %i.bs, align 8, !tbaa !365
  %i.hm = load ptr, ptr %i.bm, align 8, !tbaa !359
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hl
  store ptr %i.hn, ptr %i.bm, align 8, !tbaa !359
  %i.ho = load i32, ptr %i.bt, align 8, !tbaa !366
  %.not.i.i = icmp slt i32 %i.he, %i.ho
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.z, !prof !108

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.ap

bb.aa:                                            ; preds = %bb.x
  %i.hp = load i8, ptr %i.br, align 2, !tbaa !367, !range !84, !noundef !85
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hr = load i64, ptr %i.bs, align 8, !tbaa !365
  %i.hs = load ptr, ptr %i.bm, align 8, !tbaa !359
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 %i.hr
  store ptr %i.ht, ptr %i.bm, align 8, !tbaa !359
  %i.hu = load i32, ptr %i.bt, align 8, !tbaa !366
  %i.hv = icmp slt i32 %i.he, %i.hu               ; 3 uses
  %i.hw = load i32, ptr %i.bu, align 4
  %i.hx = icmp sge i32 %i.he, %i.hw
  %not..i.i = xor i1 %i.hv, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.hx, !prof !368
  %i.hy = load ptr, ptr %i.bv, align 8
  %i.hz = icmp eq ptr %i.hy, null
  %i.ia = select i1 %or.cond.i.i, i1 true, i1 %i.hz, !prof !368
  br i1 %i.ia, label %bb.ac, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !66

bb.ac:                                            ; preds = %bb.ab
  %i.ib = load ptr, ptr %2, align 8, !tbaa !199
  %i.ic = load i32, ptr %i.bi, align 8, !tbaa !195
  %i.id = load i32, ptr %i.bk, align 4, !tbaa !197
  %i.ie = load i32, ptr %i.ca, align 8, !tbaa !369
  %i.if = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i32 noundef %i.he, i32 noundef %i.ic, i32 noundef %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %i.bz, i1 noundef zeroext %i.hv, i32 noundef %i.ie)
          to label %.noexc98 unwind label %bb.ap

.noexc98:                                         ; preds = %bb.ac
  %i.ig = zext i1 %i.hv to i8
  store ptr %i.if, ptr %i.bm, align 8, !tbaa !359
  store i8 %i.ig, ptr %i.bp, align 1, !tbaa !363
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge

bb.ad:                                            ; preds = %._crit_edge
  %i.ih = load i32, ptr %i.bh, align 4, !tbaa !196 ; 3 uses
  store i32 %i.ih, ptr %i.bg, align 4, !tbaa !194
  %i.ii = load i32, ptr %i.bi, align 8, !tbaa !195
  %i.ij = add nsw i32 %i.ii, 1                    ; 3 uses
  store i32 %i.ij, ptr %i.bi, align 8, !tbaa !195
  %i.ik = load i32, ptr %i.bo, align 8, !tbaa !370
  %.not.i97 = icmp slt i32 %i.ij, %i.ik
  %.pre169 = load i32, ptr %i.bk, align 4, !tbaa !197 ; 2 uses
  br i1 %.not.i97, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.il = load i32, ptr %i.bj, align 4, !tbaa !371 ; 2 uses
  store i32 %i.il, ptr %i.bi, align 8, !tbaa !195
  %i.im = add nsw i32 %.pre169, 1                 ; 3 uses
  store i32 %i.im, ptr %i.bk, align 4, !tbaa !197
  %i.in = load i32, ptr %i.bl, align 8, !tbaa !198
  %.not1.i = icmp slt i32 %i.im, %i.in
  br i1 %.not1.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.bf, align 8, !tbaa !193
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i
  %i.io = phi i32 [ %.pre169, %bb.ad ], [ %i.im, %bb.ae ], [ %.pre168, %._crit_edge.i ]
  %i.ip = phi i32 [ %i.ij, %bb.ad ], [ %i.il, %bb.ae ], [ %.pre.i, %._crit_edge.i ]
  %i.iq = phi i32 [ %i.ih, %bb.ad ], [ %i.ih, %bb.ae ], [ %i.he, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.iq, i32 noundef %i.ip, i32 noundef %i.io)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.ap

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge: ; preds = %bb.ag, %bb.z, %bb.y, %bb.aa, %bb.ab, %.noexc98, %bb.af
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.ah:                                            ; preds = %bb.q
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ai:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ao
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %bb.ao ], [ %indvars.iv151.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ao ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.it = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %indvars.iv
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !374 ; 2 uses
  %i.iv = zext i16 %i.iu to i32
  %i.iw = shl nuw nsw i32 %i.iv, 13
  %i.ix = and i32 %i.iw, 268427264                ; 6 uses
  %.signext.i.i.i.i.i100 = sext i16 %i.iu to i32
  %i.iy = and i32 %.signext.i.i.i.i.i100, -2147483648 ; 3 uses
  %i.iz = icmp samesign ugt i32 %i.ix, 8388607
  br i1 %i.iz, label %bb.aj, label %bb.am, !prof !108

bb.aj:                                            ; preds = %scalar.ph
  %i.ja = or disjoint i32 %i.ix, %i.iy            ; 2 uses
  %i.jb = icmp samesign ult i32 %i.ix, 260046848
end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L8st_warp_IN9Imath_3_14halfES3_S3_EEbRNS0_8ImageBufERKS4_S7_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlSB_E_clESB_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !104
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fdiv <2 x float> %i.z, %i.n
  %i.ab = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !105 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !201 ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %i.ag                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1347, !nonnull !85, !align !264
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1350, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.r

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1348, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.s

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.bd = sext i32 %i.ah to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.bj
  %i.cc = load i8, ptr %i.aq, align 8, !tbaa !193, !range !84, !noundef !85
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !194
  %i.cf = load i32, ptr %i.as, align 4, !tbaa !196
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !195
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !371
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !197
  %i.cl = load i32, ptr %i.aw, align 8, !tbaa !198
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.bl, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !1351, !nonnull !85, !align !259
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !359 ; 2 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !374 ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 13
  %i.cv = and i32 %i.cu, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.cs to i32
  %i.cw = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.cx = icmp samesign ugt i32 %i.cv, 8388607
  br i1 %i.cx, label %bb.f, label %bb.i, !prof !108

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cy = or disjoint i32 %i.cv, %i.cw            ; 2 uses
  %i.cz = icmp samesign ult i32 %i.cv, 260046848
  br i1 %i.cz, label %bb.g, label %bb.h, !prof !108

bb.g:                                             ; preds = %bb.f
  %i.da = add nuw nsw i32 %i.cy, 939524096
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.db = or i32 %i.cy, 2139095040
  br label %bb.k

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %.not.i.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.cv, i1 true)
  %i.dd = add nsw i32 %i.dc, -8                   ; 2 uses
  %i.de = shl i32 %i.cv, %i.dd
  %i.df = or i32 %i.cw, %i.de
  %i.dg = or i32 %i.df, 947912704
  %i.dh = shl nuw nsw i32 %i.dd, 23
  %i.di = sub nuw i32 %i.dg, %i.dh
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.da, %bb.g ], [ %i.db, %bb.h ], [ %i.di, %bb.j ], [ %i.cw, %bb.i ]
  %i.dj = load ptr, ptr %i.az, align 8, !tbaa !1352, !nonnull !85, !align !259
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !48
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !374 ; 2 uses
  %i.do = zext i16 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 13
  %i.dq = and i32 %i.dp, 268427264                ; 6 uses
  %.signext.i.i.i.i.i92 = sext i16 %i.dn to i32
  %i.dr = and i32 %.signext.i.i.i.i.i92, -2147483648 ; 3 uses
  %i.ds = icmp samesign ugt i32 %i.dq, 8388607
  br i1 %i.ds, label %bb.l, label %bb.o, !prof !108

bb.l:                                             ; preds = %bb.k
  %i.dt = or disjoint i32 %i.dq, %i.dr            ; 2 uses
  %i.du = icmp samesign ult i32 %i.dq, 260046848
  br i1 %i.du, label %bb.m, label %bb.n, !prof !108

bb.m:                                             ; preds = %bb.l
  %i.dv = add nuw nsw i32 %i.dt, 939524096
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.dw = or i32 %i.dt, 2139095040
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %.not.i.i.i.i.i93 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i.i93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dq, i1 true)
  %i.dy = add nsw i32 %i.dx, -8                   ; 2 uses
  %i.dz = shl i32 %i.dq, %i.dy
  %i.ea = or i32 %i.dr, %i.dz
  %i.eb = or i32 %i.ea, 947912704
  %i.ec = shl nuw nsw i32 %i.dy, 23
  %i.ed = sub nuw i32 %i.eb, %i.ec
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i94 = phi i32 [ %i.dv, %bb.m ], [ %i.dw, %bb.n ], [ %i.ed, %bb.p ], [ %i.dr, %bb.o ]
  %i.ee = load ptr, ptr %i.ba, align 8, !tbaa !1353, !nonnull !85
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !113, !range !84, !noundef !85
  %i.eg = load ptr, ptr %i.bb, align 8, !tbaa !1354, !nonnull !85
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !113, !range !84, !noundef !85
  %i.ei = trunc nuw i8 %i.ef to i1
  %i.ej = insertelement <2 x i1> poison, i1 %i.ei, i64 0
  %i.ek = trunc nuw i8 %i.eh to i1
  %i.el = insertelement <2 x i1> %i.ej, i1 %i.ek, i64 1
  %i.em = insertelement <2 x i32> poison, i32 %.sroa.0.0.i.i.i.i.i, i64 0
  %i.en = insertelement <2 x i32> %i.em, i32 %.sroa.0.0.i.i.i.i.i94, i64 1
  %i.eo = bitcast <2 x i32> %i.en to <2 x float>  ; 2 uses
  %i.ep = fsub <2 x float> splat (float 1.000000e+00), %i.eo
  %i.eq = select <2 x i1> %i.el, <2 x float> %i.ep, <2 x float> %i.eo
  %i.er = fmul <2 x float> %i.eq, %i.m            ; 3 uses
  %i.es = fsub <2 x float> %i.er, %i.bc           ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = call float @llvm.floor.f32(float %i.et)
  %i.ev = fptosi float %i.eu to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.ev)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.q)
  %i.ew = extractelement <2 x float> %i.es, i64 1
  %i.ex = call float @llvm.floor.f32(float %i.ew)
  %i.ey = fptosi float %i.ex to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ey)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.u)
  %i.ez = fadd <2 x float> %i.er, %i.bc           ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = call float @llvm.ceil.f32(float %i.fa)
  %i.fc = fptosi float %i.fb to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.fc)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.q)
  %i.fd = extractelement <2 x float> %i.ez, i64 1
  %i.fe = call float @llvm.ceil.f32(float %i.fd)
  %i.ff = fptosi float %i.fe to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ff)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.u)
  %i.fg = add nsw i32 %.1.i88, 1
  %i.fh = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.fg, i32 noundef %.1.i85, i32 noundef %i.fh, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.t unwind label %bb.ah

bb.r:                                             ; preds = %bb.c
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit117

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit115

bb.t:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 16 %i.al, i8 0, i64 %i.be, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.t
  %.062 = phi float [ 0.000000e+00, %bb.t ], [ %i.fy, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.fk = load i8, ptr %i.bf, align 8, !tbaa !193, !range !84, !noundef !85
  %i.fl = icmp eq i8 %i.fk, 0
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !194 ; 2 uses
  br i1 %i.fl, label %bb.u, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre172 = load i32, ptr %i.bi, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.fm = load i32, ptr %i.bh, align 4, !tbaa !196
  %i.fn = icmp eq i32 %.pre, %i.fm
  %.pre173 = load i32, ptr %i.bi, align 8, !tbaa !195 ; 3 uses
  %i.fo = load i32, ptr %i.bj, align 4
  %i.fp = icmp eq i32 %.pre173, %i.fo
  %or.cond = select i1 %i.fn, i1 %i.fp, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96: ; preds = %bb.u
  %i.fq = load i32, ptr %i.bk, align 4, !tbaa !197
  %i.fr = load i32, ptr %i.bl, align 8, !tbaa !198
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge, %bb.u, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96
  %i.ft = phi i32 [ %.pre172, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread_crit_edge ], [ %.pre173, %bb.u ], [ %.pre173, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96 ]
  %i.fu = load ptr, ptr %i.i, align 8, !tbaa !1349, !nonnull !85, !align !264
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !86 ; 2 uses
  %5 = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %6 = insertelement <2 x i32> %5, i32 %i.ft, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = fsub <2 x float> %7, %i.er
  %9 = fadd <2 x float> %8, splat (float 5.000000e-01) ; 2 uses
  %10 = load ptr, ptr %i.fv, align 8, !tbaa !64
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fw = load ptr, ptr %11, align 8
  %12 = extractelement <2 x float> %9, i64 0
  %13 = extractelement <2 x float> %9, i64 1
  %i.fx = invoke noundef float %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, float noundef %12, float noundef %13)
          to label %bb.v unwind label %bb.ai      ; 3 uses

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread
  %i.fy = fadd float %.062, %i.fx
  %i.fz = load i32, ptr %i.af, align 8, !tbaa !201 ; 3 uses
  %i.ga = load i32, ptr %i.ad, align 4, !tbaa !105 ; 2 uses
  %i.gb = icmp slt i32 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.gc = load ptr, ptr %i.bm, align 8, !tbaa !359 ; 2 uses
  %i.gd = sext i32 %i.fz to i64                   ; 3 uses
  %i.ge = sub i32 %i.ga, %i.fz                    ; 2 uses
  %wide.trip.count = zext i32 %i.ge to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ge, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.gf = add nsw i64 %n.vec, %i.gd
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %i.gc, i64 %i.gd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i16>, ptr %gep, align 2, !tbaa !374 ; 2 uses
  %i.gg = zext <4 x i16> %wide.load to <4 x i32>
  %i.gh = shl nuw nsw <4 x i32> %i.gg, splat (i32 13)
  %i.gi = and <4 x i32> %i.gh, splat (i32 268427264) ; 6 uses
  %i.gj = sext <4 x i16> %wide.load to <4 x i32>
  %i.gk = and <4 x i32> %i.gj, splat (i32 -2147483648) ; 3 uses
  %i.gl = icmp eq <4 x i32> %i.gi, zeroinitializer
  %i.gm = call range(i32 4, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.gi, i1 true)
  %i.gn = add nsw <4 x i32> %i.gm, splat (i32 -8) ; 2 uses
  %i.go = shl <4 x i32> %i.gi, %i.gn
  %i.gp = or <4 x i32> %i.gk, %i.go
  %i.gq = or <4 x i32> %i.gp, splat (i32 947912704)
  %i.gr = shl nuw nsw <4 x i32> %i.gn, splat (i32 23)
  %i.gs = sub nuw <4 x i32> %i.gq, %i.gr
  %i.gt = or disjoint <4 x i32> %i.gi, %i.gk      ; 2 uses
  %i.gu = icmp samesign ugt <4 x i32> %i.gi, splat (i32 260046847)
  %i.gv = or <4 x i32> %i.gt, splat (i32 2139095040)
  %i.gw = add nsw <4 x i32> %i.gi, splat (i32 -8388608)
  %i.gx = icmp ult <4 x i32> %i.gw, splat (i32 251658240)
  %i.gy = add nuw nsw <4 x i32> %i.gt, splat (i32 939524096)
  %predphi = select <4 x i1> %i.gl, <4 x i32> %i.gk, <4 x i32> %i.gs
  %predphi196 = select <4 x i1> %i.gu, <4 x i32> %i.gv, <4 x i32> %predphi
  %predphi197 = select <4 x i1> %i.gx, <4 x i32> %i.gy, <4 x i32> %predphi196
  %i.gz = bitcast <4 x i32> %predphi197 to <4 x float>
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %wide.load198 = load <4 x float>, ptr %i.ha, align 16, !tbaa !104
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %broadcast.splat, <4 x float> %wide.load198)
  store <4 x float> %i.hb, ptr %i.ha, align 16, !tbaa !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !1341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv157.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.gd, %.lr.ph ], [ %i.gf, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %bb.ao, %middle.block, %bb.v
  %i.hd = load i32, ptr %i.bg, align 4, !tbaa !194
  %i.he = add nsw i32 %i.hd, 1                    ; 7 uses
  store i32 %i.he, ptr %i.bg, align 4, !tbaa !194
  %i.hf = load i32, ptr %i.bn, align 8, !tbaa !362
  %i.hg = icmp slt i32 %i.he, %i.hf
  br i1 %i.hg, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %._crit_edge
  %i.hh = load i8, ptr %i.bp, align 1, !tbaa !363, !range !84, !noundef !85
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.x, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load i32, ptr %i.bi, align 8, !tbaa !195
  %.pre174 = load i32, ptr %i.bk, align 4, !tbaa !197
  br label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.hj = load i8, ptr %i.bq, align 1, !tbaa !364, !range !84, !noundef !85
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hl = load i64, ptr %i.bs, align 8, !tbaa !365
  %i.hm = load ptr, ptr %i.bm, align 8, !tbaa !359
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hl
  store ptr %i.hn, ptr %i.bm, align 8, !tbaa !359
  %i.ho = load i32, ptr %i.bt, align 8, !tbaa !366
  %.not.i.i = icmp slt i32 %i.he, %i.ho
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.z, !prof !108

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.ap

bb.aa:                                            ; preds = %bb.x
  %i.hp = load i8, ptr %i.br, align 2, !tbaa !367, !range !84, !noundef !85
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hr = load i64, ptr %i.bs, align 8, !tbaa !365
  %i.hs = load ptr, ptr %i.bm, align 8, !tbaa !359
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 %i.hr
  store ptr %i.ht, ptr %i.bm, align 8, !tbaa !359
  %i.hu = load i32, ptr %i.bt, align 8, !tbaa !366
  %i.hv = icmp slt i32 %i.he, %i.hu               ; 3 uses
  %i.hw = load i32, ptr %i.bu, align 4
  %i.hx = icmp sge i32 %i.he, %i.hw
  %not..i.i = xor i1 %i.hv, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.hx, !prof !368
  %i.hy = load ptr, ptr %i.bv, align 8
  %i.hz = icmp eq ptr %i.hy, null
  %i.ia = select i1 %or.cond.i.i, i1 true, i1 %i.hz, !prof !368
  br i1 %i.ia, label %bb.ac, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !66

bb.ac:                                            ; preds = %bb.ab
  %i.ib = load ptr, ptr %2, align 8, !tbaa !199
  %i.ic = load i32, ptr %i.bi, align 8, !tbaa !195
  %i.id = load i32, ptr %i.bk, align 4, !tbaa !197
  %i.ie = load i32, ptr %i.ca, align 8, !tbaa !369
  %i.if = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i32 noundef %i.he, i32 noundef %i.ic, i32 noundef %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %i.bz, i1 noundef zeroext %i.hv, i32 noundef %i.ie)
          to label %.noexc98 unwind label %bb.ap

.noexc98:                                         ; preds = %bb.ac
  %i.ig = zext i1 %i.hv to i8
  store ptr %i.if, ptr %i.bm, align 8, !tbaa !359
  store i8 %i.ig, ptr %i.bp, align 1, !tbaa !363
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge

bb.ad:                                            ; preds = %._crit_edge
  %i.ih = load i32, ptr %i.bh, align 4, !tbaa !196 ; 3 uses
  store i32 %i.ih, ptr %i.bg, align 4, !tbaa !194
  %i.ii = load i32, ptr %i.bi, align 8, !tbaa !195
  %i.ij = add nsw i32 %i.ii, 1                    ; 3 uses
  store i32 %i.ij, ptr %i.bi, align 8, !tbaa !195
  %i.ik = load i32, ptr %i.bo, align 8, !tbaa !370
  %.not.i97 = icmp slt i32 %i.ij, %i.ik
  %.pre175 = load i32, ptr %i.bk, align 4, !tbaa !197 ; 2 uses
  br i1 %.not.i97, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.il = load i32, ptr %i.bj, align 4, !tbaa !371 ; 2 uses
  store i32 %i.il, ptr %i.bi, align 8, !tbaa !195
  %i.im = add nsw i32 %.pre175, 1                 ; 3 uses
  store i32 %i.im, ptr %i.bk, align 4, !tbaa !197
  %i.in = load i32, ptr %i.bl, align 8, !tbaa !198
  %.not1.i = icmp slt i32 %i.im, %i.in
  br i1 %.not1.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.bf, align 8, !tbaa !193
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i
  %i.io = phi i32 [ %.pre175, %bb.ad ], [ %i.im, %bb.ae ], [ %.pre174, %._crit_edge.i ]
  %i.ip = phi i32 [ %i.ij, %bb.ad ], [ %i.il, %bb.ae ], [ %.pre.i, %._crit_edge.i ]
  %i.iq = phi i32 [ %i.ih, %bb.ad ], [ %i.ih, %bb.ae ], [ %i.he, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.iq, i32 noundef %i.ip, i32 noundef %i.io)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.ap

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge: ; preds = %bb.ag, %bb.z, %bb.y, %bb.aa, %bb.ab, %.noexc98, %bb.af
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.ah:                                            ; preds = %bb.q
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ai:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit96.thread
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ao
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %bb.ao ], [ %indvars.iv157.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ao ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.it = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %indvars.iv
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !374 ; 2 uses
  %i.iv = zext i16 %i.iu to i32
  %i.iw = shl nuw nsw i32 %i.iv, 13
  %i.ix = and i32 %i.iw, 268427264                ; 6 uses
  %.signext.i.i.i.i.i100 = sext i16 %i.iu to i32
  %i.iy = and i32 %.signext.i.i.i.i.i100, -2147483648 ; 3 uses
  %i.iz = icmp samesign ugt i32 %i.ix, 8388607
  br i1 %i.iz, label %bb.aj, label %bb.am, !prof !108

bb.aj:                                            ; preds = %scalar.ph
  %i.ja = or disjoint i32 %i.ix, %i.iy            ; 2 uses
  %i.jb = icmp samesign ult i32 %i.ix, 260046848
end_hunk_4
begin_hunk_5_@_ZZN11OpenImageIO4v3_1L8st_warp_IN9Imath_3_14halfES3_S3_EEbRNS0_8ImageBufERKS4_S7_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlSB_E_clESB_:bb.a

bb.bi:                                            ; preds = %bb.bg, %.lr.ph149
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit:                                        ; preds = %bb.bh, %bb.bd, %bb.bf, %bb.ar
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.bk, !llvm.loop !1345

bb.bk:                                            ; preds = %bb.bj, %.loopexit
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bl:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !200
  %.not.i109 = icmp eq ptr %i.mj, null
  br i1 %.not.i109, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mk = landingpad { ptr, i32 }
          catch ptr null
  %i.ml = extractvalue { ptr, i32 } %i.mk, 0
  call void @__clang_call_terminate(ptr %i.ml) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !200
  %.not.i110 = icmp eq ptr %i.mn, null
  br i1 %.not.i110, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, label %bb.bo

bb.bo:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mo = landingpad { ptr, i32 }
          catch ptr null
  %i.mp = extractvalue { ptr, i32 } %i.mo, 0
  call void @__clang_call_terminate(ptr %i.mp) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.mq = load ptr, ptr %i.bv, align 8, !tbaa !200
  %.not.i112 = icmp eq ptr %i.mq, null
  br i1 %.not.i112, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113, label %bb.bq

bb.bq:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mr = landingpad { ptr, i32 }
          catch ptr null
  %i.ms = extractvalue { ptr, i32 } %i.mr, 0
  call void @__clang_call_terminate(ptr %i.ms) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.bs:                                            ; preds = %bb.ah, %bb.ai, %bb.bi, %bb.be, %bb.ap, %bb.bk
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mh, %bb.bk ], [ %i.is, %bb.ai ], [ %i.lw, %bb.be ], [ %i.ir, %bb.ah ], [ %i.mg, %bb.bi ], [ %i.jp, %bb.ap ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !200
  %.not.i114 = icmp eq ptr %i.mu, null
  br i1 %.not.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit115, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit115 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mv = landingpad { ptr, i32 }
          catch ptr null
  %i.mw = extractvalue { ptr, i32 } %i.mv, 0
  call void @__clang_call_terminate(ptr %i.mw) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit115: ; preds = %bb.bt, %bb.bs, %bb.s
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fj, %bb.s ], [ %.pn.pn.pn.pn.pn.pn, %bb.bs ], [ %.pn.pn.pn.pn.pn.pn, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !200
  %.not.i116 = icmp eq ptr %i.my, null
  br i1 %.not.i116, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit117, label %bb.bv

bb.bv:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit115
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit117 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit117: ; preds = %bb.bv, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit115, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.r ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit115 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !200
  %.not.i118 = icmp eq ptr %i.nc, null
  br i1 %.not.i118, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit119, label %bb.bx

bb.bx:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit117
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit119 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit119: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit117, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !103
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !357
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !389
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1361, !nonnull !85, !align !264
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1362, !nonnull !85, !align !264
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1361, !nonnull !85, !align !264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.j = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %6 = sitofp <2 x i32> %i.j to <2 x float>
  %i.k = sitofp <2 x i32> %5 to <2 x float>       ; 2 uses
  %i.l = fdiv <2 x float> %6, %i.k
  %i.m = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1361, !nonnull !85, !align !264
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1361, !nonnull !85, !align !264
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1361, !nonnull !85, !align !264
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !1363, !nonnull !85, !align !264
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !104
  %i.x = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fdiv <2 x float> %i.x, %i.l
  %i.z = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !201 ; 2 uses
  %i.af = sub nsw i32 %i.ac, %i.ae                ; 2 uses
  %.not = icmp eq i32 %i.ac, %i.ae
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = alloca i8, i64 %i.ah, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aj = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1361, !nonnull !85, !align !264
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1364, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1362, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = sitofp <2 x i32> %i.aa to <2 x float>   ; 2 uses
  %i.bb = sext i32 %i.af to i64
  %i.bc = shl nsw i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ah
  %i.ca = load i8, ptr %i.ao, align 8, !tbaa !193, !range !84, !noundef !85
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.cc = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.cd = load i32, ptr %i.aq, align 4, !tbaa !196
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.cg = load i32, ptr %i.as, align 4, !tbaa !371
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ci = load i32, ptr %i.at, align 4, !tbaa !197
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !198
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !1365, !nonnull !85, !align !259
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !359 ; 2 uses
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !375
  %i.cr = load ptr, ptr %i.ax, align 8, !tbaa !1366, !nonnull !85, !align !259
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !48
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !375
  %i.cw = load ptr, ptr %i.ay, align 8, !tbaa !1367, !nonnull !85
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !113, !range !84, !noundef !85
  %i.cy = load ptr, ptr %i.az, align 8, !tbaa !1368, !nonnull !85
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !113, !range !84, !noundef !85
  %i.da = insertelement <2 x i16> poison, i16 %i.cq, i64 0
  %i.db = insertelement <2 x i16> %i.da, i16 %i.cv, i64 1
  %i.dc = uitofp <2 x i16> %i.db to <2 x float>
  %i.dd = fmul nnan <2 x float> %i.dc, splat (float f0x37800080) ; 2 uses
  %i.de = trunc nuw i8 %i.cx to i1
  %i.df = insertelement <2 x i1> poison, i1 %i.de, i64 0
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> %i.df, i1 %i.dg, i64 1
  %i.di = fsub nnan <2 x float> splat (float 1.000000e+00), %i.dd
  %i.dj = select <2 x i1> %i.dh, <2 x float> %i.di, <2 x float> %i.dd
  %i.dk = fmul <2 x float> %i.dj, %i.k            ; 3 uses
  %i.dl = fsub <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = call float @llvm.floor.f32(float %i.dm)
  %i.do = fptosi float %i.dn to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.do)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.o)
  %i.dp = extractelement <2 x float> %i.dl, i64 1
  %i.dq = call float @llvm.floor.f32(float %i.dp)
  %i.dr = fptosi float %i.dq to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dr)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.s)
  %i.ds = fadd <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = call float @llvm.ceil.f32(float %i.dt)
  %i.dv = fptosi float %i.du to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.dv)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.o)
  %i.dw = extractelement <2 x float> %i.ds, i64 1
  %i.dx = call float @llvm.ceil.f32(float %i.dw)
  %i.dy = fptosi float %i.dx to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dy)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.s)
  %i.dz = add nsw i32 %.1.i88, 1
  %i.ea = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.dz, i32 noundef %.1.i85, i32 noundef %i.ea, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.aj, i8 0, i64 %i.bc, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ed = load i8, ptr %i.bd, align 8, !tbaa !193, !range !84, !noundef !85
  %i.ee = icmp eq i8 %i.ed, 0
  %.pre = load i32, ptr %i.be, align 4, !tbaa !194 ; 2 uses
  br i1 %i.ee, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre158 = load i32, ptr %i.bg, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.ef = load i32, ptr %i.bf, align 4, !tbaa !196
  %i.eg = icmp eq i32 %.pre, %i.ef
  %.pre159 = load i32, ptr %i.bg, align 8, !tbaa !195 ; 3 uses
  %i.eh = load i32, ptr %i.bh, align 4
  %i.ei = icmp eq i32 %.pre159, %i.eh
  %or.cond = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.ej = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.ek = load i32, ptr %i.bj, align 8, !tbaa !198
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.y, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.em = phi i32 [ %.pre158, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre159, %bb.i ], [ %.pre159, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.en = load ptr, ptr %i.i, align 8, !tbaa !1363, !nonnull !85, !align !264
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !86 ; 2 uses
  %i.ep = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = sitofp <2 x i32> %i.eq to <2 x float>
  %i.es = fsub <2 x float> %i.er, %i.dk
  %i.et = fadd <2 x float> %i.es, splat (float 5.000000e-01) ; 2 uses
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = extractelement <2 x float> %i.et, i64 0
  %i.ey = extractelement <2 x float> %i.et, i64 1
  %i.ez = invoke noundef float %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, float noundef %i.ex, float noundef %i.ey)
          to label %bb.j unwind label %bb.w       ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fa = fadd float %.062, %i.ez
  %i.fb = load i32, ptr %i.ad, align 8, !tbaa !201 ; 3 uses
  %i.fc = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fe = load ptr, ptr %i.bk, align 8, !tbaa !359 ; 2 uses
  %i.ff = sext i32 %i.fb to i64                   ; 3 uses
  %i.fg = sub i32 %i.fc, %i.fb                    ; 2 uses
  %wide.trip.count = zext i32 %i.fg to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fh = add nsw i64 %n.vec, %i.ff
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ez, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.fe, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load = load <4 x i16>, ptr %gep, align 2, !tbaa !375
  %wide.load175 = load <4 x i16>, ptr %i.fi, align 2, !tbaa !375
  %i.fj = uitofp <4 x i16> %wide.load to <4 x float>
  %i.fk = uitofp <4 x i16> %wide.load175 to <4 x float>
  %i.fl = fmul nnan <4 x float> %i.fj, splat (float f0x37800080)
  %i.fm = fmul nnan <4 x float> %i.fk, splat (float f0x37800080)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load176 = load <4 x float>, ptr %i.fn, align 16, !tbaa !104
  %wide.load177 = load <4 x float>, ptr %i.fo, align 16, !tbaa !104
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %broadcast.splat, <4 x float> %wide.load176)
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %broadcast.splat, <4 x float> %wide.load177)
  store <4 x float> %i.fp, ptr %i.fn, align 16, !tbaa !104
  store <4 x float> %i.fq, ptr %i.fo, align 16, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv143.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ff, %.lr.ph ], [ %i.fh, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fs = load i32, ptr %i.be, align 4, !tbaa !194
  %i.ft = add nsw i32 %i.fs, 1                    ; 7 uses
  store i32 %i.ft, ptr %i.be, align 4, !tbaa !194
  %i.fu = load i32, ptr %i.bl, align 8, !tbaa !362
  %i.fv = icmp slt i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fw = load i8, ptr %i.bn, align 1, !tbaa !363, !range !84, !noundef !85
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bg, align 8, !tbaa !195
  %.pre160 = load i32, ptr %i.bi, align 4, !tbaa !197
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fy = load i8, ptr %i.bo, align 1, !tbaa !364, !range !84, !noundef !85
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ga = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gb = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ga
  store ptr %i.gc, ptr %i.bk, align 8, !tbaa !359
  %i.gd = load i32, ptr %i.br, align 8, !tbaa !366
  %.not.i.i = icmp slt i32 %i.ft, %i.gd
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !108

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.x

bb.o:                                             ; preds = %bb.l
  %i.ge = load i8, ptr %i.bp, align 2, !tbaa !367, !range !84, !noundef !85
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gg = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gh = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.gg
  store ptr %i.gi, ptr %i.bk, align 8, !tbaa !359
  %i.gj = load i32, ptr %i.br, align 8, !tbaa !366
  %i.gk = icmp slt i32 %i.ft, %i.gj               ; 3 uses
  %i.gl = load i32, ptr %i.bs, align 4
  %i.gm = icmp sge i32 %i.ft, %i.gl
  %not..i.i = xor i1 %i.gk, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.gm, !prof !368
  %i.gn = load ptr, ptr %i.bt, align 8
  %i.go = icmp eq ptr %i.gn, null
  %i.gp = select i1 %or.cond.i.i, i1 true, i1 %i.go, !prof !368
  br i1 %i.gp, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !66

bb.q:                                             ; preds = %bb.p
  %i.gq = load ptr, ptr %2, align 8, !tbaa !199
  %i.gr = load i32, ptr %i.bg, align 8, !tbaa !195
  %i.gs = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.gt = load i32, ptr %i.by, align 8, !tbaa !369
end_hunk_5
begin_hunk_6_@_ZZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_:bb.a

bb.ag:                                            ; preds = %bb.ae, %.lr.ph135
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit:                                        ; preds = %bb.af, %bb.ab, %bb.ad, %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.ai, !llvm.loop !1359

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !200
  %.not.i103 = icmp eq ptr %i.it, null
  br i1 %.not.i103, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !200
  %.not.i104 = icmp eq ptr %i.ix, null
  br i1 %.not.i104, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105, label %bb.am

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ja = load ptr, ptr %i.bt, align 8, !tbaa !200
  %.not.i106 = icmp eq ptr %i.ja, null
  br i1 %.not.i106, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107, label %bb.ao

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit107: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit105, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.aq:                                            ; preds = %bb.v, %bb.w, %bb.ag, %bb.ac, %bb.x, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ir, %bb.ai ], [ %i.hh, %bb.w ], [ %i.ig, %bb.ac ], [ %i.hg, %bb.v ], [ %i.iq, %bb.ag ], [ %i.hp, %bb.x ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !200
  %.not.i108 = icmp eq ptr %i.je, null
  br i1 %.not.i108, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %4)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109: ; preds = %bb.ar, %bb.aq, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.g ], [ %.pn.pn.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn.pn.pn.pn.pn, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !200
  %.not.i110 = icmp eq ptr %i.ji, null
  br i1 %.not.i110, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, label %bb.at

bb.at:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111: ; preds = %bb.at, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.f ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !200
  %.not.i112 = icmp eq ptr %i.jm, null
  br i1 %.not.i112, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113, label %bb.av

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit113: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_ItttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !103
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_ItttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !357
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %.val, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !389
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.128", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1375, !nonnull !85, !align !264
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1376, !nonnull !85, !align !264
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1375, !nonnull !85, !align !264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.j = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %6 = sitofp <2 x i32> %i.j to <2 x float>
  %i.k = sitofp <2 x i32> %5 to <2 x float>       ; 2 uses
  %i.l = fdiv <2 x float> %6, %i.k
  %i.m = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1375, !nonnull !85, !align !264
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1375, !nonnull !85, !align !264
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1375, !nonnull !85, !align !264
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !1377, !nonnull !85, !align !264
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !104
  %i.x = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fdiv <2 x float> %i.x, %i.l
  %i.z = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !201 ; 2 uses
  %i.af = sub nsw i32 %i.ac, %i.ae                ; 2 uses
  %.not = icmp eq i32 %i.ac, %i.ae
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = alloca i8, i64 %i.ah, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aj = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1375, !nonnull !85, !align !264
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1378, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1376, !nonnull !85, !align !264
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = sitofp <2 x i32> %i.aa to <2 x float>   ; 2 uses
  %i.bb = sext i32 %i.af to i64
  %i.bc = shl nsw i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ah
  %i.ca = load i8, ptr %i.ao, align 8, !tbaa !193, !range !84, !noundef !85
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.cc = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.cd = load i32, ptr %i.aq, align 4, !tbaa !196
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.cg = load i32, ptr %i.as, align 4, !tbaa !371
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ci = load i32, ptr %i.at, align 4, !tbaa !197
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !198
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.aj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !1379, !nonnull !85, !align !259
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !359 ; 2 uses
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !375
  %i.cr = load ptr, ptr %i.ax, align 8, !tbaa !1380, !nonnull !85, !align !259
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !48
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !375
  %i.cw = load ptr, ptr %i.ay, align 8, !tbaa !1381, !nonnull !85
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !113, !range !84, !noundef !85
  %i.cy = load ptr, ptr %i.az, align 8, !tbaa !1382, !nonnull !85
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !113, !range !84, !noundef !85
  %i.da = insertelement <2 x i16> poison, i16 %i.cq, i64 0
  %i.db = insertelement <2 x i16> %i.da, i16 %i.cv, i64 1
  %i.dc = uitofp <2 x i16> %i.db to <2 x float>
  %i.dd = fmul nnan <2 x float> %i.dc, splat (float f0x37800080) ; 2 uses
  %i.de = trunc nuw i8 %i.cx to i1
  %i.df = insertelement <2 x i1> poison, i1 %i.de, i64 0
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> %i.df, i1 %i.dg, i64 1
  %i.di = fsub nnan <2 x float> splat (float 1.000000e+00), %i.dd
  %i.dj = select <2 x i1> %i.dh, <2 x float> %i.di, <2 x float> %i.dd
  %i.dk = fmul <2 x float> %i.dj, %i.k            ; 3 uses
  %i.dl = fsub <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = call float @llvm.floor.f32(float %i.dm)
  %i.do = fptosi float %i.dn to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.do)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.o)
  %i.dp = extractelement <2 x float> %i.dl, i64 1
  %i.dq = call float @llvm.floor.f32(float %i.dp)
  %i.dr = fptosi float %i.dq to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dr)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.s)
  %i.ds = fadd <2 x float> %i.dk, %i.ba           ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = call float @llvm.ceil.f32(float %i.dt)
  %i.dv = fptosi float %i.du to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.dv)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.o)
  %i.dw = extractelement <2 x float> %i.ds, i64 1
  %i.dx = call float @llvm.ceil.f32(float %i.dw)
  %i.dy = fptosi float %i.dx to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.dy)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.s)
  %i.dz = add nsw i32 %.1.i88, 1
  %i.ea = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.dz, i32 noundef %.1.i85, i32 noundef %i.ea, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.aj, i8 0, i64 %i.bc, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ed = load i8, ptr %i.bd, align 8, !tbaa !193, !range !84, !noundef !85
  %i.ee = icmp eq i8 %i.ed, 0
  %.pre = load i32, ptr %i.be, align 4, !tbaa !194 ; 2 uses
  br i1 %i.ee, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre158 = load i32, ptr %i.bg, align 8, !tbaa !195
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.ef = load i32, ptr %i.bf, align 4, !tbaa !196
  %i.eg = icmp eq i32 %.pre, %i.ef
  %.pre159 = load i32, ptr %i.bg, align 8, !tbaa !195 ; 3 uses
  %i.eh = load i32, ptr %i.bh, align 4
  %i.ei = icmp eq i32 %.pre159, %i.eh
  %or.cond = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.ej = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.ek = load i32, ptr %i.bj, align 8, !tbaa !198
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.y, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.em = phi i32 [ %.pre158, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre159, %bb.i ], [ %.pre159, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.en = load ptr, ptr %i.i, align 8, !tbaa !1377, !nonnull !85, !align !264
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !86 ; 2 uses
  %i.ep = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.em, i64 1
  %i.er = sitofp <2 x i32> %i.eq to <2 x float>
  %i.es = fsub <2 x float> %i.er, %i.dk
  %i.et = fadd <2 x float> %i.es, splat (float 5.000000e-01) ; 2 uses
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = extractelement <2 x float> %i.et, i64 0
  %i.ey = extractelement <2 x float> %i.et, i64 1
  %i.ez = invoke noundef float %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, float noundef %i.ex, float noundef %i.ey)
          to label %bb.j unwind label %bb.w       ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fa = fadd float %.062, %i.ez
  %i.fb = load i32, ptr %i.ad, align 8, !tbaa !201 ; 3 uses
  %i.fc = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fe = load ptr, ptr %i.bk, align 8, !tbaa !359 ; 2 uses
  %i.ff = sext i32 %i.fb to i64                   ; 3 uses
  %i.fg = sub i32 %i.fc, %i.fb                    ; 2 uses
  %wide.trip.count = zext i32 %i.fg to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fh = add nsw i64 %n.vec, %i.ff
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ez, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.fe, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load = load <4 x i16>, ptr %gep, align 2, !tbaa !375
  %wide.load175 = load <4 x i16>, ptr %i.fi, align 2, !tbaa !375
  %i.fj = uitofp <4 x i16> %wide.load to <4 x float>
  %i.fk = uitofp <4 x i16> %wide.load175 to <4 x float>
  %i.fl = fmul nnan <4 x float> %i.fj, splat (float f0x37800080)
  %i.fm = fmul nnan <4 x float> %i.fk, splat (float f0x37800080)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load176 = load <4 x float>, ptr %i.fn, align 16, !tbaa !104
  %wide.load177 = load <4 x float>, ptr %i.fo, align 16, !tbaa !104
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %broadcast.splat, <4 x float> %wide.load176)
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %broadcast.splat, <4 x float> %wide.load177)
  store <4 x float> %i.fp, ptr %i.fn, align 16, !tbaa !104
  store <4 x float> %i.fq, ptr %i.fo, align 16, !tbaa !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv143.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ff, %.lr.ph ], [ %i.fh, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fs = load i32, ptr %i.be, align 4, !tbaa !194
  %i.ft = add nsw i32 %i.fs, 1                    ; 7 uses
  store i32 %i.ft, ptr %i.be, align 4, !tbaa !194
  %i.fu = load i32, ptr %i.bl, align 8, !tbaa !362
  %i.fv = icmp slt i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fw = load i8, ptr %i.bn, align 1, !tbaa !363, !range !84, !noundef !85
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bg, align 8, !tbaa !195
  %.pre160 = load i32, ptr %i.bi, align 4, !tbaa !197
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fy = load i8, ptr %i.bo, align 1, !tbaa !364, !range !84, !noundef !85
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ga = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gb = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ga
  store ptr %i.gc, ptr %i.bk, align 8, !tbaa !359
  %i.gd = load i32, ptr %i.br, align 8, !tbaa !366
  %.not.i.i = icmp slt i32 %i.ft, %i.gd
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !108

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %bb.x

bb.o:                                             ; preds = %bb.l
  %i.ge = load i8, ptr %i.bp, align 2, !tbaa !367, !range !84, !noundef !85
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gg = load i64, ptr %i.bq, align 8, !tbaa !365
  %i.gh = load ptr, ptr %i.bk, align 8, !tbaa !359
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.gg
  store ptr %i.gi, ptr %i.bk, align 8, !tbaa !359
  %i.gj = load i32, ptr %i.br, align 8, !tbaa !366
  %i.gk = icmp slt i32 %i.ft, %i.gj               ; 3 uses
  %i.gl = load i32, ptr %i.bs, align 4
  %i.gm = icmp sge i32 %i.ft, %i.gl
  %not..i.i = xor i1 %i.gk, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.gm, !prof !368
  %i.gn = load ptr, ptr %i.bt, align 8
  %i.go = icmp eq ptr %i.gn, null
  %i.gp = select i1 %or.cond.i.i, i1 true, i1 %i.go, !prof !368
  br i1 %i.gp, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !66

bb.q:                                             ; preds = %bb.p
  %i.gq = load ptr, ptr %2, align 8, !tbaa !199
  %i.gr = load i32, ptr %i.bg, align 8, !tbaa !195
  %i.gs = load i32, ptr %i.bi, align 4, !tbaa !197
  %i.gt = load i32, ptr %i.by, align 8, !tbaa !369
end_hunk_6
