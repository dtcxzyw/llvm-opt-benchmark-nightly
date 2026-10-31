Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/sample_strategy?download=true
inline.NumInlined: 841
inline.NumDeleted: 415
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt17_Function_handlerIFiiiiPiS0_EZN8LightGBM12GOSSStrategy7BaggingEiPNS2_11TreeLearnerEPfS6_EUliiiS0_S0_E_E9_M_invokeERKSt9_Any_dataOiSC_SC_OS0_SD_:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.j = tail call noundef i32 @_ZN8LightGBM12GOSSStrategy6HelperEiiPiPfS2_(ptr noundef nonnull align 8 dereferenceable(289) %i.e, i32 noundef %i.b, i32 noundef %i.c, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.i)
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFiiiiPiS0_EZN8LightGBM12GOSSStrategy7BaggingEiPNS2_11TreeLearnerEPfS6_EUliiiS0_S0_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM12GOSSStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM12GOSSStrategy7BaggingEiPNS_11TreeLearnerEPfS3_EUliiiPiS4_E_, ptr %0, align 8, !tbaa !156
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM12GOSSStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !125
  store ptr %i.a, ptr %0, align 8, !tbaa !125
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM12GOSSStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !125
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !194
  store ptr %i.c, ptr %0, align 8, !tbaa !125
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM12GOSSStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !125    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM12GOSSStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM12GOSSStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM12GOSSStrategy7BaggingEiPNS1_11TreeLearnerEPfS5_EUliiiPiS6_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM12GOSSStrategy6HelperEiiPiPfS2_(ptr noundef nonnull align 8 dereferenceable(289) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.42", align 8    ; 9 uses
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.k, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.b = zext nneg i32 %2 to i64                  ; 4 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 5 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !205
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = sext i32 %1 to i64                       ; 2 uses
  br i1 %i.k, label %.preheader.lr.ph.split, label %._crit_edge102.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !97
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i32 %i.j, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod153 = trunc i32 %i.j to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv119 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next120, %._crit_edge ] ; 3 uses
  %i.q = add nsw i64 %indvars.iv119, %i.l         ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv119 ; 2 uses
  %.promoted = load float, ptr %i.r, align 4, !tbaa !159 ; 2 uses
  br i1 %i.p, label %.epil.preheader, label %.preheader.new

._crit_edge102.split:                             ; preds = %._crit_edge, %.preheader.lr.ph
  %i.s = uitofp nneg i32 %2 to double             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.w = load double, ptr %i.v, align 8, !tbaa !133
  %i.x = fmul double %i.w, %i.s
  %i.y = fptosi double %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.aa = load double, ptr %i.z, align 8, !tbaa !134
  %i.ab = fmul double %i.aa, %i.s
  %i.ac = fptosi double %i.ab to i32              ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1) ; 3 uses
  %i.ad = add nsw i32 %.sroa.speculated, -1       ; 2 uses
  %i.ae = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %2, i32 noundef %i.ad)
          to label %.lr.ph115 unwind label %bb.h  ; 0 uses

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.epil.init = phi float [ %.promoted, %.preheader ], [ %i.bg, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.af = mul nsw i64 %indvars.iv.epil.init, %i.o
  %i.ag = add nsw i64 %i.q, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !159
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ag
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !159
  %i.al = fmul float %i.ai, %i.ak
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.al)
  %i.an = fadd float %.epil.init, %i.am
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa151 = phi float [ %i.bg, %._crit_edge.unr-lcssa ], [ %i.an, %.epil.preheader ]
  store float %.lcssa151, ptr %i.r, align 4, !tbaa !159
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %i.b
  br i1 %exitcond123.not, label %._crit_edge102.split, label %.preheader, !llvm.loop !195

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %i.ao = phi float [ %i.bg, %.preheader.new ], [ %.promoted, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ap = mul nsw i64 %indvars.iv, %i.o
  %i.aq = add nsw i64 %i.q, %i.ap                 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !159
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aq
  %i.au = load float, ptr %i.at, align 4, !tbaa !159
  %i.av = fmul float %i.as, %i.au
  %i.aw = tail call noundef float @llvm.fabs.f32(float %i.av)
  %i.ax = fadd float %i.ao, %i.aw
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ay = mul nsw i64 %indvars.iv.next, %i.o
  %i.az = add nsw i64 %i.q, %i.ay                 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.az
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !159
  %i.be = fmul float %i.bb, %i.bd
  %i.bf = tail call noundef float @llvm.fabs.f32(float %i.be)
  %i.bg = fadd float %i.ax, %i.bf                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !196

.lr.ph115:                                        ; preds = %._crit_edge102.split
  %i.bh = zext nneg i32 %i.ad to i64
  %i.bi = load ptr, ptr %6, align 8, !tbaa !157   ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !159
  %i.bl = sub nsw i32 %2, %.sroa.speculated
  %i.bm = sitofp i32 %i.bl to float
  %i.bn = sitofp i32 %i.ac to float
  %i.bo = fdiv float %i.bm, %i.bn                 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bt = sext i32 %1 to i64
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.c

._crit_edge116:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge116
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bi to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bx) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge116, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph115, %.loopexit
  %indvars.iv134 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next135, %.loopexit ] ; 4 uses
  %.076112 = phi i32 [ 0, %.lr.ph115 ], [ %.177, %.loopexit ] ; 8 uses
  %.078111 = phi i32 [ %2, %.lr.ph115 ], [ %.2, %.loopexit ] ; 6 uses
  %.080110 = phi i32 [ 0, %.lr.ph115 ], [ %.282, %.loopexit ] ; 6 uses
  %i.by = add nsw i64 %indvars.iv134, %i.bt       ; 9 uses
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !56 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge106

