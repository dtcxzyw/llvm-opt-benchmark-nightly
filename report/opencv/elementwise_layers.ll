Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/elementwise_layers?download=true
inline.NumInlined: 5542
inline.NumDeleted: 1795
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ElementWiseLayerINS5_12ReLU6FunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESE_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !884, !nonnull !289, !align !290
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885, !nonnull !289, !align !290
  %i.o = load i64, ptr %i.n, align 8, !tbaa !97
  %i.p = sub i64 %i.o, %i.l
  %i.q = load i64, ptr %i.m, align 8, !tbaa !97
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !886, !nonnull !289, !align !290
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !254
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !887, !nonnull !289, !align !290
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !331
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.l
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !888, !nonnull !289, !align !290
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !331
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.l
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !889, !nonnull !289, !align !290
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !331
  tail call void %i.s(ptr noundef %i.v, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i.i, ptr noundef %i.aa), !inline_history !881
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !319
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i.i, %i.ac
  br i1 %i.ad, label %bb.b, label %_ZSt10__invoke_rIvRZN2cv3dnn16ElementWiseLayerINS1_12ReLU6FunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESA_EUlRKNS0_5RangeEE_JSD_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, !llvm.loop !882

_ZSt10__invoke_rIvRZN2cv3dnn16ElementWiseLayerINS1_12ReLU6FunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESA_EUlRKNS0_5RangeEE_JSD_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ElementWiseLayerINS5_12ReLU6FunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESE_EUlS3_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_12ReLU6FunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ElementWiseLayerINS0_12ReLU6FunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !339
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_12ReLU6FunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %i.a, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_12ReLU6FunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !254
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !353
  store ptr %i.c, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_12ReLU6FunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_12ReLU6FunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #23
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_12ReLU6FunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_12ReLU6FunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_12ReLU6FunctorEE5PBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_12ReLU6FunctorEE5PBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !357  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !329  ; 5 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !94     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !95
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %.02472 = load i32, ptr %i.q, align 4, !tbaa !136
  br label %.lr.ph51

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !136  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.024 = load i32, ptr %i.t, align 4, !tbaa !136
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.v = load i32, ptr %i.u, align 4, !tbaa !308
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 9 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.v, i32 2)
  %i.x = add nsw i32 %smax, -2
  %i.y = add nsw i32 %i.f, -3
  %.not.not = icmp samesign ugt i32 %i.x, %i.y
  br i1 %.not.not, label %_ZNK2cv8MatShapeixEm.exit37.preheader, label %bb.g

_ZNK2cv8MatShapeixEm.exit37.preheader:            ; preds = %.lr.ph
  %i.z = zext nneg i32 %i.f to i64
  %i.aa = add nsw i64 %i.z, -2                    ; 2 uses
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = add nsw i32 %i.f, -3
  %i.ac = icmp ult i32 %i.ab, 7
  br i1 %i.ac, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit37.preheader.new

_ZNK2cv8MatShapeixEm.exit37.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit37.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %_ZNK2cv8MatShapeixEm.exit37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2cv8MatShapeixEm.exit37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader

_ZNK2cv8MatShapeixEm.exit37.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.04547.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %i.cx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %_ZNK2cv8MatShapeixEm.exit37.epil

_ZNK2cv8MatShapeixEm.exit37.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit37.epil, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ] ; 2 uses
  %.04547.epil = phi i64 [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %.04547.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.epil
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !136
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %.04547.epil, %i.af             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil, !llvm.loop !890

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.epil, %bb.f
  %.045.lcssa = phi i64 [ 1, %bb.f ], [ %i.cx, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ]
  %i.ah = icmp sgt i32 %i.s, 0
  br i1 %i.ah, label %.lr.ph51, label %._crit_edge52.split

.lr.ph51:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %.045.lcssa80 = phi i64 [ 1, %._crit_edge.thread ], [ %.045.lcssa, %._crit_edge ] ; 4 uses
  %.07379 = phi i32 [ 1, %._crit_edge.thread ], [ %i.s, %._crit_edge ]
  %.0247478 = phi i32 [ %.02472, %._crit_edge.thread ], [ %.024, %._crit_edge ] ; 2 uses
  %i.ai = sext i32 %i.b to i64                    ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = add i64 %i.aj, %.045.lcssa80
  %i.al = udiv i64 %i.ak, %i.ai                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !319
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.al, %i.ao
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.045.lcssa80, i64 %i.ap) ; 2 uses
  %i.aq = load i32, ptr %1, align 4, !tbaa !318   ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.al, %i.ar                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !252
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97
  %invariant.gep = getelementptr [4 x i8], ptr %i.au, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !358 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !252
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !97
  %invariant.gep53 = getelementptr [4 x i8], ptr %i.ba, i64 %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !356 ; 4 uses
  %i.bf = sub i64 %.sroa.speculated, %i.as
  %i.bg = icmp slt i32 %.0247478, 1
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = icmp slt i32 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %brmerge = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %brmerge, label %._crit_edge52.split, label %.preheader.lr.ph.i.preheader

