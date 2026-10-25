Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_norm?download=true
inline.NumInlined: 417
inline.NumDeleted: 174
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn15fastNormChannelERKNS0_3MatES8_S8_RS6_fE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  store float %i.hv, ptr %gep150.i.i.i.prol, align 4, !tbaa !9
  %indvars.iv.next198.i.i.i.prol = or disjoint i64 %indvars.iv197.i.i.i.ph, 1
  br label %scalar.ph25.prol.loopexit

scalar.ph25.prol.loopexit:                        ; preds = %scalar.ph25.prol, %scalar.ph25.preheader
  %indvars.iv197.i.i.i.unr = phi i64 [ %indvars.iv197.i.i.i.ph, %scalar.ph25.preheader ], [ %indvars.iv.next198.i.i.i.prol, %scalar.ph25.prol ]
  %i.hx = icmp eq i64 %indvars.iv197.i.i.i.ph, %i.fp
  br i1 %i.hx, label %._crit_edge.i.i.i, label %scalar.ph25

._crit_edge.i.i.i:                                ; preds = %scalar.ph25.prol.loopexit, %scalar.ph25, %middle.block35
  %indvars.iv.next203.i.i.i = add nuw nsw i64 %indvars.iv202.i.i.i, 1 ; 2 uses
  %exitcond206.not.i.i.i = icmp eq i64 %indvars.iv.next203.i.i.i, %wide.trip.count205.i.i.i
  br i1 %exitcond206.not.i.i.i, label %._crit_edge159.i.i.i, label %.lr.ph152.i.i.i, !llvm.loop !147

scalar.ph25:                                      ; preds = %scalar.ph25.prol.loopexit, %scalar.ph25
  %indvars.iv197.i.i.i = phi i64 [ %indvars.iv.next198.i.i.i.1, %scalar.ph25 ], [ %indvars.iv197.i.i.i.unr, %scalar.ph25.prol.loopexit ] ; 4 uses
  %i.hy = mul i64 %indvars.iv197.i.i.i, %i.eq
  %gep.i.i.i = getelementptr [4 x i8], ptr %gep154.i.i.i, i64 %i.hy
  %i.hz = load float, ptr %gep.i.i.i, align 4, !tbaa !9
  %i.ia = call float @llvm.fmuladd.f32(float %i.hz, float %i.hg, float %i.hi)
  %i.ib = mul i64 %indvars.iv197.i.i.i, %i.es
  %gep150.i.i.i = getelementptr [4 x i8], ptr %gep155.i.i.i, i64 %i.ib
  store float %i.ia, ptr %gep150.i.i.i, align 4, !tbaa !9
  %indvars.iv.next198.i.i.i = add nuw nsw i64 %indvars.iv197.i.i.i, 1 ; 2 uses
  %i.ic = mul i64 %indvars.iv.next198.i.i.i, %i.eq
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %gep154.i.i.i, i64 %i.ic
  %i.id = load float, ptr %gep.i.i.i.1, align 4, !tbaa !9
  %i.ie = call float @llvm.fmuladd.f32(float %i.id, float %i.hg, float %i.hi)
  %i.if = mul i64 %indvars.iv.next198.i.i.i, %i.es
  %gep150.i.i.i.1 = getelementptr [4 x i8], ptr %gep155.i.i.i, i64 %i.if
  store float %i.ie, ptr %gep150.i.i.i.1, align 4, !tbaa !9
  %indvars.iv.next198.i.i.i.1 = add nuw nsw i64 %indvars.iv197.i.i.i, 2 ; 2 uses
  %exitcond201.not.i.i.i.1 = icmp eq i64 %indvars.iv.next198.i.i.i.1, %wide.trip.count200.i.i.i
  br i1 %exitcond201.not.i.i.i.1, label %._crit_edge.i.i.i, label %scalar.ph25, !llvm.loop !148

.preheader.i.i.i:                                 ; preds = %._crit_edge171.i.i.i, %.preheader.lr.ph.split.split.i.i.i
  %indvars.iv220.i.i.i = phi i64 [ %smin.i.i.i, %.preheader.lr.ph.split.split.i.i.i ], [ %indvars.iv.next221.i.i.i, %._crit_edge171.i.i.i ] ; 2 uses
  %invariant.gep172.i.i.i = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv220.i.i.i
  br label %.lr.ph165.i.i.i

._crit_edge171.i.i.i:                             ; preds = %._crit_edge166.i.i.i
  %indvars.iv.next221.i.i.i = add nsw i64 %indvars.iv220.i.i.i, 1 ; 2 uses
  %i.ig = icmp slt i64 %indvars.iv.next221.i.i.i, %i.hd
  br i1 %i.ig, label %.preheader.i.i.i, label %._crit_edge175.split.i.i.i, !llvm.loop !149