.lr.ph:                                           ; preds = %bb.c
  %i.cb = load i32, ptr %i.bq, align 4, !tbaa !97
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %wide.trip.count127 = zext nneg i32 %i.bz to i64 ; 2 uses
  %xtraiter155 = and i64 %wide.trip.count127, 1
  %i.cd = icmp eq i32 %i.bz, 1
  br i1 %i.cd, label %.epil.preheader154, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter159 = and i64 %wide.trip.count127, 2147483646
  br label %bb.d

._crit_edge106.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %._crit_edge106, label %.epil.preheader154

.epil.preheader154:                               ; preds = %._crit_edge106.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv124.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next125.1, %._crit_edge106.loopexit.unr-lcssa ]
  %.074103.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.df, %._crit_edge106.loopexit.unr-lcssa ]
  %lcmp.mod158 = trunc i32 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod158)
  %i.ce = mul nsw i64 %indvars.iv124.epil.init, %i.cc
  %i.cf = add nsw i64 %i.ce, %i.by                ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !159
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cf
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !159
  %i.ck = fmul float %i.ch, %i.cj
  %i.cl = call noundef float @llvm.fabs.f32(float %i.ck)
  %i.cm = fadd float %.074103.epil.init, %i.cl
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %.epil.preheader154, %._crit_edge106.loopexit.unr-lcssa, %bb.c
  %.074.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.df, %._crit_edge106.loopexit.unr-lcssa ], [ %i.cm, %.epil.preheader154 ]
  %i.cn = fcmp ult float %.074.lcssa, %i.bk
  br i1 %i.cn, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv124 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next125.1, %bb.d ] ; 3 uses
  %.074103 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.df, %bb.d ]
  %niter160 = phi i64 [ 0, %.lr.ph.new ], [ %niter160.next.1, %bb.d ]
  %i.co = mul nsw i64 %indvars.iv124, %i.cc
  %i.cp = add nsw i64 %i.co, %i.by                ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !159
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cp
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !159
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = call noundef float @llvm.fabs.f32(float %i.cu)
  %i.cw = fadd float %.074103, %i.cv
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1
  %i.cx = mul nsw i64 %indvars.iv.next125, %i.cc
  %i.cy = add nsw i64 %i.cx, %i.by                ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !159
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cy
  %i.dc = load float, ptr %i.db, align 4, !tbaa !159
  %i.dd = fmul float %i.da, %i.dc
  %i.de = call noundef float @llvm.fabs.f32(float %i.dd)
  %i.df = fadd float %i.cw, %i.de                 ; 3 uses
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %niter160.next.1 = add i64 %niter160, 2         ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge106.loopexit.unr-lcssa, label %bb.d, !llvm.loop !197

bb.e:                                             ; preds = %._crit_edge106
  %i.dg = add nsw i32 %.080110, 1
  %i.dh = sext i32 %.080110 to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dh
  %i.dj = trunc nsw i64 %i.by to i32
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !143
  %i.dk = add nsw i32 %.076112, 1
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge106
  %i.dl = load i32, ptr %i.bs, align 4, !tbaa !49
  %i.dm = trunc nsw i64 %i.by to i32              ; 3 uses
  %i.dn = sdiv i32 %i.dm, %i.dl
  %i.do = sext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !142
  %i.ds = mul i32 %i.dr, 214013
  %i.dt = add i32 %i.ds, 2531011                  ; 2 uses
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !142
  %i.du = lshr i32 %i.dt, 16
  %i.dv = and i32 %i.du, 32767
  %i.dw = uitofp nneg i32 %i.dv to float
  %i.dx = fmul nnan float %i.dw, f0x38000000
  %.neg = sub i32 %i.ac, %.080110
  %i.dy = add i32 %.neg, %.076112
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = add i32 %2, %.076112
  %i.eb = trunc i64 %indvars.iv134 to i32
  %i.ec = add i32 %.sroa.speculated, %i.eb
  %i.ed = sub i32 %i.ea, %i.ec
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = fdiv double %i.dz, %i.ee
  %i.eg = fpext float %i.dx to double
  %i.eh = fcmp ogt double %i.ef, %i.eg
  br i1 %i.eh, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ei = add nsw i32 %.080110, 1                 ; 4 uses
  %i.ej = sext i32 %.080110 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ej
  store i32 %i.dm, ptr %i.ek, align 4, !tbaa !143
  %i.el = load i32, ptr %i.bp, align 8, !tbaa !56 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph109, label %.loopexit