.preheader.lr.ph.i.preheader:                     ; preds = %.lr.ph51
  %wide.trip.count = zext nneg i32 %.07379 to i64
  %6 = zext i32 %i.aq to i64
  %7 = mul i64 %i.al, %6
  %8 = sub i64 %.sroa.speculated, %7              ; 4 uses
  %9 = and i64 %8, 2147483647
  %xtraiter83 = and i64 %8, 1
  %i.bk = icmp eq i64 %9, 1
  %unroll_iter87 = and i64 %8, 2147483646
  %lcmp.mod85.not = icmp eq i64 %xtraiter83, 0
  %lcmp.mod86 = trunc i64 %8 to i1
  br label %.preheader.lr.ph.i

_ZNK2cv8MatShapeixEm.exit37:                      ; preds = %_ZNK2cv8MatShapeixEm.exit37, %_ZNK2cv8MatShapeixEm.exit37.preheader.new
  %indvars.iv = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %indvars.iv.next.7, %_ZNK2cv8MatShapeixEm.exit37 ] ; 9 uses
  %.04547 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %i.cx, %_ZNK2cv8MatShapeixEm.exit37 ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit37 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !136
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul i64 %.04547, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !136
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !136
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !136
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !136
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !136
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !136
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !136
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cs, %i.cw                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit37, !llvm.loop !891

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.i
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !95
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

._crit_edge52.split:                              ; preds = %_ZNK2cv3dnn12ReLU6Functor5applyEPKfPfiimii.exit.loopexit, %.lr.ph51, %._crit_edge
  ret void

