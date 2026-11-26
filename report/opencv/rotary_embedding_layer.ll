Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rotary_embedding_layer?download=true
inline.NumInlined: 524
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL18rotate_interleavedEPKfPfS7_S7_iiiiibE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader32

.lr.ph.i.i.i.preheader32:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader32, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader32 ] ; 4 uses
  %i.ca = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !79 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.i.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !79
  %i.cg = fneg float %i.cd
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.ci = load <2 x float>, ptr %i.cb, align 4, !tbaa !79 ; 2 uses
  %i.cj = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.cg, i64 1
  %i.cl = fmul <2 x float> %i.ci, %i.ck
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.co, <2 x float> %i.cm)
  store <2 x float> %i.cp, ptr %i.ch, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !145

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %i.cq = load ptr, ptr %.val, align 8, !tbaa !148, !nonnull !74, !align !75
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !45 ; 3 uses
  %i.cs = icmp sgt i32 %i.aq, %i.cr
  br i1 %i.cs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ct
  %i.cw = sub nsw i32 %i.aq, %i.cr
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cv, ptr align 4 %i.cu, i64 %i.cy, i1 false)
  %.pre.i.i.i = load i32, ptr %i.e, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.cz = phi i32 [ %.pre.i.i.i, %bb.f ], [ %i.r, %._crit_edge.i.i.i ] ; 2 uses
  %i.da = add nsw i32 %.056.i.i.i, 1              ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.cz
  br i1 %i.db, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnnL18rotate_interleavedEPKfPfS3_S3_iiiiibE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", !llvm.loop !146

"_ZSt10__invoke_rIvRZN2cv3dnnL18rotate_interleavedEPKfPfS3_S3_iiiiibE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL18rotate_interleavedEPKfPfS7_S7_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL18rotate_interleavedEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL18rotate_interleavedEPKfPfS2_S2_iiiiibE3$_0", ptr %0, align 8, !tbaa !81
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL18rotate_interleavedEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !60
  store ptr %.val, ptr %0, align 8, !tbaa !60
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL18rotate_interleavedEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !82
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL18rotate_interleavedEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !60 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL18rotate_interleavedEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #19
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL18rotate_interleavedEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL18rotate_interleavedEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL6rotateEPKfPfS7_S7_iiiiibE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !60    ; 10 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !166, !nonnull !74, !align !75
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  %i.c = sdiv i32 %i.b, 2                         ; 3 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52   ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.lr.ph62.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL6rotateEPKfPfS3_S3_iiiiibE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

.lr.ph62.i.i.i:                                   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.m = sext i32 %i.c to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.q = icmp sgt i32 %i.b, 1
  %wide.trip.count.i.i.i = zext i32 %i.c to i64   ; 3 uses
  %i.r = shl nsw i64 %i.m, 2                      ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 24
  %i.s = add nsw i64 %i.r, -1
  %diff.check = icmp ult i64 %i.s, 15
  %n.vec = and i64 %wide.trip.count.i.i.i, 1073741820 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph62.i.i.i
  %i.t = phi i32 [ %i.f, %.lr.ph62.i.i.i ], [ %i.dw, %bb.g ]
  %.060.i.i.i = phi i32 [ %i.d, %.lr.ph62.i.i.i ], [ %i.dx, %bb.g ] ; 4 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !167, !nonnull !74, !align !75
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 7 uses
  %i.w = srem i32 %.060.i.i.i, %i.v               ; 4 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !168, !nonnull !74, !align !75
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45   ; 3 uses
  %i.z = mul nsw i32 %i.y, %i.v
  %i.aa = sdiv i32 %.060.i.i.i, %i.z              ; 3 uses
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.v
  %i.ad = add i32 %i.w, %i.ac
  %i.ae = sub i32 %.060.i.i.i, %i.ad
  %i.af = sdiv i32 %i.ae, %i.v                    ; 2 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !169, !nonnull !74
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !49, !range !76, !noundef !74
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = add nsw i32 %i.ab, %i.af
  %i.ak = mul nsw i32 %i.aj, %i.v
  %i.al = add nsw i32 %i.ak, %i.w
  %.pre65.i.i.i = mul nsw i32 %i.aa, %i.v
  %.pre66.i.i.i = add nsw i32 %.pre65.i.i.i, %i.w
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.am = mul nsw i32 %i.aa, %i.v
  %i.an = add nsw i32 %i.am, %i.w                 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %i.y
  %i.ap = add nsw i32 %i.ao, %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi67.i.i.i = phi i32 [ %i.an, %bb.d ], [ %.pre66.i.i.i, %bb.c ]
  %i.aq = phi i32 [ %i.ap, %bb.d ], [ %i.al, %bb.c ]
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !170, !nonnull !74, !align !75
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !45 ; 3 uses
  %i.at = mul i32 %i.as, %i.aq
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !171, !nonnull !74, !align !77
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.ax = sext i32 %i.at to i64                   ; 3 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.m ; 2 uses
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !172, !nonnull !74, !align !77
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47 ; 2 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 2 uses
  %i.bd = mul i32 %.pre-phi67.i.i.i, %i.c
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !173, !nonnull !74, !align !77
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.be ; 2 uses
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !174, !nonnull !74, !align !77
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47 ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64              ; 3 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.ax ; 4 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.m ; 2 uses
  br i1 %i.q, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.bp = sub i64 %i.bm, %i.aw                    ; 2 uses
  %2 = sub i64 %i.r, %i.bp
  %diff.check22 = icmp ugt i64 %2, -16
  %conflict.rdx = or i1 %diff.check, %diff.check22
  %3 = add i64 %i.bp, -1
  %diff.check23 = icmp ult i64 %3, 15
  %conflict.rdx24 = or i1 %conflict.rdx, %diff.check23
  %i.bq = shl nsw i64 %i.ax, 2                    ; 2 uses
  %i.br = shl nsw i64 %i.be, 2                    ; 4 uses
  %i.bs = add i64 %i.bq, %i.bm                    ; 2 uses
  %i.bt = add i64 %i.br, %i.bc
  %i.bu = sub i64 %i.bt, %i.bs
  %diff.check25 = icmp ugt i64 %i.bu, -16
  %conflict.rdx26 = or i1 %conflict.rdx24, %diff.check25
  %i.bv = add i64 %i.br, %i.bi
  %i.bw = sub i64 %i.bv, %i.bs
  %diff.check27 = icmp ugt i64 %i.bw, -16
  %conflict.rdx28 = or i1 %conflict.rdx26, %diff.check27
  %i.bx = add i64 %i.r, %i.bm                     ; 2 uses
  %i.by = sub i64 %i.aw, %i.bx
  %diff.check29 = icmp ugt i64 %i.by, -16
  %conflict.rdx30 = or i1 %conflict.rdx28, %diff.check29
  %i.bz = add i64 %i.bx, %i.bq                    ; 2 uses
  %i.ca = add i64 %i.br, %i.bc
  %i.cb = sub i64 %i.ca, %i.bz
  %diff.check31 = icmp ugt i64 %i.cb, -16
  %conflict.rdx32 = or i1 %conflict.rdx30, %diff.check31
  %i.cc = add i64 %i.br, %i.bi
  %i.cd = sub i64 %i.cc, %i.bz
  %diff.check33 = icmp ugt i64 %i.cd, -16
  %conflict.rdx34 = or i1 %conflict.rdx32, %diff.check33
  br i1 %conflict.rdx34, label %.lr.ph.i.i.i.preheader38, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 7 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  %wide.load = load <4 x float>, ptr %i.ce, align 4, !tbaa !79 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %wide.load35 = load <4 x float>, ptr %i.cf, align 4, !tbaa !79 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index
  %wide.load36 = load <4 x float>, ptr %i.cg, align 4, !tbaa !79 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index
  %wide.load37 = load <4 x float>, ptr %i.ch, align 4, !tbaa !79 ; 2 uses
  %i.ci = fneg <4 x float> %wide.load36
  %i.cj = fmul <4 x float> %wide.load35, %i.ci
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load37, <4 x float> %i.cj)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index
  store <4 x float> %i.ck, ptr %i.cl, align 4, !tbaa !79
  %i.cm = fmul <4 x float> %wide.load, %wide.load36
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load35, <4 x float> %wide.load37, <4 x float> %i.cm)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index
  store <4 x float> %i.cn, ptr %i.co, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader38

