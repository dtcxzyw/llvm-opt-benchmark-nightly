inline.NumInlined: 6379
inline.NumDeleted: 1713
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_18TypeDesc17is_floating_pointEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIfEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1123
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIfEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !1124
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1126
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 8 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1127, !nonnull !123, !align !490
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !3
  %i.k = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1129, !nonnull !123, !align !490
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %0, align 8, !tbaa !1127, !nonnull !123, !align !490
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.v = extractelement <2 x float> %i.k, i64 1
  %i.w = fadd float %i.v, -1.000000e+00
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !1130, !range !122, !noundef !123
  %i.ac = icmp eq i8 %i.ab, 0
  %.pre = load i32, ptr %i.p, align 4, !tbaa !1134 ; 2 uses
  br i1 %i.ac, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre41 = load i32, ptr %i.r, align 8, !tbaa !1135
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !1136
  %i.ae = icmp eq i32 %.pre, %i.ad
  %.pre42 = load i32, ptr %i.r, align 8, !tbaa !1135 ; 3 uses
  %i.af = load i32, ptr %i.s, align 4
  %i.ag = icmp eq i32 %.pre42, %i.af
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !1137
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !1138
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1139
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1139
  %.not.i31 = icmp eq ptr %i.ap, null
  br i1 %.not.i31, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.i:                                             ; preds = %._crit_edge43
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.c, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.au = phi i32 [ %.pre41, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre42, %bb.c ], [ %.pre42, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.av = sitofp i32 %.pre to float
  %i.aw = sitofp i32 %i.au to float
  %i.ax = fsub float %i.w, %i.aw
  %i.ay = insertelement <2 x float> poison, float %i.av, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.ax, i64 1
  %i.ba = fadd <2 x float> %i.az, splat (float 5.000000e-01)
  %i.bb = fdiv <2 x float> %i.ba, %i.k            ; 2 uses
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !1140, !nonnull !123
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !109, !range !122, !noundef !123
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = extractelement <2 x float> %i.bb, i64 0
  %i.bg = fpext float %i.bf to double
  %i.bh = fmul double %i.bg, f0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bi) ; 4 uses
  %i.bj = extractelement <2 x float> %i.bb, i64 1
  %i.bk = fpext float %i.bj to double
  %i.bl = fmul double %i.bk, f0x400921FB54442D18
  %i.bm = fptrunc double %i.bl to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bm) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bn = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bo = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.l, %bb.k
  %.sink11.i = phi float [ %4, %bb.k ], [ %7, %bb.l ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %.sink.i = phi float [ %i.bn, %bb.k ], [ %cos.i.i, %bb.l ]
  %i.bp = call float @llvm.acos.f32(float %.sink.i)
  %i.bq = fpext ninf float %i.bp to double
  %i.br = fmul double %i.bq, f0x3FD45F306DC9C883
  %i.bs = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #37
  %i.bt = fpext float %i.bs to double
  %i.bu = fdiv double %i.br, %i.bt
  %i.bv = fptrunc double %i.bu to float           ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %.sink11.i, float %i.bv, float 1.000000e+00)
  %i.bx = fmul float %i.bw, 5.000000e-01
  %i.by = call float @llvm.fmuladd.f32(float %.sink10.i, float %i.bv, float 1.000000e+00)
  %i.bz = fmul float %i.by, 5.000000e-01
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !1129, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIfEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, float noundef %i.bx, float noundef %i.bz, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.cb = load i32, ptr %i.y, align 8, !tbaa !234 ; 2 uses
  %i.cc = load i32, ptr %i.z, align 4, !tbaa !235
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.ce = sext i32 %i.cb to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.j, !llvm.loop !1141

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.ce, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !172
  %i.ci = load ptr, ptr %3, align 8, !tbaa !1142
  %i.cj = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.lr.ph
  %i.ck = icmp eq i32 %i.cj, 3
  br i1 %i.ck, label %bb.o, label %bb.p, !prof !78

bb.o:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc, %bb.o
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !1143
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv
  store float %i.ch, ptr %i.cm, align 4, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cn = load i32, ptr %i.z, align 4, !tbaa !235
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !1144

