Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pool2_int8_layer?download=true
inline.NumInlined: 900
inline.NumDeleted: 417
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL11maxPoolImplIaEEvPKvPvRKNS5_14dnn5_v202606059ConvStateEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv127.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !83
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr i8, ptr %i.ku, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !56
  %.sroa.speculated.us.us.us.us.us.i.i.i.1 = tail call i8 @llvm.smax.i8(i8 %.sroa.speculated.us.us.us.us.us.i.i.i, i8 %i.lh)
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv127.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !83
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr i8, ptr %i.ku, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !56
  %.sroa.speculated.us.us.us.us.us.i.i.i.2 = tail call i8 @llvm.smax.i8(i8 %.sroa.speculated.us.us.us.us.us.i.i.i.1, i8 %i.ln)
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv127.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !83
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr i8, ptr %i.ku, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !56
  %.sroa.speculated.us.us.us.us.us.i.i.i.3 = tail call i8 @llvm.smax.i8(i8 %.sroa.speculated.us.us.us.us.us.i.i.i.2, i8 %i.lt) ; 3 uses
  %indvars.iv.next128.i.i.i.3 = add nuw nsw i64 %indvars.iv127.i.i.i, 4 ; 2 uses
  %niter71.next.3 = add nuw i64 %niter71, 4       ; 2 uses
  %niter71.ncmp.3 = icmp eq i64 %niter71.next.3, %unroll_iter70
  br i1 %niter71.ncmp.3, label %._crit_edge.us46.us.us.us.us.i.i.i.unr-lcssa, label %.lr.ph.us45.us.us.us.us.i.i.i.new, !llvm.loop !347

._crit_edge.us46.us.us.us.us.i.i.i.unr-lcssa:     ; preds = %.lr.ph.us45.us.us.us.us.i.i.i.new
  br i1 %lcmp.mod67.not, label %._crit_edge.us46.us.us.us.us.i.i.i, label %.epil.preheader64