.lr.ph109:                                        ; preds = %bb.g
  %i.en = load i32, ptr %i.bq, align 4, !tbaa !97 ; 2 uses
  %i.eo = sext i32 %i.en to i64                   ; 3 uses
  %wide.trip.count132 = zext nneg i32 %i.el to i64 ; 6 uses
  %min.iters.check = icmp ugt i32 %i.el, 3
  %ident.check.not = icmp eq i32 %i.en, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph109
  %7 = add i64 %indvars.iv134, %i.l               ; 2 uses
  %8 = shl i64 %7, 2                              ; 2 uses
  %9 = getelementptr i8, ptr %4, i64 %8
  %10 = add i64 %7, %wide.trip.count132
  %i.ep = shl i64 %10, 2                          ; 2 uses
  %11 = getelementptr i8, ptr %4, i64 %i.ep
  %scevgep147 = getelementptr i8, ptr %5, i64 %8
  %scevgep149 = getelementptr i8, ptr %5, i64 %i.ep
  %bound0 = icmp ult ptr %9, %scevgep149
  %bound1 = icmp ult ptr %scevgep147, %11
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count132, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = add nsw i64 %index, %i.by               ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eq ; 2 uses
  %wide.load = load <4 x float>, ptr %i.er, align 4, !tbaa !159, !alias.scope !206, !noalias !207
  %i.es = fmul <4 x float> %broadcast.splat, %wide.load
  store <4 x float> %i.es, ptr %i.er, align 4, !tbaa !159, !alias.scope !206, !noalias !207
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.eq ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.et, align 4, !tbaa !159, !alias.scope !207
  %i.eu = fmul <4 x float> %broadcast.splat, %wide.load150
  store <4 x float> %i.eu, ptr %i.et, align 4, !tbaa !159, !alias.scope !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count132
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph109, %middle.block
  %indvars.iv129.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph109 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter161 = and i64 %wide.trip.count132, 1
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ew = mul nsw i64 %indvars.iv129.ph, %i.eo
  %i.ex = add nsw i64 %i.ew, %i.by                ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !159
  %i.fa = fmul float %i.bo, %i.ez
  store float %i.fa, ptr %i.ey, align 4, !tbaa !159
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ex ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !159
  %i.fd = fmul float %i.bo, %i.fc
  store float %i.fd, ptr %i.fb, align 4, !tbaa !159
  %indvars.iv.next130.prol = or disjoint i64 %indvars.iv129.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv129.unr = phi i64 [ %indvars.iv129.ph, %scalar.ph.preheader ], [ %indvars.iv.next130.prol, %scalar.ph.prol ]
  %i.fe = add nsw i64 %wide.trip.count132, -1
  %i.ff = icmp eq i64 %indvars.iv129.ph, %i.fe
  br i1 %i.ff, label %.loopexit, label %scalar.ph