bb.q:                                             ; preds = %bb.o, %.lr.ph
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.cf, %bb.n ], [ %i.cq, %bb.q ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIfEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.d = load <2 x i32>, ptr %i.b, align 8, !tbaa !3
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.f = sitofp <2 x i32> %i.d to <2 x float>
  %i.g = sitofp <2 x i32> %i.e to <2 x float>     ; 2 uses
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = insertelement <2 x float> %i.h, float %2, i64 1
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.g, <2 x float> %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171  ; 10 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = alloca i8, i64 %i.o, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.r = sext i32 %i.l to i64                     ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %i.r ; 4 uses
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.r ; 3 uses
  %i.v = extractelement <2 x float> %i.j, i64 0
  %i.w = fadd float %i.v, -5.000000e-01           ; 2 uses
  %i.x = extractelement <2 x float> %i.j, i64 1
  %i.y = fadd float %i.x, -5.000000e-01           ; 2 uses
  %i.z = tail call noundef float @llvm.floor.f32(float %i.w) ; 2 uses
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fsub float %i.w, %i.z                   ; 4 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 4 uses
  %i.ae = fsub float %i.y, %i.ac                  ; 3 uses
  %i.af = add nsw i32 %i.aa, 2
  %i.ag = add nsw i32 %i.ad, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.aa, i32 noundef %i.af, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ah = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.ah, label %.lr.ph102, label %._crit_edge99

._crit_edge99:                                    ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1143
  %i.ak = zext nneg i32 %i.l to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.q, ptr align 4 %i.aj, i64 %i.al, i1 false), !tbaa !172
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1143
  %i.ao = zext nneg i32 %i.l to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.an, i64 %i.ap, i1 false), !tbaa !172
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1143
  %i.as = zext nneg i32 %i.l to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.t, ptr align 4 %i.ar, i64 %i.at, i1 false), !tbaa !172
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1143
  %i.aw = zext nneg i32 %i.l to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.av, i64 %i.ax, i1 false), !tbaa !172
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge99, %.lr.ph102
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge103
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !206 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !153
  %i.bc = add i32 %i.az, -1
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = fsub float 1.000000e+00, %i.ae
  %i.bf = add nsw i32 %i.ad, 1
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.ad)
  %spec.select.i81 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.bf)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.bd)
  %.1.i82 = tail call i32 @llvm.smin.i32(i32 %spec.select.i81, i32 %i.bd)
  %i.bg = insertelement <2 x i32> poison, i32 %.1.i82, i64 0
  %i.bh = insertelement <2 x i32> %i.bg, i32 %.1.i, i64 1
  %i.bi = sitofp <2 x i32> %i.bh to <2 x float>
  %i.bj = fadd nnan <2 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fmul nnan <2 x float> %i.bj, splat (float f0x40490FDB)
  %i.bl = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fdiv <2 x float> %i.bk, %i.bl
  %i.bn = tail call <2 x float> @llvm.sin.v2f32(<2 x float> %i.bm)
  %i.bo = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.be, i64 1
  %i.bq = fmul <2 x float> %i.bp, %i.bn           ; 3 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %shift = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.bq
  %i.bs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bt = fdiv float %i.br, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge103
  %.0 = phi float [ %i.bt, %bb.d ], [ %i.ae, %._crit_edge103 ] ; 3 uses
  %i.bu = fsub float 1.000000e+00, %i.ab          ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L15interppixel_NDCIfEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE:bb.a
  %broadcast.splat2 = shufflevector <4 x float> %broadcast.splatinsert1, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat4 = shufflevector <4 x float> %broadcast.splatinsert3, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat6 = shufflevector <4 x float> %broadcast.splatinsert5, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  %wide.load = load <4 x float>, ptr %i.bw, align 16, !tbaa !172
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  %wide.load7 = load <4 x float>, ptr %i.bx, align 4, !tbaa !172
  %i.by = fmul <4 x float> %broadcast.splat, %wide.load7
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat2, <4 x float> %i.by)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index
  %wide.load8 = load <4 x float>, ptr %i.ca, align 4, !tbaa !172
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index
  %wide.load9 = load <4 x float>, ptr %i.cb, align 4, !tbaa !172
  %i.cc = fmul <4 x float> %broadcast.splat, %wide.load9
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load8, <4 x float> %broadcast.splat2, <4 x float> %i.cc)
  %i.ce = fmul <4 x float> %broadcast.splat4, %i.cd
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat6, <4 x float> %i.bz, <4 x float> %i.ce)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.cf, ptr %i.cg, align 4, !tbaa !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !172
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !172
  %i.cm = fmul float %i.ab, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.bu, float %i.cm)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !172
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !172
  %i.cs = fmul float %i.ab, %i.cr
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.bu, float %i.cs)
  %i.cu = fmul float %.0, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.cn, float %i.cu)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.cv, ptr %i.cw, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1146

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1134
  %i.c = add nsw i32 %i.b, 1                      ; 7 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !1134
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1147
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1148, !range !122, !noundef !123
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1135
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !1149, !range !122, !noundef !123
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1150
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1143
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.n
  store ptr %i.q, ptr %i.o, align 8, !tbaa !1143
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1151
  %.not.i = icmp slt i32 %i.c, %i.s
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !1152, !range !122, !noundef !123
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1150
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1143
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.x
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !1143
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1151
  %i.ad = icmp slt i32 %i.c, %i.ac                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sge i32 %i.c, %i.af
  %not..i = xor i1 %i.ad, true
  %or.cond.i = select i1 %not..i, i1 true, i1 %i.ag, !prof !1153
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = select i1 %or.cond.i, i1 true, i1 %i.aj, !prof !1153
  br i1 %i.ak, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.al = zext i1 %i.ad to i8
  %i.am = load ptr, ptr %0, align 8, !tbaa !1142
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1135
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1137
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1154
  %i.ax = tail call noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef %i.c, i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext %i.ad, i32 noundef %i.aw)
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !1143
  store i8 %i.al, ptr %i.g, align 1, !tbaa !1148
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.i:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1136 ; 3 uses
  store i32 %i.az, ptr %i.a, align 4, !tbaa !1134
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1135
  %i.bc = add nsw i32 %i.bb, 1                    ; 3 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !1135
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1155
  %.not = icmp slt i32 %i.bc, %i.be
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1156 ; 2 uses
  store i32 %i.bg, ptr %i.ba, align 8, !tbaa !1135
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !1137
  %i.bj = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !1137
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1138
  %.not1 = icmp slt i32 %i.bj, %i.bl
  br i1 %.not1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !1130
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.l:                                             ; preds = %._crit_edge, %bb.i, %bb.j
  %i.bn = phi i32 [ %i.bc, %bb.i ], [ %i.bg, %bb.j ], [ %.pre, %._crit_edge ]
  %i.bo = phi i32 [ %i.az, %bb.i ], [ %i.az, %bb.j ], [ %i.c, %._crit_edge ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !1137
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %0, i32 noundef %i.bo, i32 noundef %i.bn, i32 noundef %i.bq)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.l, %bb.k
  ret void
}

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #23