.lr.ph165.i.i.i:                                  ; preds = %._crit_edge166.i.i.i, %.preheader.i.i.i
  %indvars.iv215.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next216.i.i.i, %._crit_edge166.i.i.i ] ; 2 uses
  %i.ih = mul i64 %indvars.iv215.i.i.i, %i.gv
  %gep173.i.i.i = getelementptr [4 x i8], ptr %invariant.gep172.i.i.i, i64 %i.ih ; 6 uses
  br i1 %or.cond, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.lr.ph165.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph165.i.i.i ] ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %gep173.i.i.i, i64 %index ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 16
  store <4 x float> zeroinitializer, ptr %i.ii, align 4, !tbaa !9
  store <4 x float> zeroinitializer, ptr %i.ij, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge166.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph165.i.i.i, %middle.block
  %indvars.iv210.i.i.i.ph = phi i64 [ 0, %.lr.ph165.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod46.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv210.i.i.i.prol = phi i64 [ %indvars.iv.next211.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv210.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.il = mul i64 %indvars.iv210.i.i.i.prol, %i.ha
  %gep168.i.i.i.prol = getelementptr [4 x i8], ptr %gep173.i.i.i, i64 %i.il
  store float 0.000000e+00, ptr %gep168.i.i.i.prol, align 4, !tbaa !9
  %indvars.iv.next211.i.i.i.prol = add nuw nsw i64 %indvars.iv210.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter45
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !151

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv210.i.i.i.unr = phi i64 [ %indvars.iv210.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next211.i.i.i.prol, %scalar.ph.prol ]
  %i.im = sub nsw i64 %indvars.iv210.i.i.i.ph, %wide.trip.count213.i.i.i
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %._crit_edge166.i.i.i, label %scalar.ph

._crit_edge166.i.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next216.i.i.i = add nuw nsw i64 %indvars.iv215.i.i.i, 1 ; 2 uses
  %exitcond219.not.i.i.i = icmp eq i64 %indvars.iv.next216.i.i.i, %wide.trip.count218.i.i.i
  br i1 %exitcond219.not.i.i.i, label %._crit_edge171.i.i.i, label %.lr.ph165.i.i.i, !llvm.loop !152

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv210.i.i.i = phi i64 [ %indvars.iv.next211.i.i.i.3, %scalar.ph ], [ %indvars.iv210.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.io = mul i64 %indvars.iv210.i.i.i, %i.ha
  %gep168.i.i.i = getelementptr [4 x i8], ptr %gep173.i.i.i, i64 %i.io
  store float 0.000000e+00, ptr %gep168.i.i.i, align 4, !tbaa !9
  %indvars.iv.next211.i.i.i = add nuw nsw i64 %indvars.iv210.i.i.i, 1
  %i.ip = mul i64 %indvars.iv.next211.i.i.i, %i.ha
  %gep168.i.i.i.1 = getelementptr [4 x i8], ptr %gep173.i.i.i, i64 %i.ip
  store float 0.000000e+00, ptr %gep168.i.i.i.1, align 4, !tbaa !9
  %indvars.iv.next211.i.i.i.1 = add nuw nsw i64 %indvars.iv210.i.i.i, 2
  %i.iq = mul i64 %indvars.iv.next211.i.i.i.1, %i.ha
  %gep168.i.i.i.2 = getelementptr [4 x i8], ptr %gep173.i.i.i, i64 %i.iq
  store float 0.000000e+00, ptr %gep168.i.i.i.2, align 4, !tbaa !9
  %indvars.iv.next211.i.i.i.2 = add nuw nsw i64 %indvars.iv210.i.i.i, 3
  %i.ir = mul i64 %indvars.iv.next211.i.i.i.2, %i.ha
  %gep168.i.i.i.3 = getelementptr [4 x i8], ptr %gep173.i.i.i, i64 %i.ir
  store float 0.000000e+00, ptr %gep168.i.i.i.3, align 4, !tbaa !9
  %indvars.iv.next211.i.i.i.3 = add nuw nsw i64 %indvars.iv210.i.i.i, 4 ; 2 uses
  %exitcond214.not.i.i.i.3 = icmp eq i64 %indvars.iv.next211.i.i.i.3, %wide.trip.count213.i.i.i
  br i1 %exitcond214.not.i.i.i.3, label %._crit_edge166.i.i.i, label %scalar.ph, !llvm.loop !153

._crit_edge175.split.i.i.i:                       ; preds = %._crit_edge171.i.i.i, %.preheader.lr.ph.split.i.i.i, %.preheader.lr.ph.i.i.i, %.preheader127.i.i.i
  %i.is = add nsw i32 %.0111177.i.i.i, 1          ; 2 uses
  %exitcond222.not.i.i.i = icmp eq i32 %i.is, %i.an
  br i1 %exitcond222.not.i.i.i, label %._crit_edge179.i.i.i, label %bb.h, !llvm.loop !154

"_ZSt10__invoke_rIvRZN2cv3dnn15fastNormChannelERKNS0_3MatES4_S4_RS2_fE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn15fastNormChannelERKNS0_3MatES8_S8_RS6_fE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn15fastNormChannelERKNS_3MatES3_S3_RS1_fE3$_0", ptr %0, align 8, !tbaa !70
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %.val, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(152) %.val6, i64 152, i1 false), !tbaa.struct !180
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !29 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 152) #21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn15fastNormChannelERKNS0_3MatES8_S8_RS6_fE3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #12 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !29    ; 7 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !18   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !187, !nonnull !62, !align !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188, !nonnull !62, !align !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189, !nonnull !62, !align !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !190, !nonnull !62, !align !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp slt i32 %.val2, %.val3
  br i1 %i.s, label %.lr.ph11.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn15fastNormChannelERKNS0_3MatES4_S4_RS2_fE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph11.i.i.i:                                   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191, !nonnull !62, !align !63
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 12 uses
  %i.w = uitofp i64 %i.v to double                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !192, !nonnull !62, !align !64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !193, !nonnull !62, !align !63
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %.lr.ph11.split.split.i.i.i, label %.lr.ph.us.us.preheader.i.i.i

.lr.ph.us.us.preheader.i.i.i:                     ; preds = %.lr.ph11.i.i.i
  %i.ac = sext i32 %.val2 to i64
  %wide.trip.count.i.i.i = sext i32 %.val3 to i64
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.ad = icmp ult i64 %i.v, 4
  %unroll_iter = and i64 %i.v, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %i.v, 8
  %i.ae = sub i64 %i.e, %i.r
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  %xtraiter18 = and i64 %i.v, 1
  %lcmp.mod19.not = icmp eq i64 %xtraiter18, 0
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %._crit_edge8.us.us.i.i.i, %.lr.ph.us.us.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.ac, %.lr.ph.us.us.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge8.us.us.i.i.i ] ; 3 uses
  %i.af = mul i64 %indvars.iv.i.i.i, %i.v         ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.af ; 9 uses
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.us.us.i.i.i.new

.lr.ph.us.us.i.i.i.new:                           ; preds = %.lr.ph.us.us.i.i.i, %.lr.ph.us.us.i.i.i.new
  %.0373.us.us.i.i.i = phi i64 [ %i.be, %.lr.ph.us.us.i.i.i.new ], [ 0, %.lr.ph.us.us.i.i.i ] ; 5 uses
  %.0382.us.us.i.i.i = phi double [ %i.bd, %.lr.ph.us.us.i.i.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i.i.i ]
  %.0391.us.us.i.i.i = phi double [ %i.bc, %.lr.ph.us.us.i.i.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i.i.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.i.i.new ], [ 0, %.lr.ph.us.us.i.i.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0373.us.us.i.i.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9
  %i.aj = fpext float %i.ai to double             ; 3 uses
  %i.ak = fadd double %.0391.us.us.i.i.i, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %.0382.us.us.i.i.i)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0373.us.us.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !9
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = fadd double %i.ak, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.al)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0373.us.us.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !9
  %i.av = fpext float %i.au to double             ; 3 uses
  %i.aw = fadd double %i.aq, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.ar)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0373.us.us.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !9
  %i.bb = fpext float %i.ba to double             ; 3 uses
  %i.bc = fadd double %i.aw, %i.bb                ; 3 uses
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bb, double %i.ax) ; 3 uses
  %i.be = add nuw i64 %.0373.us.us.i.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.i.i.unr-lcssa, label %.lr.ph.us.us.i.i.i.new, !llvm.loop !181