.preheader.lr.ph.i:                               ; preds = %.preheader.lr.ph.i.preheader, %_ZNK2cv3dnn12ReLU6Functor5applyEPKfPfiimii.exit.loopexit
  %indvars.iv58 = phi i64 [ 0, %.preheader.lr.ph.i.preheader ], [ %indvars.iv.next59, %_ZNK2cv3dnn12ReLU6Functor5applyEPKfPfiimii.exit.loopexit ] ; 3 uses
  %i.de = mul i64 %i.aw, %indvars.iv58
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.de
  %i.df = mul i64 %i.bc, %indvars.iv58
  %gep54 = getelementptr i8, ptr %invariant.gep53, i64 %i.df
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.02029.i = phi i32 [ %i.dy, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ]
  %.02128.i = phi ptr [ %i.dz, %._crit_edge.i ], [ %gep, %.preheader.lr.ph.i ] ; 4 uses
  %.02227.i = phi ptr [ %i.ea, %._crit_edge.i ], [ %gep54, %.preheader.lr.ph.i ] ; 4 uses
  br i1 %i.bk, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.m ], [ 0, %.preheader.i ] ; 4 uses
  %niter88 = phi i64 [ %niter88.next.1, %bb.m ], [ 0, %.preheader.i ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.02128.i, i64 %indvars.iv.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !253 ; 3 uses
  %i.di = load float, ptr %i.be, align 4, !tbaa !361 ; 2 uses
  %i.dj = fcmp ult float %i.dh, %i.di
  br i1 %i.dj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i.new
  %i.dk = load float, ptr %i.bj, align 4, !tbaa !362 ; 2 uses
  %.inv.i = fcmp ole float %i.dh, %i.dk
  %..i38 = select i1 %.inv.i, float %i.dh, float %i.dk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.i.new
  %..sink.i = phi float [ %..i38, %bb.j ], [ %i.di, %.preheader.i.new ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.02227.i, i64 %indvars.iv.i
  store float %..sink.i, ptr %i.dl, align 4, !tbaa !253
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.02128.i, i64 %indvars.iv.next.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !253 ; 3 uses
  %i.do = load float, ptr %i.be, align 4, !tbaa !361 ; 2 uses
  %i.dp = fcmp ult float %i.dn, %i.do
  br i1 %i.dp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = load float, ptr %i.bj, align 4, !tbaa !362 ; 2 uses
  %.inv.i.1 = fcmp ole float %i.dn, %i.dq
  %..i38.1 = select i1 %.inv.i.1, float %i.dn, float %i.dq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %..sink.i.1 = phi float [ %..i38.1, %bb.l ], [ %i.do, %bb.k ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.02227.i, i64 %indvars.iv.next.i
  store float %..sink.i.1, ptr %i.dr, align 4, !tbaa !253
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter88.next.1 = add i64 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i64 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !8

._crit_edge.i.unr-lcssa:                          ; preds = %bb.m
  br i1 %lcmp.mod85.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.02128.i, i64 %indvars.iv.i.epil.init
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !253 ; 3 uses
  %i.du = load float, ptr %i.be, align 4, !tbaa !361 ; 2 uses
  %i.dv = fcmp ult float %i.dt, %i.du
  br i1 %i.dv, label %._crit_edge.i.epilog-lcssa, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.dw = load float, ptr %i.bj, align 4, !tbaa !362 ; 2 uses
  %.inv.i.epil = fcmp ole float %i.dt, %i.dw
  %..i38.epil = select i1 %.inv.i.epil, float %i.dt, float %i.dw
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.n, %.epil.preheader
  %..sink.i.epil = phi float [ %..i38.epil, %bb.n ], [ %i.du, %.epil.preheader ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.02227.i, i64 %indvars.iv.i.epil.init
  store float %..sink.i.epil, ptr %i.dx, align 4, !tbaa !253
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %._crit_edge.i.epilog-lcssa
  %i.dy = add nuw nsw i32 %.02029.i, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.02128.i, i64 %.045.lcssa80
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.02227.i, i64 %.045.lcssa80
  %exitcond32.not.i = icmp eq i32 %i.dy, %.0247478
  br i1 %exitcond32.not.i, label %_ZNK2cv3dnn12ReLU6Functor5applyEPKfPfiimii.exit.loopexit, label %.preheader.i, !llvm.loop !9

_ZNK2cv3dnn12ReLU6Functor5applyEPKfPfiimii.exit.loopexit: ; preds = %._crit_edge.i
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count
  br i1 %exitcond61.not, label %._crit_edge52.split, label %.preheader.lr.ph.i, !llvm.loop !892
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_12ReLU6FunctorEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_12ReLU6FunctorEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ElementWiseLayerINS5_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESE_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !1235, !nonnull !289, !align !290
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1236, !nonnull !289, !align !290
  %i.o = load i64, ptr %i.n, align 8, !tbaa !97
  %i.p = sub i64 %i.o, %i.l
  %i.q = load i64, ptr %i.m, align 8, !tbaa !97
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !1237, !nonnull !289, !align !290
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !254
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !1238, !nonnull !289, !align !290
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !331
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.l
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !1239, !nonnull !289, !align !290
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !331
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.l
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !1240, !nonnull !289, !align !290
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !331
  tail call void %i.s(ptr noundef %i.v, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i.i, ptr noundef %i.aa), !inline_history !1232
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !319
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i.i, %i.ac
  br i1 %i.ad, label %bb.b, label %_ZSt10__invoke_rIvRZN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESA_EUlRKNS0_5RangeEE_JSD_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, !llvm.loop !1233

_ZSt10__invoke_rIvRZN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESA_EUlRKNS0_5RangeEE_JSD_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ElementWiseLayerINS5_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESE_EUlS3_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !339
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %i.a, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !254
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !353
  store ptr %i.c, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #23
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE5PBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE5PBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !524
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !522  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !329  ; 5 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !94     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !95
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %.02469 = load i32, ptr %i.q, align 4, !tbaa !136
  br label %.lr.ph50

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !136  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.024 = load i32, ptr %i.t, align 4, !tbaa !136
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.v = load i32, ptr %i.u, align 4, !tbaa !308
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 9 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.v, i32 2)
  %i.x = add nsw i32 %smax, -2
  %i.y = add nsw i32 %i.f, -3
  %.not.not = icmp samesign ugt i32 %i.x, %i.y
  br i1 %.not.not, label %_ZNK2cv8MatShapeixEm.exit37.preheader, label %bb.g

_ZNK2cv8MatShapeixEm.exit37.preheader:            ; preds = %.lr.ph
  %i.z = zext nneg i32 %i.f to i64
  %i.aa = add nsw i64 %i.z, -2                    ; 2 uses
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = add nsw i32 %i.f, -3
  %i.ac = icmp ult i32 %i.ab, 7
  br i1 %i.ac, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit37.preheader.new

_ZNK2cv8MatShapeixEm.exit37.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit37.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %_ZNK2cv8MatShapeixEm.exit37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2cv8MatShapeixEm.exit37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader

_ZNK2cv8MatShapeixEm.exit37.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.04446.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %_ZNK2cv8MatShapeixEm.exit37.epil

_ZNK2cv8MatShapeixEm.exit37.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit37.epil, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ] ; 2 uses
  %.04446.epil = phi i64 [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %.04446.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.epil
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !136
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %.04446.epil, %i.af             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil, !llvm.loop !1241

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.epil, %bb.f
  %.044.lcssa = phi i64 [ 1, %bb.f ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ]
  %i.ah = icmp sgt i32 %i.s, 0
  br i1 %i.ah, label %.lr.ph50, label %._crit_edge51.split

.lr.ph50:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %.044.lcssa77 = phi i64 [ 1, %._crit_edge.thread ], [ %.044.lcssa, %._crit_edge ] ; 6 uses
  %.07076 = phi i32 [ 1, %._crit_edge.thread ], [ %i.s, %._crit_edge ]
  %.0247175 = phi i32 [ %.02469, %._crit_edge.thread ], [ %.024, %._crit_edge ] ; 3 uses
  %i.ai = sext i32 %i.b to i64                    ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = add i64 %i.aj, %.044.lcssa77
  %i.al = udiv i64 %i.ak, %i.ai                   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !319
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.al, %i.ao
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.044.lcssa77, i64 %i.ap) ; 3 uses
  %i.aq = load i32, ptr %1, align 4, !tbaa !318   ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul i64 %i.al, %i.ar                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !252 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97
  %invariant.gep = getelementptr [4 x i8], ptr %i.au, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !523 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !252 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !97
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.ba, i64 %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !521 ; 5 uses
  %i.bf = sub i64 %.sroa.speculated, %i.as        ; 2 uses
  %i.bg = icmp slt i32 %.0247175, 1
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = icmp slt i32 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %wide.trip.count.i = and i64 %i.bf, 2147483647
  %brmerge = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %brmerge, label %._crit_edge51.split, label %.preheader.lr.ph.i.preheader

.preheader.lr.ph.i.preheader:                     ; preds = %.lr.ph50
  %wide.trip.count = zext nneg i32 %.07076 to i64
  %i.bk = mul i64 %i.al, %i.ar
  %i.bl = add nsw i32 %.0247175, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul i64 %.044.lcssa77, %i.bm
  %i.bo = add i64 %i.bk, %i.bn
  %6 = zext i32 %i.aq to i64
  %scevgep79 = getelementptr i8, ptr %i.be, i64 8
  %7 = zext i32 %i.aq to i64
  %8 = mul i64 %i.al, %7
  %9 = sub i64 %.sroa.speculated, %8              ; 2 uses
  %10 = and i64 %9, 2147483647                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %10, 8
  %11 = mul i64 %i.al, %6
  %12 = sub i64 %.sroa.speculated, %11
  %13 = and i64 %12, 2147483647
  %14 = add i64 %i.bo, %13
  %15 = shl i64 %14, 2                            ; 2 uses
  %invariant.gep92 = getelementptr i8, ptr %i.ba, i64 %15
  %invariant.gep94 = getelementptr i8, ptr %i.au, i64 %15
  %.mask = and i64 %.044.lcssa77, 2305843009213693952
  %stride.check84 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %9, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %10, %n.vec
  br label %.preheader.lr.ph.i

_ZNK2cv8MatShapeixEm.exit37:                      ; preds = %_ZNK2cv8MatShapeixEm.exit37, %_ZNK2cv8MatShapeixEm.exit37.preheader.new
  %indvars.iv = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %indvars.iv.next.7, %_ZNK2cv8MatShapeixEm.exit37 ] ; 9 uses
  %.04446 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %i.db, %_ZNK2cv8MatShapeixEm.exit37 ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit37 ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !136
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul i64 %.04446, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !136
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !136
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !136
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul i64 %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !136
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul i64 %i.ch, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !136
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !136
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul i64 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !136
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.cw, %i.da                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit37, !llvm.loop !1242

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.i
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !95
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

._crit_edge51.split:                              ; preds = %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit, %.lr.ph50, %._crit_edge
  ret void

.preheader.lr.ph.i:                               ; preds = %.preheader.lr.ph.i.preheader, %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit
  %indvars.iv57 = phi i64 [ 0, %.preheader.lr.ph.i.preheader ], [ %indvars.iv.next58, %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit ] ; 3 uses
  %i.di = mul i64 %i.aw, %indvars.iv57            ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.di ; 2 uses
  %i.dj = mul i64 %i.bc, %indvars.iv57            ; 2 uses
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %i.dj ; 3 uses
  %gep93 = getelementptr i8, ptr %invariant.gep92, i64 %i.dj ; 2 uses
  %gep95 = getelementptr i8, ptr %invariant.gep94, i64 %i.di
  %bound0 = icmp ult ptr %gep53, %gep95
  %bound1 = icmp ult ptr %gep, %gep93
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %gep53, %scevgep79
  %bound182 = icmp ult ptr %i.be, %gep93
  %found.conflict83 = and i1 %bound081, %bound182
  %i.dk = or i1 %found.conflict83, %stride.check84
  %conflict.rdx = or i1 %found.conflict, %i.dk
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.022.i = phi ptr [ %i.ed, %._crit_edge.i ], [ %gep, %.preheader.lr.ph.i ] ; 3 uses
  %.01721.i = phi i32 [ %i.ec, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ]
  %.01820.i = phi ptr [ %i.ee, %._crit_edge.i ], [ %gep53, %.preheader.lr.ph.i ] ; 3 uses
  %brmerge96 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge96, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.dl = load float, ptr %i.be, align 4, !tbaa !526, !alias.scope !1250
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = load float, ptr %i.bj, align 4, !tbaa !527, !alias.scope !1250
  %broadcast.splatinsert86 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat87 = shufflevector <4 x float> %broadcast.splatinsert86, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <4 x float>, ptr %i.dn, align 4, !tbaa !253, !alias.scope !1251
  %wide.load85 = load <4 x float>, ptr %i.do, align 4, !tbaa !253, !alias.scope !1251
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %broadcast.splat87) ; 2 uses
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load85, <4 x float> %broadcast.splat87) ; 2 uses
  %i.dr = fcmp olt <4 x float> %i.dp, splat (float 1.000000e+00)
  %i.ds = fcmp olt <4 x float> %i.dq, splat (float 1.000000e+00)
  %i.dt = select <4 x i1> %i.dr, <4 x float> %i.dp, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.du = select <4 x i1> %i.ds, <4 x float> %i.dq, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.dv = fcmp ogt <4 x float> %i.dt, zeroinitializer
  %i.dw = fcmp ogt <4 x float> %i.du, zeroinitializer
  %i.dx = select <4 x i1> %i.dv, <4 x float> %i.dt, <4 x float> zeroinitializer
  %i.dy = select <4 x i1> %i.dw, <4 x float> %i.du, <4 x float> zeroinitializer
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x float> %i.dx, ptr %i.dz, align 4, !tbaa !253, !alias.scope !1252, !noalias !1253
  store <4 x float> %i.dy, ptr %i.ea, align 4, !tbaa !253, !alias.scope !1252, !noalias !1253
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !1247

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ec = add nuw nsw i32 %.01721.i, 1            ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %.044.lcssa77
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %.044.lcssa77
  %exitcond25.not.i = icmp eq i32 %i.ec, %.0247175
  br i1 %exitcond25.not.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit, label %.preheader.i, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.i
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !253
  %i.eh = load float, ptr %i.be, align 4, !tbaa !526
  %i.ei = load float, ptr %i.bj, align 4, !tbaa !527
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.eg, float %i.ei) ; 2 uses
  %i.ek = fcmp olt float %i.ej, 1.000000e+00
  %i.el = select i1 %i.ek, float %i.ej, float 1.000000e+00 ; 2 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.em, float %i.el, float 0.000000e+00
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.i
  store float %.sroa.speculated.i.i, ptr %i.en, align 4, !tbaa !253
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1248