declare noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #2

declare noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1123
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !1124
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1126
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.196", align 8 ; 8 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1157, !nonnull !123, !align !490
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !3
  %i.k = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1159, !nonnull !123, !align !490
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %0, align 8, !tbaa !1157, !nonnull !123, !align !490
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.v = extractelement <2 x float> %i.k, i64 1
  %i.w = fadd float %i.v, -1.000000e+00
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !1130, !range !122, !noundef !123
  %i.ac = icmp eq i8 %i.ab, 0
  %.pre = load i32, ptr %i.p, align 4, !tbaa !1134 ; 2 uses
  br i1 %i.ac, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre41 = load i32, ptr %i.r, align 8, !tbaa !1135
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !1136
  %i.ae = icmp eq i32 %.pre, %i.ad
  %.pre42 = load i32, ptr %i.r, align 8, !tbaa !1135 ; 3 uses
  %i.af = load i32, ptr %i.s, align 4
  %i.ag = icmp eq i32 %.pre42, %i.af
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !1137
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !1138
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1139
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1139
  %.not.i31 = icmp eq ptr %i.ap, null
  br i1 %.not.i31, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.i:                                             ; preds = %._crit_edge43
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.c, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.at = phi i32 [ %.pre41, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre42, %bb.c ], [ %.pre42, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.au = sitofp i32 %.pre to float
  %i.av = sitofp i32 %i.at to float
  %i.aw = fsub float %i.w, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.aw, i64 1
  %i.az = fadd <2 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fdiv <2 x float> %i.az, %i.k            ; 2 uses
  %i.bb = load ptr, ptr %i.x, align 8, !tbaa !1160, !nonnull !123
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !109, !range !122, !noundef !123
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = extractelement <2 x float> %i.ba, i64 0
  %i.bf = fpext float %i.be to double
  %i.bg = fmul double %i.bf, f0x401921FB54442D18
  %i.bh = fptrunc double %i.bg to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bh) ; 4 uses
  %i.bi = extractelement <2 x float> %i.ba, i64 1
  %i.bj = fpext float %i.bi to double
  %i.bk = fmul double %i.bj, f0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bl) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bm = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bn = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %4, %bb.j ], [ %7, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %cos.i.i, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, f0x3FD45F306DC9C883
  %i.br = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #37
  %i.bs = fpext float %i.br to double
  %i.bt = fdiv double %i.bq, %i.bs
  %i.bu = fptrunc double %i.bt to float           ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %.sink11.i, float %i.bu, float 1.000000e+00)
  %i.bw = fmul float %i.bv, 5.000000e-01
  %i.bx = call float @llvm.fmuladd.f32(float %.sink10.i, float %i.bu, float 1.000000e+00)
  %i.by = fmul float %i.bx, 5.000000e-01
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !1159, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIhEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, float noundef %i.bw, float noundef %i.by, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !234 ; 2 uses
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !235
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cd = sext i32 %i.ca to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.q, !llvm.loop !1161

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ %i.cd, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !172
  %i.ch = load ptr, ptr %3, align 8, !tbaa !1142
  %i.ci = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.lr.ph
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %bb.n, label %bb.o, !prof !78