._crit_edge.us.us.i.i.i.unr-lcssa:                ; preds = %.lr.ph.us.us.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.i.unr-lcssa, %.lr.ph.us.us.i.i.i
  %.0373.us.us.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i.i.i ], [ %i.be, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  %.0382.us.us.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.i.i.i ], [ %i.bd, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  %.0391.us.us.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.i.i.i ], [ %i.bc, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.0373.us.us.i.i.i.epil = phi i64 [ %.0373.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.bk, %bb.b ] ; 2 uses
  %.0382.us.us.i.i.i.epil = phi double [ %.0382.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.bj, %bb.b ]
  %.0391.us.us.i.i.i.epil = phi double [ %.0391.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.bi, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0373.us.us.i.i.i.epil
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !9
  %i.bh = fpext float %i.bg to double             ; 3 uses
  %i.bi = fadd double %.0391.us.us.i.i.i.epil, %i.bh ; 2 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %.0382.us.us.i.i.i.epil) ; 2 uses
  %i.bk = add nuw i64 %.0373.us.us.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i.i.i, label %bb.b, !llvm.loop !182

._crit_edge.us.us.i.i.i:                          ; preds = %bb.b, %._crit_edge.us.us.i.i.i.unr-lcssa
  %.lcssa14 = phi double [ %i.bc, %._crit_edge.us.us.i.i.i.unr-lcssa ], [ %i.bi, %bb.b ]
  %.lcssa = phi double [ %i.bd, %._crit_edge.us.us.i.i.i.unr-lcssa ], [ %i.bj, %bb.b ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.af ; 4 uses
  %i.bm = fdiv double %.lcssa14, %i.w
  %i.bn = fptrunc double %i.bm to float           ; 5 uses
  %i.bo = fdiv double %.lcssa, %i.w
  %i.bp = fpext float %i.bn to double             ; 2 uses
  %i.bq = fneg double %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bp, double %i.bo) ; 2 uses
  %i.bs = fcmp ogt double %i.br, 0.000000e+00
  %.sroa.speculated.us.us.i.i.i = select i1 %i.bs, double %i.br, double 0.000000e+00
  %i.bt = fptrunc double %.sroa.speculated.us.us.i.i.i to float
  %i.bu = load float, ptr %i.y, align 4, !tbaa !9
  %i.bv = fadd float %i.bu, %i.bt
  %i.bw = tail call noundef float @sqrtf(float noundef %i.bv) #17
  %i.bx = fdiv float 1.000000e+00, %i.bw
  %i.by = urem i64 %indvars.iv.i.i.i, %i.ab       ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !9
  %i.cb = fmul float %i.bx, %i.ca                 ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.by
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !9 ; 4 uses
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.us.us.i.i.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert9 = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat10 = shufflevector <4 x float> %broadcast.splatinsert9, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <4 x float>, ptr %i.ce, align 4, !tbaa !9
  %wide.load13 = load <4 x float>, ptr %i.cf, align 4, !tbaa !9
  %i.cg = fsub <4 x float> %wide.load, %broadcast.splat
  %i.ch = fsub <4 x float> %wide.load13, %broadcast.splat
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat10, <4 x float> %i.cg, <4 x float> %broadcast.splat12)
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat10, <4 x float> %i.ch, <4 x float> %broadcast.splat12)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x float> %i.ci, ptr %i.ck, align 4, !tbaa !9
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge8.us.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %._crit_edge.us.us.i.i.i, %middle.block
  %.05.us.us.i.i.i.ph = phi i64 [ 0, %._crit_edge.us.us.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.us.us.i.i.i.ph, 1
  br i1 %lcmp.mod19.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05.us.us.i.i.i.ph
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9
  %i.cp = fsub float %i.co, %i.bn
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cp, float %i.cd)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.05.us.us.i.i.i.ph
  store float %i.cq, ptr %i.cr, align 4, !tbaa !9
  %i.cs = or disjoint i64 %.05.us.us.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.us.us.i.i.i.unr = phi i64 [ %.05.us.us.i.i.i.ph, %scalar.ph.preheader ], [ %i.cs, %scalar.ph.prol ]
  %i.ct = icmp eq i64 %i.v, %.neg
  br i1 %i.ct, label %._crit_edge8.us.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.us.us.i.i.i = phi i64 [ %i.df, %scalar.ph ], [ %.05.us.us.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05.us.us.i.i.i
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !9
  %i.cw = fsub float %i.cv, %i.bn
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cw, float %i.cd)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.05.us.us.i.i.i
  store float %i.cx, ptr %i.cy, align 4, !tbaa !9
  %i.cz = add nuw i64 %.05.us.us.i.i.i, 1         ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !9
  %i.dc = fsub float %i.db, %i.bn
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.dc, float %i.cd)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cz
  store float %i.dd, ptr %i.de, align 4, !tbaa !9
  %i.df = add nuw i64 %.05.us.us.i.i.i, 2         ; 2 uses
  %exitcond26.not.i.i.i.1 = icmp eq i64 %i.df, %i.v
  br i1 %exitcond26.not.i.i.i.1, label %._crit_edge8.us.us.i.i.i, label %scalar.ph, !llvm.loop !184

._crit_edge8.us.us.i.i.i:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond28.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn15fastNormChannelERKNS0_3MatES4_S4_RS2_fE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.lr.ph.us.us.i.i.i, !llvm.loop !185

.lr.ph11.split.split.i.i.i:                       ; preds = %.lr.ph11.i.i.i
  %2 = fdiv double 0.000000e+00, %i.w             ; 2 uses
  %3 = fptrunc double %2 to float
  %4 = fpext float %3 to double                   ; 2 uses
  %5 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %4, double %2) ; 2 uses
  %7 = fcmp ogt double %6, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %7, double %6, double 0.000000e+00
  %8 = fptrunc double %.sroa.speculated.i.i.i to float
  %.pre.i.i.i = load float, ptr %i.y, align 4, !tbaa !9
  %9 = fadd float %.pre.i.i.i, %8                 ; 2 uses
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %cdce.call, label %"_ZSt10__invoke_rIvRZN2cv3dnn15fastNormChannelERKNS0_3MatES4_S4_RS2_fE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", !prof !68