_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit: ; preds = %._crit_edge.i
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge51.split, label %.preheader.lr.ph.i, !llvm.loop !1249
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEE8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.6", align 8     ; 12 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %13 = alloca %"class.cv::dnn::ElementWiseLayer<cv::dnn::SeluFunctor>::PBody", align 8 ; 11 uses
  %14 = alloca %"class.cv::Range", align 4        ; 6 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::dnn::ElementWiseLayer<cv::dnn::SeluFunctor>::PBody", align 8 ; 11 uses
  %19 = alloca %"class.cv::Range", align 4        ; 6 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_E25__cv_trace_location_fn228)
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bf unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !245
  %i.f = load ptr, ptr %5, align 8, !tbaa !246    ; 2 uses
  %.not125 = icmp eq ptr %i.e, %i.f
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
end_hunk_1
begin_hunk_2_@_ZNK2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE12forwardSliceEPKfPfimii:bb.a
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !253
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.e, float %i.aq, float %i.g)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.04056.i, i64 %indvars.iv.next63.i.2
  store float %i.ar, ptr %i.as, align 4, !tbaa !253
  %indvars.iv.next63.i.3 = add nuw nsw i64 %indvars.iv62.i, 4 ; 2 uses
  %exitcond66.not.i.3 = icmp eq i64 %indvars.iv.next63.i.3, %wide.trip.count65.i
  br i1 %exitcond66.not.i.3, label %._crit_edge54.i, label %scalar.ph, !llvm.loop !1298