bb.n:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc, %bb.n
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !1143
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv
  store float %i.cg, ptr %i.cl, align 4, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cm = load i32, ptr %i.z, align 4, !tbaa !235
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !1162

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %i.ce, %bb.m ], [ %i.cp, %bb.p ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIhEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.d = load <2 x i32>, ptr %i.b, align 8, !tbaa !3
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.f = sitofp <2 x i32> %i.d to <2 x float>
  %i.g = sitofp <2 x i32> %i.e to <2 x float>     ; 2 uses
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = insertelement <2 x float> %i.h, float %2, i64 1
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.g, <2 x float> %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = alloca i8, i64 %i.o, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.r = sext i32 %i.l to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.r ; 5 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r ; 4 uses
  %i.v = extractelement <2 x float> %i.j, i64 0
  %i.w = fadd float %i.v, -5.000000e-01           ; 2 uses
  %i.x = extractelement <2 x float> %i.j, i64 1
  %i.y = fadd float %i.x, -5.000000e-01           ; 2 uses
  %i.z = tail call noundef float @llvm.floor.f32(float %i.w) ; 2 uses
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fsub float %i.w, %i.z                   ; 4 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 4 uses
  %i.ae = fsub float %i.y, %i.ac                  ; 3 uses
  %i.af = add nsw i32 %i.aa, 2
  %i.ag = add nsw i32 %i.ad, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.aa, i32 noundef %i.af, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ah = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1143 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 9 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %wide.load = load <4 x i8>, ptr %i.ak, align 1, !tbaa !21
  %wide.load1 = load <4 x i8>, ptr %i.al, align 1, !tbaa !21
  %i.am = uitofp <4 x i8> %wide.load to <4 x float>
  %i.an = uitofp <4 x i8> %wide.load1 to <4 x float>
  %i.ao = fmul nnan <4 x float> %i.am, splat (float f0x3B808081)
  %i.ap = fmul nnan <4 x float> %i.an, splat (float f0x3B808081)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x float> %i.ao, ptr %i.aq, align 16, !tbaa !172
  store <4 x float> %i.ap, ptr %i.ar, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1143 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.l to i64
  %min.iters.check3 = icmp ult i32 %i.l, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %index8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %wide.load9 = load <4 x i8>, ptr %i.av, align 1, !tbaa !21
  %wide.load10 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !21
  %i.ax = uitofp <4 x i8> %wide.load9 to <4 x float>
  %i.ay = uitofp <4 x i8> %wide.load10 to <4 x float>
  %i.az = fmul nnan <4 x float> %i.ax, splat (float f0x3B808081)
  %i.ba = fmul nnan <4 x float> %i.ay, splat (float f0x3B808081)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> %i.az, ptr %i.bb, align 4, !tbaa !172
  store <4 x float> %i.ba, ptr %i.bc, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bd = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bd, label %middle.block12, label %vector.body7, !llvm.loop !1164

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L15interppixel_NDCIhEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE:bb.a
  %i.el = load float, ptr %i.ek, align 4, !tbaa !172
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.en = load float, ptr %i.em, align 4, !tbaa !172
  %i.eo = fmul float %i.ab, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.el, float %i.dq, float %i.eo)
  %i.eq = fmul float %.0, %i.ep
  %i.er = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.ej, float %i.eq)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.er, ptr %i.es, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1172

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1123
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !1124
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1126
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.200", align 8 ; 8 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1173, !nonnull !123, !align !490
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !3
  %i.k = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1175, !nonnull !123, !align !490
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %0, align 8, !tbaa !1173, !nonnull !123, !align !490
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.v = extractelement <2 x float> %i.k, i64 1
  %i.w = fadd float %i.v, -1.000000e+00
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !1130, !range !122, !noundef !123
  %i.ac = icmp eq i8 %i.ab, 0
  %.pre = load i32, ptr %i.p, align 4, !tbaa !1134 ; 2 uses
  br i1 %i.ac, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre41 = load i32, ptr %i.r, align 8, !tbaa !1135
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !1136
  %i.ae = icmp eq i32 %.pre, %i.ad
  %.pre42 = load i32, ptr %i.r, align 8, !tbaa !1135 ; 3 uses
  %i.af = load i32, ptr %i.s, align 4
  %i.ag = icmp eq i32 %.pre42, %i.af
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !1137
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !1138
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1139
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1139
  %.not.i31 = icmp eq ptr %i.ap, null
  br i1 %.not.i31, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.i:                                             ; preds = %._crit_edge43
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.c, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.at = phi i32 [ %.pre41, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre42, %bb.c ], [ %.pre42, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.au = sitofp i32 %.pre to float
  %i.av = sitofp i32 %i.at to float
  %i.aw = fsub float %i.w, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.aw, i64 1
  %i.az = fadd <2 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fdiv <2 x float> %i.az, %i.k            ; 2 uses
  %i.bb = load ptr, ptr %i.x, align 8, !tbaa !1176, !nonnull !123
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !109, !range !122, !noundef !123
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = extractelement <2 x float> %i.ba, i64 0
  %i.bf = fpext float %i.be to double
  %i.bg = fmul double %i.bf, f0x401921FB54442D18
  %i.bh = fptrunc double %i.bg to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bh) ; 4 uses
  %i.bi = extractelement <2 x float> %i.ba, i64 1
  %i.bj = fpext float %i.bi to double
  %i.bk = fmul double %i.bj, f0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bl) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bm = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bn = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %4, %bb.j ], [ %7, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %cos.i.i, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, f0x3FD45F306DC9C883
  %i.br = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #37
  %i.bs = fpext float %i.br to double
  %i.bt = fdiv double %i.bq, %i.bs
  %i.bu = fptrunc double %i.bt to float           ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %.sink11.i, float %i.bu, float 1.000000e+00)
  %i.bw = fmul float %i.bv, 5.000000e-01
  %i.bx = call float @llvm.fmuladd.f32(float %.sink10.i, float %i.bu, float 1.000000e+00)
  %i.by = fmul float %i.bx, 5.000000e-01
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !1175, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIN9Imath_3_14halfEEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS4_13ConstIteratorIT_fEENS4_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, float noundef %i.bw, float noundef %i.by, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !234 ; 2 uses
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !235
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cd = sext i32 %i.ca to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.q, !llvm.loop !1177

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ %i.cd, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !172
  %i.ch = load ptr, ptr %3, align 8, !tbaa !1142
  %i.ci = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.lr.ph
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %bb.n, label %bb.o, !prof !78