cdce.call:                                        ; preds = %.lr.ph11.split.split.i.i.i
  %11 = tail call noundef float @sqrtf(float noundef %9) #17 ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN2cv3dnn15fastNormChannelERKNS0_3MatES4_S4_RS2_fE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIvRZN2cv3dnn15fastNormChannelERKNS0_3MatES4_S4_RS2_fE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %._crit_edge8.us.us.i.i.i, %bb.a, %.lr.ph11.split.split.i.i.i, %cdce.call
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn15fastNormChannelERKNS0_3MatES8_S8_RS6_fE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn15fastNormChannelERKNS_3MatES3_S3_RS1_fE3$_1", ptr %0, align 8, !tbaa !70
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %.val, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !194
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !29 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn15fastNormChannelERKNS1_3MatES5_S5_RS3_fE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastNormGroupERKNS0_3MatES8_S8_RS6_fmE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.7", align 8  ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !29    ; 20 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !215, !nonnull !62, !align !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !216, !nonnull !62, !align !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217, !nonnull !62, !align !64 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34   ; 3 uses
  %i.m = shl nsw i32 %i.l, 1                      ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i.i.i = icmp ugt i32 %i.m, 264
  store i64 %i.n, ptr %i.p, align 8, !tbaa !73
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %i.l, 0
  %i.r = shl nuw nsw i64 %i.n, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #19 ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !72
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !217 ; 2 uses
  %.pre268.i.i.i = load i32, ptr %.pre.i.i.i, align 4, !tbaa !34
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i:       ; preds = %bb.b, %bb.a
  %i.u = phi i32 [ %i.l, %bb.a ], [ %.pre268.i.i.i, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.k, %bb.a ], [ %.pre.i.i.i, %bb.b ] ; 2 uses
  %i.w = phi ptr [ %i.o, %bb.a ], [ %i.t, %bb.b ] ; 7 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 3 uses
  %i.y = sext i32 %i.u to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y ; 3 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !18    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %i.ad = icmp slt i32 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph216.i.i.i, label %._crit_edge217.i.i.i

.lr.ph216.i.i.i:                                  ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !218, !nonnull !62, !align !63
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !219, !nonnull !62, !align !64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !220, !nonnull !62, !align !63
  %i.as = load double, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !221, !nonnull !62, !align !64
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.bc = shl nsw i64 %i.y, 2                     ; 2 uses
  %i.bd = add i64 %i.bc, %i.x
  %i.be = add nsw i64 %i.bc, -1
  %diff.check = icmp ult i64 %i.be, 15
  br label %bb.d

._crit_edge217.i.i.i:                             ; preds = %._crit_edge214.i.i.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i
  %.not.i.i121.i.i.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i.i121.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.c

bb.c:                                             ; preds = %._crit_edge217.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.w) #21
  br label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

bb.d:                                             ; preds = %._crit_edge214.i.i.i, %.lr.ph216.i.i.i
  %i.bf = phi i32 [ %i.u, %.lr.ph216.i.i.i ], [ %i.do, %._crit_edge214.i.i.i ] ; 2 uses
  %indvars.iv256.in.i.i.i = phi i32 [ %i.aa, %.lr.ph216.i.i.i ], [ %indvars.iv256.i.i.i, %._crit_edge214.i.i.i ] ; 3 uses
  %indvars.iv256.i.i.i = add nsw i32 %indvars.iv256.in.i.i.i, 1 ; 3 uses
  %i.bg = sdiv i32 %indvars.iv256.in.i.i.i, %i.ah ; 3 uses
  %i.bh = mul i32 %i.bg, %i.ah
  %.recomposed = srem i32 %indvars.iv256.in.i.i.i, %i.ah
  %i.bi = load i32, ptr %i.aj, align 4, !tbaa !34 ; 4 uses
  %i.bj = mul i32 %.recomposed, %i.bi             ; 5 uses
  %i.bk = add nsw i32 %i.bj, %i.bi                ; 3 uses
  %i.bl = icmp sgt i32 %i.bi, 0
  br i1 %i.bl, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.bm = sext i32 %i.bg to i64
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !222, !nonnull !62, !align !63
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bp
  %i.br = load ptr, ptr %i.al, align 8, !tbaa !223, !nonnull !62, !align !63
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !224, !nonnull !62, !align !64
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !34 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !225, !nonnull !62, !align !63
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !226, !nonnull !62, !align !64
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !34 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.split.us.split.us.i.i.i, label %._crit_edge.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %i.cb = load ptr, ptr %i.ap, align 8, !tbaa !227, !nonnull !62, !align !63
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !16 ; 3 uses
  %wide.trip.count225.i.i.i = zext nneg i32 %i.bu to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.cd = icmp eq i32 %i.bz, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod65 = trunc i32 %i.bz to i1
  br label %.lr.ph156.us.us.i.i.i

.lr.ph156.us.us.i.i.i:                            ; preds = %._crit_edge157.split.us.us.us.i.i.i, %.lr.ph.split.us.split.us.i.i.i
  %.0114165.us.us.i.i.i = phi i32 [ %i.bj, %.lr.ph.split.us.split.us.i.i.i ], [ %i.da, %._crit_edge157.split.us.us.us.i.i.i ] ; 3 uses
  %.0115164.us.us.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.split.us.i.i.i ], [ %.lcssa, %._crit_edge157.split.us.us.us.i.i.i ]
  %.0116163.us.us.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.split.us.i.i.i ], [ %.lcssa62, %._crit_edge157.split.us.us.us.i.i.i ]
  %i.ce = sdiv i32 %.0114165.us.us.i.i.i, %i.bf
  %i.cf = srem i32 %.0114165.us.us.i.i.i, %i.bf
  %i.cg = sext i32 %i.ce to i64
  %i.ch = mul i64 %i.bs, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ch
  %i.cj = sext i32 %i.cf to i64
  %invariant.gep160.us.us.i.i.i = getelementptr [4 x i8], ptr %i.ci, i64 %i.cj
  br label %.lr.ph.us.us.us.i.i.i

