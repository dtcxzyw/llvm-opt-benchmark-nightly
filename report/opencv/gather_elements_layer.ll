Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gather_elements_layer?download=true
inline.NumInlined: 906
inline.NumDeleted: 419
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZZN2cv3dnn23GatherElementsLayerImpl12forward_implIilEEvRKNS_3MatES5_RS3_ENKUlRKNS_5RangeEE_clES9_:bb.a
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %i.cr, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.h ] ; 5 uses
  %.01420.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.h ] ; 2 uses
  %.01519.i = phi i32 [ %.031, %.lr.ph.i.new ], [ %i.dg, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.h ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !56 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i, %i.cs
  %i.cx = sdiv i32 %.01519.i, %i.cw               ; 2 uses
  %i.cy = srem i32 %.01519.i, %i.cw
  br i1 %.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.1, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !38
  %i.db = trunc i64 %i.da to i32
  %i.dc = mul i32 %i.cy, %i.db
  %i.dd = add i32 %i.dc, %.01420.i
  br label %_ZNK2cv8MatShapeixEm.exit.i.1

_ZNK2cv8MatShapeixEm.exit.i.1:                    ; preds = %bb.f, %_ZNK2cv8MatShapeixEm.exit.i
  %.1.i = phi i32 [ %i.dd, %bb.f ], [ %.01420.i, %_ZNK2cv8MatShapeixEm.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !56 ; 2 uses
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i, %i.cs
  %i.dg = sdiv i32 %i.cx, %i.df                   ; 2 uses
  %i.dh = srem i32 %i.cx, %i.df
  br i1 %.not.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.1
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !38
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = mul i32 %i.dh, %i.dk
  %i.dm = add i32 %i.dl, %.1.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit.i.1
  %.1.i.1 = phi i32 [ %i.dm, %bb.g ], [ %.1.i, %_ZNK2cv8MatShapeixEm.exit.i.1 ] ; 3 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !1

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %i.dn = and i64 %i.cr, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dn, 0
  br i1 %lcmp.mod.not.not, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ %i.cr, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01420.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01519.i.epil.init = phi i32 [ %.031, %.lr.ph.i ], [ %i.dg, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = trunc i64 %i.ct to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %.not.i.epil = icmp eq i64 %indvars.iv.i.epil.init, %i.cs
  br i1 %.not.i.epil, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.epil.init
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !56
  %i.dq = srem i32 %.01519.i.epil.init, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !38
  %i.dt = trunc i64 %i.ds to i32
  %i.du = mul i32 %i.dq, %i.dt
  %i.dv = add i32 %i.du, %.01420.i.epil.init
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, %bb.i, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.unr-lcssa ], [ %i.dv, %bb.i ], [ %.01420.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.dw = sext i32 %.1.i.lcssa to i64
  %i.dx = lshr i64 %i.dw, 2
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit, %.lr.ph32.split
  %.014.lcssa.i = phi i64 [ 0, %.lr.ph32.split ], [ %i.dx, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.014.lcssa.i
  %i.dz = load i32, ptr %i.s, align 4, !tbaa !56  ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %.031
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.eb
  %i.ee = icmp sgt i32 %i.dz, 0
  br i1 %i.ee, label %.lr.ph, label %.loopexit27

.lr.ph:                                           ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit
  %i.ef = load i64, ptr %i.ad, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !38
  %i.ei = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = add nsw i64 %i.eh, %i.ej
  %i.el = srem i64 %i.ek, %i.ej
  %i.em = mul i64 %i.ef, %i.el
  %i.en = getelementptr [4 x i8], ptr %i.dy, i64 %i.em
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !56
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.er = load i32, ptr %i.s, align 4, !tbaa !56
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %bb.j, label %.loopexit27.loopexit, !llvm.loop !324

.loopexit27.loopexit:                             ; preds = %bb.j
  %.pre = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.loopexit27

.loopexit27:                                      ; preds = %.loopexit27.loopexit, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit
  %i.eu = phi i32 [ %.pre, %.loopexit27.loopexit ], [ %i.cm, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ] ; 2 uses
  %i.ev = add nsw i32 %.031, 1                    ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.eu
  br i1 %i.ew, label %.lr.ph32.split, label %._crit_edge, !llvm.loop !323
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS0_3MatESA_RS8_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79
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
  store ptr @_ZTIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS_3MatES5_RS3_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !99
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !334
  store ptr %i.c, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIllEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
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
  %i.a = load i32, ptr %1, align 4, !tbaa !66     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !67   ; 4 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.g = load ptr, ptr %0, align 8, !tbaa !340, !nonnull !100, !align !101
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !341, !nonnull !100, !align !102 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !342, !nonnull !100, !align !101 ; 6 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !55   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 1                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 156 ; 2 uses
  %i.p = add i32 %i.m, -2                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 6 uses
  %i.r = zext i32 %i.p to i64                     ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !343, !nonnull !100, !align !101
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !344, !nonnull !100, !align !102
  %i.x = load i32, ptr %i.w, align 4, !tbaa !56   ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !345, !nonnull !100, !align !101
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !346, !nonnull !100
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !64, !range !103, !noundef !100
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
  %i.ak = add nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.al = icmp eq i32 %i.p, 0
  %unroll_iter100 = and i64 %i.ak, 8589934590
  %i.am = and i64 %i.r, 1
  %lcmp.mod97.not.not = icmp eq i64 %i.am, 0
  %lcmp.mod99 = trunc i64 %i.ak to i1
  %xtraiter103 = and i64 %wide.trip.count68, 1
  %i.an = icmp eq i32 %i.x, 1
  %unroll_iter106 = and i64 %wide.trip.count68, 2147483646
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  %lcmp.mod105 = trunc i32 %i.x to i1
  br label %.lr.ph32.split.us

.lr.ph32.split.us:                                ; preds = %.lr.ph32.split.us.preheader, %.loopexit.us
  %indvars.iv70 = phi i64 [ %i.ai, %.lr.ph32.split.us.preheader ], [ %indvars.iv.next71, %.loopexit.us ] ; 3 uses
  br i1 %i.n, label %.lr.ph.i.us, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph32.split.us
  %i.ao = load i32, ptr %i.o, align 4, !tbaa !37
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = trunc nsw i64 %indvars.iv70 to i32      ; 2 uses
  br i1 %i.al, label %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.us

_ZNK2cv8MatShapeixEm.exit.i.us:                   ; preds = %.lr.ph.i.us, %bb.d
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %bb.d ], [ %i.r, %.lr.ph.i.us ] ; 5 uses
  %.01420.i.us = phi i32 [ %.1.i.us.1, %bb.d ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %.01519.i.us = phi i32 [ %i.bc, %bb.d ], [ %i.aq, %.lr.ph.i.us ] ; 2 uses
  %niter101 = phi i64 [ %niter101.next.1, %bb.d ], [ 0, %.lr.ph.i.us ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.i.us, %i.ap
  %i.at = sdiv i32 %.01519.i.us, %i.as            ; 2 uses
  %i.au = srem i32 %.01519.i.us, %i.as
  br i1 %.not.i.us, label %_ZNK2cv8MatShapeixEm.exit.i.us.1, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !38
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = mul i32 %i.au, %i.ax
  %i.az = add i32 %i.ay, %.01420.i.us
  br label %_ZNK2cv8MatShapeixEm.exit.i.us.1

_ZNK2cv8MatShapeixEm.exit.i.us.1:                 ; preds = %bb.b, %_ZNK2cv8MatShapeixEm.exit.i.us
  %.1.i.us = phi i32 [ %i.az, %bb.b ], [ %.01420.i.us, %_ZNK2cv8MatShapeixEm.exit.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, -1 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.us
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !56 ; 2 uses
  %.not.i.us.1 = icmp eq i64 %indvars.iv.next.i.us, %i.ap
  %i.bc = sdiv i32 %i.at, %i.bb                   ; 2 uses
  %i.bd = srem i32 %i.at, %i.bb
  br i1 %.not.i.us.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.us
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = mul i32 %i.bd, %i.bg
  %i.bi = add i32 %i.bh, %.1.i.us
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2cv8MatShapeixEm.exit.i.us.1
  %.1.i.us.1 = phi i32 [ %i.bi, %bb.c ], [ %.1.i.us, %_ZNK2cv8MatShapeixEm.exit.i.us.1 ] ; 3 uses
  %indvars.iv.next.i.us.1 = add nsw i64 %indvars.iv.i.us, -2 ; 2 uses
  %niter101.next.1 = add i64 %niter101, 2         ; 2 uses
  %niter101.ncmp.1.not = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1.not, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i.us, !llvm.loop !1

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa: ; preds = %bb.d
  br i1 %lcmp.mod97.not.not, label %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit

_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader:    ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa, %.lr.ph.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ %i.r, %.lr.ph.i.us ], [ %indvars.iv.next.i.us.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa ] ; 3 uses
  %.01420.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.us ], [ %.1.i.us.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa ] ; 2 uses
  %.01519.i.us.epil.init = phi i32 [ %i.aq, %.lr.ph.i.us ], [ %i.bc, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %.not.i.us.epil = icmp eq i64 %indvars.iv.i.us.epil.init, %i.ap
  br i1 %.not.i.us.epil, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us.epil.init
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !56
  %i.bl = srem i32 %.01519.i.us.epil.init, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.us.epil.init
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !38
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = mul i32 %i.bl, %i.bo
  %i.bq = add i32 %i.bp, %.01420.i.us.epil.init
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader, %bb.e, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa
  %.1.i.us.lcssa = phi i32 [ %.1.i.us.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit.unr-lcssa ], [ %i.bq, %bb.e ], [ %.01420.i.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader ]
  %i.br = sext i32 %.1.i.us.lcssa to i64
  %i.bs = lshr i64 %i.br, 3
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit, %.lr.ph32.split.us
  %.014.lcssa.i.us = phi i64 [ 0, %.lr.ph32.split.us ], [ %i.bs, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us.loopexit ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.014.lcssa.i.us ; 3 uses
  %i.bu = mul nsw i64 %indvars.iv70, %i.aj        ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bu ; 3 uses
  br i1 %i.af, label %.lr.ph30.us, label %.loopexit.us

.lr.ph30.us.new:                                  ; preds = %.lr.ph30.us, %.lr.ph30.us.new
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.lr.ph30.us.new ], [ 0, %.lr.ph30.us ] ; 4 uses
  %niter107 = phi i64 [ %niter107.next.1, %.lr.ph30.us.new ], [ 0, %.lr.ph30.us ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv65
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !38
  %i.bz = add nsw i64 %i.by, %i.cu
  %i.ca = srem i64 %i.bz, %i.cu
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv65
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !38
  %indvars.iv.next66 = or disjoint i64 %indvars.iv65, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next66
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !38
  %i.cg = add nsw i64 %i.cf, %i.cu
  %i.ch = srem i64 %i.cg, %i.cu
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next66
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !38
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter107.next.1 = add i64 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i64 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph30.us.new, !llvm.loop !335

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %.lr.ph30.us.new
  br i1 %lcmp.mod104.not, label %.loopexit.us, label %.epil.preheader102

.epil.preheader102:                               ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph30.us
  %indvars.iv65.epil.init = phi i64 [ 0, %.lr.ph30.us ], [ %indvars.iv.next66.1, %.loopexit.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv65.epil.init
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !38
  %i.cn = add nsw i64 %i.cm, %i.cu
  %i.co = srem i64 %i.cn, %i.cu
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv65.epil.init
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !38
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.epil.preheader102, %.loopexit.us.loopexit.unr-lcssa, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph32.split.us, !llvm.loop !336

.lr.ph30.us:                                      ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us
  %i.cs = load ptr, ptr %i.ag, align 8, !tbaa !347, !nonnull !100, !align !102
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !56
  %i.cu = sext i32 %i.ct to i64                   ; 6 uses
  br i1 %i.an, label %.epil.preheader102, label %.lr.ph30.us.new

.lr.ph32.split:                                   ; preds = %.lr.ph32
  br i1 %i.n, label %.lr.ph32.split.split.us, label %.lr.ph32.split.split

.lr.ph32.split.split.us:                          ; preds = %.lr.ph32.split
  %i.cv = load i32, ptr %i.o, align 4, !tbaa !37
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  br i1 %i.af, label %.lr.ph32.split.split.us.split.us, label %._crit_edge

.lr.ph32.split.split.us.split.us:                 ; preds = %.lr.ph32.split.split.us
  %i.cx = load ptr, ptr %i.ag, align 8, !tbaa !347, !nonnull !100, !align !102
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !56
  %i.cz = sext i32 %i.cy to i64                   ; 6 uses
  %i.da = load ptr, ptr %i.ah, align 8, !tbaa !348, !nonnull !100, !align !101 ; 3 uses
  %i.db = sext i32 %i.a to i64
  %i.dc = zext nneg i32 %i.x to i64
  %wide.trip.count63 = sext i32 %i.c to i64
  %wide.trip.count58 = zext nneg i32 %i.x to i64  ; 2 uses
  %i.dd = add nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.de = icmp eq i32 %i.p, 0
  %unroll_iter88 = and i64 %i.dd, 8589934590
  %i.df = and i64 %i.r, 1
  %lcmp.mod85.not.not = icmp eq i64 %i.df, 0
  %lcmp.mod87 = trunc i64 %i.dd to i1
  %xtraiter91 = and i64 %wide.trip.count58, 1
  %i.dg = icmp eq i32 %i.x, 1
  %unroll_iter94 = and i64 %wide.trip.count58, 2147483646
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  %lcmp.mod93 = trunc i32 %i.x to i1
  br label %.lr.ph.i.us34.us

.lr.ph.i.us34.us:                                 ; preds = %..loopexit27_crit_edge.us.us, %.lr.ph32.split.split.us.split.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %..loopexit27_crit_edge.us.us ], [ %i.db, %.lr.ph32.split.split.us.split.us ] ; 3 uses
  %i.dh = trunc nsw i64 %indvars.iv60 to i32      ; 2 uses
  br i1 %i.de, label %_ZNK2cv8MatShapeixEm.exit.i.us35.us.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.us35.us

_ZNK2cv8MatShapeixEm.exit.i.us35.us:              ; preds = %.lr.ph.i.us34.us, %bb.h
  %indvars.iv.i.us36.us = phi i64 [ %indvars.iv.next.i.us41.us.1, %bb.h ], [ %i.r, %.lr.ph.i.us34.us ] ; 5 uses
  %.01420.i.us37.us = phi i32 [ %.1.i.us40.us.1, %bb.h ], [ 0, %.lr.ph.i.us34.us ] ; 2 uses
  %.01519.i.us38.us = phi i32 [ %i.dt, %bb.h ], [ %i.dh, %.lr.ph.i.us34.us ] ; 2 uses
  %niter89 = phi i64 [ %niter89.next.1, %bb.h ], [ 0, %.lr.ph.i.us34.us ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us36.us
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !56 ; 2 uses
  %.not.i.us39.us = icmp eq i64 %indvars.iv.i.us36.us, %i.cw
  %i.dk = sdiv i32 %.01519.i.us38.us, %i.dj       ; 2 uses
  %i.dl = srem i32 %.01519.i.us38.us, %i.dj
  br i1 %.not.i.us39.us, label %_ZNK2cv8MatShapeixEm.exit.i.us35.us.1, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us35.us
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.us36.us
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !38
  %i.do = trunc i64 %i.dn to i32
  %i.dp = mul i32 %i.dl, %i.do
  %i.dq = add i32 %i.dp, %.01420.i.us37.us
  br label %_ZNK2cv8MatShapeixEm.exit.i.us35.us.1

_ZNK2cv8MatShapeixEm.exit.i.us35.us.1:            ; preds = %bb.f, %_ZNK2cv8MatShapeixEm.exit.i.us35.us
  %.1.i.us40.us = phi i32 [ %i.dq, %bb.f ], [ %.01420.i.us37.us, %_ZNK2cv8MatShapeixEm.exit.i.us35.us ] ; 2 uses
  %indvars.iv.next.i.us41.us = add nsw i64 %indvars.iv.i.us36.us, -1 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.us41.us
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56 ; 2 uses
  %.not.i.us39.us.1 = icmp eq i64 %indvars.iv.next.i.us41.us, %i.cw
  %i.dt = sdiv i32 %i.dk, %i.ds                   ; 2 uses
  %i.du = srem i32 %i.dk, %i.ds
  br i1 %.not.i.us39.us.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us35.us.1
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.us41.us
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !38
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = mul i32 %i.du, %i.dx
  %i.dz = add i32 %i.dy, %.1.i.us40.us
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit.i.us35.us.1
  %.1.i.us40.us.1 = phi i32 [ %i.dz, %bb.g ], [ %.1.i.us40.us, %_ZNK2cv8MatShapeixEm.exit.i.us35.us.1 ] ; 3 uses
  %indvars.iv.next.i.us41.us.1 = add nsw i64 %indvars.iv.i.us36.us, -2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2           ; 2 uses
  %niter89.ncmp.1.not = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1.not, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i.us35.us, !llvm.loop !1

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa: ; preds = %bb.h
  br i1 %lcmp.mod85.not.not, label %_ZNK2cv8MatShapeixEm.exit.i.us35.us.epil.preheader, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us

_ZNK2cv8MatShapeixEm.exit.i.us35.us.epil.preheader: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa, %.lr.ph.i.us34.us
  %indvars.iv.i.us36.us.epil.init = phi i64 [ %i.r, %.lr.ph.i.us34.us ], [ %indvars.iv.next.i.us41.us.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa ] ; 3 uses
  %.01420.i.us37.us.epil.init = phi i32 [ 0, %.lr.ph.i.us34.us ], [ %.1.i.us40.us.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa ] ; 2 uses
  %.01519.i.us38.us.epil.init = phi i32 [ %i.dh, %.lr.ph.i.us34.us ], [ %i.dt, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %.not.i.us39.us.epil = icmp eq i64 %indvars.iv.i.us36.us.epil.init, %i.cw
  br i1 %.not.i.us39.us.epil, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us, label %bb.i

bb.i:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us35.us.epil.preheader
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us36.us.epil.init
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !56
  %i.ec = srem i32 %.01519.i.us38.us.epil.init, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.us36.us.epil.init
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !38
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = mul i32 %i.ec, %i.ef
  %i.eh = add i32 %i.eg, %.01420.i.us37.us.epil.init
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us35.us.epil.preheader, %bb.i, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa
  %.1.i.us40.us.lcssa = phi i32 [ %.1.i.us40.us.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.unr-lcssa ], [ %i.eh, %bb.i ], [ %.01420.i.us37.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.us35.us.epil.preheader ]
  %i.ei = sext i32 %.1.i.us40.us.lcssa to i64
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ej ; 3 uses
  %i.el = mul nsw i64 %indvars.iv60, %i.dc        ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.el ; 3 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.el ; 3 uses
  br i1 %i.dg, label %.epil.preheader90, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.new

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.new: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.new
  %indvars.iv55 = phi i64 [ %indvars.iv.next56.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us ] ; 5 uses
  %niter95 = phi i64 [ %niter95.next.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv55
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !38
  %i.eq = add nsw i64 %i.ep, %i.cz
  %i.er = srem i64 %i.eq, %i.cz
  %i.es = load i64, ptr %i.da, align 8, !tbaa !38
  %i.et = mul i64 %i.es, %i.er
  %i.eu = getelementptr [8 x i8], ptr %i.ek, i64 %i.et
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %indvars.iv55
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !38
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv55
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !38
  %indvars.iv.next56 = or disjoint i64 %indvars.iv55, 1 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next56
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !38
  %i.fa = add nsw i64 %i.ez, %i.cz
  %i.fb = srem i64 %i.fa, %i.cz
  %i.fc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.fd = mul i64 %i.fc, %i.fb
  %i.fe = getelementptr [8 x i8], ptr %i.ek, i64 %i.fd
  %i.ff = getelementptr [8 x i8], ptr %i.fe, i64 %indvars.iv.next56
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !38
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next56
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !38
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2 ; 2 uses
  %niter95.next.1 = add i64 %niter95, 2           ; 2 uses
  %niter95.ncmp.1 = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1, label %..loopexit27_crit_edge.us.us.unr-lcssa, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.new, !llvm.loop !337

..loopexit27_crit_edge.us.us.unr-lcssa:           ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us.new
  br i1 %lcmp.mod92.not, label %..loopexit27_crit_edge.us.us, label %.epil.preheader90

.epil.preheader90:                                ; preds = %..loopexit27_crit_edge.us.us.unr-lcssa, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us
  %indvars.iv55.epil.init = phi i64 [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.loopexit.us42.us ], [ %indvars.iv.next56.1, %..loopexit27_crit_edge.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv55.epil.init
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !38
  %i.fk = add nsw i64 %i.fj, %i.cz
  %i.fl = srem i64 %i.fk, %i.cz
  %i.fm = load i64, ptr %i.da, align 8, !tbaa !38
  %i.fn = mul i64 %i.fm, %i.fl
  %i.fo = getelementptr [8 x i8], ptr %i.ek, i64 %i.fn
  %i.fp = getelementptr [8 x i8], ptr %i.fo, i64 %indvars.iv55.epil.init
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !38
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv55.epil.init
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !38
  br label %..loopexit27_crit_edge.us.us

..loopexit27_crit_edge.us.us:                     ; preds = %..loopexit27_crit_edge.us.us.unr-lcssa, %.epil.preheader90
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph.i.us34.us, !llvm.loop !336

.lr.ph32.split.split:                             ; preds = %.lr.ph32.split
  br i1 %i.af, label %.lr.ph32.split.split.split, label %._crit_edge

.lr.ph32.split.split.split:                       ; preds = %.lr.ph32.split.split
  %i.fs = load ptr, ptr %i.ag, align 8, !tbaa !347, !nonnull !100, !align !102
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !56
  %i.fu = sext i32 %i.ft to i64                   ; 6 uses
  %i.fv = load ptr, ptr %i.ah, align 8, !tbaa !348, !nonnull !100, !align !101 ; 3 uses
  %i.fw = sext i32 %i.a to i64
  %i.fx = zext nneg i32 %i.x to i64
  %wide.trip.count53 = sext i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fy = icmp eq i32 %i.x, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod83 = trunc i32 %i.x to i1
  br label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit

._crit_edge:                                      ; preds = %..loopexit27_crit_edge, %..loopexit27_crit_edge.us.us, %.loopexit.us, %.lr.ph32.split.split.us, %.lr.ph32.split.split, %bb.a
  ret void

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit: ; preds = %.lr.ph32.split.split.split, %..loopexit27_crit_edge
  %indvars.iv50 = phi i64 [ %i.fw, %.lr.ph32.split.split.split ], [ %indvars.iv.next51, %..loopexit27_crit_edge ] ; 2 uses
  %i.fz = mul nsw i64 %indvars.iv50, %i.fx        ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.fz ; 3 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.fz ; 3 uses
  br i1 %i.fy, label %.epil.preheader, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new

_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new: ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new ], [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !38
  %i.ge = add nsw i64 %i.gd, %i.fu
  %i.gf = srem i64 %i.ge, %i.fu
  %i.gg = load i64, ptr %i.fv, align 8, !tbaa !38
  %i.gh = mul i64 %i.gg, %i.gf
  %i.gi = getelementptr [8 x i8], ptr %i.h, i64 %i.gh
  %i.gj = getelementptr [8 x i8], ptr %i.gi, i64 %indvars.iv
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !38
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !38
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !38
  %i.go = add nsw i64 %i.gn, %i.fu
  %i.gp = srem i64 %i.go, %i.fu
  %i.gq = load i64, ptr %i.fv, align 8, !tbaa !38
  %i.gr = mul i64 %i.gq, %i.gp
  %i.gs = getelementptr [8 x i8], ptr %i.h, i64 %i.gr
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %indvars.iv.next
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !38
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !38
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit27_crit_edge.unr-lcssa, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new, !llvm.loop !337

..loopexit27_crit_edge.unr-lcssa:                 ; preds = %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.new
  br i1 %lcmp.mod.not, label %..loopexit27_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit27_crit_edge.unr-lcssa, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit ], [ %indvars.iv.next.1, %..loopexit27_crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.epil.init
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !38
  %i.gy = add nsw i64 %i.gx, %i.fu
  %i.gz = srem i64 %i.gy, %i.fu
  %i.ha = load i64, ptr %i.fv, align 8, !tbaa !38
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = getelementptr [8 x i8], ptr %i.h, i64 %i.hb
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %indvars.iv.epil.init
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !38
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.epil.init
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !38
  br label %..loopexit27_crit_edge

..loopexit27_crit_edge:                           ; preds = %..loopexit27_crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit, !llvm.loop !336
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS0_3MatESA_RS8_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79
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
  store ptr @_ZTIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS_3MatES5_RS3_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !99
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !349
  store ptr %i.c, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn23GatherElementsLayerImpl12forward_implIflEEvRKNS1_3MatES7_RS5_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
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
  %i.a = load i32, ptr %1, align 4, !tbaa !66     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !67   ; 4 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !354
  %i.g = load ptr, ptr %0, align 8, !tbaa !355, !nonnull !100, !align !101
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !356, !nonnull !100, !align !102 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !357, !nonnull !100, !align !101 ; 6 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !55   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 1                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 156 ; 2 uses
  %i.p = add i32 %i.m, -2                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 6 uses
  %i.r = zext i32 %i.p to i64                     ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !358, !nonnull !100, !align !101
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !359, !nonnull !100, !align !102
  %i.x = load i32, ptr %i.w, align 4, !tbaa !56   ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !360, !nonnull !100, !align !101
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !94  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !361, !nonnull !100
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !64, !range !103, !noundef !100
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
  %i.ak = add nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.al = icmp eq i32 %i.p, 0
  %unroll_iter100 = and i64 %i.ak, 8589934590
  %i.am = and i64 %i.r, 1
  %lcmp.mod97.not.not = icmp eq i64 %i.am, 0
  %lcmp.mod99 = trunc i64 %i.ak to i1
  %xtraiter103 = and i64 %wide.trip.count68, 1
  %i.an = icmp eq i32 %i.x, 1
  %unroll_iter106 = and i64 %wide.trip.count68, 2147483646
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  %lcmp.mod105 = trunc i32 %i.x to i1
  br label %.lr.ph32.split.us

.lr.ph32.split.us:                                ; preds = %.lr.ph32.split.us.preheader, %.loopexit.us
  %indvars.iv70 = phi i64 [ %i.ai, %.lr.ph32.split.us.preheader ], [ %indvars.iv.next71, %.loopexit.us ] ; 3 uses
  br i1 %i.n, label %.lr.ph.i.us, label %_ZN2cv3dnnL15calculateOffsetEiRKNS_8MatShapeEiRKNS_7MatStepE.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph32.split.us
  %i.ao = load i32, ptr %i.o, align 4, !tbaa !37
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = trunc nsw i64 %indvars.iv70 to i32      ; 2 uses
  br i1 %i.al, label %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.us

_ZNK2cv8MatShapeixEm.exit.i.us:                   ; preds = %.lr.ph.i.us, %bb.d
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %bb.d ], [ %i.r, %.lr.ph.i.us ] ; 5 uses
  %.01420.i.us = phi i32 [ %.1.i.us.1, %bb.d ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %.01519.i.us = phi i32 [ %i.bc, %bb.d ], [ %i.aq, %.lr.ph.i.us ] ; 2 uses
  %niter101 = phi i64 [ %niter101.next.1, %bb.d ], [ 0, %.lr.ph.i.us ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.i.us, %i.ap
  %i.at = sdiv i32 %.01519.i.us, %i.as            ; 2 uses
  %i.au = srem i32 %.01519.i.us, %i.as
  br i1 %.not.i.us, label %_ZNK2cv8MatShapeixEm.exit.i.us.1, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
end_hunk_0