bb.n:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc, %bb.n
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !1143
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv
  store float %i.cg, ptr %i.cl, align 4, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cm = load i32, ptr %i.z, align 4, !tbaa !235
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !1178

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %i.ce, %bb.m ], [ %i.cp, %bb.p ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCIN9Imath_3_14halfEEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS4_13ConstIteratorIT_fEENS4_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.d = load <2 x i32>, ptr %i.b, align 8, !tbaa !3
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.f = sitofp <2 x i32> %i.d to <2 x float>
  %i.g = sitofp <2 x i32> %i.e to <2 x float>     ; 2 uses
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = insertelement <2 x float> %i.h, float %2, i64 1
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.g, <2 x float> %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171  ; 10 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = alloca i8, i64 %i.o, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.r = sext i32 %i.l to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.r ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r ; 3 uses
  %i.v = extractelement <2 x float> %i.j, i64 0
  %i.w = fadd float %i.v, -5.000000e-01           ; 2 uses
  %i.x = extractelement <2 x float> %i.j, i64 1
  %i.y = fadd float %i.x, -5.000000e-01           ; 2 uses
  %i.z = tail call noundef float @llvm.floor.f32(float %i.w) ; 2 uses
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fsub float %i.w, %i.z                   ; 4 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 4 uses
  %i.ae = fsub float %i.y, %i.ac                  ; 3 uses
  %i.af = add nsw i32 %i.aa, 2
  %i.ag = add nsw i32 %i.ad, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.aa, i32 noundef %i.af, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ah = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  br label %._crit_edge115

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1143
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1143
  %wide.trip.count120 = zext nneg i32 %i.l to i64
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv
  %i.an = load i16, ptr %i.am, align 2, !tbaa !1179 ; 2 uses
  %i.ao = zext i16 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 13
  %i.aq = and i32 %i.ap, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.an to i32
  %i.ar = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.as = icmp samesign ugt i32 %i.aq, 8388607
  br i1 %i.as, label %bb.e, label %bb.h, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.at = or disjoint i32 %i.aq, %i.ar            ; 2 uses
  %i.au = icmp samesign ult i32 %i.aq, 260046848
  br i1 %i.au, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.av = add nuw nsw i32 %i.at, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = or i32 %i.at, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.h:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %i.ay = add nsw i32 %i.ax, -8                   ; 2 uses
  %i.az = shl i32 %i.aq, %i.ay
  %i.ba = or i32 %i.ar, %i.az
  %i.bb = or i32 %i.ba, 947912704
  %i.bc = shl nuw nsw i32 %i.ay, 23
  %i.bd = sub nuw i32 %i.bb, %i.bc
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.av, %bb.f ], [ %i.aw, %bb.g ], [ %i.bd, %bb.i ], [ %i.ar, %bb.h ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.be, align 4, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1181

._crit_edge107:                                   ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit86
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1143
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L15interppixel_NDCIN9Imath_3_14halfEEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS4_13ConstIteratorIT_fEENS4_8WrapModeE:bb.a
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !172
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !172
  %i.fi = fmul float %i.ab, %i.fh
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.ek, float %i.fi)
  %i.fk = fmul float %.0, %i.fj
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.el, float %i.fd, float %i.fk)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.fl, ptr %i.fm, align 4, !tbaa !172
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1186

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.ac
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlItEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1123
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21lightprobe_to_envlatlItEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !1124
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1126
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.204", align 8 ; 8 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1187, !nonnull !123, !align !490
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !3
  %i.k = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1189, !nonnull !123, !align !490
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %0, align 8, !tbaa !1187, !nonnull !123, !align !490
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %._crit_edge43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.v = extractelement <2 x float> %i.k, i64 1
  %i.w = fadd float %i.v, -1.000000e+00
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %._crit_edge
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !1130, !range !122, !noundef !123
  %i.ac = icmp eq i8 %i.ab, 0
  %.pre = load i32, ptr %i.p, align 4, !tbaa !1134 ; 2 uses
  br i1 %i.ac, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %.pre41 = load i32, ptr %i.r, align 8, !tbaa !1135
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !1136
  %i.ae = icmp eq i32 %.pre, %i.ad
  %.pre42 = load i32, ptr %i.r, align 8, !tbaa !1135 ; 3 uses
  %i.af = load i32, ptr %i.s, align 4
  %i.ag = icmp eq i32 %.pre42, %i.af
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.c
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !1137
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !1138
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1139
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1139
  %.not.i31 = icmp eq ptr %i.ap, null
  br i1 %.not.i31, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit32: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.i:                                             ; preds = %._crit_edge43
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.c, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.at = phi i32 [ %.pre41, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre42, %bb.c ], [ %.pre42, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.au = sitofp i32 %.pre to float
  %i.av = sitofp i32 %i.at to float
  %i.aw = fsub float %i.w, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.aw, i64 1
  %i.az = fadd <2 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fdiv <2 x float> %i.az, %i.k            ; 2 uses
  %i.bb = load ptr, ptr %i.x, align 8, !tbaa !1190, !nonnull !123
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !109, !range !122, !noundef !123
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = extractelement <2 x float> %i.ba, i64 0
  %i.bf = fpext float %i.be to double
  %i.bg = fmul double %i.bf, f0x401921FB54442D18
  %i.bh = fptrunc double %i.bg to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bh) ; 4 uses
  %i.bi = extractelement <2 x float> %i.ba, i64 1
  %i.bj = fpext float %i.bi to double
  %i.bk = fmul double %i.bj, f0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bl) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bm = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bn = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %4, %bb.j ], [ %7, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %cos.i.i, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, f0x3FD45F306DC9C883
  %i.br = call float @hypotf(float noundef %.sink11.i, float noundef %.sink10.i) #37
  %i.bs = fpext float %i.br to double
  %i.bt = fdiv double %i.bq, %i.bs
  %i.bu = fptrunc double %i.bt to float           ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %.sink11.i, float %i.bu, float 1.000000e+00)
  %i.bw = fmul float %i.bv, 5.000000e-01
  %i.bx = call float @llvm.fmuladd.f32(float %.sink10.i, float %i.bu, float 1.000000e+00)
  %i.by = fmul float %i.bx, 5.000000e-01
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !1189, !nonnull !123, !align !490
  invoke fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCItEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, float noundef %i.bw, float noundef %i.by, ptr %i.h, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !234 ; 2 uses
  %i.cb = load i32, ptr %i.z, align 4, !tbaa !235
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cd = sext i32 %i.ca to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.q, !llvm.loop !1191

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ %i.cd, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !172
  %i.ch = load ptr, ptr %3, align 8, !tbaa !1142
  %i.ci = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.lr.ph
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %bb.n, label %bb.o, !prof !78