.lr.ph.us.us.us.i.i.i:                            ; preds = %._crit_edge.us.us.us.i.i.i, %.lr.ph156.us.us.i.i.i
  %indvars.iv222.i.i.i = phi i64 [ %indvars.iv.next223.i.i.i, %._crit_edge.us.us.us.i.i.i ], [ 0, %.lr.ph156.us.us.i.i.i ] ; 2 uses
  %.1153.us.us.us.i.i.i = phi double [ %.lcssa, %._crit_edge.us.us.us.i.i.i ], [ %.0115164.us.us.i.i.i, %.lr.ph156.us.us.i.i.i ] ; 2 uses
  %.1117152.us.us.us.i.i.i = phi double [ %.lcssa62, %._crit_edge.us.us.us.i.i.i ], [ %.0116163.us.us.i.i.i, %.lr.ph156.us.us.i.i.i ] ; 2 uses
  %i.ck = mul i64 %indvars.iv222.i.i.i, %i.bx
  %gep161.us.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep160.us.us.i.i.i, i64 %i.ck ; 3 uses
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.us.us.us.i.i.i.new

.lr.ph.us.us.us.i.i.i.new:                        ; preds = %.lr.ph.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.us.us.us.i.i.i.new ], [ 0, %.lr.ph.us.us.us.i.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastNormGroupERKNS0_3MatES8_S8_RS6_fmE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %gep179.i.i.i.1 = getelementptr [4 x i8], ptr %gep186.i.i.i, i64 %i.kd
  store float %i.kc, ptr %gep179.i.i.i.1, align 4, !tbaa !9
  %indvars.iv.next233.i.i.i.1 = add nuw nsw i64 %indvars.iv232.i.i.i, 2 ; 2 uses
  %exitcond236.not.i.i.i.1 = icmp eq i64 %indvars.iv.next233.i.i.i.1, %wide.trip.count235.i.i.i
  br i1 %exitcond236.not.i.i.i.1, label %._crit_edge183.i.i.i, label %scalar.ph25, !llvm.loop !207

._crit_edge194.split.i.i.i:                       ; preds = %._crit_edge190.i.i.i, %.lr.ph193.split.i.i.i, %.lr.ph193.i.i.i, %._crit_edge177.i.i.i
  %i.ke = phi ptr [ %i.hi, %._crit_edge177.i.i.i ], [ %i.hm, %.lr.ph193.i.i.i ], [ %i.hm, %.lr.ph193.split.i.i.i ], [ %i.hm, %._crit_edge190.i.i.i ]
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated132.i.i.i, i32 %i.gd)
  %i.kf = icmp slt i32 %.sroa.speculated.i.i.i, %i.do
  br i1 %i.kf, label %.preheader.lr.ph.i.i.i, label %._crit_edge208.split.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %._crit_edge194.split.i.i.i
  %i.kg = load ptr, ptr %i.am, align 8, !tbaa !224, !nonnull !62, !align !64
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !34 ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.preheader.lr.ph.split.i.i.i, label %._crit_edge208.split.i.i.i

.preheader.lr.ph.split.i.i.i:                     ; preds = %.preheader.lr.ph.i.i.i
  %i.kj = load ptr, ptr %i.ba, align 8, !tbaa !233, !nonnull !62, !align !63
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !16
  %i.kl = load ptr, ptr %i.ao, align 8, !tbaa !226, !nonnull !62, !align !64
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !34 ; 3 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.preheader.lr.ph.split.split.i.i.i, label %._crit_edge208.split.i.i.i

.preheader.lr.ph.split.split.i.i.i:               ; preds = %.preheader.lr.ph.split.i.i.i
  %i.ko = load ptr, ptr %i.bb, align 8, !tbaa !234, !nonnull !62, !align !63
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !16 ; 6 uses
  %i.kq = call i32 @llvm.smax.i32(i32 %i.fr, i32 %i.gd)
  %smax260.i.i.i = sext i32 %i.kq to i64
  %wide.trip.count254.i.i.i = zext nneg i32 %i.kh to i64
  %wide.trip.count249.i.i.i = zext nneg i32 %i.km to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %i.km, 7
  %ident.check.not = icmp eq i64 %i.kp, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %wide.trip.count249.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count249.i.i.i
  %xtraiter68 = and i64 %wide.trip.count249.i.i.i, 3 ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge204.i.i.i, %.preheader.lr.ph.split.split.i.i.i
  %indvars.iv261.i.i.i = phi i64 [ %smax260.i.i.i, %.preheader.lr.ph.split.split.i.i.i ], [ %indvars.iv.next262.i.i.i, %._crit_edge204.i.i.i ] ; 2 uses
  %invariant.gep205.i.i.i = getelementptr [4 x i8], ptr %i.ke, i64 %indvars.iv261.i.i.i
  br label %.lr.ph198.i.i.i

._crit_edge208.split.i.i.i:                       ; preds = %._crit_edge204.i.i.i, %.preheader.lr.ph.split.i.i.i, %.preheader.lr.ph.i.i.i, %._crit_edge194.split.i.i.i
  %indvars.iv.next264.i.i.i = add nsw i64 %indvars.iv263.i.i.i, 1 ; 2 uses
  %indvars.iv.next228.i.i.i = sub i32 %indvars.iv227.i.i.i, %i.do
  %indvars.iv.next259.i.i.i = sub i32 %indvars.iv258.i.i.i, %i.do
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next264.i.i.i to i32
  %exitcond266.not.i.i.i = icmp eq i32 %i.eo, %lftr.wideiv.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond266.not.i.i.i, label %._crit_edge214.i.i.i, label %bb.e, !llvm.loop !208

._crit_edge204.i.i.i:                             ; preds = %._crit_edge199.i.i.i
  %indvars.iv.next262.i.i.i = add nsw i64 %indvars.iv261.i.i.i, 1 ; 2 uses
  %i.kr = icmp slt i64 %indvars.iv.next262.i.i.i, %i.ei
  br i1 %i.kr, label %.preheader.i.i.i, label %._crit_edge208.split.i.i.i, !llvm.loop !209