.preheader46.i:                                   ; preds = %._crit_edge.i, %.preheader46.preheader.i
  %.152.i = phi ptr [ %i.az, %._crit_edge.i ], [ %1, %.preheader46.preheader.i ] ; 4 uses
  %.03951.i = phi i32 [ %i.ay, %._crit_edge.i ], [ %5, %.preheader46.preheader.i ]
  %.14150.i = phi ptr [ %i.ba, %._crit_edge.i ], [ %2, %.preheader46.preheader.i ] ; 4 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader46.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader46.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader46.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader46.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.152.i, i64 %indvars.iv.i.epil.init
  %i.au = load float, ptr %i.at, align 4, !tbaa !253
  %i.av = tail call float @llvm.fmuladd.f32(float %i.e, float %i.au, float %i.g)
  %i.aw = tail call noundef float @powf(float noundef %i.av, float noundef %i.h) #21
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.14150.i, i64 %indvars.iv.i.epil.init
  store float %i.aw, ptr %i.ax, align 4, !tbaa !253
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.ay = add nsw i32 %.03951.i, 1                ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.152.i, i64 %4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.14150.i, i64 %4
  %exitcond61.not.i = icmp eq i32 %i.ay, %6
  br i1 %exitcond61.not.i, label %_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit, label %.preheader46.i, !llvm.loop !70

.preheader46.i.new:                               ; preds = %.preheader46.i, %.preheader46.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader46.i.new ], [ 0, %.preheader46.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader46.i.new ], [ 0, %.preheader46.i ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.152.i, i64 %indvars.iv.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !253
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.e, float %i.bc, float %i.g)
  %i.be = tail call noundef float @powf(float noundef %i.bd, float noundef %i.h) #21
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.14150.i, i64 %indvars.iv.i
  store float %i.be, ptr %i.bf, align 4, !tbaa !253
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.152.i, i64 %indvars.iv.next.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !253
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.e, float %i.bh, float %i.g)
  %i.bj = tail call noundef float @powf(float noundef %i.bi, float noundef %i.h) #21
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.14150.i, i64 %indvars.iv.next.i
  store float %i.bj, ptr %i.bk, align 4, !tbaa !253
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader46.i.new, !llvm.loop !71