bb.n:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc, %bb.n
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !1143
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv
  store float %i.cg, ptr %i.cl, align 4, !tbaa !172
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cm = load i32, ptr %i.z, align 4, !tbaa !235
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !1192

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %i.ce, %bb.m ], [ %i.cp, %bb.p ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L15interppixel_NDCItEEvRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEEbRNS2_13ConstIteratorIT_fEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef range(i32 1, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.d = load <2 x i32>, ptr %i.b, align 8, !tbaa !3
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.f = sitofp <2 x i32> %i.d to <2 x float>
  %i.g = sitofp <2 x i32> %i.e to <2 x float>     ; 2 uses
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = insertelement <2 x float> %i.h, float %2, i64 1
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.g, <2 x float> %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171  ; 14 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = alloca i8, i64 %i.o, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.r = sext i32 %i.l to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.r ; 5 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r ; 4 uses
  %i.v = extractelement <2 x float> %i.j, i64 0
  %i.w = fadd float %i.v, -5.000000e-01           ; 2 uses
  %i.x = extractelement <2 x float> %i.j, i64 1
  %i.y = fadd float %i.x, -5.000000e-01           ; 2 uses
  %i.z = tail call noundef float @llvm.floor.f32(float %i.w) ; 2 uses
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fsub float %i.w, %i.z                   ; 4 uses
  %i.ac = tail call noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 4 uses
  %i.ae = fsub float %i.y, %i.ac                  ; 3 uses
  %i.af = add nsw i32 %i.aa, 2
  %i.ag = add nsw i32 %i.ad, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %5, i32 noundef %i.aa, i32 noundef %i.af, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef 0, i32 noundef 1, i32 noundef %6)
  %i.ah = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge99

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1143 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 9 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %wide.load = load <4 x i16>, ptr %i.ak, align 2, !tbaa !1193
  %wide.load1 = load <4 x i16>, ptr %i.al, align 2, !tbaa !1193
  %i.am = uitofp <4 x i16> %wide.load to <4 x float>
  %i.an = uitofp <4 x i16> %wide.load1 to <4 x float>
  %i.ao = fmul nnan <4 x float> %i.am, splat (float f0x37800080)
  %i.ap = fmul nnan <4 x float> %i.an, splat (float f0x37800080)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x float> %i.ao, ptr %i.aq, align 16, !tbaa !172
  store <4 x float> %i.ap, ptr %i.ar, align 16, !tbaa !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph94:                                         ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %5)
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1143 ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.l to i64
  %min.iters.check3 = icmp ult i32 %i.l, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph94
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %wide.load9 = load <4 x i16>, ptr %i.av, align 2, !tbaa !1193
  %wide.load10 = load <4 x i16>, ptr %i.aw, align 2, !tbaa !1193
  %i.ax = uitofp <4 x i16> %wide.load9 to <4 x float>
  %i.ay = uitofp <4 x i16> %wide.load10 to <4 x float>
  %i.az = fmul nnan <4 x float> %i.ax, splat (float f0x37800080)
  %i.ba = fmul nnan <4 x float> %i.ay, splat (float f0x37800080)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x float> %i.az, ptr %i.bb, align 4, !tbaa !172
  store <4 x float> %i.ba, ptr %i.bc, align 4, !tbaa !172
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bd = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bd, label %middle.block12, label %vector.body7, !llvm.loop !1195

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
  br i1 %cmp.n13, label %.lr.ph98, label %scalar.ph2.preheader
