Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gridsample_layer?download=true
inline.NumInlined: 3976
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.qs = mul i64 %i.ql, %i.qr                    ; 4 uses
  %i.qt = zext nneg i32 %.sroa.speculated33.i.i.i.i to i64
  %i.qu = mul i64 %i.qn, %i.qt                    ; 4 uses
  %i.qv = zext nneg i32 %.sroa.speculated39.i.i.i.i to i64 ; 4 uses
  %i.qw = zext nneg i32 %.sroa.speculated39.i164.i.i.i to i64 ; 4 uses
  %i.qx = zext nneg i32 %.sroa.speculated33.i179.i.i.i to i64
  %i.qy = mul i64 %i.qn, %i.qx                    ; 4 uses
  %i.qz = zext nneg i32 %.sroa.speculated.i207.i.i.i to i64
  %i.ra = mul i64 %i.ql, %i.qz                    ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.i.i.i, %.lr.ph.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.i.i.i ] ; 3 uses
  %i.rb = mul i64 %indvars.iv.i.i.i, %i.fo
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.rb ; 8 uses
  br i1 %or.cond22.i.i.i.i, label %bb.h, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.rd = getelementptr [4 x i8], ptr %i.rc, i64 %i.qs
  %i.re = getelementptr [4 x i8], ptr %i.rd, i64 %i.qu
  %i.rf = getelementptr [4 x i8], ptr %i.re, i64 %i.qv
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi float [ %i.rg, %bb.h ], [ 0.000000e+00, %bb.g ]
  br i1 %or.cond22.i173.i.i.i, label %bb.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit175.i.i.i

bb.i:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.i.i.i
  %i.rh = getelementptr [4 x i8], ptr %i.rc, i64 %i.qs
  %i.ri = getelementptr [4 x i8], ptr %i.rh, i64 %i.qu
  %i.rj = getelementptr [4 x i8], ptr %i.ri, i64 %i.qw
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit175.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit175.i.i.i: ; preds = %bb.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.i.i.i
  %.0.i174.i.i.i = phi float [ %i.rk, %bb.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.i.i.i ]
  br i1 %or.cond22.i186.i.i.i, label %bb.j, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit188.i.i.i

bb.j:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit175.i.i.i
  %i.rl = getelementptr [4 x i8], ptr %i.rc, i64 %i.qs
  %i.rm = getelementptr [4 x i8], ptr %i.rl, i64 %i.qy
  %i.rn = getelementptr [4 x i8], ptr %i.rm, i64 %i.qv
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit188.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit188.i.i.i: ; preds = %bb.j, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit175.i.i.i
  %.0.i187.i.i.i = phi float [ %i.ro, %bb.j ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit175.i.i.i ]
  br i1 %or.cond22.i199.i.i.i, label %bb.k, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit201.i.i.i

bb.k:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit188.i.i.i
  %i.rp = getelementptr [4 x i8], ptr %i.rc, i64 %i.qs
  %i.rq = getelementptr [4 x i8], ptr %i.rp, i64 %i.qy
  %i.rr = getelementptr [4 x i8], ptr %i.rq, i64 %i.qw
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit201.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit201.i.i.i: ; preds = %bb.k, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit188.i.i.i
  %.0.i200.i.i.i = phi float [ %i.rs, %bb.k ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit188.i.i.i ]
  br i1 %or.cond22.i212.i.i.i, label %bb.l, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit214.i.i.i

bb.l:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit201.i.i.i
  %i.rt = getelementptr [4 x i8], ptr %i.rc, i64 %i.ra
  %i.ru = getelementptr [4 x i8], ptr %i.rt, i64 %i.qu
  %i.rv = getelementptr [4 x i8], ptr %i.ru, i64 %i.qv
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit214.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit214.i.i.i: ; preds = %bb.l, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit201.i.i.i
  %.0.i213.i.i.i = phi float [ %i.rw, %bb.l ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit201.i.i.i ]
  br i1 %or.cond22.i225.i.i.i, label %bb.m, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit227.i.i.i

bb.m:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit214.i.i.i
  %i.rx = getelementptr [4 x i8], ptr %i.rc, i64 %i.ra
  %i.ry = getelementptr [4 x i8], ptr %i.rx, i64 %i.qu
  %i.rz = getelementptr [4 x i8], ptr %i.ry, i64 %i.qw
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit227.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit227.i.i.i: ; preds = %bb.m, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit214.i.i.i
  %.0.i226.i.i.i = phi float [ %i.sa, %bb.m ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit214.i.i.i ]
  br i1 %or.cond22.i238.i.i.i, label %bb.n, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit240.i.i.i