.epil.preheader64:                                ; preds = %._crit_edge.us46.us.us.us.us.i.i.i.unr-lcssa, %.lr.ph.us45.us.us.us.us.i.i.i
  %indvars.iv127.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.us45.us.us.us.us.i.i.i ], [ %indvars.iv.next128.i.i.i.3, %._crit_edge.us46.us.us.us.us.i.i.i.unr-lcssa ]
  %.0438.us.us.us.us.us.i.i.i.epil.init = phi i8 [ %i.kw, %.lr.ph.us45.us.us.us.us.i.i.i ], [ %.sroa.speculated.us.us.us.us.us.i.i.i.3, %._crit_edge.us46.us.us.us.us.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader64
  %indvars.iv127.i.i.i.epil = phi i64 [ %indvars.iv.next128.i.i.i.epil, %bb.ai ], [ %indvars.iv127.i.i.i.epil.init, %.epil.preheader64 ] ; 2 uses
  %.0438.us.us.us.us.us.i.i.i.epil = phi i8 [ %.sroa.speculated.us.us.us.us.us.i.i.i.epil, %bb.ai ], [ %.0438.us.us.us.us.us.i.i.i.epil.init, %.epil.preheader64 ]
  %epil.iter66 = phi i64 [ %epil.iter66.next, %bb.ai ], [ 0, %.epil.preheader64 ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv127.i.i.i.epil
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !83
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr i8, ptr %i.ku, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !56
  %.sroa.speculated.us.us.us.us.us.i.i.i.epil = tail call i8 @llvm.smax.i8(i8 %.0438.us.us.us.us.us.i.i.i.epil, i8 %i.ly) ; 2 uses
  %indvars.iv.next128.i.i.i.epil = add nuw nsw i64 %indvars.iv127.i.i.i.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %._crit_edge.us46.us.us.us.us.i.i.i, label %bb.ai, !llvm.loop !348

._crit_edge.us46.us.us.us.us.i.i.i:               ; preds = %bb.ai, %._crit_edge.us46.us.us.us.us.i.i.i.unr-lcssa
  %.sroa.speculated.us.us.us.us.us.i.i.i.lcssa = phi i8 [ %.sroa.speculated.us.us.us.us.us.i.i.i.3, %._crit_edge.us46.us.us.us.us.i.i.i.unr-lcssa ], [ %.sroa.speculated.us.us.us.us.us.i.i.i.epil, %bb.ai ]
  %gep190.i.i.i = getelementptr i8, ptr %invariant.gep189.i.i.i, i64 %indvars.iv131.i.i.i
  store i8 %.sroa.speculated.us.us.us.us.us.i.i.i.lcssa, ptr %gep190.i.i.i, align 1, !tbaa !56
  %indvars.iv.next132.i.i.i = add nuw nsw i64 %indvars.iv131.i.i.i, 1 ; 2 uses
  %exitcond135.not.i.i.i = icmp eq i64 %indvars.iv.next132.i.i.i, %i.fg
  br i1 %exitcond135.not.i.i.i, label %._crit_edge44.split.us.us.us.us.us.i.i.i, label %.lr.ph.us45.us.us.us.us.i.i.i, !llvm.loop !344

._crit_edge44.split.us.us.us.us.us.i.i.i:         ; preds = %._crit_edge.us46.us.us.us.us.i.i.i
  %indvars.iv.next137.i.i.i = add nsw i64 %indvars.iv136.i.i.i, 1 ; 2 uses
  %exitcond140.not.i.i.i = icmp eq i64 %indvars.iv.next137.i.i.i, %wide.trip.count125.i.i.i
  br i1 %exitcond140.not.i.i.i, label %.loopexit12.us.us.i.i.i, label %.lr.ph43.us.us.us.us.i.i.i, !llvm.loop !346

.loopexit12.us.us.i.i.i:                          ; preds = %._crit_edge44.split.us51.us.us.i.i.i, %._crit_edge44.split.us.us.us.us.us.i.i.i, %.preheader11.us.us.i.i.i
  %.2.lcssa.us.us.i.i.i = phi i32 [ %.1.lcssa.us.us.mux.i.i.i, %.preheader11.us.us.i.i.i ], [ %i.dw, %._crit_edge44.split.us.us.us.us.us.i.i.i ], [ %i.dw, %._crit_edge44.split.us51.us.us.i.i.i ]
  br label %bb.ag, !llvm.loop !349

bb.aj:                                            ; preds = %._crit_edge22.us.us.i.i.i
  %i.lz = add nuw nsw i32 %.014855.us.us.i.i.i, 1 ; 2 uses
  %i.ma = getelementptr i8, ptr %.215354.us.us.i.i.i, i64 %i.fd ; 3 uses
  %exitcond141.not.i.i.i = icmp eq i32 %i.lz, %i.cl
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond141.not.i.i.i, label %._crit_edge.us80.us.i.i.i, label %bb.af, !llvm.loop !350

._crit_edge.us80.us.i.i.i:                        ; preds = %bb.aj
  %i.mb = add nuw nsw i32 %.014959.us.us.i.i.i, 1 ; 2 uses
  %exitcond142.not.i.i.i = icmp eq i32 %i.mb, %i.ce
  br i1 %exitcond142.not.i.i.i, label %._crit_edge61.split.us.us.i.i.i, label %.lr.ph56.us.us.i.i.i, !llvm.loop !351

._crit_edge61.split.us.us.i.i.i:                  ; preds = %._crit_edge.us80.us.i.i.i
  %i.mc = add nsw i32 %.015085.us.i.i.i, 1        ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %.015482.us.i.i.i, i64 %i.fe
  %exitcond143.not.i.i.i = icmp eq i32 %i.mc, %.val3
  %indvar.next41 = add i64 %indvar40, 1
  br i1 %exitcond143.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS1_14dnn5_v202606059ConvStateEEUlRKNS0_5RangeEE_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit, label %.preheader13.us.i.i.i, !llvm.loop !352

_ZSt10__invoke_rIvRZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS1_14dnn5_v202606059ConvStateEEUlRKNS0_5RangeEE_JSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit: ; preds = %._crit_edge61.split.us.us.i.i.i, %_ZNK2cv8MatShapeixEm.exit205.i.i.i, %.preheader13.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL11maxPoolImplIaEEvPKvPvRKNS5_14dnn5_v202606059ConvStateEEUlS3_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS2_14dnn5_v202606059ConvStateEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS0_14dnn5_v202606059ConvStateEEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !137
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS2_14dnn5_v202606059ConvStateEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %.val, ptr %0, align 8, !tbaa !92
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS2_14dnn5_v202606059ConvStateEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !139
  store ptr %i.a, ptr %0, align 8, !tbaa !92
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS2_14dnn5_v202606059ConvStateEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !92 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS2_14dnn5_v202606059ConvStateEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #22
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS2_14dnn5_v202606059ConvStateEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11maxPoolImplIaEEvPKvPvRKNS2_14dnn5_v202606059ConvStateEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL11avgPoolInt8EPKvPvRKNS5_14dnn5_v202606059ConvStateEfifibbE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !92    ; 11 uses
  %.val2 = load i32, ptr %1, align 4              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !377, !nonnull !81, !align !134 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !138  ; 8 uses
  %i.e = icmp slt i32 %i.d, 4
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZZN2cv3dnnL11maxPoolImplIhEEvPKvPvRKNS0_14dnn5_v202606059ConvStateEENKUlRKNS_5RangeEE_clESB_, ptr noundef nonnull @.str.22, i32 noundef 125) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %14, align 8, !tbaa !61    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !56
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %common.resume.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !378, !nonnull !81
  %i.o = load i8, ptr %i.n, align 1, !tbaa !76, !range !80, !noundef !81
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.q = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %i.p)
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83   ; 10 uses
  %i.s = icmp eq i32 %i.d, 3                      ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %.val, align 8, !tbaa !377, !nonnull !81, !align !134 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !82   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %13)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %12, align 8, !tbaa !61    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !56
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

common.resume.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i166.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148.i.i.i ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.i.i.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i166.i.i.i ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172.i.i.i ], [ %.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %common.resume.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 92
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83
  br label %._crit_edge.i.i.i

bb.l:                                             ; preds = %bb.g
  %i.af = icmp sgt i32 %i.d, 1
  %.pre112.i.i.i = load ptr, ptr %.val, align 8, !tbaa !377 ; 5 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre112.i.i.i, i64 72
  %.pre111.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !82
  %i.ag = tail call i32 @llvm.smax.i32(i32 %.pre111.i.i.i, i32 1) ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i.i, label %.thread152.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.l, %.thread.i.i.i
  %narrow.i145.i.i.i = phi i32 [ %i.v, %.thread.i.i.i ], [ %i.ag, %bb.l ] ; 2 uses
  %i.ah = phi ptr [ %i.t, %.thread.i.i.i ], [ %.pre112.i.i.i, %bb.l ] ; 5 uses
  %i.ai = phi i32 [ %i.ae, %.thread.i.i.i ], [ 1, %bb.l ]
  %i.aj = icmp samesign ult i32 %i.d, %narrow.i145.i.i.i
  br i1 %i.aj, label %bb.p, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %11)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147.i.i.i: ; preds = %bb.o
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !56
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = zext nneg i32 %i.d to i64               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 84 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83
  %i.au = add nuw nsw i32 %i.d, 1                 ; 3 uses
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = icmp samesign ult i32 %i.au, %narrow.i145.i.i.i
  br i1 %i.aw, label %_ZNK2cv8MatShapeixEm.exit156.i.i.i, label %bb.q

