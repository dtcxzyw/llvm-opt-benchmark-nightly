inline.NumInlined: 906
inline.NumDeleted: 419
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZZN2cv3dnn23GatherElementsLayerImpl12forward_implIilEEvRKNS_3MatES5_RS3_ENKUlRKNS_5RangeEE_clES9_:bb.a
  %i.bd = icmp sgt i32 %i.ay, 0
  br i1 %i.bd, label %.lr.ph30.us, label %.loopexit.us

.lr.ph30.us:                                      ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us, %.lr.ph30.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph30.us ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv35
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !58
  %i.bg = load i32, ptr %i.ab, align 4, !tbaa !80
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = add nsw i64 %i.bf, %i.bh
  %i.bj = srem i64 %i.bi, %i.bh
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !80
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv35
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !80
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.bn = load i32, ptr %i.s, align 4, !tbaa !80
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next36, %i.bo
  br i1 %i.bp, label %.lr.ph30.us, label %.loopexit.us.loopexit, !llvm.loop !329

.loopexit.us.loopexit:                            ; preds = %.lr.ph30.us
  %.pre38 = load i32, ptr %i.b, align 4, !tbaa !114
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us
  %i.bq = phi i32 [ %.pre38, %.loopexit.us.loopexit ], [ %i.ae, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us ] ; 2 uses
  %i.br = add nsw i32 %.031.us, 1                 ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %.lr.ph32.split.us, label %._crit_edge, !llvm.loop !330

._crit_edge:                                      ; preds = %.loopexit27, %.loopexit.us, %bb.a
  ret void

.lr.ph32.split:                                   ; preds = %.lr.ph32, %.loopexit27
  %i.bt = phi i32 [ %i.di, %.loopexit27 ], [ %i.c, %.lr.ph32 ]
  %.031 = phi i32 [ %i.dj, %.loopexit27 ], [ %i.a, %.lr.ph32 ] ; 3 uses
  %i.bu = load i32, ptr %i.j, align 4, !tbaa !79  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %.lr.ph.i, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit

.lr.ph.i:                                         ; preds = %.lr.ph32.split
  %i.bw = load i32, ptr %i.m, align 4, !tbaa !43
  %i.bx = add nsw i32 %i.bu, -2
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = zext i32 %i.bw to i64
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.by, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 5 uses
  %.01420.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.01519.i = phi i32 [ %.031, %.lr.ph.i ], [ %i.cc, %bb.e ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !80 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i, %i.bz
  %i.cc = sdiv i32 %.01519.i, %i.cb
  %i.cd = srem i32 %.01519.i, %i.cb
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !58
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = mul i32 %i.cd, %i.cg
  %i.ci = add i32 %i.ch, %.01420.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK2cv8MatShapeixEm.exit.i
  %.1.i = phi i32 [ %i.ci, %bb.d ], [ %.01420.i, %_ZNK2cv8MatShapeixEm.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.cj = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.cj, label %_ZNK2cv8MatShapeixEm.exit.i, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit, !llvm.loop !164

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit: ; preds = %bb.e
  %i.ck = sext i32 %.1.i to i64
  %i.cl = lshr i64 %i.ck, 2
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit, %.lr.ph32.split
  %.014.lcssa.i = phi i64 [ 0, %.lr.ph32.split ], [ %i.cl, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.014.lcssa.i
  %i.cn = load i32, ptr %i.s, align 4, !tbaa !80  ; 2 uses
  %i.co = mul nsw i32 %i.cn, %.031
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.cp
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cp
  %i.cs = icmp sgt i32 %i.cn, 0
  br i1 %i.cs, label %.lr.ph, label %.loopexit27

.lr.ph:                                           ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit
  %i.ct = load i64, ptr %i.ad, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !58
  %i.cw = load i32, ptr %i.ab, align 4, !tbaa !80
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = add nsw i64 %i.cv, %i.cx
  %i.cz = srem i64 %i.cy, %i.cx
  %i.da = mul i64 %i.ct, %i.cz
  %i.db = getelementptr [4 x i8], ptr %i.cm, i64 %i.da
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !80
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.s, align 4, !tbaa !80
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.f, label %.loopexit27.loopexit, !llvm.loop !331

.loopexit27.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.b, align 4, !tbaa !114
  br label %.loopexit27

.loopexit27:                                      ; preds = %.loopexit27.loopexit, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit
  %i.di = phi i32 [ %.pre, %.loopexit27.loopexit ], [ %i.bt, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ] ; 2 uses
  %i.dj = add nsw i32 %.031, 1                    ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.di
  br i1 %i.dk, label %.lr.ph32.split, label %._crit_edge, !llvm.loop !330
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS0_3MatESA_RS8_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  tail call void @_ZZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS_3MatES5_RS3_ENKUlRKNS_5RangeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS0_3MatESA_RS8_EUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS_3MatES5_RS3_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !149
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !126
  store ptr %i.a, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !126
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !332
  store ptr %i.c, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #18
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS_3MatES5_RS3_ENKUlRKNS_5RangeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !112    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !114  ; 4 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333
  %i.g = load ptr, ptr %0, align 8, !tbaa !335, !nonnull !154, !align !155
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !336, !nonnull !154, !align !157 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !337, !nonnull !154, !align !155 ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !79   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 1                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 156 ; 2 uses
  %i.p = add nsw i32 %i.m, -2
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.r = zext nneg i32 %i.p to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !338, !nonnull !154, !align !155
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !339, !nonnull !154, !align !157
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !340, !nonnull !154, !align !155
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !125 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !341, !nonnull !154
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !110, !range !165, !noundef !154
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp sgt i32 %i.x, 0                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.ae, label %.lr.ph32.split.us.preheader, label %.lr.ph32.split

.lr.ph32.split.us.preheader:                      ; preds = %.lr.ph32
  %i.ai = sext i32 %i.a to i64
  %i.aj = sext i32 %i.x to i64
  %wide.trip.count73 = sext i32 %i.c to i64
  %wide.trip.count68 = zext i32 %i.x to i64       ; 2 uses
  %xtraiter91 = and i64 %wide.trip.count68, 1
  %i.ak = icmp eq i32 %i.x, 1
  %unroll_iter94 = and i64 %wide.trip.count68, 2147483646
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %lcmp.mod93 = trunc i32 %i.x to i1
  br label %.lr.ph32.split.us

.lr.ph32.split.us:                                ; preds = %.lr.ph32.split.us.preheader, %.loopexit.us
  %indvars.iv70 = phi i64 [ %i.ai, %.lr.ph32.split.us.preheader ], [ %indvars.iv.next71, %.loopexit.us ] ; 3 uses
  br i1 %i.n, label %.lr.ph.i.us, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph32.split.us
  %i.al = load i32, ptr %i.o, align 4, !tbaa !43
  %i.am = zext i32 %i.al to i64
  %i.an = trunc nsw i64 %indvars.iv70 to i32
  br label %_ZNK2cv8MatShapeixEm.exit.i.us

_ZNK2cv8MatShapeixEm.exit.i.us:                   ; preds = %bb.c, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %i.r, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 5 uses
  %.01420.i.us = phi i32 [ 0, %.lr.ph.i.us ], [ %.1.i.us, %bb.c ] ; 2 uses
  %.01519.i.us = phi i32 [ %i.an, %.lr.ph.i.us ], [ %i.aq, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !80 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.i.us, %i.am
  %i.aq = sdiv i32 %.01519.i.us, %i.ap
  %i.ar = srem i32 %.01519.i.us, %i.ap
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !58
  %i.au = trunc i64 %i.at to i32
  %i.av = mul i32 %i.ar, %i.au
  %i.aw = add i32 %i.av, %.01420.i.us
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK2cv8MatShapeixEm.exit.i.us
  %.1.i.us = phi i32 [ %i.aw, %bb.b ], [ %.01420.i.us, %_ZNK2cv8MatShapeixEm.exit.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, -1
  %i.ax = icmp sgt i64 %indvars.iv.i.us, 0
  br i1 %i.ax, label %_ZNK2cv8MatShapeixEm.exit.i.us, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit, !llvm.loop !164

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit: ; preds = %bb.c
  %i.ay = sext i32 %.1.i.us to i64
  %i.az = lshr i64 %i.ay, 3
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit, %.lr.ph32.split.us
  %.014.lcssa.i.us = phi i64 [ 0, %.lr.ph32.split.us ], [ %i.az, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.014.lcssa.i.us ; 3 uses
  %i.bb = mul nsw i64 %indvars.iv70, %i.aj        ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bb ; 3 uses
  br i1 %i.af, label %.lr.ph30.us, label %.loopexit.us

.lr.ph30.us.new:                                  ; preds = %.lr.ph30.us, %.lr.ph30.us.new
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.lr.ph30.us.new ], [ 0, %.lr.ph30.us ] ; 4 uses
  %niter95 = phi i64 [ %niter95.next.1, %.lr.ph30.us.new ], [ 0, %.lr.ph30.us ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv65
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !58
  %i.bg = add nsw i64 %i.bf, %i.cb
  %i.bh = srem i64 %i.bg, %i.cb
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv65
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !58
  %indvars.iv.next66 = or disjoint i64 %indvars.iv65, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next66
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !58
  %i.bn = add nsw i64 %i.bm, %i.cb
  %i.bo = srem i64 %i.bn, %i.cb
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next66
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !58
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter95.next.1 = add i64 %niter95, 2           ; 2 uses
  %niter95.ncmp.1 = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph30.us.new, !llvm.loop !342

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %.lr.ph30.us.new
  br i1 %lcmp.mod92.not, label %.loopexit.us, label %.epil.preheader90

.epil.preheader90:                                ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph30.us
  %indvars.iv65.epil.init = phi i64 [ 0, %.lr.ph30.us ], [ %indvars.iv.next66.1, %.loopexit.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv65.epil.init
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !58
  %i.bu = add nsw i64 %i.bt, %i.cb
  %i.bv = srem i64 %i.bu, %i.cb
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !58
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv65.epil.init
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !58
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.epil.preheader90, %.loopexit.us.loopexit.unr-lcssa, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph32.split.us, !llvm.loop !343

.lr.ph30.us:                                      ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !344, !nonnull !154, !align !157
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !80
  %i.cb = sext i32 %i.ca to i64                   ; 6 uses
  br i1 %i.ak, label %.epil.preheader90, label %.lr.ph30.us.new

.lr.ph32.split:                                   ; preds = %.lr.ph32
  br i1 %i.n, label %.lr.ph32.split.split.us, label %.lr.ph32.split.split

.lr.ph32.split.split.us:                          ; preds = %.lr.ph32.split
  %i.cc = load i32, ptr %i.o, align 4, !tbaa !43
  %i.cd = zext i32 %i.cc to i64
  br i1 %i.af, label %.lr.ph32.split.split.us.split.us, label %._crit_edge

.lr.ph32.split.split.us.split.us:                 ; preds = %.lr.ph32.split.split.us
  %i.ce = load ptr, ptr %i.ag, align 8, !tbaa !344, !nonnull !154, !align !157
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !80
  %i.cg = sext i32 %i.cf to i64                   ; 6 uses
  %i.ch = load ptr, ptr %i.ah, align 8, !tbaa !345, !nonnull !154, !align !155 ; 3 uses
  %i.ci = sext i32 %i.a to i64
  %i.cj = zext nneg i32 %i.x to i64               ; 3 uses
  %wide.trip.count63 = sext i32 %i.c to i64
  %xtraiter85 = and i64 %i.cj, 1
  %i.ck = icmp eq i32 %i.x, 1
  %unroll_iter88 = and i64 %i.cj, 2147483646
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  %lcmp.mod87 = trunc i32 %i.x to i1
  br label %.lr.ph.i.us34.us

.lr.ph.i.us34.us:                                 ; preds = %..loopexit27_crit_edge.us.us, %.lr.ph32.split.split.us.split.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %..loopexit27_crit_edge.us.us ], [ %i.ci, %.lr.ph32.split.split.us.split.us ] ; 3 uses
  %i.cl = trunc nsw i64 %indvars.iv60 to i32
  br label %_ZNK2cv8MatShapeixEm.exit.i.us35.us

_ZNK2cv8MatShapeixEm.exit.i.us35.us:              ; preds = %bb.e, %.lr.ph.i.us34.us
  %indvars.iv.i.us36.us = phi i64 [ %i.r, %.lr.ph.i.us34.us ], [ %indvars.iv.next.i.us41.us, %bb.e ] ; 5 uses
  %.01420.i.us37.us = phi i32 [ 0, %.lr.ph.i.us34.us ], [ %.1.i.us40.us, %bb.e ] ; 2 uses
  %.01519.i.us38.us = phi i32 [ %i.cl, %.lr.ph.i.us34.us ], [ %i.co, %bb.e ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us36.us
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !80 ; 2 uses
  %.not.i.us39.us = icmp eq i64 %indvars.iv.i.us36.us, %i.cd
  %i.co = sdiv i32 %.01519.i.us38.us, %i.cn
  %i.cp = srem i32 %.01519.i.us38.us, %i.cn
  br i1 %.not.i.us39.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us35.us
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.us36.us
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !58
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = mul i32 %i.cp, %i.cs
  %i.cu = add i32 %i.ct, %.01420.i.us37.us
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK2cv8MatShapeixEm.exit.i.us35.us
  %.1.i.us40.us = phi i32 [ %i.cu, %bb.d ], [ %.01420.i.us37.us, %_ZNK2cv8MatShapeixEm.exit.i.us35.us ] ; 2 uses
  %indvars.iv.next.i.us41.us = add nsw i64 %indvars.iv.i.us36.us, -1
  %i.cv = icmp sgt i64 %indvars.iv.i.us36.us, 0
  br i1 %i.cv, label %_ZNK2cv8MatShapeixEm.exit.i.us35.us, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us, !llvm.loop !164

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us.new: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us.new
  %indvars.iv55 = phi i64 [ %indvars.iv.next56.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us ] ; 5 uses
  %niter89 = phi i64 [ %niter89.next.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv55
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !58
  %i.cy = add nsw i64 %i.cx, %i.cg
  %i.cz = srem i64 %i.cy, %i.cg
  %i.da = load i64, ptr %i.ch, align 8, !tbaa !58
  %i.db = mul i64 %i.da, %i.cz
  %i.dc = getelementptr [8 x i8], ptr %i.ds, i64 %i.db
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv55
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !58
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv55
  store i64 %i.de, ptr %i.df, align 8, !tbaa !58
  %indvars.iv.next56 = or disjoint i64 %indvars.iv55, 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next56
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !58
  %i.di = add nsw i64 %i.dh, %i.cg
  %i.dj = srem i64 %i.di, %i.cg
  %i.dk = load i64, ptr %i.ch, align 8, !tbaa !58
  %i.dl = mul i64 %i.dk, %i.dj
  %i.dm = getelementptr [8 x i8], ptr %i.ds, i64 %i.dl
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %indvars.iv.next56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !58
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next56
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !58
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2           ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %..loopexit27_crit_edge.us.us.unr-lcssa, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us.new, !llvm.loop !346

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us: ; preds = %bb.e
  %i.dq = sext i32 %.1.i.us40.us to i64
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dr ; 3 uses
  %i.dt = mul nsw i64 %indvars.iv60, %i.cj        ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.dt ; 3 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.dt ; 3 uses
  br i1 %i.ck, label %.epil.preheader84, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us.new

..loopexit27_crit_edge.us.us.unr-lcssa:           ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us.new
  br i1 %lcmp.mod86.not, label %..loopexit27_crit_edge.us.us, label %.epil.preheader84

.epil.preheader84:                                ; preds = %..loopexit27_crit_edge.us.us.unr-lcssa, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us
  %indvars.iv55.epil.init = phi i64 [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us44.us ], [ %indvars.iv.next56.1, %..loopexit27_crit_edge.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv55.epil.init
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !58
  %i.dy = add nsw i64 %i.dx, %i.cg
  %i.dz = srem i64 %i.dy, %i.cg
  %i.ea = load i64, ptr %i.ch, align 8, !tbaa !58
  %i.eb = mul i64 %i.ea, %i.dz
  %i.ec = getelementptr [8 x i8], ptr %i.ds, i64 %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %indvars.iv55.epil.init
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !58
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv55.epil.init
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !58
  br label %..loopexit27_crit_edge.us.us

..loopexit27_crit_edge.us.us:                     ; preds = %..loopexit27_crit_edge.us.us.unr-lcssa, %.epil.preheader84
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph.i.us34.us, !llvm.loop !343

.lr.ph32.split.split:                             ; preds = %.lr.ph32.split
  br i1 %i.af, label %.lr.ph32.split.split.split, label %._crit_edge

.lr.ph32.split.split.split:                       ; preds = %.lr.ph32.split.split
  %i.eg = load ptr, ptr %i.ag, align 8, !tbaa !344, !nonnull !154, !align !157
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !80
  %i.ei = sext i32 %i.eh to i64                   ; 6 uses
  %i.ej = load ptr, ptr %i.ah, align 8, !tbaa !345, !nonnull !154, !align !155 ; 3 uses
  %i.ek = sext i32 %i.a to i64
  %i.el = zext nneg i32 %i.x to i64               ; 3 uses
  %wide.trip.count53 = sext i32 %i.c to i64
  %xtraiter = and i64 %i.el, 1
  %i.em = icmp eq i32 %i.x, 1
  %unroll_iter = and i64 %i.el, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod83 = trunc i32 %i.x to i1
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit

._crit_edge:                                      ; preds = %..loopexit27_crit_edge, %..loopexit27_crit_edge.us.us, %.loopexit.us, %.lr.ph32.split.split.us, %.lr.ph32.split.split, %bb.a
  ret void

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit: ; preds = %.lr.ph32.split.split.split, %..loopexit27_crit_edge
  %indvars.iv50 = phi i64 [ %i.ek, %.lr.ph32.split.split.split ], [ %indvars.iv.next51, %..loopexit27_crit_edge ] ; 2 uses
  %i.en = mul nsw i64 %indvars.iv50, %i.el        ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.en ; 3 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.en ; 3 uses
  br i1 %i.em, label %.epil.preheader, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !58
  %i.es = add nsw i64 %i.er, %i.ei
  %i.et = srem i64 %i.es, %i.ei
  %i.eu = load i64, ptr %i.ej, align 8, !tbaa !58
  %i.ev = mul i64 %i.eu, %i.et
  %i.ew = getelementptr [8 x i8], ptr %i.h, i64 %i.ev
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %indvars.iv
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !58
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !58
  %i.fc = add nsw i64 %i.fb, %i.ei
  %i.fd = srem i64 %i.fc, %i.ei
  %i.fe = load i64, ptr %i.ej, align 8, !tbaa !58
  %i.ff = mul i64 %i.fe, %i.fd
  %i.fg = getelementptr [8 x i8], ptr %i.h, i64 %i.ff
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %indvars.iv.next
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !58
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit27_crit_edge.unr-lcssa, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new, !llvm.loop !346

..loopexit27_crit_edge.unr-lcssa:                 ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new
  br i1 %lcmp.mod.not, label %..loopexit27_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit27_crit_edge.unr-lcssa, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ], [ %indvars.iv.next.1, %..loopexit27_crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.epil.init
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !58
  %i.fm = add nsw i64 %i.fl, %i.ei
  %i.fn = srem i64 %i.fm, %i.ei
  %i.fo = load i64, ptr %i.ej, align 8, !tbaa !58
  %i.fp = mul i64 %i.fo, %i.fn
  %i.fq = getelementptr [8 x i8], ptr %i.h, i64 %i.fp
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv.epil.init
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !58
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.epil.init
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !58
  br label %..loopexit27_crit_edge

..loopexit27_crit_edge:                           ; preds = %..loopexit27_crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit, !llvm.loop !343
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS0_3MatESA_RS8_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  tail call void @_ZZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS_3MatES5_RS3_ENKUlRKNS_5RangeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS0_3MatESA_RS8_EUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS_3MatES5_RS3_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !149
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !126
  store ptr %i.a, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !126
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !347
  store ptr %i.c, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #18
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS_3MatES5_RS3_ENKUlRKNS_5RangeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !112    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !114  ; 4 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !348
  %i.g = load ptr, ptr %0, align 8, !tbaa !350, !nonnull !154, !align !155
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !351, !nonnull !154, !align !157 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !352, !nonnull !154, !align !155 ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !79   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 1                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 156 ; 2 uses
  %i.p = add nsw i32 %i.m, -2
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.r = zext nneg i32 %i.p to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !353, !nonnull !154, !align !155
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !354, !nonnull !154, !align !157
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80   ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !355, !nonnull !154, !align !155
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !356, !nonnull !154
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !110, !range !165, !noundef !154
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp sgt i32 %i.x, 0                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.ae, label %.lr.ph32.split.us.preheader, label %.lr.ph32.split

.lr.ph32.split.us.preheader:                      ; preds = %.lr.ph32
  %i.ai = sext i32 %i.a to i64
  %i.aj = sext i32 %i.x to i64
  %wide.trip.count73 = sext i32 %i.c to i64
  %wide.trip.count68 = zext i32 %i.x to i64       ; 2 uses
  %xtraiter91 = and i64 %wide.trip.count68, 1
  %i.ak = icmp eq i32 %i.x, 1
  %unroll_iter94 = and i64 %wide.trip.count68, 2147483646
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %lcmp.mod93 = trunc i32 %i.x to i1
  br label %.lr.ph32.split.us

.lr.ph32.split.us:                                ; preds = %.lr.ph32.split.us.preheader, %.loopexit.us
  %indvars.iv70 = phi i64 [ %i.ai, %.lr.ph32.split.us.preheader ], [ %indvars.iv.next71, %.loopexit.us ] ; 3 uses
  br i1 %i.n, label %.lr.ph.i.us, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph32.split.us
  %i.al = load i32, ptr %i.o, align 4, !tbaa !43
  %i.am = zext i32 %i.al to i64
  %i.an = trunc nsw i64 %indvars.iv70 to i32
  br label %_ZNK2cv8MatShapeixEm.exit.i.us

_ZNK2cv8MatShapeixEm.exit.i.us:                   ; preds = %bb.c, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %i.r, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 5 uses
  %.01420.i.us = phi i32 [ 0, %.lr.ph.i.us ], [ %.1.i.us, %bb.c ] ; 2 uses
  %.01519.i.us = phi i32 [ %i.an, %.lr.ph.i.us ], [ %i.aq, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !80 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.i.us, %i.am
  %i.aq = sdiv i32 %.01519.i.us, %i.ap
  %i.ar = srem i32 %.01519.i.us, %i.ap
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !58
  %i.au = trunc i64 %i.at to i32
  %i.av = mul i32 %i.ar, %i.au
  %i.aw = add i32 %i.av, %.01420.i.us
  br label %bb.c

end_hunk_0