bb.n:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit227.i.i.i
  %i.sb = getelementptr [4 x i8], ptr %i.rc, i64 %i.ra
  %i.sc = getelementptr [4 x i8], ptr %i.sb, i64 %i.qy
  %i.sd = getelementptr [4 x i8], ptr %i.sc, i64 %i.qv
  %i.se = load float, ptr %i.sd, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit240.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit240.i.i.i: ; preds = %bb.n, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit227.i.i.i
  %.0.i239.i.i.i = phi float [ %i.se, %bb.n ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit227.i.i.i ]
  br i1 %or.cond22.i251.i.i.i, label %bb.o, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.i.i.i

bb.o:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit240.i.i.i
  %i.sf = getelementptr [4 x i8], ptr %i.rc, i64 %i.ra
  %i.sg = getelementptr [4 x i8], ptr %i.sf, i64 %i.qy
  %i.sh = getelementptr [4 x i8], ptr %i.sg, i64 %i.qw
  %i.si = load float, ptr %i.sh, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.i.i.i: ; preds = %bb.o, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit240.i.i.i
  %.0150.i.i.i = phi float [ %i.si, %bb.o ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit240.i.i.i ]
  %i.sj = fmul float %i.ep, %.0.i174.i.i.i
  %i.sk = tail call float @llvm.fmuladd.f32(float %i.en, float %.0.i.i.i.i, float %i.sj)
  %i.sl = tail call float @llvm.fmuladd.f32(float %i.er, float %.0.i187.i.i.i, float %i.sk)
  %i.sm = tail call float @llvm.fmuladd.f32(float %i.et, float %.0.i200.i.i.i, float %i.sl)
  %i.sn = tail call float @llvm.fmuladd.f32(float %i.eu, float %.0.i213.i.i.i, float %i.sm)
  %i.so = tail call float @llvm.fmuladd.f32(float %i.ev, float %.0.i226.i.i.i, float %i.sn)
  %i.sp = tail call float @llvm.fmuladd.f32(float %i.ew, float %.0.i239.i.i.i, float %i.so)
  %i.sq = tail call float @llvm.fmuladd.f32(float %i.ex, float %.0150.i.i.i, float %i.sp)
  %i.sr = mul i64 %indvars.iv.i.i.i, %i.ft
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.sr
  store float %i.sq, ptr %gep.i.i.i, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !1781

._crit_edge.i.i.i:                                ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i, %middle.block, %bb.f
  %indvars.iv.next20.i.i.i = add nuw nsw i64 %indvars.iv19.i.i.i, 1 ; 2 uses
  %exitcond23.not.i.i.i = icmp eq i64 %indvars.iv.next20.i.i.i, %wide.trip.count22.i.i.i
  br i1 %exitcond23.not.i.i.i, label %._crit_edge7.i.i.i, label %bb.b, !llvm.loop !1782

_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge7.i.i.i, %bb.a, %.lr.ph10.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfSA_PfiiiiiiiibEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS5_PfiiiiiiiibEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !116
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %.val, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(224) %.val6, i64 224, i1 false), !tbaa.struct !136
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 224) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi2EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph10.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi2EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph10.i.i.i:                                   ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !33    ; 28 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1837, !nonnull !79, !align !113
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1838, !nonnull !79, !align !113
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1839, !nonnull !79, !align !114
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1840, !nonnull !79, !align !114
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1841, !nonnull !79, !align !114
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1842, !nonnull !79, !align !114
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1843, !nonnull !79, !align !114
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1844, !nonnull !79, !align !114
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1845, !nonnull !79, !align !114
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1846, !nonnull !79, !align !114
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1847, !nonnull !79, !align !114
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1848, !nonnull !79, !align !114
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1849, !nonnull !79, !align !113 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ba = load i32, ptr %i.ak, align 4, !tbaa !14 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph10.split.i.i.i.preheader, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi2EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph10.split.i.i.i.preheader:                   ; preds = %.lr.ph10.i.i.i
  %2 = shl i64 %i.ai, 2
  %3 = shl i64 %i.ac, 2
  %4 = shl i64 %i.af, 2
  %i.bc = shl i64 %i.k, 2
  br label %.lr.ph10.split.i.i.i