end_hunk_3
begin_hunk_4_@_ZNSt19__shrink_to_fit_auxISt6vectorIN11OpenImageIO4v3_110ParamValueESaIS3_EELb1EE8_S_do_itERS5_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE19_M_range_initializeISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::span", align 8 ; 5 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv exact i64 %i.c, 40
  %i.e = icmp ugt i64 %i.d, 230584300921369395
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.277) #34
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i

_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  store ptr null, ptr %0, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !164
  br label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS5_SaIS5_EEEEES6_S5_ET0_T_SD_SC_RSaIT1_E.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #33 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !164
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.c ] ; 8 uses
  %.sroa.09.012.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.c ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr null, ptr %.013.i.i.i.i, align 8, !tbaa !1025
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !305
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 37
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.n, i8 0, i64 7, i1 false)
  %.sroa.0.0.copyload.i.i.i8.i.i.i.i = load ptr, ptr %.sroa.09.012.i.i.i.i, align 8, !tbaa !299
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i10.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1119 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 36
  %i.u = load i8, ptr %i.t, align 4, !tbaa !1120
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 38 ; 2 uses
  %i.x = load i8, ptr %i.w, align 2, !tbaa !328, !range !122, !noundef !123
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.aa, ptr %i.z
  %i.ac = lshr i64 %.sroa.0.0.copyload.i10.i.i.i.i.i.i, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %i.ae = lshr i64 %.sroa.0.0.copyload.i10.i.i.i.i.i.i, 8
  %i.af = and i64 %i.ae, 255
  %i.ag = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.q) #30
  %i.ah = mul i64 %i.ag, %i.af
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = mul i32 %narrow.i.i.i.i.i.i.i.i.i, %i.s
  %i.ak = mul i32 %i.aj, %i.ai
  %i.al = sext i32 %i.ak to i64
  store ptr %i.ab, ptr %3, align 8
  store i64 %i.al, ptr %i.k, align 8
  tail call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %.013.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i8.i.i.i.i, i64 %.sroa.0.0.copyload.i10.i.i.i.i.i.i, i32 noundef %i.s, i32 noundef %i.v, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span") align 8 %3, i8 0, i8 1) #30
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 37
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1529, !range !122, !noundef !123
  store i8 %i.an, ptr %i.o, align 1, !tbaa !1529
  %i.ao = load i8, ptr %i.w, align 2, !tbaa !328, !range !122, !noundef !123
  store i8 %i.ao, ptr %i.p, align 2, !tbaa !328
  store ptr null, ptr %i.z, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS5_SaIS5_EEEEES6_S5_ET0_T_SD_SC_RSaIT1_E.exit, label %bb.c, !llvm.loop !1530

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_110ParamValueESt6vectorIS5_SaIS5_EEEEES6_S5_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit.thread ], [ %i.aq, %bb.c ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ar, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12write_mipmapENS1_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS1_8ImageBufEERKNS1_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_11ImageOutputENS1_8TypeDescEbNS1_17basic_string_viewIcSG_EESC_RSoRdSP_RmE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !215   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1531, !nonnull !123, !align !490
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1533, !nonnull !123, !align !490
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1534, !nonnull !123
  %i.h = load i8, ptr %i.g, align 1, !tbaa !109, !range !122, !noundef !123
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1535, !nonnull !123
  %i.l = load i8, ptr %i.k, align 1, !tbaa !109, !range !122, !noundef !123
  %i.m = trunc nuw i8 %i.l to i1
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12resize_blockERNS0_8ImageBufERKS1_NS0_3ROIEbb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext %i.i, i1 noundef zeroext %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12write_mipmapENS1_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS1_8ImageBufEERKNS1_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_11ImageOutputENS1_8TypeDescEbNS1_17basic_string_viewIcSG_EESC_RSoRdSP_RmE3$_0E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_RmE3$_0", ptr %0, align 8, !tbaa !1124
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %.val, ptr %0, align 8, !tbaa !215
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1536
  store ptr %i.a, ptr %0, align 8, !tbaa !215
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !215 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #31
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L12write_mipmapENS2_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS2_8ImageBufEERKNS2_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_11ImageOutputENS2_8TypeDescEbNS2_17basic_string_viewIcSF_EESB_RSoRdSO_RmE3$_0E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6removeENS0_17basic_string_viewIcSt11char_traitsIcEEERNSt7__cxx1112basic_stringIcS4_SaIcEEE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18log_timeENS0_17basic_string_viewIcSt11char_traitsIcEEERKNS0_5TimerEi(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sin.v2f32(<2 x float>) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { cold nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind willreturn memory(none) }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!8, !11, i64 8}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!15 = distinct !{!15, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!16 = !{!17, !9, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !9, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !11, i64 8, !5, i64 16}
!21 = !{!5, !5, i64 0}
!22 = !{!20, !11, i64 8}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!25 = distinct !{!25, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN11OpenImageIO4v3_15TimerE", !28, i64 0, !28, i64 1, !11, i64 8, !11, i64 16, !9, i64 24}
!28 = !{!"bool", !5, i64 0}
!29 = !{!27, !28, i64 1}
!30 = !{!31, !4, i64 64}
!31 = !{!"_ZTSN11OpenImageIO4v3_13pvt11LoggedTimerE", !27, i64 0, !20, i64 32, !4, i64 64}
!32 = !{!33, !11, i64 0}
!33 = !{!"_ZTS8timespec", !11, i64 0, !11, i64 8}
!34 = !{!33, !11, i64 8}
!35 = !{!27, !11, i64 8}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !5, i64 0}
!41 = !{!42, !4, i64 48}
!42 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !43, i64 64, !44, i64 72, !49, i64 96, !4, i64 120, !4, i64 124, !28, i64 128, !54, i64 136}
!43 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!44 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !10, i64 0}
!49 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!54 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !55, i64 0}
!55 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !10, i64 0}
!60 = !{!42, !4, i64 52}
!61 = !{!42, !4, i64 56}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!64 = distinct !{!64, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!65 = !{!66, !4, i64 8}
!66 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!67 = !{!66, !4, i64 12}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !6, i64 0}
!70 = !{!71, !72, i64 16}
!71 = !{!"_ZTSSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0, !72, i64 16}
!72 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !10, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0}
!76 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!77 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_, ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!80 = !{!81, !72, i64 0}
!81 = !{!"_ZTSSt12__shared_ptrIN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !75, i64 8}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!84 = distinct !{!84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!87 = distinct !{!87, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!90 = distinct !{!90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!91 = !{!92, !89}
!92 = distinct !{!92, !93, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!93 = distinct !{!93, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!96 = distinct !{!96, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!99 = distinct !{!99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!100 = !{!101, !98}
!101 = distinct !{!101, !102, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!102 = distinct !{!102, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!103 = !{!104, !104, i64 0}
!104 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInputE", !10, i64 0}
!105 = distinct !{null, null}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!108 = distinct !{!108, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!109 = !{!28, !28, i64 0}
!110 = !{!111}
end_hunk_4