.thread152.i.i.i:                                 ; preds = %bb.l
  %i.ax = add nsw i32 %i.d, 1                     ; 3 uses
  %i.ay = icmp ult i32 %i.ax, %i.ag
  br i1 %i.ay, label %._crit_edge115.i.i.i, label %bb.q

bb.q:                                             ; preds = %.thread152.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153.i.i.i: ; preds = %bb.s
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !56
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit156.i.i.i:               ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.av
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 124
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !82 ; 3 uses
  br i1 %i.s, label %bb.t, label %_ZNK2cv8MatShapeixEm.exit156.i._crit_edge.i.i

_ZNK2cv8MatShapeixEm.exit156.i._crit_edge.i.i:    ; preds = %_ZNK2cv8MatShapeixEm.exit156.i.i.i
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 1)
  br label %bb.x

bb.t:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit156.i.i.i
  %i.bk = icmp sgt i32 %i.bi, 2
  br i1 %i.bk, label %_ZNK2cv8MatShapeixEm.exit162.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159.i.i.i: ; preds = %bb.w
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !56
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit162.i.i.i:               ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !83
  br label %bb.x

._crit_edge115.i.i.i:                             ; preds = %.thread152.i.i.i
  %i.bt = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre112.i.i.i, i64 84
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !83
  %.phi.trans.insert116.i.i.i = getelementptr inbounds nuw i8, ptr %.pre112.i.i.i, i64 124
  %.pre117.i.i.i = load i32, ptr %.phi.trans.insert116.i.i.i, align 4, !tbaa !82
  %.pre121.i.i.i = tail call i32 @llvm.smax.i32(i32 %.pre117.i.i.i, i32 1)
  br label %bb.ab

bb.x:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit162.i.i.i, %_ZNK2cv8MatShapeixEm.exit156.i._crit_edge.i.i
  %narrow.i163.i.i.i = phi i32 [ %i.bj, %_ZNK2cv8MatShapeixEm.exit156.i._crit_edge.i.i ], [ %i.bi, %_ZNK2cv8MatShapeixEm.exit162.i.i.i ] ; 2 uses
  %.ph.i.i.i = phi i32 [ 1, %_ZNK2cv8MatShapeixEm.exit156.i._crit_edge.i.i ], [ %i.bs, %_ZNK2cv8MatShapeixEm.exit162.i.i.i ]
  %i.bx = icmp samesign ult i32 %i.d, %narrow.i163.i.i.i
  br i1 %i.bx, label %_ZNK2cv8MatShapeixEm.exit168.i.i.i, label %bb.y
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL11avgPoolInt8EPKvPvRKNS5_14dnn5_v202606059ConvStateEfifibbE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.cn = phi i32 [ %i.bw, %._crit_edge115.i.i.i ], [ %i.bg, %_ZNK2cv8MatShapeixEm.exit168.i.i.i ] ; 3 uses
  %narrow.i169.pre-phi.i.i.i = phi i32 [ %.pre121.i.i.i, %._crit_edge115.i.i.i ], [ %narrow.i163.i.i.i, %_ZNK2cv8MatShapeixEm.exit168.i.i.i ]
  %i.co = phi i32 [ 1, %._crit_edge115.i.i.i ], [ %i.cg, %_ZNK2cv8MatShapeixEm.exit168.i.i.i ] ; 4 uses
  %i.cp = icmp samesign ult i32 %i.cj, %narrow.i169.pre-phi.i.i.i
  br i1 %i.cp, label %_ZNK2cv8MatShapeixEm.exit174.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171.i.i.i: ; preds = %bb.ae
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !56
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit174.i.i.i:               ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ci
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !83 ; 4 uses
  %i.cz = mul i32 %i.ck, %i.r
  %i.da = mul i32 %i.cz, %i.cl
  %i.db = mul i32 %i.da, %i.cn                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !83
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 52
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !83
  %i.do = getelementptr inbounds nuw i8, ptr %i.cm, i64 280
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 288
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !112
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !65
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = lshr i64 %i.du, 2                       ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cm, i64 256
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !379, !nonnull !81, !align !134
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !92 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !380, !nonnull !81, !align !134
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !92
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !381, !nonnull !81, !align !133
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !93
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !382, !nonnull !81, !align !133
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !93
  %i.el = fdiv float %i.eh, %i.ek                 ; 2 uses
  %i.em = sext i32 %i.r to i64                    ; 3 uses
  %i.en = icmp slt i32 %i.r, 0
  br i1 %i.en, label %.noexc.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNK2cv8MatShapeixEm.exit174.i.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #24
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %_ZNK2cv8MatShapeixEm.exit174.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0       ; 5 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i.i, label %.noexc175.i.i.i