_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit:  ; preds = %._crit_edge.i, %._crit_edge54.i, %.preheader47.i, %.preheader45.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE17getActivationFuncEiRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE5PBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE5PBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !554
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !552  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !329  ; 5 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !94     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !95
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %.02476 = load i32, ptr %i.q, align 4, !tbaa !136
  br label %.lr.ph51

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !136  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.024 = load i32, ptr %i.t, align 4, !tbaa !136
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.v = load i32, ptr %i.u, align 4, !tbaa !308
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 9 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.v, i32 2)
  %i.x = add nsw i32 %smax, -2
  %i.y = add nsw i32 %i.f, -3
  %.not.not = icmp samesign ugt i32 %i.x, %i.y
  br i1 %.not.not, label %_ZNK2cv8MatShapeixEm.exit37.preheader, label %bb.g

_ZNK2cv8MatShapeixEm.exit37.preheader:            ; preds = %.lr.ph
  %i.z = zext nneg i32 %i.f to i64
  %i.aa = add nsw i64 %i.z, -2                    ; 2 uses
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = add nsw i32 %i.f, -3
  %i.ac = icmp ult i32 %i.ab, 7
  br i1 %i.ac, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit37.preheader.new

_ZNK2cv8MatShapeixEm.exit37.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit37.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %_ZNK2cv8MatShapeixEm.exit37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2cv8MatShapeixEm.exit37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader

_ZNK2cv8MatShapeixEm.exit37.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.04447.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %i.fh, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %_ZNK2cv8MatShapeixEm.exit37.epil

_ZNK2cv8MatShapeixEm.exit37.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit37.epil, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ] ; 2 uses
  %.04447.epil = phi i64 [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %.04447.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.epil
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !136
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %.04447.epil, %i.af             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil, !llvm.loop !1299

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.epil, %bb.f
  %.044.lcssa = phi i64 [ 1, %bb.f ], [ %i.fh, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ]
  %i.ah = icmp sgt i32 %i.s, 0
  br i1 %i.ah, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %.044.lcssa84 = phi i64 [ 1, %._crit_edge.thread ], [ %.044.lcssa, %._crit_edge ] ; 6 uses
  %.07783 = phi i32 [ 1, %._crit_edge.thread ], [ %i.s, %._crit_edge ]
  %.0247882 = phi i32 [ %.02476, %._crit_edge.thread ], [ %.024, %._crit_edge ] ; 3 uses
  %i.ai = sext i32 %i.b to i64                    ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = add i64 %i.aj, %.044.lcssa84
  %i.al = udiv i64 %i.ak, %i.ai                   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !319
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.al, %i.ao
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.044.lcssa84, i64 %i.ap) ; 3 uses
  %i.aq = load i32, ptr %1, align 4, !tbaa !318   ; 3 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.al, %i.ar                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !252 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.au, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !553 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !252 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !97 ; 2 uses
  %invariant.gep53 = getelementptr [4 x i8], ptr %i.ba, i64 %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !551 ; 3 uses
  %i.bf = sub i64 %.sroa.speculated, %i.as        ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = icmp sgt i32 %.0247882, 0
  %i.bk = icmp sgt i32 %i.bg, 0
  %or.cond58.i = and i1 %i.bj, %i.bk
  %wide.trip.count.i = and i64 %i.bf, 2147483647
  %or.cond58.i.fr = freeze i1 %or.cond58.i
  br i1 %or.cond58.i.fr, label %.lr.ph51.split.us.preheader, label %._crit_edge52

.lr.ph51.split.us.preheader:                      ; preds = %.lr.ph51
  %i.bl = ptrtoaddr ptr %i.ba to i64
  %i.bm = ptrtoaddr ptr %i.au to i64
  %wide.trip.count = zext nneg i32 %.07783 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sub i64 %i.bc, %i.aw
  %6 = zext i32 %i.aq to i64
  %7 = mul i64 %i.al, %6
  %8 = sub i64 %.sroa.speculated, %7              ; 4 uses
  %9 = and i64 %8, 2147483647
  %xtraiter93 = and i64 %8, 1
  %i.bp = icmp eq i64 %9, 1
  %unroll_iter97 = and i64 %8, 2147483646
  %lcmp.mod95.not = icmp eq i64 %xtraiter93, 0
  %lcmp.mod96 = trunc i64 %8 to i1
  %10 = zext i32 %i.aq to i64
  %11 = mul i64 %i.al, %10
  %12 = sub i64 %.sroa.speculated, %11            ; 3 uses
  %13 = and i64 %12, 2147483647                   ; 3 uses
  %min.iters.check = icmp samesign ult i64 %13, 8
  %invariant.op = add i64 %i.bn, -1
  %n.vec = and i64 %12, 2147483640                ; 3 uses
  %cmp.n = icmp eq i64 %13, %n.vec
  %xtraiter99 = and i64 %12, 3                    ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br label %.lr.ph51.split.us