.lr.ph198.i.i.i:                                  ; preds = %._crit_edge199.i.i.i, %.preheader.i.i.i
  %indvars.iv251.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next252.i.i.i, %._crit_edge199.i.i.i ] ; 2 uses
  %i.ks = mul i64 %indvars.iv251.i.i.i, %i.kk
  %gep206.i.i.i = getelementptr [4 x i8], ptr %invariant.gep205.i.i.i, i64 %i.ks ; 6 uses
  br i1 %or.cond, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.lr.ph198.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph198.i.i.i ] ; 2 uses
  %i.kt = getelementptr [4 x i8], ptr %gep206.i.i.i, i64 %index ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 16
  store <4 x float> zeroinitializer, ptr %i.kt, align 4, !tbaa !9
  store <4 x float> zeroinitializer, ptr %i.ku, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge199.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph198.i.i.i, %middle.block
  %indvars.iv246.i.i.i.ph = phi i64 [ 0, %.lr.ph198.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod69.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv246.i.i.i.prol = phi i64 [ %indvars.iv.next247.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv246.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.kw = mul i64 %indvars.iv246.i.i.i.prol, %i.kp
  %gep201.i.i.i.prol = getelementptr [4 x i8], ptr %gep206.i.i.i, i64 %i.kw
  store float 0.000000e+00, ptr %gep201.i.i.i.prol, align 4, !tbaa !9
  %indvars.iv.next247.i.i.i.prol = add nuw nsw i64 %indvars.iv246.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !211

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv246.i.i.i.unr = phi i64 [ %indvars.iv246.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next247.i.i.i.prol, %scalar.ph.prol ]
  %i.kx = sub nsw i64 %indvars.iv246.i.i.i.ph, %wide.trip.count249.i.i.i
  %i.ky = icmp ugt i64 %i.kx, -4
  br i1 %i.ky, label %._crit_edge199.i.i.i, label %scalar.ph

._crit_edge199.i.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next252.i.i.i = add nuw nsw i64 %indvars.iv251.i.i.i, 1 ; 2 uses
  %exitcond255.not.i.i.i = icmp eq i64 %indvars.iv.next252.i.i.i, %wide.trip.count254.i.i.i
  br i1 %exitcond255.not.i.i.i, label %._crit_edge204.i.i.i, label %.lr.ph198.i.i.i, !llvm.loop !212

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv246.i.i.i = phi i64 [ %indvars.iv.next247.i.i.i.3, %scalar.ph ], [ %indvars.iv246.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.kz = mul i64 %indvars.iv246.i.i.i, %i.kp
  %gep201.i.i.i = getelementptr [4 x i8], ptr %gep206.i.i.i, i64 %i.kz
  store float 0.000000e+00, ptr %gep201.i.i.i, align 4, !tbaa !9
  %indvars.iv.next247.i.i.i = add nuw nsw i64 %indvars.iv246.i.i.i, 1
  %i.la = mul i64 %indvars.iv.next247.i.i.i, %i.kp
  %gep201.i.i.i.1 = getelementptr [4 x i8], ptr %gep206.i.i.i, i64 %i.la
  store float 0.000000e+00, ptr %gep201.i.i.i.1, align 4, !tbaa !9
  %indvars.iv.next247.i.i.i.1 = add nuw nsw i64 %indvars.iv246.i.i.i, 2
  %i.lb = mul i64 %indvars.iv.next247.i.i.i.1, %i.kp
  %gep201.i.i.i.2 = getelementptr [4 x i8], ptr %gep206.i.i.i, i64 %i.lb
  store float 0.000000e+00, ptr %gep201.i.i.i.2, align 4, !tbaa !9
  %indvars.iv.next247.i.i.i.2 = add nuw nsw i64 %indvars.iv246.i.i.i, 3
  %i.lc = mul i64 %indvars.iv.next247.i.i.i.2, %i.kp
  %gep201.i.i.i.3 = getelementptr [4 x i8], ptr %gep206.i.i.i, i64 %i.lc
  store float 0.000000e+00, ptr %gep201.i.i.i.3, align 4, !tbaa !9
  %indvars.iv.next247.i.i.i.3 = add nuw nsw i64 %indvars.iv246.i.i.i, 4 ; 2 uses
  %exitcond250.not.i.i.i.3 = icmp eq i64 %indvars.iv.next247.i.i.i.3, %wide.trip.count249.i.i.i
  br i1 %exitcond250.not.i.i.i.3, label %._crit_edge199.i.i.i, label %scalar.ph, !llvm.loop !213

"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %._crit_edge217.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastNormGroupERKNS0_3MatES8_S8_RS6_fmE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn13fastNormGroupERKNS_3MatES3_S3_RS1_fmE3$_0", ptr %0, align 8, !tbaa !70
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %.val, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(160) %.val6, i64 160, i1 false), !tbaa.struct !237
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !29 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 160) #21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastNormGroupERKNS0_3MatES8_S8_RS6_fmE3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #12 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !29    ; 9 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !18   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !243, !nonnull !62, !align !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !244, !nonnull !62, !align !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !245, !nonnull !62, !align !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !246, !nonnull !62, !align !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = icmp slt i32 %.val2, %.val3
  br i1 %i.q, label %.lr.ph11.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph11.i.i.i:                                   ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !247, !nonnull !62, !align !63
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 10 uses
  %i.u = uitofp i64 %i.t to double                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !248, !nonnull !62, !align !64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !249, !nonnull !62, !align !63
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !250, !nonnull !62, !align !63
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %.lr.ph11.split.split.i.i.i, label %.lr.ph11.split.us.i.i.i

.lr.ph11.split.us.i.i.i:                          ; preds = %.lr.ph11.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !62, !align !63
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16 ; 3 uses
  %i.ag = sext i32 %.val2 to i64
  %wide.trip.count.i.i.i = sext i32 %.val3 to i64
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.ah = icmp ult i64 %i.t, 4
  %unroll_iter = and i64 %i.t, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  %xtraiter14 = and i64 %i.t, 1
  %i.ai = icmp eq i64 %i.t, 1
  %unroll_iter18 = and i64 %i.t, -2
  %lcmp.mod16.not = icmp eq i64 %xtraiter14, 0
  %lcmp.mod17 = trunc i64 %i.t to i1
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %._crit_edge8.us.us.i.i.i, %.lr.ph11.split.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge8.us.us.i.i.i ], [ %i.ag, %.lr.ph11.split.us.i.i.i ] ; 3 uses
  %i.aj = mul i64 %indvars.iv.i.i.i, %i.t         ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj ; 8 uses
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.us.us.i.i.i.new