.noexc175.i.i.i:                                  ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.eo = shl nuw nsw i64 %i.em, 2
  %i.ep = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #21 ; 5 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.em ; 2 uses
  store i32 0, ptr %i.ep, align 4, !tbaa !83
  %i.er = add nsw i64 %i.em, -1                   ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc175.i.i.i
  %i.et = getelementptr i8, ptr %i.ep, i64 4
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.er, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.et, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !83
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc175.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %.sroa.12.0.i.i.i = phi ptr [ %i.eq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.eq, %.noexc175.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ]
  %.sroa.021.0.i.i.i = phi ptr [ %i.ep, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.ep, %.noexc175.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ] ; 18 uses
  %i.eu = mul i32 %i.r, %.val2
  %i.ev = mul i32 %i.eu, %i.ch
  %i.ew = mul i32 %i.ev, %i.co
  %i.ex = mul i32 %i.ew, %i.cy
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ee, i64 %i.ey ; 2 uses
  %i.fa = mul i32 %i.db, %.val2
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr i8, ptr %i.eb, i64 %i.fb
  %i.fd = icmp slt i32 %.val2, %.val3
  br i1 %i.fd, label %.preheader28.lr.ph.i.i.i, label %._crit_edge67.split.i.i.i

.preheader28.lr.ph.i.i.i:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i.i
  %i.fe = icmp slt i32 %i.ch, 1
  %i.ff = icmp slt i32 %i.cy, 1
  %i.fg = zext nneg i8 %i.o to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.fk = mul i32 %i.cy, %i.r
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = sext i32 %i.db to i64                   ; 3 uses
  %i.fn = icmp slt i32 %i.co, 1
  %or.cond.not161.i.i.i = select i1 %i.fe, i1 true, i1 %i.fn
  %brmerge.i.i.i = select i1 %or.cond.not161.i.i.i, i1 true, i1 %i.ff
  br i1 %brmerge.i.i.i, label %._crit_edge67.split.i.i.i, label %.preheader28.us.us.preheader.i.i.i

.preheader28.us.us.preheader.i.i.i:               ; preds = %.preheader28.lr.ph.i.i.i
  %i.fo = icmp sgt i32 %i.dw, 0
  %i.fp = tail call i32 @llvm.umax.i32(i32 %i.r, i32 1)
  %i.fq = zext nneg i32 %i.fp to i64              ; 15 uses
  %i.fr = shl nuw nsw i64 %i.fq, 2                ; 2 uses
  %i.fs = zext nneg i32 %i.r to i64               ; 2 uses
  %wide.trip.count106.i.i.i = zext nneg i32 %i.cy to i64 ; 2 uses
  %wide.trip.count95.i.i.i = and i64 %i.dv, 2147483647
  br i1 %i.fo, label %.preheader28.us.us.i.us.i.i.preheader, label %.preheader28.us.us.preheader.i.split.i.i

.preheader28.us.us.i.us.i.i.preheader:            ; preds = %.preheader28.us.us.preheader.i.i.i
  %i.ft = shl nuw nsw i64 %i.fq, 2
  %scevgep = getelementptr i8, ptr %.sroa.021.0.i.i.i, i64 %i.ft ; 2 uses
  %i.fu = add nsw i64 %i.fq, %i.fb                ; 2 uses
  %i.fv = getelementptr i8, ptr %i.eb, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.eb, i64 %i.fu
  %min.iters.check = icmp ult i32 %i.r, 8         ; 2 uses
  %n.vec62 = and i64 %i.fq, 2147483640            ; 3 uses
  %cmp.n73 = icmp eq i64 %n.vec62, %i.fq
  %xtraiter = and i64 %i.fq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fx = add nsw i64 %i.fq, -1
  %n.vec = and i64 %i.fq, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fq
  %xtraiter79 = and i64 %i.fq, 1
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  %i.fy = add nsw i64 %i.fq, -1
  br label %.preheader28.us.us.i.us.i.i

.preheader28.us.us.i.us.i.i:                      ; preds = %.preheader28.us.us.i.us.i.i.preheader, %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i
  %indvar = phi i64 [ 0, %.preheader28.us.us.i.us.i.i.preheader ], [ %indvar.next, %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i ] ; 3 uses
  %.011966.us.us.i.us.i.i = phi i32 [ %.val2, %.preheader28.us.us.i.us.i.i.preheader ], [ %i.ko, %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i ]
  %.012065.us.us.i.us.i.i = phi ptr [ %i.ez, %.preheader28.us.us.i.us.i.i.preheader ], [ %i.km, %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i ]
  %.012362.us.us.i.us.i.i = phi ptr [ %i.fc, %.preheader28.us.us.i.us.i.i.preheader ], [ %i.kp, %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i ] ; 4 uses
  %i.fz = mul i64 %indvar, %i.fm
  %scevgep54 = getelementptr i8, ptr %i.fv, i64 %i.fz
  %i.ga = mul i64 %indvar, %i.fm
  %scevgep47 = getelementptr i8, ptr %i.fw, i64 %i.ga
  br label %.lr.ph46.us.us.us.us.i.us.us.i.i

.lr.ph46.us.us.us.us.i.us.us.i.i:                 ; preds = %._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i, %.preheader28.us.us.i.us.i.i
  %.011854.us.us.us.us.i.us.us.i.i = phi i32 [ 0, %.preheader28.us.us.i.us.i.i ], [ %i.kn, %._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i ] ; 2 uses
  %.112153.us.us.us.us.i.us.us.i.i = phi ptr [ %.012065.us.us.i.us.i.i, %.preheader28.us.us.i.us.i.i ], [ %i.km, %._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i ]
  %i.gb = mul nsw i32 %.011854.us.us.us.us.i.us.us.i.i, %i.dd
  %i.gc = sub nsw i32 %i.gb, %i.dj
  br label %.lr.ph41.us.us.us.us.us.i.us.us.us.i.i