.lr.ph51.split.us:                                ; preds = %.lr.ph51.split.us.preheader, %_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit.us
  %indvars.iv62 = phi i64 [ 0, %.lr.ph51.split.us.preheader ], [ %indvars.iv.next63, %_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit.us ] ; 4 uses
  %i.bq = mul i64 %i.bo, %indvars.iv62
  %i.br = mul i64 %i.aw, %indvars.iv62
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %i.br ; 2 uses
  %i.bs = mul i64 %i.bc, %indvars.iv62
  %gep54.us = getelementptr i8, ptr %invariant.gep53, i64 %i.bs ; 2 uses
  %i.bt = load float, ptr %i.bh, align 4, !tbaa !548 ; 9 uses
  %i.bu = load float, ptr %i.bi, align 4, !tbaa !546 ; 9 uses
  %i.bv = load float, ptr %i.be, align 4, !tbaa !547 ; 4 uses
  %i.bw = fcmp oeq float %i.bv, 1.000000e+00
  br i1 %i.bw, label %.preheader.i.us.preheader, label %.preheader46.i.us

.preheader.i.us.preheader:                        ; preds = %.lr.ph51.split.us
  %.reass = add i64 %i.bq, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert87 = insertelement <4 x float> poison, float %i.bu, i64 0
  %broadcast.splat88 = shufflevector <4 x float> %broadcast.splatinsert87, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i.us

.preheader46.i.us:                                ; preds = %.lr.ph51.split.us, %._crit_edge.i.us
  %.152.i.us = phi ptr [ %i.cn, %._crit_edge.i.us ], [ %gep.us, %.lr.ph51.split.us ] ; 4 uses
  %.03951.i.us = phi i32 [ %i.cm, %._crit_edge.i.us ], [ 0, %.lr.ph51.split.us ]
  %.14150.i.us = phi ptr [ %i.co, %._crit_edge.i.us ], [ %gep54.us, %.lr.ph51.split.us ] ; 4 uses
  br i1 %i.bp, label %.epil.preheader, label %.preheader46.i.us.new

.preheader46.i.us.new:                            ; preds = %.preheader46.i.us, %.preheader46.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.preheader46.i.us.new ], [ 0, %.preheader46.i.us ] ; 4 uses
  %niter98 = phi i64 [ %niter98.next.1, %.preheader46.i.us.new ], [ 0, %.preheader46.i.us ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.152.i.us, i64 %indvars.iv.i.us
  %i.by = load float, ptr %i.bx, align 4, !tbaa !253
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.by, float %i.bu)
  %i.ca = tail call noundef float @powf(float noundef %i.bz, float noundef %i.bv) #21
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.14150.i.us, i64 %indvars.iv.i.us
  store float %i.ca, ptr %i.cb, align 4, !tbaa !253
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.152.i.us, i64 %indvars.iv.next.i.us
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !253
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.cd, float %i.bu)
  %i.cf = tail call noundef float @powf(float noundef %i.ce, float noundef %i.bv) #21
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.14150.i.us, i64 %indvars.iv.next.i.us
  store float %i.cf, ptr %i.cg, align 4, !tbaa !253
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter98.next.1 = add i64 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i64 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %._crit_edge.i.us.unr-lcssa, label %.preheader46.i.us.new, !llvm.loop !71