.lr.ph.us.us.i.i.i.new:                           ; preds = %.lr.ph.us.us.i.i.i, %.lr.ph.us.us.i.i.i.new
  %.0393.us.us.i.i.i = phi i64 [ %i.bi, %.lr.ph.us.us.i.i.i.new ], [ 0, %.lr.ph.us.us.i.i.i ] ; 5 uses
  %.0402.us.us.i.i.i = phi double [ %i.bh, %.lr.ph.us.us.i.i.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i.i.i ]
  %.0411.us.us.i.i.i = phi double [ %i.bg, %.lr.ph.us.us.i.i.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i.i.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.i.i.new ], [ 0, %.lr.ph.us.us.i.i.i ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0393.us.us.i.i.i
  %i.am = load float, ptr %i.al, align 4, !tbaa !9
  %i.an = fpext float %i.am to double             ; 3 uses
  %i.ao = fadd double %.0411.us.us.i.i.i, %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %.0402.us.us.i.i.i)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0393.us.us.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !9
  %i.at = fpext float %i.as to double             ; 3 uses
  %i.au = fadd double %i.ao, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.ap)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0393.us.us.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !9
  %i.az = fpext float %i.ay to double             ; 3 uses
  %i.ba = fadd double %i.au, %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.av)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0393.us.us.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bf = fpext float %i.be to double             ; 3 uses
  %i.bg = fadd double %i.ba, %i.bf                ; 3 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double %i.bb) ; 3 uses
  %i.bi = add nuw i64 %.0393.us.us.i.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.i.i.unr-lcssa, label %.lr.ph.us.us.i.i.i.new, !llvm.loop !238

._crit_edge.us.us.i.i.i.unr-lcssa:                ; preds = %.lr.ph.us.us.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.i.unr-lcssa, %.lr.ph.us.us.i.i.i
  %.0393.us.us.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i.i.i ], [ %i.bi, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  %.0402.us.us.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.i.i.i ], [ %i.bh, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  %.0411.us.us.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.i.i.i ], [ %i.bg, %._crit_edge.us.us.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.0393.us.us.i.i.i.epil = phi i64 [ %.0393.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.bo, %bb.b ] ; 2 uses
  %.0402.us.us.i.i.i.epil = phi double [ %.0402.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.bn, %bb.b ]
  %.0411.us.us.i.i.i.epil = phi double [ %.0411.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.bm, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0393.us.us.i.i.i.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !9
  %i.bl = fpext float %i.bk to double             ; 3 uses
  %i.bm = fadd double %.0411.us.us.i.i.i.epil, %i.bl ; 2 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %.0402.us.us.i.i.i.epil) ; 2 uses
  %i.bo = add nuw i64 %.0393.us.us.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i.i.i, label %bb.b, !llvm.loop !239

._crit_edge.us.us.i.i.i:                          ; preds = %bb.b, %._crit_edge.us.us.i.i.i.unr-lcssa
  %.lcssa9 = phi double [ %i.bg, %._crit_edge.us.us.i.i.i.unr-lcssa ], [ %i.bm, %bb.b ]
  %.lcssa = phi double [ %i.bh, %._crit_edge.us.us.i.i.i.unr-lcssa ], [ %i.bn, %bb.b ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aj ; 3 uses
  %i.bq = fdiv double %.lcssa9, %i.u
  %i.br = fptrunc double %i.bq to float           ; 4 uses
  %i.bs = fdiv double %.lcssa, %i.u
  %i.bt = fpext float %i.br to double             ; 2 uses
  %i.bu = fneg double %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double %i.bs) ; 2 uses
  %i.bw = fcmp ogt double %i.bv, 0.000000e+00
  %.sroa.speculated.us.us.i.i.i = select i1 %i.bw, double %i.bv, double 0.000000e+00
  %i.bx = fptrunc double %.sroa.speculated.us.us.i.i.i to float
  %i.by = load float, ptr %i.w, align 4, !tbaa !9
  %i.bz = fadd float %i.by, %i.bx
  %i.ca = tail call noundef float @sqrtf(float noundef %i.bz) #17
  %i.cb = fdiv float 1.000000e+00, %i.ca          ; 3 uses
  %i.cc = urem i64 %indvars.iv.i.i.i, %i.z
  %i.cd = mul i64 %i.cc, %i.ac                    ; 3 uses
  br i1 %i.ai, label %.epil.preheader13, label %._crit_edge.us.us.i.i.i.new

._crit_edge.us.us.i.i.i.new:                      ; preds = %._crit_edge.us.us.i.i.i, %._crit_edge.us.us.i.i.i.new
  %.05.us.us.i.i.i = phi i64 [ %i.dd, %._crit_edge.us.us.i.i.i.new ], [ 0, %._crit_edge.us.us.i.i.i ] ; 5 uses
  %niter19 = phi i64 [ %niter19.next.1, %._crit_edge.us.us.i.i.i.new ], [ 0, %._crit_edge.us.us.i.i.i ]
  %i.ce = udiv i64 %.05.us.us.i.i.i, %i.af
  %i.cf = add i64 %i.ce, %i.cd                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !9
  %i.ci = fmul float %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cf
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !9
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.05.us.us.i.i.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !9
  %i.cn = fsub float %i.cm, %i.br
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cn, float %i.ck)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.05.us.us.i.i.i
  store float %i.co, ptr %i.cp, align 4, !tbaa !9
  %i.cq = or disjoint i64 %.05.us.us.i.i.i, 1     ; 3 uses
  %i.cr = udiv i64 %i.cq, %i.af
  %i.cs = add i64 %i.cr, %i.cd                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !9
  %i.cv = fmul float %i.cb, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cs
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !9
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cq
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !9
  %i.da = fsub float %i.cz, %i.br
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.da, float %i.cx)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cq
  store float %i.db, ptr %i.dc, align 4, !tbaa !9
  %i.dd = add nuw i64 %.05.us.us.i.i.i, 2         ; 2 uses
  %niter19.next.1 = add nuw i64 %niter19, 2       ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %._crit_edge8.us.us.i.i.i.unr-lcssa, label %._crit_edge.us.us.i.i.i.new, !llvm.loop !240

._crit_edge8.us.us.i.i.i.unr-lcssa:               ; preds = %._crit_edge.us.us.i.i.i.new
  br i1 %lcmp.mod16.not, label %._crit_edge8.us.us.i.i.i, label %.epil.preheader13

