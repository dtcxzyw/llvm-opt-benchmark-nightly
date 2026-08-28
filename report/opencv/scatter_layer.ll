Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/scatter_layer?download=true
inline.NumInlined: 4231
inline.NumDeleted: 1143
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E0_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_:bb.a
.split92.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph87.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !28
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.en, %bb.j ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eo, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !151
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %i.a, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !136
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !153
  store ptr %i.c, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !136    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !126    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !194
  %i.g = load ptr, ptr %0, align 8, !tbaa !196, !nonnull !157, !align !158
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !197, !nonnull !157, !align !158
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !159  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !198, !nonnull !157, !align !158
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199, !nonnull !157, !align !163
  %i.t = load i32, ptr %i.s, align 4, !tbaa !88   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !157, !align !163 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !87
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph87.split.us
  %.04285.us = phi i32 [ %i.a, %.lr.ph87.split.us ], [ %i.bw, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04381.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04480.us = phi i32 [ %.04285.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04579.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04678.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !88 ; 2 uses
  %i.ai = sdiv i32 %.04480.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04480.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !200, !nonnull !157, !align !158
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !120 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !62
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04678.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !201, !nonnull !157, !align !158
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04579.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !43 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04381.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !202

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.by
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !88 ; 3 uses
  %i.bj = add nsw i32 %i.bi, %i.bf
  %i.bk = srem i32 %i.bj, %i.bi                   ; 2 uses
  %i.bl = or i32 %i.bk, %i.bi
  %or.cond.us = icmp sgt i32 %i.bl, -1
  br i1 %or.cond.us, label %bb.c, label %.split92.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bm = sub i64 %i.at, %spec.select.us
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.by
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !62
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.bm
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq  ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !167, !range !169, !noundef !157
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.us = mul nuw nsw i8 %i.bv, %i.bu
  store i8 %narrow.i73.us, ptr %i.bt, align 1, !tbaa !167
  %i.bw = add nsw i32 %.04285.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.bw, %i.c
  br i1 %exitcond96.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !203

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.bx = load ptr, ptr %i.ab, align 8, !tbaa !204, !nonnull !157, !align !163 ; 2 uses
  %i.by = sext i32 %i.ba to i64                   ; 2 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !87
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %i.ca = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.ca, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split90.us

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !204, !nonnull !157, !align !163 ; 2 uses
  %i.cc = load i32, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !87
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 1)
  %i.cf = icmp ult i32 %i.cc, %narrow.i
  br i1 %i.cf, label %.lr.ph87.split.split, label %.split90.us

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cd
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !88
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !88 ; 3 uses
  %i.ck = add nsw i32 %i.cj, %i.ci
  %i.cl = srem i32 %i.ck, %i.cj                   ; 2 uses
  %i.cm = or i32 %i.cl, %i.cj
  %or.cond = icmp sgt i32 %i.cm, -1
  br i1 %or.cond, label %iter.check, label %.split92.us

iter.check:                                       ; preds = %.lr.ph87.split.split
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !200, !nonnull !157, !align !158
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !120
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cd
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !62
  %i.cs = mul i64 %i.cr, %i.cn                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cs   ; 9 uses
  %.pre = load i8, ptr %i.ct, align 1, !tbaa !167, !range !169 ; 4 uses
  %i.cu = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cu, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cs
  %scevgep = getelementptr i8, ptr %i.cv, i64 1
  %scevgep114 = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.ct, %scevgep114
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %i.cu, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cw = and i32 %i.cu, 28
  %n.vec = and i32 %i.cu, -32                     ; 4 uses
  %i.cx = add i32 %i.a, %n.vec
  %i.cy = insertelement <16 x i8> <i8 poison, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, i8 %.pre, i64 0
  %i.cz = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !alias.scope !205, !noundef !157
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.cz, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <16 x i8> [ %i.cy, %vector.ph ], [ %8, %vector.body ]
  %vec.phi116 = phi <16 x i8> [ splat (i8 1), %vector.ph ], [ %9, %vector.body ]
  %8 = mul nuw <16 x i8> %broadcast.splat, %vec.phi ; 2 uses
  %9 = mul nuw <16 x i8> %broadcast.splat, %vec.phi116 ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.da = icmp eq i32 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <16 x i8> %9, %8
  %i.db = tail call i8 @llvm.vector.reduce.mul.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.db, ptr %i.ct, align 1, !tbaa !167, !alias.scope !209, !noalias !205
  %cmp.n = icmp eq i32 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge88, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cw, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !189

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.db, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec117 = and i32 %i.cu, -4                   ; 3 uses
  %i.dc = add i32 %i.a, %n.vec117
  %i.dd = insertelement <4 x i8> <i8 poison, i8 1, i8 1, i8 1>, i8 %bc.merge.rdx, i64 0
  %i.de = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !alias.scope !205, !noundef !157
  %broadcast.splatinsert120 = insertelement <4 x i8> poison, i8 %i.de, i64 0
  %broadcast.splat121 = shufflevector <4 x i8> %broadcast.splatinsert120, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ]
  %vec.phi119 = phi <4 x i8> [ %i.dd, %vec.epilog.ph ], [ %10, %vec.epilog.vector.body ]
  %10 = mul nuw <4 x i8> %broadcast.splat121, %vec.phi119 ; 2 uses
  %index.next122 = add nuw i32 %index118, 4       ; 2 uses
  %i.df = icmp eq i32 %index.next122, %n.vec117
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dg = tail call i8 @llvm.vector.reduce.mul.v4i8(<4 x i8> %10) ; 2 uses
  store i8 %i.dg, ptr %i.ct, align 1, !tbaa !167, !alias.scope !209, !noalias !205
  %cmp.n123 = icmp eq i32 %i.cu, %n.vec117
  br i1 %cmp.n123, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.db, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 2 uses
  %.04285.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.cx, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ] ; 4 uses
  %i.dh = sub i32 %i.c, %.04285.ph
  %xtraiter = and i32 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.di = phi i8 [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04285.prol = phi i32 [ %i.dk, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.dj = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.prol = mul nuw nsw i8 %i.dj, %i.di  ; 3 uses
  store i8 %narrow.i73.prol, ptr %i.ct, align 1, !tbaa !167
  %i.dk = add nsw i32 %.04285.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !212

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04285.unr = phi i32 [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dk, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dl = sub i32 %.04285.ph, %i.c
  %i.dm = icmp ugt i32 %i.dl, -4
  br i1 %i.dm, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge88:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dn = phi i8 [ %narrow.i73.3, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04285 = phi i32 [ %i.ds, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04285.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.do = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73 = mul nuw nsw i8 %i.do, %i.dn       ; 2 uses
  store i8 %narrow.i73, ptr %i.ct, align 1, !tbaa !167
  %i.dp = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.1 = mul nuw nsw i8 %i.dp, %narrow.i73 ; 2 uses
  store i8 %narrow.i73.1, ptr %i.ct, align 1, !tbaa !167
  %i.dq = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.2 = mul nuw nsw i8 %i.dq, %narrow.i73.1 ; 2 uses
  store i8 %narrow.i73.2, ptr %i.ct, align 1, !tbaa !167
  %i.dr = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.3 = mul nuw nsw i8 %i.dr, %narrow.i73.2 ; 2 uses
  store i8 %narrow.i73.3, ptr %i.ct, align 1, !tbaa !167
  %i.ds = add nsw i32 %.04285, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ds, %i.c
  br i1 %exitcond.not.3, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !213

.split90.us:                                      ; preds = %._crit_edge.us, %.lr.ph87.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split90.us
  unreachable

bb.e:                                             ; preds = %.split90.us
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !28
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !28
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split92.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph87.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.j ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eg, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !151
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %i.a, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !136
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !153
  store ptr %i.c, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !136    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !126    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214
  %i.g = load ptr, ptr %0, align 8, !tbaa !216, !nonnull !157, !align !158
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217, !nonnull !157, !align !158
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !159  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218, !nonnull !157, !align !158
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !219, !nonnull !157, !align !163
  %i.t = load i32, ptr %i.s, align 4, !tbaa !88   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !157, !align !163 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph86.split.us, label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !87
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us
end_hunk_0
begin_hunk_1_@_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E0_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !28
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.j ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E1_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !151
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %i.a, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !136
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !153
  store ptr %i.c, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !136    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E1_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E1_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !126    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !630
  %i.g = load ptr, ptr %0, align 8, !tbaa !632, !nonnull !157, !align !158
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !633, !nonnull !157, !align !158
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !159  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !634, !nonnull !157, !align !158
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !635, !nonnull !157, !align !163
  %i.t = load i32, ptr %i.s, align 4, !tbaa !88   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !157, !align !163 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !87
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph87.split.us
  %.04285.us = phi i32 [ %i.a, %.lr.ph87.split.us ], [ %i.bx, %bb.c ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK2cv8MatShapeixEm.exit72.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04381.us = phi i64 [ 0, %.lr.ph.us ], [ %spec.select.us, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04480.us = phi i32 [ %.04285.us, %.lr.ph.us ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit72.us ] ; 2 uses
  %.04579.us = phi i64 [ 0, %.lr.ph.us ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %.04678.us = phi i64 [ 0, %.lr.ph.us ], [ %i.at, %_ZNK2cv8MatShapeixEm.exit72.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.af = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %_ZNK2cv8MatShapeixEm.exit72.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit72.us:                   ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !88 ; 2 uses
  %i.ai = sdiv i32 %.04480.us, %i.ah              ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %.04480.us to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.aj, %i.al
  %i.an = sub nsw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !636, !nonnull !157, !align !158
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !120 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !62
  %i.as = mul i64 %i.an, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %.04678.us               ; 2 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !637, !nonnull !157, !align !158
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.ay = mul i64 %i.ax, %i.an
  %i.az = add i64 %i.ay, %.04579.us               ; 3 uses
  %i.ba = load i32, ptr %i.aa, align 8, !tbaa !43 ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp eq i64 %indvars.iv.next, %i.bb
  %spec.select.us = select i1 %i.bc, i64 %i.as, i64 %.04381.us ; 2 uses
  %i.bd = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bd, label %bb.b, label %._crit_edge.us, !llvm.loop !638

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !62
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bz
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !88 ; 3 uses
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = srem i32 %i.bk, %i.bj                   ; 2 uses
  %i.bm = or i32 %i.bl, %i.bj
  %or.cond.us = icmp sgt i32 %i.bm, -1
  br i1 %or.cond.us, label %bb.c, label %.split92.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %i.bn = sub i64 %i.at, %spec.select.us
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bz
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !62
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.br  ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !167, !range !169, !noundef !157
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.us = mul nuw nsw i8 %i.bw, %i.bv
  store i8 %narrow.i73.us, ptr %i.bu, align 1, !tbaa !167
  %i.bx = add nsw i32 %.04285.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.bx, %i.c
  br i1 %exitcond96.not, label %._crit_edge88, label %.lr.ph.us, !llvm.loop !639

._crit_edge.us:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit72.us
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !640, !nonnull !157, !align !163 ; 2 uses
  %i.bz = sext i32 %i.ba to i64                   ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !87
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 1)
  %i.cb = icmp ult i32 %i.ba, %narrow.i.us
  br i1 %i.cb, label %_ZNK2cv8MatShapeixEm.exit60.us, label %.split90.us

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !640, !nonnull !157, !align !163 ; 2 uses
  %i.cd = load i32, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !87
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = icmp ult i32 %i.cd, %narrow.i
  br i1 %i.cg, label %.lr.ph87.split.split, label %.split90.us

.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !62
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !88 ; 3 uses
  %i.cm = add nsw i32 %i.cl, %i.ck
  %i.cn = srem i32 %i.cm, %i.cl                   ; 2 uses
  %i.co = or i32 %i.cn, %i.cl
  %or.cond = icmp sgt i32 %i.co, -1
  br i1 %or.cond, label %iter.check, label %.split92.us

iter.check:                                       ; preds = %.lr.ph87.split.split
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = load ptr, ptr %i.y, align 8, !tbaa !636, !nonnull !157, !align !158
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !120
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ce
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !62
  %i.cu = mul i64 %i.ct, %i.cp                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cu   ; 9 uses
  %.pre = load i8, ptr %i.cv, align 1, !tbaa !167, !range !169 ; 4 uses
  %i.cw = sub i32 %i.c, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i32 %i.cw, 4
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cx = getelementptr i8, ptr %i.q, i64 %i.cu
  %scevgep = getelementptr i8, ptr %i.cx, i64 1
  %scevgep114 = getelementptr i8, ptr %i.m, i64 1
  %bound0 = icmp ult ptr %i.cv, %scevgep114
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %i.cw, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = and i32 %i.cw, 28
  %n.vec = and i32 %i.cw, -32                     ; 4 uses
  %i.cz = add i32 %i.a, %n.vec
  %i.da = insertelement <16 x i8> <i8 poison, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, i8 %.pre, i64 0
  %i.db = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !alias.scope !641, !noundef !157
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <16 x i8> [ %i.da, %vector.ph ], [ %8, %vector.body ]
  %vec.phi116 = phi <16 x i8> [ splat (i8 1), %vector.ph ], [ %9, %vector.body ]
  %8 = mul nuw <16 x i8> %broadcast.splat, %vec.phi ; 2 uses
  %9 = mul nuw <16 x i8> %broadcast.splat, %vec.phi116 ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.dc = icmp eq i32 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <16 x i8> %9, %8
  %i.dd = tail call i8 @llvm.vector.reduce.mul.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.dd, ptr %i.cv, align 1, !tbaa !167, !alias.scope !645, !noalias !641
  %cmp.n = icmp eq i32 %i.cw, %n.vec
  br i1 %cmp.n, label %._crit_edge88, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cy, 0
  br i1 %min.epilog.iters.check, label %_ZNK2cv8MatShapeixEm.exit60.preheader, label %vec.epilog.ph, !prof !189

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.dd, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec117 = and i32 %i.cw, -4                   ; 3 uses
  %i.de = add i32 %i.a, %n.vec117
  %i.df = insertelement <4 x i8> <i8 poison, i8 1, i8 1, i8 1>, i8 %bc.merge.rdx, i64 0
  %i.dg = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !alias.scope !641, !noundef !157
  %broadcast.splatinsert120 = insertelement <4 x i8> poison, i8 %i.dg, i64 0
  %broadcast.splat121 = shufflevector <4 x i8> %broadcast.splatinsert120, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ]
  %vec.phi119 = phi <4 x i8> [ %i.df, %vec.epilog.ph ], [ %10, %vec.epilog.vector.body ]
  %10 = mul nuw <4 x i8> %broadcast.splat121, %vec.phi119 ; 2 uses
  %index.next122 = add nuw i32 %index118, 4       ; 2 uses
  %i.dh = icmp eq i32 %index.next122, %n.vec117
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !647

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.di = tail call i8 @llvm.vector.reduce.mul.v4i8(<4 x i8> %10) ; 2 uses
  store i8 %i.di, ptr %i.cv, align 1, !tbaa !167, !alias.scope !645, !noalias !641
  %cmp.n123 = icmp eq i32 %i.cw, %n.vec117
  br i1 %cmp.n123, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60.preheader

_ZNK2cv8MatShapeixEm.exit60.preheader:            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.dd, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ] ; 2 uses
  %.04285.ph = phi i32 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.cz, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ] ; 4 uses
  %i.dj = sub i32 %i.c, %.04285.ph
  %xtraiter = and i32 %i.dj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol

_ZNK2cv8MatShapeixEm.exit60.prol:                 ; preds = %_ZNK2cv8MatShapeixEm.exit60.preheader, %_ZNK2cv8MatShapeixEm.exit60.prol
  %i.dk = phi i8 [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %.04285.prol = phi i32 [ %i.dm, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK2cv8MatShapeixEm.exit60.prol ], [ 0, %_ZNK2cv8MatShapeixEm.exit60.preheader ]
  %i.dl = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.prol = mul nuw nsw i8 %i.dl, %i.dk  ; 3 uses
  store i8 %narrow.i73.prol, ptr %i.cv, align 1, !tbaa !167
  %i.dm = add nsw i32 %.04285.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, label %_ZNK2cv8MatShapeixEm.exit60.prol, !llvm.loop !648

_ZNK2cv8MatShapeixEm.exit60.prol.loopexit:        ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol, %_ZNK2cv8MatShapeixEm.exit60.preheader
  %.unr = phi i8 [ %.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %narrow.i73.prol, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %.04285.unr = phi i32 [ %.04285.ph, %_ZNK2cv8MatShapeixEm.exit60.preheader ], [ %i.dm, %_ZNK2cv8MatShapeixEm.exit60.prol ]
  %i.dn = sub i32 %.04285.ph, %i.c
  %i.do = icmp ugt i32 %i.dn, -4
  br i1 %i.do, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60

._crit_edge88:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60, %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit, %_ZNK2cv8MatShapeixEm.exit60
  %i.dp = phi i8 [ %narrow.i73.3, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %.04285 = phi i32 [ %i.du, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.04285.unr, %_ZNK2cv8MatShapeixEm.exit60.prol.loopexit ]
  %i.dq = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73 = mul nuw nsw i8 %i.dq, %i.dp       ; 2 uses
  store i8 %narrow.i73, ptr %i.cv, align 1, !tbaa !167
  %i.dr = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.1 = mul nuw nsw i8 %i.dr, %narrow.i73 ; 2 uses
  store i8 %narrow.i73.1, ptr %i.cv, align 1, !tbaa !167
  %i.ds = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.2 = mul nuw nsw i8 %i.ds, %narrow.i73.1 ; 2 uses
  store i8 %narrow.i73.2, ptr %i.cv, align 1, !tbaa !167
  %i.dt = load i8, ptr %i.m, align 1, !tbaa !167, !range !169, !noundef !157
  %narrow.i73.3 = mul nuw nsw i8 %i.dt, %narrow.i73.2 ; 2 uses
  store i8 %narrow.i73.3, ptr %i.cv, align 1, !tbaa !167
  %i.du = add nsw i32 %.04285, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.du, %i.c
  br i1 %exitcond.not.3, label %._crit_edge88, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !649

.split90.us:                                      ; preds = %._crit_edge.us, %.lr.ph87.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.split90.us
  unreachable

bb.e:                                             ; preds = %.split90.us
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !28
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

.split.us:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 103) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.split.us
  unreachable

bb.g:                                             ; preds = %.split.us
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.g
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !28
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.split92.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit60.us, %.lr.ph87.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split92.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn16ScatterLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_, ptr noundef nonnull @.str.9, i32 noundef 149) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split92.us
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !28
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.j ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ei, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  tail call void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ScatterLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E2_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !151
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %i.a, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !136
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !153
  store ptr %i.c, ptr %0, align 8, !tbaa !136
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !136    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #20
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E2_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn16ScatterLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E2_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !126    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !650
  %i.g = load ptr, ptr %0, align 8, !tbaa !652, !nonnull !157, !align !158
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !653, !nonnull !157, !align !158
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !159  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !654, !nonnull !157, !align !158
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !655, !nonnull !157, !align !163
  %i.t = load i32, ptr %i.s, align 4, !tbaa !88   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !157, !align !163 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.u, label %.lr.ph86.split.us, label %.lr.ph86.split

.lr.ph86.split.us:                                ; preds = %.lr.ph86
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !87
  %narrow.i61.us = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = zext nneg i32 %narrow.i61.us to i64
  br label %.lr.ph.us
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ah

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ], [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.r, align 8, !tbaa !83
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.k:                                             ; preds = %bb.d
  %i.ak = icmp eq i64 %1, 0
  br i1 %i.ak, label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.idx.i.i = mul nuw nsw i64 %1, 52
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %.lr.ph.i.i.i.i13, %bb.l
  %.06.i.i.i.i14 = phi ptr [ %i.an, %.lr.ph.i.i.i.i13 ], [ %i.c, %bb.l ] ; 2 uses
  %i.am = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.06.i.i.i.i14, ptr noundef nonnull align 4 dereferenceable(52) %2) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i14, i64 52 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i.i.i15, label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i13, !llvm.loop !1023

_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i13
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !83
  br label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit

_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit, %bb.k
  %i.ao = phi ptr [ %i.s, %bb.k ], [ %.pre, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit ]
  %.0.i.i = phi ptr [ %i.c, %bb.k ], [ %i.al, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.r, align 8, !tbaa !83
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit, %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 177372539170284150
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread: ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit: ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.c = mul nuw nsw i64 %1, 52
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #19 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw [52 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1022
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit ] ; 2 uses
  %.01114.i.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit ]
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.015.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = add nsw i64 %.01114.i.i.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1024

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #21 ; 0 uses
  invoke void @__cxa_rethrow() #24
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EEC2EmRKS2_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.p, align 8, !tbaa !83
  ret void

.body:                                            ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !1022
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #20
  br label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.m
}

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v16i8(<16 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.mul.v16i8(<16 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.mul.v4i8(<4 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v16i8(<16 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umin.v16i8(<16 x i8>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umin.v4i8(<4 x i8>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_ZSt11make_sharedIN2cv3dnn16ScatterLayerImplEJRKNS1_14dnn5_v2026060511LayerParamsEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_sharedIN2cv3dnn16ScatterLayerImplEJRKNS1_14dnn5_v2026060511LayerParamsEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!11 = distinct !{!11, !12, !"_ZN2cvL7makePtrINS_3dnn16ScatterLayerImplEJNS1_14dnn5_v2026060511LayerParamsEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!12 = distinct !{!12, !"_ZN2cvL7makePtrINS_3dnn16ScatterLayerImplEJNS1_14dnn5_v2026060511LayerParamsEEEENS_3PtrIT_EEDpRKT0_"}
!13 = !{!14, !5, i64 8}
!14 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!15 = !{!14, !5, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !7, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060512ScatterLayerELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !22, i64 8}
!20 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060512ScatterLayerE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!24 = !{!22, !23, i64 0}
!25 = !{!26, !27, i64 8}
!26 = !{!"_ZTSSt9type_info", !27, i64 8}
!27 = !{!"p1 omnipotent char", !21, i64 0}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !27, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!31 = !{!32, !33, i64 8}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !33, i64 8, !6, i64 16}
!33 = !{!"long", !6, i64 0}
!34 = !{!35, !38, i64 8}
!35 = !{!"_ZTSSt15_Rb_tree_header", !36, i64 0, !33, i64 32}
!36 = !{!"_ZTSSt18_Rb_tree_node_base", !37, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!37 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!38 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!39 = !{!32, !27, i64 0}
!40 = !{!38, !38, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !5, i64 160}
!44 = !{!"_ZTSN2cv3dnn16ScatterLayerImplE", !45, i64 0, !58, i64 156, !5, i64 160}
!45 = !{!"_ZTSN2cv3dnn14dnn5_v2026060512ScatterLayerE", !46, i64 0}
!46 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !47, i64 0, !48, i64 8, !53, i64 32, !53, i64 56, !21, i64 80, !32, i64 88, !32, i64 120, !5, i64 152}
!47 = !{!"_ZTSN2cv9AlgorithmE"}
!48 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 _ZTSN2cv3MatE", !21, i64 0}
!53 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !21, i64 0}
!58 = !{!"_ZTSN2cv3dnn16ScatterLayerImpl9REDUCTIONE", !6, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN2cvL11toLowerCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!61 = distinct !{!61, !"_ZN2cvL11toLowerCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!62 = !{!33, !33, i64 0}
!63 = distinct !{!63, !42}
!64 = !{!44, !58, i64 156}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!67 = distinct !{!67, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !70, i64 0, !5, i64 8}
!70 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !21, i64 0}
!71 = !{!51, !52, i64 0}
!72 = !{!73, !5, i64 0}
!73 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !74, i64 56, !75, i64 64, !76, i64 72, !78, i64 128}
!74 = !{!"p1 _ZTSN2cv12MatAllocatorE", !21, i64 0}
!75 = !{!"p1 _ZTSN2cv8UMatDataE", !21, i64 0}
!76 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !77, i64 4, !5, i64 8, !6, i64 12}
!77 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!78 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!79 = !{!51, !52, i64 8}
!80 = distinct !{!80, !42}
!81 = !{!51, !52, i64 16}
!82 = !{!69, !5, i64 8}
!83 = !{!84, !85, i64 8}
!84 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!85 = !{!"p1 _ZTSN2cv8MatShapeE", !21, i64 0}
!86 = !{!84, !85, i64 0}
!87 = !{!76, !5, i64 0}
!88 = !{!5, !5, i64 0}
!89 = distinct !{!89, !42}
!90 = !{!91, !92, i64 8}
!91 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!92 = !{!"p1 int", !21, i64 0}
!93 = !{!91, !92, i64 0}
!94 = !{!91, !92, i64 16}
!95 = distinct !{!95, !42, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = distinct !{!98, !42, !97, !96}
!99 = !{!100, !101, i64 0}
!100 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !101, i64 0, !6, i64 8}
!101 = !{!"_ZTSN2cv5ParamE", !6, i64 0}
!102 = !{!103, !104, i64 0}
!103 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !104, i64 0, !33, i64 8, !6, i64 16}
!104 = !{!"p1 long", !21, i64 0}
!105 = !{!106, !107, i64 0}
!106 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !107, i64 0, !33, i64 8, !6, i64 16}
!107 = !{!"p1 double", !21, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"double", !6, i64 0}
!110 = !{!111, !112, i64 0}
!111 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !112, i64 0, !33, i64 8, !6, i64 16}
!112 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!113 = distinct !{null}
!114 = !{!111, !33, i64 8}
!115 = !{!116, !5, i64 0}
!116 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !21, i64 8, !117, i64 16}
!117 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!118 = !{!116, !21, i64 8}
!119 = !{!73, !5, i64 4}
!120 = !{!121, !104, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!122 = !{!121, !104, i64 16}
!123 = !{!121, !104, i64 8}
!124 = distinct !{!124, !42, !96, !97}
!125 = distinct !{!125, !42, !97, !96}
!126 = !{!127, !5, i64 0}
!127 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!128 = !{!127, !5, i64 4}
!129 = !{!52, !52, i64 0}
!130 = !{!92, !92, i64 0}
!131 = !{!85, !85, i64 0}
!132 = !{!133, !133, i64 0}
!133 = !{!"p1 _ZTSSt6vectorImSaImEE", !21, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"p1 _ZTSN2cv3dnn16ScatterLayerImplE", !21, i64 0}
!136 = !{!21, !21, i64 0}
!137 = !{!138, !21, i64 24}
!138 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !139, i64 0, !21, i64 24}
!139 = !{!"_ZTSSt14_Function_base", !6, i64 0, !21, i64 16}
!140 = !{!139, !21, i64 16}
!141 = distinct !{!141, !42, !96, !97}
!142 = distinct !{!142, !42, !97, !96}
!143 = distinct !{!143, !42, !96, !97}
!144 = distinct !{!144, !42, !97, !96}
!145 = distinct !{!145, !42, !96, !97}
!146 = distinct !{!146, !42, !97, !96}
!147 = distinct !{!147, !42, !96, !97}
!148 = distinct !{!148, !42, !97, !96}
!149 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!150 = distinct !{null}
end_hunk_2