.lr.ph41.us.us.us.us.us.i.us.us.us.i.i:           ; preds = %._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i, %.lr.ph46.us.us.us.us.i.us.us.i.i
  %.011744.us.us.us.us.us.i.us.us.us.i.i = phi i32 [ 0, %.lr.ph46.us.us.us.us.i.us.us.i.i ], [ %i.kl, %._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i ] ; 2 uses
  %.212243.us.us.us.us.us.i.us.us.us.i.i = phi ptr [ %.112153.us.us.us.us.i.us.us.i.i, %.lr.ph46.us.us.us.us.i.us.us.i.i ], [ %i.km, %._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i ] ; 2 uses
  %i.gd = mul i32 %.011744.us.us.us.us.us.i.us.us.us.i.i, %i.df
  %i.ge = sub i32 %i.gd, %i.dl
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i, %.lr.ph41.us.us.us.us.us.i.us.us.us.i.i
  %indvars.iv103.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next104.i.us.us.us.us.i.i, %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i ], [ 0, %.lr.ph41.us.us.us.us.us.i.us.us.us.i.i ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.us.us.preheader.i.us.us.us.us.i.i

.lr.ph.us.us.us.us.us.preheader.i.us.us.us.us.i.i: ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.021.0.i.i.i, i8 0, i64 %i.fr, i1 false), !tbaa !83
  br label %.preheader.us.us.us.us.us.i.us.us.us.us.i.i

.preheader.us.us.us.us.us.i.us.us.us.us.i.i:      ; preds = %.lr.ph.us.us.us.us.us.preheader.i.us.us.us.us.i.i, %bb.af
  %i.gf = trunc i64 %indvars.iv103.i.us.us.us.us.i.i to i32
  %i.gg = mul i32 %i.dh, %i.gf
  %i.gh = sub i32 %i.gg, %i.dn
  br label %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i

.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i:        ; preds = %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, %.preheader.us.us.us.us.us.i.us.us.us.us.i.i
  %indvars.iv92.i.us.us.us.us.i.i = phi i64 [ 0, %.preheader.us.us.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv.next93.i.us.us.us.us.i.i, %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i ] ; 2 uses
  %.011432.us.us.us.us.us.i.us.us.us.us.i.i = phi i32 [ 0, %.preheader.us.us.us.us.us.i.us.us.us.us.i.i ], [ %.2.us.us.us.us.us.i.us.us.us.us.i.i, %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i ]
  %.idx.i.us.us.us.us.i.i = mul nuw nsw i64 %indvars.iv92.i.us.us.us.us.i.i, 12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx.i.us.us.us.us.i.i ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !83
  %i.gk = add nsw i32 %i.gj, %i.gc                ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !83
  %i.gn = add i32 %i.gm, %i.ge                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !83
  %i.gq = add i32 %i.gp, %i.gh                    ; 2 uses
  %.not.us.us.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.gk, %i.cl
  %.not142.us.us.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.gn, %i.ck
  %or.cond.us.us.us.us.us.i.us.us.us.us.i.i = select i1 %.not.us.us.us.us.us.i.us.us.us.us.i.i, i1 %.not142.us.us.us.us.us.i.us.us.us.us.i.i, i1 false
  %.not143.us.us.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.gq, %i.cn
  %or.cond144.us.us.us.us.us.i.us.us.us.us.i.i = select i1 %or.cond.us.us.us.us.us.i.us.us.us.us.i.i, i1 %.not143.us.us.us.us.us.i.us.us.us.us.i.i, i1 false
  br i1 %or.cond144.us.us.us.us.us.i.us.us.us.us.i.i, label %bb.ag, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i

bb.ag:                                            ; preds = %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i
  %i.gr = mul i32 %i.gk, %i.ck
  %i.gs = add i32 %i.gr, %i.gn
  %i.gt = mul i32 %i.gs, %i.cn
  %i.gu = add i32 %i.gt, %i.gq
  %i.gv = mul i32 %i.gu, %i.r
  %i.gw = sext i32 %i.gv to i64                   ; 5 uses
  %i.gx = getelementptr inbounds i8, ptr %.012362.us.us.i.us.i.i, i64 %i.gw ; 8 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.us.us.us.us.us.i.us.us.us.us.i.i

.lr.ph31.us.us.us.us.us.i.us.us.us.us.i.i:        ; preds = %bb.ag
  %i.gy = load ptr, ptr %i.fh, align 8, !tbaa !383, !nonnull !81
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !76, !range !80, !noundef !81
  %i.ha = trunc nuw i8 %i.gz to i1
  %i.hb = load ptr, ptr %i.fi, align 8, !tbaa !384, !nonnull !81, !align !133
  %.pre119.i.us.us.us.us.i.i = load i32, ptr %i.hb, align 4, !tbaa !83 ; 8 uses
  br i1 %i.ha, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader

.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader: ; preds = %.lr.ph31.us.us.us.us.us.i.us.us.us.us.i.i
  br i1 %min.iters.check, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader76, label %vector.memcheck52