._crit_edge.i.us.unr-lcssa:                       ; preds = %.preheader46.i.us.new
  br i1 %lcmp.mod95.not, label %._crit_edge.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.us.unr-lcssa, %.preheader46.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader46.i.us ], [ %indvars.iv.next.i.us.1, %._crit_edge.i.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.152.i.us, i64 %indvars.iv.i.us.epil.init
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !253
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ci, float %i.bu)
  %i.ck = tail call noundef float @powf(float noundef %i.cj, float noundef %i.bv) #21
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.14150.i.us, i64 %indvars.iv.i.us.epil.init
  store float %i.ck, ptr %i.cl, align 4, !tbaa !253
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.unr-lcssa, %.epil.preheader
  %i.cm = add nuw nsw i32 %.03951.i.us, 1         ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.152.i.us, i64 %.044.lcssa84
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.14150.i.us, i64 %.044.lcssa84
  %exitcond61.not.i.us = icmp eq i32 %i.cm, %.0247882
  br i1 %exitcond61.not.i.us, label %_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit.us, label %.preheader46.i.us, !llvm.loop !70

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %._crit_edge54.i.us
  %.057.i.us = phi ptr [ %i.dt, %._crit_edge54.i.us ], [ %gep.us, %.preheader.i.us.preheader ] ; 7 uses
  %.04056.i.us = phi ptr [ %i.du, %._crit_edge54.i.us ], [ %gep54.us, %.preheader.i.us.preheader ] ; 7 uses
  %.04355.i.us = phi i32 [ %i.ds, %._crit_edge54.i.us ], [ 0, %.preheader.i.us.preheader ]
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.us ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.057.i.us, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <4 x float>, ptr %i.cp, align 4, !tbaa !253
  %wide.load89 = load <4 x float>, ptr %i.cq, align 4, !tbaa !253
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %broadcast.splat88)
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load89, <4 x float> %broadcast.splat88)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.04056.i.us, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x float> %i.cr, ptr %i.ct, align 4, !tbaa !253
  store <4 x float> %i.cs, ptr %i.cu, align 4, !tbaa !253
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1300

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge54.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.us, %middle.block
  %indvars.iv62.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod100.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv62.i.us.prol = phi i64 [ %indvars.iv.next63.i.us.prol, %scalar.ph.prol ], [ %indvars.iv62.i.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.057.i.us, i64 %indvars.iv62.i.us.prol
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !253
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.cx, float %i.bu)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.04056.i.us, i64 %indvars.iv62.i.us.prol
  store float %i.cy, ptr %i.cz, align 4, !tbaa !253
  %indvars.iv.next63.i.us.prol = add nuw nsw i64 %indvars.iv62.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter99
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1301

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv62.i.us.unr = phi i64 [ %indvars.iv62.i.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next63.i.us.prol, %scalar.ph.prol ]
  %i.da = sub nsw i64 %indvars.iv62.i.us.ph, %13
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge54.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv62.i.us = phi i64 [ %indvars.iv.next63.i.us.3, %scalar.ph ], [ %indvars.iv62.i.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.057.i.us, i64 %indvars.iv62.i.us
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !253
  %i.de = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.dd, float %i.bu)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.04056.i.us, i64 %indvars.iv62.i.us
  store float %i.de, ptr %i.df, align 4, !tbaa !253
  %indvars.iv.next63.i.us = add nuw nsw i64 %indvars.iv62.i.us, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.057.i.us, i64 %indvars.iv.next63.i.us
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !253
  %i.di = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.dh, float %i.bu)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.04056.i.us, i64 %indvars.iv.next63.i.us
  store float %i.di, ptr %i.dj, align 4, !tbaa !253
  %indvars.iv.next63.i.us.1 = add nuw nsw i64 %indvars.iv62.i.us, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.057.i.us, i64 %indvars.iv.next63.i.us.1
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !253
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.dl, float %i.bu)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.04056.i.us, i64 %indvars.iv.next63.i.us.1
  store float %i.dm, ptr %i.dn, align 4, !tbaa !253
  %indvars.iv.next63.i.us.2 = add nuw nsw i64 %indvars.iv62.i.us, 3 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.057.i.us, i64 %indvars.iv.next63.i.us.2
  %i.dp = load float, ptr %i.do, align 4, !tbaa !253
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.dp, float %i.bu)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.04056.i.us, i64 %indvars.iv.next63.i.us.2
  store float %i.dq, ptr %i.dr, align 4, !tbaa !253
  %indvars.iv.next63.i.us.3 = add nuw nsw i64 %indvars.iv62.i.us, 4 ; 2 uses
  %exitcond66.not.i.us.3 = icmp eq i64 %indvars.iv.next63.i.us.3, %wide.trip.count.i
  br i1 %exitcond66.not.i.us.3, label %._crit_edge54.i.us, label %scalar.ph, !llvm.loop !1302

._crit_edge54.i.us:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ds = add nuw nsw i32 %.04355.i.us, 1         ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.057.i.us, i64 %.044.lcssa84
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.04056.i.us, i64 %.044.lcssa84
  %exitcond67.not.i.us = icmp eq i32 %i.ds, %.0247882
  br i1 %exitcond67.not.i.us, label %_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit.us, label %.preheader.i.us, !llvm.loop !69

_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit.us: ; preds = %._crit_edge.i.us, %._crit_edge54.i.us
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count
  br i1 %exitcond65.not, label %._crit_edge52, label %.lr.ph51.split.us, !llvm.loop !1303

_ZNK2cv8MatShapeixEm.exit37:                      ; preds = %_ZNK2cv8MatShapeixEm.exit37, %_ZNK2cv8MatShapeixEm.exit37.preheader.new
  %indvars.iv = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %indvars.iv.next.7, %_ZNK2cv8MatShapeixEm.exit37 ] ; 9 uses
  %.04447 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %i.fh, %_ZNK2cv8MatShapeixEm.exit37 ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit37 ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !136
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul i64 %.04447, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !136
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul i64 %i.dy, %i.ec
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !136
  %i.eh = sext i32 %i.eg to i64
  %i.ei = mul i64 %i.ed, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !136
  %i.em = sext i32 %i.el to i64
  %i.en = mul i64 %i.ei, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !136
  %i.er = sext i32 %i.eq to i64
  %i.es = mul i64 %i.en, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !136
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul i64 %i.es, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !136
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul i64 %i.ex, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !136
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul i64 %i.fc, %i.fg                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit37, !llvm.loop !1304

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.i
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !95
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

._crit_edge52:                                    ; preds = %_ZNK2cv3dnn12PowerFunctor5applyEPKfPfiimii.exit.us, %.lr.ph51, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn12PowerFunctor7tryFuseERNS_3PtrINS0_14dnn5_v202606055LayerEEE(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %i.a = load float, ptr %0, align 4, !tbaa !547
  %i.b = fcmp une float %i.a, 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load float, ptr %i.c, align 4
  %i.e = fcmp une float %i.d, 0.000000e+00
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  %i.f = load ptr, ptr %1, align 8, !tbaa !263    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(156) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.l = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %bb.s, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.q = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %i.q, label %bb.n, label %_ZN2cv3Mat2atIfEERT_i.exit

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.m
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !252
  %i.t = load float, ptr %i.s, align 4, !tbaa !253
  br label %bb.n
end_hunk_2