.lr.ph.i.i.i.preheader38:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader38, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader38 ] ; 7 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !79 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.i.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !79 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !79 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !79
  %i.cy = fneg float %i.cv
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i
  %i.da = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.ct, i64 1
  %i.dc = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.cy, i64 1
  %i.de = fmul <2 x float> %i.db, %i.dd
  %i.df = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.cr, i64 1
  %i.dh = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.di, <2 x float> %i.de) ; 2 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 1
  store float %i.dk, ptr %i.cz, align 4, !tbaa !79
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i
  %i.dm = extractelement <2 x float> %i.dj, i64 0
  store float %i.dm, ptr %i.dl, align 4, !tbaa !79
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !163

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %i.dn = load ptr, ptr %.val, align 8, !tbaa !166, !nonnull !74, !align !75
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !45 ; 3 uses
  %i.dp = icmp sgt i32 %i.as, %i.do
  br i1 %i.dp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.dq = sext i32 %i.do to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.dq
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.dq
  %i.dt = sub nsw i32 %i.as, %i.do
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ds, ptr align 4 %i.dr, i64 %i.dv, i1 false)
  %.pre.i.i.i = load i32, ptr %i.e, align 4, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.dw = phi i32 [ %.pre.i.i.i, %bb.f ], [ %i.t, %._crit_edge.i.i.i ] ; 2 uses
  %i.dx = add nsw i32 %.060.i.i.i, 1              ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %i.dw
  br i1 %i.dy, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnnL6rotateEPKfPfS3_S3_iiiiibE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", !llvm.loop !164

"_ZSt10__invoke_rIvRZN2cv3dnnL6rotateEPKfPfS3_S3_iiiiibE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL6rotateEPKfPfS7_S7_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL6rotateEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL6rotateEPKfPfS2_S2_iiiiibE3$_0", ptr %0, align 8, !tbaa !81
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL6rotateEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !60
  store ptr %.val, ptr %0, align 8, !tbaa !60
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL6rotateEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !82
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL6rotateEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !60 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL6rotateEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #19
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL6rotateEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL6rotateEPKfPfS4_S4_iiiiibE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

declare void @_ZN2cv8MatShapeC1ESt16initializer_listIiE(ptr noundef nonnull align 4 dereferenceable(52), ptr, i64) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.28", align 16   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = load ptr, ptr %0, align 8, !tbaa !69     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !70
  %i.k = load <2 x ptr>, ptr %0, align 8, !tbaa !176
  %i.l = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  store ptr %i.m, ptr %i.i, align 16, !tbaa !70
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !176
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !176
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !176
  store ptr %i.j, ptr %i.a, align 8, !tbaa !70
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #19
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit:     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

end_hunk_0