vector.memcheck52:                                ; preds = %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader
  %scevgep53 = getelementptr i8, ptr %.012362.us.us.i.us.i.i, i64 %i.gw
  %scevgep55 = getelementptr i8, ptr %scevgep54, i64 %i.gw
  %bound056 = icmp ult ptr %.sroa.021.0.i.i.i, %scevgep55
  %bound157 = icmp ult ptr %scevgep53, %scevgep
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader76, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck52
  %broadcast.splatinsert63 = insertelement <4 x i32> poison, i32 %.pre119.i.us.us.us.us.i.i, i64 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph61
  %index66 = phi i64 [ 0, %vector.ph61 ], [ %index.next71, %vector.body65 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 %index66 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %wide.load67 = load <4 x i8>, ptr %i.hc, align 1, !tbaa !56, !alias.scope !385
  %wide.load68 = load <4 x i8>, ptr %i.hd, align 1, !tbaa !56, !alias.scope !385
  %i.he = sext <4 x i8> %wide.load67 to <4 x i32>
  %i.hf = sext <4 x i8> %wide.load68 to <4 x i32>
  %i.hg = sub <4 x i32> %i.he, %broadcast.splat64
  %i.hh = sub <4 x i32> %i.hf, %broadcast.splat64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %index66 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %wide.load69 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !83, !alias.scope !386, !noalias !385
  %wide.load70 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !83, !alias.scope !386, !noalias !385
  %i.hk = add nsw <4 x i32> %i.hg, %wide.load69
  %i.hl = add nsw <4 x i32> %i.hh, %wide.load70
  store <4 x i32> %i.hk, ptr %i.hi, align 4, !tbaa !83, !alias.scope !386, !noalias !385
  store <4 x i32> %i.hl, ptr %i.hj, align 4, !tbaa !83, !alias.scope !386, !noalias !385
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.hm = icmp eq i64 %index.next71, %n.vec62
  br i1 %i.hm, label %middle.block72, label %vector.body65, !llvm.loop !363

middle.block72:                                   ; preds = %vector.body65
  br i1 %cmp.n73, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader76

.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader76: ; preds = %vector.memcheck52, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader, %middle.block72
  %indvars.iv.i.us.us.us.us.i.i.ph = phi i64 [ 0, %vector.memcheck52 ], [ 0, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader ], [ %n.vec62, %middle.block72 ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol

.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol: ; preds = %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader76
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i.us.us.us.us.i.i.ph
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !56
  %i.hp = sext i8 %i.ho to i32
  %i.hq = sub i32 %i.hp, %.pre119.i.us.us.us.us.i.i
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv.i.us.us.us.us.i.i.ph ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !83
  %i.ht = add nsw i32 %i.hq, %i.hs
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !83
  %indvars.iv.next.i.us.us.us.us.i.i.prol = or disjoint i64 %indvars.iv.i.us.us.us.us.i.i.ph, 1
  br label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit

.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit: ; preds = %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader76
  %indvars.iv.i.us.us.us.us.i.i.unr = phi i64 [ %indvars.iv.i.us.us.us.us.i.i.ph, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.preheader76 ], [ %indvars.iv.next.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol ]
  %i.hu = icmp eq i64 %indvars.iv.i.us.us.us.us.i.i.ph, %i.fx
  br i1 %i.hu, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader: ; preds = %.lr.ph31.us.us.us.us.us.i.us.us.us.us.i.i
  br i1 %min.iters.check, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader
  %scevgep46 = getelementptr i8, ptr %.012362.us.us.i.us.i.i, i64 %i.gw
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.gw
  %bound0 = icmp ult ptr %.sroa.021.0.i.i.i, %scevgep48
  %bound1 = icmp ult ptr %scevgep46, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre119.i.us.us.us.us.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 %index ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %wide.load = load <4 x i8>, ptr %i.hv, align 1, !tbaa !56, !alias.scope !387
  %wide.load49 = load <4 x i8>, ptr %i.hw, align 1, !tbaa !56, !alias.scope !387
  %i.hx = zext <4 x i8> %wide.load to <4 x i32>
  %i.hy = zext <4 x i8> %wide.load49 to <4 x i32>
  %i.hz = sub <4 x i32> %i.hx, %broadcast.splat
  %i.ia = sub <4 x i32> %i.hy, %broadcast.splat
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %index ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %wide.load50 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !83, !alias.scope !388, !noalias !387
  %wide.load51 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !83, !alias.scope !388, !noalias !387
  %i.id = add nsw <4 x i32> %i.hz, %wide.load50
  %i.ie = add nsw <4 x i32> %i.ia, %wide.load51
  store <4 x i32> %i.id, ptr %i.ib, align 4, !tbaa !83, !alias.scope !388, !noalias !387
  store <4 x i32> %i.ie, ptr %i.ic, align 4, !tbaa !83, !alias.scope !388, !noalias !387
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75: ; preds = %vector.memcheck, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader, %middle.block
  %indvars.iv86.i.us.us.us.us.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod80.not, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol: ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv86.i.us.us.us.us.i.i.ph
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !56
  %i.ii = zext i8 %i.ih to i32
  %i.ij = sub i32 %i.ii, %.pre119.i.us.us.us.us.i.i
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv86.i.us.us.us.us.i.i.ph ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !83
  %i.im = add nsw i32 %i.ij, %i.il
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !83
  %indvars.iv.next87.i.us.us.us.us.i.i.prol = or disjoint i64 %indvars.iv86.i.us.us.us.us.i.i.ph, 1
  br label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit: ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75
  %indvars.iv86.i.us.us.us.us.i.i.unr = phi i64 [ %indvars.iv86.i.us.us.us.us.i.i.ph, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75 ], [ %indvars.iv.next87.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol ]
  %i.in = icmp eq i64 %indvars.iv86.i.us.us.us.us.i.i.ph, %i.fy
  br i1 %i.in, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i

.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i: ; preds = %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i
  %indvars.iv.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.i.1, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv.i.us.us.us.us.i.i.unr, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i.us.us.us.us.i.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !56
  %i.iq = sext i8 %i.ip to i32
  %i.ir = sub i32 %i.iq, %.pre119.i.us.us.us.us.i.i
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !83
  %i.iu = add nsw i32 %i.ir, %i.it
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !83
  %indvars.iv.next.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.next.i.us.us.us.us.i.i
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !56
  %i.ix = sext i8 %i.iw to i32
  %i.iy = sub i32 %i.ix, %.pre119.i.us.us.us.us.i.i
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !83
  %i.jb = add nsw i32 %i.iy, %i.ja
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !83
  %indvars.iv.next.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i, 2 ; 2 uses
  %exitcond.not.i.us.us.us.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.i.i.1, %i.fq
  br i1 %exitcond.not.i.us.us.us.us.i.i.1, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i, !llvm.loop !368

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i: ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i
  %indvars.iv86.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next87.i.us.us.us.us.i.i.1, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv86.i.us.us.us.us.i.i.unr, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ] ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv86.i.us.us.us.us.i.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !56
  %i.je = zext i8 %i.jd to i32
  %i.jf = sub i32 %i.je, %.pre119.i.us.us.us.us.i.i
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv86.i.us.us.us.us.i.i ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !83
  %i.ji = add nsw i32 %i.jf, %i.jh
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !83
  %indvars.iv.next87.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv86.i.us.us.us.us.i.i, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.next87.i.us.us.us.us.i.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !56
  %i.jl = zext i8 %i.jk to i32
  %i.jm = sub i32 %i.jl, %.pre119.i.us.us.us.us.i.i
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv.next87.i.us.us.us.us.i.i ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !83
  %i.jp = add nsw i32 %i.jm, %i.jo
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !83
  %indvars.iv.next87.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv86.i.us.us.us.us.i.i, 2 ; 2 uses
  %exitcond91.not.i.us.us.us.us.i.i.1 = icmp eq i64 %indvars.iv.next87.i.us.us.us.us.i.i.1, %i.fq
  br i1 %exitcond91.not.i.us.us.us.us.i.i.1, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i, !llvm.loop !369

.loopexit.us.us.us.us.us.i.us.us.us.us.i.i:       ; preds = %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i, %middle.block72, %middle.block, %bb.ag, %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i
  %.pn27.us.us.us.us.us.i.us.us.us.us.i.i = phi i32 [ %i.fg, %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i ], [ 1, %middle.block ], [ 1, %bb.ag ], [ 1, %middle.block72 ], [ 1, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ], [ 1, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i ], [ 1, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i ], [ 1, %.lr.ph31.split.us49.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ]
  %.2.us.us.us.us.us.i.us.us.us.us.i.i = add nuw nsw i32 %.pn27.us.us.us.us.us.i.us.us.us.us.i.i, %.011432.us.us.us.us.us.i.us.us.us.us.i.i ; 2 uses
  %indvars.iv.next93.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv92.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond96.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next93.i.us.us.us.us.i.i, %wide.trip.count95.i.i.i
  br i1 %exitcond96.not.i.us.us.us.us.i.i, label %._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i, label %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i, !llvm.loop !370

._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i: ; preds = %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i
  %i.jq = tail call i32 @llvm.umax.i32(i32 %.2.us.us.us.us.us.i.us.us.us.us.i.i, i32 1)
  %i.jr = uitofp nneg i32 %i.jq to float
  %i.js = fdiv nnan float 1.000000e+00, %i.jr
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i

.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i:        ; preds = %._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i
  %i.jt = mul nuw nsw i64 %indvars.iv103.i.us.us.us.us.i.i, %i.fs
  %invariant.gep156.sink.i.us.us.us.us.i.i = getelementptr inbounds nuw i8, ptr %.212243.us.us.us.us.us.i.us.us.us.i.i, i64 %i.jt
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i
  %indvars.iv97.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next98.i.us.us.us.us.i.i, %bb.ak ], [ 0, %.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv97.i.us.us.us.us.i.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !83
  %i.jw = sitofp i32 %i.jv to float
  %i.jx = fmul float %i.js, %i.jw
  %i.jy = load ptr, ptr %i.fj, align 8, !tbaa !389, !nonnull !81, !align !133
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !83
  %i.ka = sitofp i32 %i.jz to float
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.el, float %i.ka)
  %i.kc = insertelement <4 x float> poison, float %i.kb, i64 0
  %i.kd = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kc) ; 2 uses
  %i.ke = load ptr, ptr %i.fh, align 8, !tbaa !383, !nonnull !81
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !76, !range !80, !noundef !81
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kh = tail call i32 @llvm.smax.i32(i32 %i.kd, i32 -128)
  %.sroa.speculated.us.us.us.us.us.i.us.us.us.us.i.i = tail call i32 @llvm.smin.i32(i32 %i.kh, i32 127)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ki = tail call i32 @llvm.smax.i32(i32 %i.kd, i32 0)
  %i.kj = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 255)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink158.i.us.us.us.us.i.i = phi i32 [ %i.kj, %bb.aj ], [ %.sroa.speculated.us.us.us.us.us.i.us.us.us.us.i.i, %bb.ai ]
  %i.kk = trunc i32 %.sink158.i.us.us.us.us.i.i to i8
  %gep157.i.us.us.us.us.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep156.sink.i.us.us.us.us.i.i, i64 %indvars.iv97.i.us.us.us.us.i.i
  store i8 %i.kk, ptr %gep157.i.us.us.us.us.i.i, align 1, !tbaa !56
  %indvars.iv.next98.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv97.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond102.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next98.i.us.us.us.us.i.i, %i.fq
  br i1 %exitcond102.not.i.us.us.us.us.i.i, label %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i, label %bb.ah, !llvm.loop !371