.lr.ph10.split.i.i.i:                             ; preds = %.lr.ph10.split.i.i.i.preheader, %._crit_edge7.i.i.i
  %i.bd = phi i32 [ %i.cp, %._crit_edge7.i.i.i ], [ %i.ba, %.lr.ph10.split.i.i.i.preheader ] ; 2 uses
  %i.be = phi i32 [ %i.cq, %._crit_edge7.i.i.i ], [ %i.ba, %.lr.ph10.split.i.i.i.preheader ] ; 2 uses
  %.08.i.i.i = phi i32 [ %i.cr, %._crit_edge7.i.i.i ], [ %.val2, %.lr.ph10.split.i.i.i.preheader ] ; 3 uses
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !14
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !14  ; 4 uses
  %i.bh = mul i32 %i.bg, %i.bf                    ; 3 uses
  %i.bi = sdiv i32 %.08.i.i.i, %i.bh              ; 2 uses
  %i.bj = mul i32 %i.bh, %i.bi                    ; 0 uses
  %.recomposed = srem i32 %.08.i.i.i, %i.bh       ; 2 uses
  %i.bk = sdiv i32 %.recomposed, %i.bg            ; 2 uses
  %i.bl = mul i32 %i.bk, %i.bg                    ; 0 uses
  %.recomposed151 = srem i32 %.recomposed, %i.bg
  %i.bm = sext i32 %i.bi to i64                   ; 5 uses
  %i.bn = mul i64 %i.k, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = mul i64 %i.q, %i.bm
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bp
  %i.br = sext i32 %i.bk to i64                   ; 3 uses
  %i.bs = mul i64 %i.t, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = sext i32 %.recomposed151 to i64         ; 3 uses
  %i.bv = mul i64 %i.w, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = mul i64 %i.ac, %i.bm
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bx
  %i.bz = mul i64 %i.af, %i.br
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bz
  %i.cb = mul i64 %i.ai, %i.bu
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = icmp sgt i32 %i.be, 0
  br i1 %i.cd, label %.lr.ph6.i.i.i, label %._crit_edge7.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %.lr.ph10.split.i.i.i
  %i.ce = load ptr, ptr %i.al, align 8, !tbaa !1850, !nonnull !79, !align !113
  %i.cf = load ptr, ptr %i.am, align 8, !tbaa !1851, !nonnull !79, !align !113
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !1852, !nonnull !79, !align !113
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !1853, !nonnull !79, !align !113
  %i.ci = load ptr, ptr %i.ap, align 8, !tbaa !1854, !nonnull !79, !align !113
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !1855, !nonnull !79, !align !113
  %i.ck = load ptr, ptr %i.au, align 8, !tbaa !1856, !nonnull !79, !align !113 ; 2 uses
  %5 = mul i64 %2, %i.bu
  %6 = mul i64 %3, %i.bm
  %7 = mul i64 %4, %i.br
  %i.cl = mul i64 %i.bc, %i.bm                    ; 16 uses
  %scevgep56 = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep58 = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep61 = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep63.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep68.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep70.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep75.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep77.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep82.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep84.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep89.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep91.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep96.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep98.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep103.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %scevgep105.a = getelementptr i8, ptr %i.h, i64 %i.cl
  %i.cm = getelementptr i8, ptr %i.z, i64 %5
  %i.cn = getelementptr i8, ptr %i.cm, i64 %6
  %i.co = getelementptr i8, ptr %i.cn, i64 %7
  br label %bb.b