bb.h:                                             ; preds = %._crit_edge102.split
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %6, align 8, !tbaa !157   ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorIfSaIfEED2Ev.exit92, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit92

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %scalar.ph ], [ %indvars.iv129.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.fm = mul nsw i64 %indvars.iv129, %i.eo
  %i.fn = add nsw i64 %i.fm, %i.by                ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fn ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !159
  %i.fq = fmul float %i.bo, %i.fp
  store float %i.fq, ptr %i.fo, align 4, !tbaa !159
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fn ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !159
  %i.ft = fmul float %i.bo, %i.fs
  store float %i.ft, ptr %i.fr, align 4, !tbaa !159
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %i.fu = mul nsw i64 %indvars.iv.next130, %i.eo
  %i.fv = add nsw i64 %i.fu, %i.by                ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fv ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !159
  %i.fy = fmul float %i.bo, %i.fx
  store float %i.fy, ptr %i.fw, align 4, !tbaa !159
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fv ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !159
  %i.gb = fmul float %i.bo, %i.ga
  store float %i.gb, ptr %i.fz, align 4, !tbaa !159
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %exitcond133.not.1 = icmp eq i64 %indvars.iv.next130.1, %wide.trip.count132
  br i1 %exitcond133.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !202

bb.j:                                             ; preds = %bb.f
  %i.gc = add nsw i32 %.078111, -1                ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gd
  store i32 %i.dm, ptr %i.ge, align 4, !tbaa !143
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %bb.j, %bb.e
  %.282 = phi i32 [ %i.dg, %bb.e ], [ %.080110, %bb.j ], [ %i.ei, %bb.g ], [ %i.ei, %middle.block ], [ %i.ei, %scalar.ph ], [ %i.ei, %scalar.ph.prol.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.078111, %bb.e ], [ %i.gc, %bb.j ], [ %.078111, %bb.g ], [ %.078111, %middle.block ], [ %.078111, %scalar.ph ], [ %.078111, %scalar.ph.prol.loopexit ]
  %.177 = phi i32 [ %i.dk, %bb.e ], [ %.076112, %bb.j ], [ %.076112, %bb.g ], [ %.076112, %middle.block ], [ %.076112, %scalar.ph ], [ %.076112, %scalar.ph.prol.loopexit ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %i.b
  br i1 %exitcond138.not, label %._crit_edge116, label %bb.c, !llvm.loop !203

_ZNSt6vectorIfSaIfEED2Ev.exit92:                  ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  resume { ptr, i32 } %i.fg

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.0 = phi i32 [ %.282, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %.not44 = icmp slt i32 %1, %i.a
  br i1 %.not44, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !157    ; 15 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.c = phi i32 [ %i.a, %.lr.ph ], [ %i.br, %tailrecurse ] ; 3 uses
  %.tr3646 = phi i32 [ %2, %.lr.ph ], [ %spec.select38, %tailrecurse ] ; 2 uses
  %.tr3545 = phi i32 [ %1, %.lr.ph ], [ %spec.select, %tailrecurse ] ; 7 uses
  %i.d = add nsw i32 %.tr3545, -1                 ; 3 uses
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !159 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.b
  %.076.i.ph = phi i32 [ %i.t, %bb.i ], [ %i.d, %bb.b ]
  %.074.i.ph = phi i64 [ %indvars.iv.next115.i, %bb.i ], [ %i.e, %bb.b ]
  %.072.i.ph = phi i32 [ %.173.i, %bb.i ], [ %i.d, %bb.b ]
  %.071.i.ph = phi i32 [ %i.ac, %bb.i ], [ %i.c, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.h
  %.076.i = phi i32 [ %i.t, %bb.h ], [ %.076.i.ph, %.outer ] ; 2 uses
  %.074.i = phi i64 [ %indvars.iv.next115.i, %bb.h ], [ %.074.i.ph, %.outer ]
  %.072.i = phi i32 [ %.173.i, %bb.h ], [ %.072.i.ph, %.outer ] ; 6 uses
  %i.h = sext i32 %.076.i to i64
  %i.i = add i32 %.076.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv127.i = phi i32 [ %indvars.iv.next128.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !159 ; 4 uses
  %i.l = fcmp ogt float %i.k, %i.g
  %indvars.iv.next128.i = add i32 %indvars.iv127.i, 1
  br i1 %i.l, label %bb.d, label %.preheader.i.preheader, !llvm.loop !208

.preheader.i.preheader:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %.preheader.i ], [ %.074.i, %.preheader.i.preheader ]
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1 ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next115.i
  %i.o = load float, ptr %i.n, align 4, !tbaa !159 ; 2 uses
  %i.p = fcmp ule float %i.g, %i.o
  %i.q = trunc nsw i64 %indvars.iv.next115.i to i32
  %i.r = icmp eq i32 %.tr3545, %i.q
  %or.cond.i = or i1 %i.p, %i.r
  br i1 %or.cond.i, label %bb.e, label %.preheader.i, !llvm.loop !209

bb.e:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next115.i ; 3 uses
  %i.t = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  %.not85.i = icmp slt i64 %indvars.iv.next.i, %indvars.iv.next115.i
  br i1 %.not85.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.o, ptr %i.m, align 4, !tbaa !159
  store float %i.k, ptr %i.s, align 4, !tbaa !159
  %i.u = load float, ptr %i.m, align 4, !tbaa !159 ; 2 uses
  %i.v = fcmp oeq float %i.u, %i.g
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %.072.i, 1                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !159
  store float %i.u, ptr %i.y, align 4, !tbaa !159
  store float %i.z, ptr %i.m, align 4, !tbaa !159
  %.pre.i = load float, ptr %i.s, align 4, !tbaa !159
end_hunk_0