._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i:   ; preds = %bb.ak, %._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i
  %indvars.iv.next104.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv103.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond107.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next104.i.us.us.us.us.i.i, %wide.trip.count106.i.i.i
  br i1 %exitcond107.not.i.us.us.us.us.i.i, label %._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i, label %bb.af, !llvm.loop !372

._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i: ; preds = %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i
  %i.kl = add nuw nsw i32 %.011744.us.us.us.us.us.i.us.us.us.i.i, 1 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.212243.us.us.us.us.us.i.us.us.us.i.i, i64 %i.fl ; 3 uses
  %exitcond108.not.i.us.us.us.i.i = icmp eq i32 %i.kl, %i.co
  br i1 %exitcond108.not.i.us.us.us.i.i, label %._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i, label %.lr.ph41.us.us.us.us.us.i.us.us.us.i.i, !llvm.loop !373

._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i: ; preds = %._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i
  %i.kn = add nuw nsw i32 %.011854.us.us.us.us.i.us.us.i.i, 1 ; 2 uses
  %exitcond109.not.i.us.us.i.i = icmp eq i32 %i.kn, %i.ch
  br i1 %exitcond109.not.i.us.us.i.i, label %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i, label %.lr.ph46.us.us.us.us.i.us.us.i.i, !llvm.loop !374