._crit_edge7.i.i.i:                               ; preds = %._crit_edge.i.i.i, %.lr.ph10.split.i.i.i
  %i.cp = phi i32 [ %i.bd, %.lr.ph10.split.i.i.i ], [ %i.amk, %._crit_edge.i.i.i ]
  %i.cq = phi i32 [ %i.be, %.lr.ph10.split.i.i.i ], [ %i.amk, %._crit_edge.i.i.i ]
  %i.cr = add nsw i32 %.08.i.i.i, 1               ; 2 uses
  %exitcond21.not.i.i.i = icmp eq i32 %i.cr, %.val3
  br i1 %exitcond21.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi2EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph10.split.i.i.i, !llvm.loop !1821

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph6.i.i.i
  %i.cs = phi i32 [ %i.bd, %.lr.ph6.i.i.i ], [ %i.amk, %._crit_edge.i.i.i ] ; 3 uses
  %indvars.iv18.i.i.i = phi i64 [ 0, %.lr.ph6.i.i.i ], [ %indvars.iv.next19.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %8 = shl nuw nsw i64 %indvars.iv18.i.i.i, 2
  %scevgep = getelementptr i8, ptr %i.co, i64 %8  ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv18.i.i.i, 12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !20
  %i.cv = load float, ptr %i.ce, align 4, !tbaa !20
  %i.cw = load float, ptr %i.cf, align 4, !tbaa !20
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cv, float %i.cw) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cz = load float, ptr %i.cg, align 4, !tbaa !20
  %i.da = load float, ptr %i.ch, align 4, !tbaa !20
  %i.db = load float, ptr %i.ci, align 4, !tbaa !20
  %i.dc = load float, ptr %i.cj, align 4, !tbaa !20
  %i.dd = load <2 x float>, ptr %i.cy, align 4, !tbaa !20
  %i.de = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.db, i64 1
  %i.dg = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dc, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.df, <2 x float> %i.dh) ; 2 uses
  %i.dj = tail call float @llvm.floor.f32(float %i.cx)
  %i.dk = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dl = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dk) ; 5 uses
  %i.dm = extractelement <2 x float> %i.di, i64 0 ; 2 uses
  %i.dn = tail call float @llvm.floor.f32(float %i.dm)
  %i.do = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dp = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.do) ; 6 uses
  %i.dq = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.dr = tail call float @llvm.floor.f32(float %i.dq)
  %i.ds = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.dt = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ds) ; 5 uses
  %i.du = sitofp i32 %i.dl to float               ; 2 uses
  %i.dv = fsub float %i.cx, %i.du                 ; 3 uses
  %i.dw = sitofp i32 %i.dp to float               ; 2 uses
  %i.dx = fsub float %i.dm, %i.dw                 ; 3 uses
  %i.dy = sitofp i32 %i.dt to float               ; 2 uses
  %i.dz = fsub float %i.dq, %i.dy                 ; 5 uses
  %i.ea = fsub float 1.000000e+00, %i.dv          ; 2 uses
  %i.eb = fsub float 1.000000e+00, %i.dx          ; 2 uses
  %i.ec = fmul float %i.ea, %i.eb                 ; 2 uses
  %i.ed = fsub float 1.000000e+00, %i.dz          ; 4 uses
  %i.ee = fmul float %i.ec, %i.ed                 ; 3 uses
  %i.ef = fmul float %i.dv, %i.eb                 ; 2 uses
  %i.eg = fmul float %i.ef, %i.ed                 ; 3 uses
  %i.eh = fmul float %i.ea, %i.dx                 ; 2 uses
  %i.ei = fmul float %i.eh, %i.ed                 ; 3 uses
  %i.ej = fmul float %i.dv, %i.dx                 ; 2 uses
  %i.ek = fmul float %i.ej, %i.ed                 ; 3 uses
  %i.el = fmul float %i.dz, %i.ec                 ; 3 uses
  %i.em = fmul float %i.dz, %i.ef                 ; 3 uses
  %i.en = fmul float %i.eh, %i.dz                 ; 3 uses
  %i.eo = fmul float %i.ej, %i.dz                 ; 3 uses
  %i.ep = or i32 %i.dp, %i.dl
  %i.eq = or i32 %i.ep, %i.dt
  %or.cond3.i.i.i = icmp sgt i32 %i.eq, -1
  br i1 %or.cond3.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.er = add nuw nsw i32 %i.dl, 1
  %i.es = load ptr, ptr %i.ar, align 8, !tbaa !1857, !nonnull !79, !align !113
  %i.et = load i32, ptr %i.es, align 4, !tbaa !14
  %i.eu = icmp slt i32 %i.er, %i.et
  br i1 %i.eu, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ev = add nuw nsw i32 %i.dp, 1
  %i.ew = load ptr, ptr %i.as, align 8, !tbaa !1858, !nonnull !79, !align !113
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !14
  %i.ey = icmp slt i32 %i.ev, %i.ex
  br i1 %i.ey, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ez = add nuw nsw i32 %i.dt, 1
  %i.fa = load ptr, ptr %i.at, align 8, !tbaa !1859, !nonnull !79, !align !113
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !14
  %i.fc = icmp slt i32 %i.ez, %i.fb
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.fd = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.fc, %bb.e ]
  %i.fe = load i32, ptr %i.ck, align 4, !tbaa !14 ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.fg = load ptr, ptr %i.av, align 8, !tbaa !1860, !nonnull !79, !align !114
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !18 ; 7 uses
  %i.fi = sext i32 %i.dl to i64                   ; 21 uses
  %i.fj = add i32 %i.dl, 1                        ; 2 uses
  %i.fk = sext i32 %i.fj to i64                   ; 21 uses
  %i.fl = load ptr, ptr %i.az, align 8, !tbaa !1861, !nonnull !79, !align !114
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !18 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv18.i.i.i ; 3 uses
  br i1 %i.fd, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.fn = add i32 %i.dp, 1
  %i.fo = sext i32 %i.fn to i64                   ; 2 uses
  %i.fp = sext i32 %i.dp to i64                   ; 2 uses
  %i.fq = sext i32 %i.dt to i64                   ; 3 uses
  %i.fr = load ptr, ptr %i.aw, align 8, !tbaa !1862, !nonnull !79, !align !114
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !18 ; 8 uses
  %i.ft = mul i64 %i.fs, %i.fq
  %invariant.gep2.i.i.i = getelementptr [4 x i8], ptr %i.bo, i64 %i.ft ; 5 uses
  %i.fu = load ptr, ptr %i.ax, align 8, !tbaa !1863, !nonnull !79, !align !114
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !18 ; 4 uses
  %i.fw = mul i64 %i.fv, %i.fp                    ; 10 uses
  %i.fx = mul i64 %i.fv, %i.fo                    ; 10 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.fe to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %i.fe, 15
  %ident.check.not = icmp eq i64 %i.fm, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i
  %i.fy = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %scevgep55 = getelementptr i8, ptr %scevgep, i64 %i.fy
  %i.fz = shl i64 %i.fh, 2
  %i.ga = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.gb = mul i64 %i.fz, %i.ga                    ; 8 uses
  %i.gc = shl i64 %i.fv, 2
  %i.gd = mul i64 %i.gc, %i.fo                    ; 8 uses
  %i.ge = shl nsw i64 %i.fq, 2
  %i.gf = add nsw i64 %i.ge, 4
  %i.gg = mul i64 %i.fs, %i.gf                    ; 8 uses
  %i.gh = shl nsw i64 %i.fk, 2                    ; 8 uses
  %i.gi = getelementptr i8, ptr %scevgep56, i64 %i.gb
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gd
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gg
  %scevgep57 = getelementptr i8, ptr %i.gk, i64 %i.gh ; 4 uses
  %i.gl = getelementptr i8, ptr %scevgep58, i64 %i.gd
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gg
  %scevgep59 = getelementptr i8, ptr %i.gm, i64 %i.gh ; 4 uses
  %i.gn = shl nsw i64 %i.fi, 2                    ; 8 uses
  %i.go = getelementptr i8, ptr %scevgep61, i64 %i.gb
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gd
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gg
  %scevgep62 = getelementptr i8, ptr %i.gq, i64 %i.gn ; 4 uses
  %i.gr = getelementptr i8, ptr %scevgep63.a, i64 %i.gd
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gg
  %scevgep64 = getelementptr i8, ptr %i.gs, i64 %i.gn ; 4 uses
  %i.gt = shl i64 %i.fv, 2
  %i.gu = mul i64 %i.gt, %i.fp                    ; 8 uses
  %i.gv = getelementptr i8, ptr %scevgep68.a, i64 %i.gb
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.gg
  %scevgep69 = getelementptr i8, ptr %i.gx, i64 %i.gh ; 4 uses
  %i.gy = getelementptr i8, ptr %scevgep70.a, i64 %i.gu
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gg
  %scevgep71 = getelementptr i8, ptr %i.gz, i64 %i.gh ; 4 uses
  %i.ha = getelementptr i8, ptr %scevgep75.a, i64 %i.gb
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gu
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.gg
  %scevgep76 = getelementptr i8, ptr %i.hc, i64 %i.gn ; 4 uses
  %i.hd = getelementptr i8, ptr %scevgep77.a, i64 %i.gu
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.gg
  %scevgep78 = getelementptr i8, ptr %i.he, i64 %i.gn ; 4 uses
  %i.hf = shl i64 %i.fs, 2
  %i.hg = mul i64 %i.hf, %i.fq                    ; 8 uses
  %i.hh = getelementptr i8, ptr %scevgep82.a, i64 %i.gb
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.hg
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.gd
  %scevgep83 = getelementptr i8, ptr %i.hj, i64 %i.gh ; 4 uses
  %i.hk = getelementptr i8, ptr %scevgep84.a, i64 %i.hg
  %i.hl = getelementptr i8, ptr %i.hk, i64 %i.gd
  %scevgep85 = getelementptr i8, ptr %i.hl, i64 %i.gh ; 4 uses
  %i.hm = getelementptr i8, ptr %scevgep89.a, i64 %i.gb
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.hg
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.gd
  %scevgep90 = getelementptr i8, ptr %i.ho, i64 %i.gn ; 4 uses
  %i.hp = getelementptr i8, ptr %scevgep91.a, i64 %i.hg
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.gd
  %scevgep92 = getelementptr i8, ptr %i.hq, i64 %i.gn ; 4 uses
  %i.hr = getelementptr i8, ptr %scevgep96.a, i64 %i.gb
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.gu
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hg
  %scevgep97 = getelementptr i8, ptr %i.ht, i64 %i.gh ; 4 uses
  %i.hu = getelementptr i8, ptr %scevgep98.a, i64 %i.gu
  %i.hv = getelementptr i8, ptr %i.hu, i64 %i.hg
  %scevgep99 = getelementptr i8, ptr %i.hv, i64 %i.gh ; 4 uses
  %i.hw = getelementptr i8, ptr %scevgep103.a, i64 %i.gb
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.gu
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hg
  %scevgep104 = getelementptr i8, ptr %i.hy, i64 %i.gn ; 4 uses
  %i.hz = getelementptr i8, ptr %scevgep105.a, i64 %i.gu
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.hg
  %scevgep106 = getelementptr i8, ptr %i.ia, i64 %i.gn ; 4 uses
  %i.ib = icmp ult ptr %scevgep57, %scevgep59
  %umin = select i1 %i.ib, ptr %scevgep57, ptr %scevgep59
  %i.ic = icmp ugt ptr %scevgep57, %scevgep59
  %umax = select i1 %i.ic, ptr %scevgep57, ptr %scevgep59
  %i.id = icmp ult ptr %scevgep62, %scevgep64
  %umin65 = select i1 %i.id, ptr %scevgep62, ptr %scevgep64
  %i.ie = icmp ugt ptr %scevgep62, %scevgep64
  %umax66 = select i1 %i.ie, ptr %scevgep62, ptr %scevgep64
  %i.if = icmp ult ptr %scevgep69, %scevgep71
  %umin72 = select i1 %i.if, ptr %scevgep69, ptr %scevgep71
  %i.ig = icmp ugt ptr %scevgep69, %scevgep71
  %umax73 = select i1 %i.ig, ptr %scevgep69, ptr %scevgep71
  %i.ih = icmp ult ptr %scevgep76, %scevgep78
  %umin79 = select i1 %i.ih, ptr %scevgep76, ptr %scevgep78
  %i.ii = icmp ugt ptr %scevgep76, %scevgep78
  %umax80 = select i1 %i.ii, ptr %scevgep76, ptr %scevgep78
  %i.ij = icmp ult ptr %scevgep83, %scevgep85
  %umin86 = select i1 %i.ij, ptr %scevgep83, ptr %scevgep85
  %i.ik = icmp ugt ptr %scevgep83, %scevgep85
  %umax87 = select i1 %i.ik, ptr %scevgep83, ptr %scevgep85
  %i.il = icmp ult ptr %scevgep90, %scevgep92
  %umin93 = select i1 %i.il, ptr %scevgep90, ptr %scevgep92
  %i.im = icmp ugt ptr %scevgep90, %scevgep92
  %umax94 = select i1 %i.im, ptr %scevgep90, ptr %scevgep92
  %i.in = icmp ult ptr %scevgep97, %scevgep99
  %umin100 = select i1 %i.in, ptr %scevgep97, ptr %scevgep99
  %i.io = icmp ugt ptr %scevgep97, %scevgep99
  %umax101 = select i1 %i.io, ptr %scevgep97, ptr %scevgep99
  %i.ip = icmp ult ptr %scevgep104, %scevgep106
  %umin107 = select i1 %i.ip, ptr %scevgep104, ptr %scevgep106
  %i.iq = icmp ugt ptr %scevgep104, %scevgep106
  %umax108 = select i1 %i.iq, ptr %scevgep104, ptr %scevgep106
  %i.ir = insertelement <8 x ptr> poison, ptr %umax, i64 0
  %i.is = insertelement <8 x ptr> %i.ir, ptr %umax66, i64 1
  %i.it = insertelement <8 x ptr> %i.is, ptr %umax73, i64 2
  %i.iu = insertelement <8 x ptr> %i.it, ptr %umax80, i64 3
  %i.iv = insertelement <8 x ptr> %i.iu, ptr %umax87, i64 4
  %i.iw = insertelement <8 x ptr> %i.iv, ptr %umax94, i64 5
  %i.ix = insertelement <8 x ptr> %i.iw, ptr %umax101, i64 6
  %i.iy = insertelement <8 x ptr> %i.ix, ptr %umax108, i64 7
  %i.iz = getelementptr i8, <8 x ptr> %i.iy, i64 4
  %i.ja = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.jb = shufflevector <8 x ptr> %i.ja, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.jc = icmp ult <8 x ptr> %i.jb, %i.iz
  %i.jd = insertelement <8 x ptr> poison, ptr %umin, i64 0
  %i.je = insertelement <8 x ptr> %i.jd, ptr %umin65, i64 1
  %i.jf = insertelement <8 x ptr> %i.je, ptr %umin72, i64 2
  %i.jg = insertelement <8 x ptr> %i.jf, ptr %umin79, i64 3
  %i.jh = insertelement <8 x ptr> %i.jg, ptr %umin86, i64 4
  %i.ji = insertelement <8 x ptr> %i.jh, ptr %umin93, i64 5
  %i.jj = insertelement <8 x ptr> %i.ji, ptr %umin100, i64 6
  %i.jk = insertelement <8 x ptr> %i.jj, ptr %umin107, i64 7
  %i.jl = insertelement <8 x ptr> poison, ptr %scevgep55, i64 0
  %i.jm = shufflevector <8 x ptr> %i.jl, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.jn = icmp ult <8 x ptr> %i.jk, %i.jm
  %i.jo = and <8 x i1> %i.jc, %i.jn
  %i.jp = bitcast <8 x i1> %i.jo to i8
  %.not = icmp eq i8 %i.jp, 0
  br i1 %.not, label %vector.ph, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x float> poison, float %i.ee, i64 0
  %broadcast.splat138 = shufflevector <4 x float> %broadcast.splatinsert137, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <4 x float> poison, float %i.ei, i64 0
  %broadcast.splat140 = shufflevector <4 x float> %broadcast.splatinsert139, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <4 x float> poison, float %i.el, i64 0
  %broadcast.splat144 = shufflevector <4 x float> %broadcast.splatinsert143, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <4 x float> poison, float %i.em, i64 0
  %broadcast.splat146 = shufflevector <4 x float> %broadcast.splatinsert145, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat148 = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.eo, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.jq = or disjoint i64 %index, 1
  %i.jr = or disjoint i64 %index, 2
  %i.js = or disjoint i64 %index, 3
  %i.jt = mul i64 %index, %i.fh
  %i.ju = mul i64 %i.jq, %i.fh
  %i.jv = mul i64 %i.jr, %i.fh
  %i.jw = mul i64 %i.js, %i.fh
  %i.jx = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jt ; 3 uses
  %i.jy = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ju ; 3 uses
  %i.jz = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jv ; 3 uses
  %i.ka = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jw ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.fs ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.fs ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.fs ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.fs ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.fw ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.fw ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.fw ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.fw ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.fx ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.fx ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.fx ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.fx ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.fw ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.fw ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.fw ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.fw ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.fx ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.fx ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.fx ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.fx ; 2 uses
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.fi
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.fi
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.fi
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.fi
  %i.kz = load float, ptr %i.kv, align 4, !tbaa !20, !alias.scope !1864
  %i.la = load float, ptr %i.kw, align 4, !tbaa !20, !alias.scope !1864
  %i.lb = load float, ptr %i.kx, align 4, !tbaa !20, !alias.scope !1864
  %i.lc = load float, ptr %i.ky, align 4, !tbaa !20, !alias.scope !1864
  %i.ld = insertelement <4 x float> poison, float %i.kz, i64 0
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 1
  %i.lf = insertelement <4 x float> %i.le, float %i.lb, i64 2
  %i.lg = insertelement <4 x float> %i.lf, float %i.lc, i64 3
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.fk
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.fk
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.fk
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.fk
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !20, !alias.scope !1865
  %i.lm = load float, ptr %i.li, align 4, !tbaa !20, !alias.scope !1865
  %i.ln = load float, ptr %i.lj, align 4, !tbaa !20, !alias.scope !1865
  %i.lo = load float, ptr %i.lk, align 4, !tbaa !20, !alias.scope !1865
  %i.lp = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 1
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 2
  %i.ls = insertelement <4 x float> %i.lr, float %i.lo, i64 3
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.fi
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.fi
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.fi
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.fi
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !20, !alias.scope !1866
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !20, !alias.scope !1866
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !20, !alias.scope !1866
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !20, !alias.scope !1866
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.fk
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.fk
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.fk
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.fk
  %i.mj = load float, ptr %i.mf, align 4, !tbaa !20, !alias.scope !1867
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !20, !alias.scope !1867
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !20, !alias.scope !1867
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !20, !alias.scope !1867
  %i.mn = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 1
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 2
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 3
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.fi
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.fi
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.fi
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.fi
  %i.mv = load float, ptr %i.mr, align 4, !tbaa !20, !alias.scope !1868
  %i.mw = load float, ptr %i.ms, align 4, !tbaa !20, !alias.scope !1868
  %i.mx = load float, ptr %i.mt, align 4, !tbaa !20, !alias.scope !1868
  %i.my = load float, ptr %i.mu, align 4, !tbaa !20, !alias.scope !1868
  %i.mz = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 1
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 2
  %i.nc = insertelement <4 x float> %i.nb, float %i.my, i64 3
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.fk
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.fk
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.fk
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.fk
  %i.nh = load float, ptr %i.nd, align 4, !tbaa !20, !alias.scope !1869
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !20, !alias.scope !1869
  %i.nj = load float, ptr %i.nf, align 4, !tbaa !20, !alias.scope !1869
  %i.nk = load float, ptr %i.ng, align 4, !tbaa !20, !alias.scope !1869
  %i.nl = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nm = insertelement <4 x float> %i.nl, float %i.ni, i64 1
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 2
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 3
  %i.np = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.fi
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.fi
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.fi
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.fi
  %i.nt = load float, ptr %i.np, align 4, !tbaa !20, !alias.scope !1870
  %i.nu = load float, ptr %i.nq, align 4, !tbaa !20, !alias.scope !1870
  %i.nv = load float, ptr %i.nr, align 4, !tbaa !20, !alias.scope !1870
  %i.nw = load float, ptr %i.ns, align 4, !tbaa !20, !alias.scope !1870
  %i.nx = insertelement <4 x float> poison, float %i.nt, i64 0
  %i.ny = insertelement <4 x float> %i.nx, float %i.nu, i64 1
  %i.nz = insertelement <4 x float> %i.ny, float %i.nv, i64 2
  %i.oa = insertelement <4 x float> %i.nz, float %i.nw, i64 3
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.fk
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.fk
  %i.od = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.fk
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.fk
  %i.of = load float, ptr %i.ob, align 4, !tbaa !20, !alias.scope !1871
  %i.og = load float, ptr %i.oc, align 4, !tbaa !20, !alias.scope !1871
  %i.oh = load float, ptr %i.od, align 4, !tbaa !20, !alias.scope !1871
  %i.oi = load float, ptr %i.oe, align 4, !tbaa !20, !alias.scope !1871
  %i.oj = insertelement <4 x float> poison, float %i.of, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.og, i64 1
  %i.ol = insertelement <4 x float> %i.ok, float %i.oh, i64 2
  %i.om = insertelement <4 x float> %i.ol, float %i.oi, i64 3
  %i.on = fmul <4 x float> %broadcast.splat, %i.ls
  %i.oo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat138, <4 x float> %i.lg, <4 x float> %i.on)
  %i.op = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat140, <4 x float> %i.me, <4 x float> %i.oo)
  %i.oq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat142, <4 x float> %i.mq, <4 x float> %i.op)
  %i.or = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat144, <4 x float> %i.nc, <4 x float> %i.oq)
  %i.os = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat146, <4 x float> %i.no, <4 x float> %i.or)
  %i.ot = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat148, <4 x float> %i.oa, <4 x float> %i.os)
  %i.ou = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat150, <4 x float> %i.om, <4 x float> %i.ot)
  %i.ov = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index
  store <4 x float> %i.ou, ptr %i.ov, align 4, !tbaa !20, !alias.scope !1872, !noalias !1873
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ow = icmp eq i64 %index.next, %n.vec
  br i1 %i.ow, label %middle.block, label %vector.body, !llvm.loop !1832

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.i, %middle.block
  %indvars.iv15.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i
  %indvars.iv15.i.i.i = phi i64 [ %indvars.iv.next16.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i ], [ %indvars.iv15.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader ] ; 3 uses
  %i.ox = mul i64 %indvars.iv15.i.i.i, %i.fh
  %gep3.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ox ; 3 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.fs ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.fw ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.fx ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.fw ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.fx ; 2 uses
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.fi
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !20
end_hunk_0