.epil.preheader13:                                ; preds = %._crit_edge8.us.us.i.i.i.unr-lcssa, %._crit_edge.us.us.i.i.i
  %.05.us.us.i.i.i.epil.init = phi i64 [ 0, %._crit_edge.us.us.i.i.i ], [ %i.dd, %._crit_edge8.us.us.i.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.de = udiv i64 %.05.us.us.i.i.i.epil.init, %i.af
  %i.df = add i64 %i.de, %i.cd                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !9
  %i.di = fmul float %i.cb, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.df
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !9
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.05.us.us.i.i.i.epil.init
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !9
  %i.dn = fsub float %i.dm, %i.br
  %i.do = tail call float @llvm.fmuladd.f32(float %i.di, float %i.dn, float %i.dk)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.05.us.us.i.i.i.epil.init
  store float %i.do, ptr %i.dp, align 4, !tbaa !9
  br label %._crit_edge8.us.us.i.i.i

._crit_edge8.us.us.i.i.i:                         ; preds = %._crit_edge8.us.us.i.i.i.unr-lcssa, %.epil.preheader13
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond28.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.lr.ph.us.us.i.i.i, !llvm.loop !241

.lr.ph11.split.split.i.i.i:                       ; preds = %.lr.ph11.i.i.i
  %2 = fdiv double 0.000000e+00, %i.u             ; 2 uses
  %3 = fptrunc double %2 to float
  %4 = fpext float %3 to double                   ; 2 uses
  %5 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %4, double %2) ; 2 uses
  %7 = fcmp ogt double %6, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %7, double %6, double 0.000000e+00
  %8 = fptrunc double %.sroa.speculated.i.i.i to float
  %.pre.i.i.i = load float, ptr %i.w, align 4, !tbaa !9
  %9 = fadd float %.pre.i.i.i, %8                 ; 2 uses
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %cdce.call, label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", !prof !68

cdce.call:                                        ; preds = %.lr.ph11.split.split.i.i.i
  %11 = tail call noundef float @sqrtf(float noundef %9) #17 ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIvRZN2cv3dnn13fastNormGroupERKNS0_3MatES4_S4_RS2_fmE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %._crit_edge8.us.us.i.i.i, %bb.a, %.lr.ph11.split.split.i.i.i, %cdce.call
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastNormGroupERKNS0_3MatES8_S8_RS6_fmE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn13fastNormGroupERKNS_3MatES3_S3_RS1_fmE3$_1", ptr %0, align 8, !tbaa !70
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %.val, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !251
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !29 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #21
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastNormGroupERKNS1_3MatES5_S5_RS3_fmE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"bool", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!13 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !12, i64 4, !5, i64 8, !4, i64 12}
!14 = !{!13, !5, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!18 = !{!17, !5, i64 0}
!19 = !{!17, !5, i64 4}
!20 = !{!"any pointer", !4, i64 0}
!21 = !{!"p1 _ZTSN2cv3MatE", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 long", !20, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 float", !20, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 bool", !20, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!20, !20, i64 0}
!30 = !{!"_ZTSSt14_Function_base", !4, i64 0, !20, i64 16}
!31 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !30, i64 0, !20, i64 24}
!32 = !{!31, !20, i64 24}
!33 = !{!30, !20, i64 16}
!34 = !{!5, !5, i64 0}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"p1 omnipotent char", !20, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !15, i64 8, !4, i64 16}
!40 = !{!39, !37, i64 0}
!41 = !{!4, !4, i64 0}
!42 = !{!"vtable pointer", !3, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!45 = !{!"p1 _ZTSN2cv12MatAllocatorE", !20, i64 0}
!46 = !{!"p1 _ZTSN2cv8UMatDataE", !20, i64 0}
!47 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!48 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !46, i64 64, !13, i64 72, !47, i64 128}
!49 = !{!48, !5, i64 0}
!50 = !{!13, !12, i64 4}
!51 = !{!48, !5, i64 4}
!52 = !{!48, !37, i64 24}
!53 = !{!"double", !4, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 int", !20, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 double", !20, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"any p2 pointer", !20, i64 0}
!60 = !{!"p2 float", !59, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{}
!63 = !{i64 8}
!64 = !{i64 4}
!65 = !{i8 0, i8 2}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!"branch_weights", i32 1, i32 1048575}
!69 = !{!"p1 _ZTSSt9type_info", !20, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !25, i64 0, !15, i64 8, !4, i64 16}
!72 = !{!71, !25, i64 0}
!73 = !{!71, !15, i64 8}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !36}
!76 = !{!38, !37, i64 0}
!77 = !{!39, !15, i64 8}
!78 = distinct !{null}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !35}
!81 = distinct !{!81, !36, !66, !67}
!82 = distinct !{!82, !35}
!83 = distinct !{!83, !36, !66}
!84 = distinct !{!84, !36}
!85 = distinct !{!85, !35}
!86 = distinct !{!86, !36, !66, !67}
!87 = distinct !{!87, !35}
!88 = distinct !{!88, !36, !66}
!89 = !{!"_ZTSZN2cv3dnn8fastNormERKNS_3MatERS1_fmbE3$_0", !21, i64 0, !21, i64 8, !23, i64 16, !25, i64 24, !25, i64 32, !27, i64 40}
!90 = !{!89, !21, i64 0}
!91 = !{!89, !21, i64 8}
!92 = !{!89, !23, i64 16}
!93 = !{!89, !25, i64 24}
!94 = !{!89, !25, i64 32}
!95 = !{!89, !27, i64 40}
!96 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !24, i64 24, i64 8, !26, i64 32, i64 8, !26, i64 40, i64 8, !28}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !35}
!99 = distinct !{!99, !36}
!100 = !{!"_ZTSZN2cv3dnn21fastNormMeanInvStdDevERKNS_3MatERS1_S4_fmE3$_0", !21, i64 0, !21, i64 8, !21, i64 16, !23, i64 24, !25, i64 32, !25, i64 40}
!101 = !{!100, !21, i64 0}
!102 = !{!100, !21, i64 8}
!103 = !{!100, !21, i64 16}
!104 = !{!100, !23, i64 24}
!105 = !{!100, !25, i64 32}
!106 = !{!100, !25, i64 40}
end_hunk_1