._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i: ; preds = %._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i
  %i.ko = add nsw i32 %.011966.us.us.i.us.i.i, 1  ; 2 uses
  %i.kp = getelementptr i8, ptr %.012362.us.us.i.us.i.i, i64 %i.fm
  %exitcond110.not.i.us.i.i = icmp eq i32 %i.ko, %.val3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not.i.us.i.i, label %._crit_edge67.split.i.i.i, label %.preheader28.us.us.i.us.i.i, !llvm.loop !375

.preheader28.us.us.preheader.i.split.i.i:         ; preds = %.preheader28.us.us.preheader.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge67.split.i.i.i, label %.preheader28.us.us.i.i.i

.preheader28.us.us.i.i.i:                         ; preds = %.preheader28.us.us.preheader.i.split.i.i, %._crit_edge.split.us.split.us.us.us.i.split.split.i.i
  %.011966.us.us.i.i.i = phi i32 [ %i.lk, %._crit_edge.split.us.split.us.us.us.i.split.split.i.i ], [ %.val2, %.preheader28.us.us.preheader.i.split.i.i ]
  %.012065.us.us.i.i.i = phi ptr [ %i.li, %._crit_edge.split.us.split.us.us.us.i.split.split.i.i ], [ %i.ez, %.preheader28.us.us.preheader.i.split.i.i ]
  br label %.lr.ph46.us.us.us.us.i.i.i

.lr.ph46.us.us.us.us.i.i.i:                       ; preds = %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i, %.preheader28.us.us.i.i.i
  %.011854.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader28.us.us.i.i.i ], [ %i.lj, %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i ]
  %.112153.us.us.us.us.i.i.i = phi ptr [ %.012065.us.us.i.i.i, %.preheader28.us.us.i.i.i ], [ %i.li, %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i ]
  br label %.lr.ph41.us.us.us.us.us.i.i.i

.lr.ph41.us.us.us.us.us.i.i.i:                    ; preds = %._crit_edge42.us.us.us.us.us.i.split.split.i.i, %.lr.ph46.us.us.us.us.i.i.i
  %.011744.us.us.us.us.us.i.i.i = phi i32 [ 0, %.lr.ph46.us.us.us.us.i.i.i ], [ %i.lh, %._crit_edge42.us.us.us.us.us.i.split.split.i.i ]
  %.212243.us.us.us.us.us.i.i.i = phi ptr [ %.112153.us.us.us.us.i.i.i, %.lr.ph46.us.us.us.us.i.i.i ], [ %i.li, %._crit_edge42.us.us.us.us.us.i.split.split.i.i ] ; 2 uses
  br label %.lr.ph.us.us.us.us.us.preheader.i.i.i

.lr.ph.us.us.us.us.us.preheader.i.i.i:            ; preds = %._crit_edge38.us.us.us.us.us.i.loopexit.i.i, %.lr.ph41.us.us.us.us.us.i.i.i
  %indvars.iv103.i.i.i = phi i64 [ %indvars.iv.next104.i.i.i, %._crit_edge38.us.us.us.us.us.i.loopexit.i.i ], [ 0, %.lr.ph41.us.us.us.us.us.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.021.0.i.i.i, i8 0, i64 %i.fr, i1 false), !tbaa !83
end_hunk_1
