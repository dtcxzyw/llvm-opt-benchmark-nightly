Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/scatterND_layer?download=true
inline.NumInlined: 3770
inline.NumDeleted: 1133
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev:bb.a
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !84 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21, !inline_history !84
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !164
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18ScatterNDLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @_ZZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18ScatterNDLayerImpl12forward_implIbiZNS6_17reductionDispatchIbiJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !86
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !87
  store ptr %i.c, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #19
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS3_17reductionDispatchIbiJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn18ScatterNDLayerImpl12forward_implIbiZNS1_17reductionDispatchIbiJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !71     ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !176, !nonnull !88, !align !89
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 4 uses
  %i.d = mul nsw i32 %i.c, %i.a
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177, !nonnull !88, !align !90
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %.fr77 = freeze i64 %i.i                        ; 26 uses
  %i.j = mul i64 %.fr77, %i.f                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !72   ; 4 uses
  %i.m = icmp slt i32 %i.a, %i.l
  br i1 %i.m, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !178, !nonnull !88, !align !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !179, !nonnull !88, !align !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91   ; 3 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180, !nonnull !88, !align !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91   ; 9 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ab = icmp sgt i32 %i.c, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !88, !align !89 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not = icmp eq i64 %.fr77, 0                   ; 2 uses
  %i.ag = sext i32 %i.c to i64                    ; 2 uses
  br i1 %i.ab, label %.lr.ph73.split.us, label %.lr.ph73.split

.lr.ph73.split.us:                                ; preds = %.lr.ph73
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !55
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %wide.trip.count98 = zext nneg i32 %narrow.i.us to i64 ; 2 uses
  %wide.trip.count100 = zext nneg i32 %i.c to i64 ; 2 uses
  br i1 %.not, label %.lr.ph.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph73.split.us
  %i.ai = add i64 %i.j, %i.v
  %min.iters.check131 = icmp ult i64 %.fr77, 4
  %min.iters.check133 = icmp ult i64 %.fr77, 32
  %i.aj = and i64 %.fr77, 28
  %n.vec135 = and i64 %.fr77, -32                 ; 4 uses
  %cmp.n142 = icmp eq i64 %.fr77, %n.vec135
  %min.epilog.iters.check147 = icmp eq i64 %i.aj, 0
  %n.vec149 = and i64 %.fr77, -4                  ; 3 uses
  %cmp.n155 = icmp eq i64 %.fr77, %n.vec149
  %xtraiter171 = and i64 %.fr77, 3                ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge68.us.us
  %indvar128 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvar.next129, %._crit_edge68.us.us ] ; 2 uses
  %.04171.us.us = phi i32 [ %i.a, %.lr.ph.us.us.preheader ], [ %i.ck, %._crit_edge68.us.us ]
  %.04270.us.us = phi i64 [ %i.j, %.lr.ph.us.us.preheader ], [ %i.cj, %._crit_edge68.us.us ] ; 2 uses
  %.04369.us.us = phi i64 [ %i.e, %.lr.ph.us.us.preheader ], [ %i.ci, %._crit_edge68.us.us ] ; 2 uses
  %i.ak = mul i64 %.fr77, %indvar128
  %i.al = add i64 %i.ai, %i.ak
  %i.am = sub i64 %i.aa, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.04369.us.us
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.us.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.c ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %.04463.us.us = phi i64 [ %i.bb, %bb.c ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv84, %wide.trip.count98
  br i1 %exitcond87.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit60.us.us

_ZNK2cv8MatShapeixEm.exit60.us.us:                ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv84
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv84
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !56 ; 3 uses
  %i.as = add nsw i32 %i.ar, %i.ap
  %i.at = srem i32 %i.as, %i.ar                   ; 3 uses
  %i.au = or i32 %i.at, %i.ar
  %or.cond.us.us = icmp sgt i32 %i.au, -1
  br i1 %or.cond.us.us, label %bb.c, label %.split76.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us.us
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !181, !nonnull !88, !align !90
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !66
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv84
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.ba = mul i64 %i.az, %i.av
  %i.bb = add i64 %i.ba, %.04463.us.us            ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count100
  br i1 %exitcond89.not, label %iter.check144, label %bb.b, !llvm.loop !165

iter.check144:                                    ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04270.us.us ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bb ; 7 uses
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph145.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %iter.check144
  %i.be = add i64 %i.am, %.04463.us.us
  %i.bf = zext nneg i32 %i.at to i64
  %i.bg = mul i64 %i.az, %i.bf
  %i.bh = add i64 %i.be, %i.bg
  %i.bi = add i64 %i.bh, -1
  %diff.check130 = icmp ult i64 %i.bi, 31
  br i1 %diff.check130, label %vec.epilog.scalar.ph145.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %vector.memcheck127
  br i1 %min.iters.check133, label %vec.epilog.ph148, label %vector.body136

vector.body136:                                   ; preds = %vector.main.loop.iter.check132, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %vector.main.loop.iter.check132 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %index137 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index137 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load138 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !93
  %wide.load139 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !93
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <16 x i8> %wide.load138, ptr %i.bj, align 1, !tbaa !93
  store <16 x i8> %wide.load139, ptr %i.bm, align 1, !tbaa !93
  %index.next140 = add nuw i64 %index137, 32      ; 2 uses
  %i.bn = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bn, label %middle.block141, label %vector.body136, !llvm.loop !166

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge68.us.us, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block141
  br i1 %min.epilog.iters.check147, label %vec.epilog.scalar.ph145.preheader, label %vec.epilog.ph148, !prof !94

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check146
  %vec.epilog.resume.val143 = phi i64 [ %n.vec135, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check132 ]
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph148 ], [ %index.next153, %vec.epilog.vector.body150 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %index151
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index151
  %wide.load152 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !93
  store <4 x i8> %wide.load152, ptr %i.bo, align 1, !tbaa !93
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.bq, label %vec.epilog.middle.block154, label %vec.epilog.vector.body150, !llvm.loop !167

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n155, label %._crit_edge68.us.us, label %vec.epilog.scalar.ph145.preheader

vec.epilog.scalar.ph145.preheader:                ; preds = %iter.check144, %vector.memcheck127, %vec.epilog.iter.check146, %vec.epilog.middle.block154
  %indvars.iv90.ph = phi i64 [ 0, %iter.check144 ], [ 0, %vector.memcheck127 ], [ %n.vec135, %vec.epilog.iter.check146 ], [ %n.vec149, %vec.epilog.middle.block154 ] ; 3 uses
  br i1 %lcmp.mod172.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol

vec.epilog.scalar.ph145.prol:                     ; preds = %vec.epilog.scalar.ph145.preheader, %vec.epilog.scalar.ph145.prol
  %indvars.iv90.prol = phi i64 [ %indvars.iv.next91.prol, %vec.epilog.scalar.ph145.prol ], [ %indvars.iv90.ph, %vec.epilog.scalar.ph145.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %vec.epilog.scalar.ph145.prol ], [ 0, %vec.epilog.scalar.ph145.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv90.prol
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv90.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !93
  %indvars.iv.next91.prol = add nuw nsw i64 %indvars.iv90.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol, !llvm.loop !168

vec.epilog.scalar.ph145.prol.loopexit:            ; preds = %vec.epilog.scalar.ph145.prol, %vec.epilog.scalar.ph145.preheader
  %indvars.iv90.unr = phi i64 [ %indvars.iv90.ph, %vec.epilog.scalar.ph145.preheader ], [ %indvars.iv.next91.prol, %vec.epilog.scalar.ph145.prol ]
  %i.bu = sub i64 %indvars.iv90.ph, %.fr77
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge68.us.us, label %vec.epilog.scalar.ph145

vec.epilog.scalar.ph145:                          ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.3, %vec.epilog.scalar.ph145 ], [ %indvars.iv90.unr, %vec.epilog.scalar.ph145.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv90
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv90
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !93
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next91
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next91
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !93
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next91.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next91.1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !93
  %indvars.iv.next91.2 = add nuw nsw i64 %indvars.iv90, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next91.2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next91.2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !93
  %indvars.iv.next91.3 = add nuw nsw i64 %indvars.iv90, 4 ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %indvars.iv.next91.3, %.fr77
  br i1 %exitcond93.not.3, label %._crit_edge68.us.us, label %vec.epilog.scalar.ph145, !llvm.loop !169

._crit_edge68.us.us:                              ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145, %vec.epilog.middle.block154, %middle.block141
  %i.ci = add i64 %.04369.us.us, %i.ag
  %i.cj = add i64 %.04270.us.us, %.fr77
  %i.ck = add nsw i32 %.04171.us.us, 1            ; 2 uses
  %exitcond94.not = icmp eq i32 %i.ck, %i.l
  %indvar.next129 = add i64 %indvar128, 1
  br i1 %exitcond94.not, label %._crit_edge74, label %.lr.ph.us.us, !llvm.loop !170

.lr.ph.us:                                        ; preds = %.lr.ph73.split.us, %._crit_edge.us
  %.04171.us = phi i32 [ %i.cu, %._crit_edge.us ], [ %i.a, %.lr.ph73.split.us ]
  %.04369.us = phi i64 [ %i.ct, %._crit_edge.us ], [ %i.e, %.lr.ph73.split.us ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.04369.us
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.e
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next96, %bb.e ] ; 4 uses
  %exitcond99.not = icmp eq i64 %indvars.iv95, %wide.trip.count98
  br i1 %exitcond99.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit60.us

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv95
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !56
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv95
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !56 ; 3 uses
  %i.cq = add nsw i32 %i.cp, %i.cn
  %i.cr = srem i32 %i.cq, %i.cp
  %i.cs = or i32 %i.cr, %i.cp
  %or.cond.us = icmp sgt i32 %i.cs, -1
  br i1 %or.cond.us, label %bb.e, label %.split76.us

bb.e:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge.us, label %bb.d, !llvm.loop !165

._crit_edge.us:                                   ; preds = %bb.e
  %i.ct = add i64 %.04369.us, %i.ag
  %i.cu = add nsw i32 %.04171.us, 1               ; 2 uses
  %exitcond102.not = icmp eq i32 %i.cu, %i.l
  br i1 %exitcond102.not, label %._crit_edge74, label %.lr.ph.us, !llvm.loop !170

.lr.ph73.split:                                   ; preds = %.lr.ph73
  br i1 %.not, label %._crit_edge74, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.lr.ph73.split
  %i.cv = add i64 %i.j, %i.v
  %min.iters.check = icmp ult i64 %.fr77, 4
  %invariant.op = sub i64 %i.cv, %i.aa
  %min.iters.check120 = icmp ult i64 %.fr77, 32
  %i.cw = and i64 %.fr77, 28
  %n.vec = and i64 %.fr77, -32                    ; 4 uses
  %cmp.n = icmp eq i64 %.fr77, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cw, 0
  %n.vec122 = and i64 %.fr77, -4                  ; 3 uses
  %cmp.n126 = icmp eq i64 %.fr77, %n.vec122
  %xtraiter = and i64 %.fr77, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

._crit_edge74:                                    ; preds = %._crit_edge68, %._crit_edge68.us.us, %._crit_edge.us, %.lr.ph73.split, %bb.a
  ret void

iter.check:                                       ; preds = %.lr.ph67.preheader, %._crit_edge68
  %indvar = phi i64 [ 0, %.lr.ph67.preheader ], [ %indvar.next, %._crit_edge68 ] ; 2 uses
  %.04171 = phi i32 [ %i.a, %.lr.ph67.preheader ], [ %i.ea, %._crit_edge68 ]
  %.04270 = phi i64 [ %i.j, %.lr.ph67.preheader ], [ %i.dz, %._crit_edge68 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04270 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cy = mul i64 %.fr77, %indvar
  %.reass = add i64 %i.cy, %invariant.op
  %diff.check = icmp ugt i64 %.reass, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <16 x i8>, ptr %i.da, align 1, !tbaa !93
  %wide.load121 = load <16 x i8>, ptr %i.db, align 1, !tbaa !93
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <16 x i8> %wide.load, ptr %i.cz, align 1, !tbaa !93
  store <16 x i8> %wide.load121, ptr %i.dc, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.z, i64 %index123
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index123
  %wide.load124 = load <4 x i8>, ptr %i.df, align 1, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E3_EEvRKT1_S6_S6_S6_S7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body63
  %.pre.pre = phi ptr [ %.pre.pre.pre, %.body63 ], [ %i.o, %bb.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %.body63 ], [ %i.bb, %bb.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.h
  %.pre = phi ptr [ %.pre.pre, %.body ], [ %i.o, %bb.h ]
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %.body ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.g
  %i.cr = phi ptr [ %.pre, %bb.z ], [ %i.o, %bb.g ] ; 3 uses
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %bb.z ], [ %i.az, %bb.g ]
  %.not.i.i.i70 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorImSaImEED2Ev.exit71, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !67
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit71

_ZNSt6vectorImSaImEED2Ev.exit71:                  ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  resume { ptr, i32 } %.pn44.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18ScatterNDLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @_ZZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18ScatterNDLayerImpl12forward_implIblZNS6_17reductionDispatchIblJRKNS0_3MatESB_SB_RS9_EEEvDpOT1_EUlRKbSH_E_EEvRKT1_SB_SB_SB_SC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !86
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !79
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !87
  store ptr %i.c, ptr %0, align 8, !tbaa !79
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #19
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS3_17reductionDispatchIblJRKNS1_3MatES8_S8_RS6_EEEvDpOT1_EUlRKbSE_E_EEvRKT1_S8_S8_S8_S9_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn18ScatterNDLayerImpl12forward_implIblZNS1_17reductionDispatchIblJRKNS_3MatES6_S6_RS4_EEEvDpOT1_EUlRKbSC_E_EEvRKT1_S6_S6_S6_S7_ENKUlRKNS_5RangeEE_clESJ_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !71     ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !741, !nonnull !88, !align !89
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 4 uses
  %i.d = mul nsw i32 %i.c, %i.a
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !742, !nonnull !88, !align !90
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %.fr77 = freeze i64 %i.i                        ; 26 uses
  %i.j = mul i64 %.fr77, %i.f                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !72   ; 4 uses
  %i.m = icmp slt i32 %i.a, %i.l
  br i1 %i.m, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !743, !nonnull !88, !align !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !744, !nonnull !88, !align !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91   ; 3 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !745, !nonnull !88, !align !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91   ; 9 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ab = icmp sgt i32 %i.c, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !88, !align !89 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not = icmp eq i64 %.fr77, 0                   ; 2 uses
  %i.ag = sext i32 %i.c to i64                    ; 2 uses
  br i1 %i.ab, label %.lr.ph73.split.us, label %.lr.ph73.split

.lr.ph73.split.us:                                ; preds = %.lr.ph73
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !55
  %narrow.i.us = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %wide.trip.count98 = zext nneg i32 %narrow.i.us to i64 ; 2 uses
  %wide.trip.count100 = zext nneg i32 %i.c to i64 ; 2 uses
  br i1 %.not, label %.lr.ph.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph73.split.us
  %i.ai = add i64 %i.j, %i.v
  %min.iters.check131 = icmp ult i64 %.fr77, 4
  %min.iters.check133 = icmp ult i64 %.fr77, 32
  %i.aj = and i64 %.fr77, 28
  %n.vec135 = and i64 %.fr77, -32                 ; 4 uses
  %cmp.n142 = icmp eq i64 %.fr77, %n.vec135
  %min.epilog.iters.check147 = icmp eq i64 %i.aj, 0
  %n.vec149 = and i64 %.fr77, -4                  ; 3 uses
  %cmp.n155 = icmp eq i64 %.fr77, %n.vec149
  %xtraiter171 = and i64 %.fr77, 3                ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge68.us.us
  %indvar128 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvar.next129, %._crit_edge68.us.us ] ; 2 uses
  %.04171.us.us = phi i32 [ %i.a, %.lr.ph.us.us.preheader ], [ %i.cl, %._crit_edge68.us.us ]
  %.04270.us.us = phi i64 [ %i.j, %.lr.ph.us.us.preheader ], [ %i.ck, %._crit_edge68.us.us ] ; 2 uses
  %.04369.us.us = phi i64 [ %i.e, %.lr.ph.us.us.preheader ], [ %i.cj, %._crit_edge68.us.us ] ; 2 uses
  %i.ak = mul i64 %.fr77, %indvar128
  %i.al = add i64 %i.ai, %i.ak
  %i.am = sub i64 %i.aa, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.04369.us.us
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.us.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.c ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %.04463.us.us = phi i64 [ %i.bc, %bb.c ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv84, %wide.trip.count98
  br i1 %exitcond87.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit60.us.us

_ZNK2cv8MatShapeixEm.exit60.us.us:                ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv84
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv84
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56 ; 3 uses
  %i.at = add nsw i32 %i.as, %i.aq
  %i.au = srem i32 %i.at, %i.as                   ; 3 uses
  %i.av = or i32 %i.au, %i.as
  %or.cond.us.us = icmp sgt i32 %i.av, -1
  br i1 %or.cond.us.us, label %bb.c, label %.split76.us

bb.c:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us.us
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !746, !nonnull !88, !align !90
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv84
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bb = mul i64 %i.ba, %i.aw
  %i.bc = add i64 %i.bb, %.04463.us.us            ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count100
  br i1 %exitcond89.not, label %iter.check144, label %bb.b, !llvm.loop !730

iter.check144:                                    ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04270.us.us ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bc ; 7 uses
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph145.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %iter.check144
  %i.bf = add i64 %i.am, %.04463.us.us
  %i.bg = zext nneg i32 %i.au to i64
  %i.bh = mul i64 %i.ba, %i.bg
  %i.bi = add i64 %i.bf, %i.bh
  %i.bj = add i64 %i.bi, -1
  %diff.check130 = icmp ult i64 %i.bj, 31
  br i1 %diff.check130, label %vec.epilog.scalar.ph145.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %vector.memcheck127
  br i1 %min.iters.check133, label %vec.epilog.ph148, label %vector.body136

vector.body136:                                   ; preds = %vector.main.loop.iter.check132, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %vector.main.loop.iter.check132 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %index137 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 %index137 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load138 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !93
  %wide.load139 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <16 x i8> %wide.load138, ptr %i.bk, align 1, !tbaa !93
  store <16 x i8> %wide.load139, ptr %i.bn, align 1, !tbaa !93
  %index.next140 = add nuw i64 %index137, 32      ; 2 uses
  %i.bo = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bo, label %middle.block141, label %vector.body136, !llvm.loop !731

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge68.us.us, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block141
  br i1 %min.epilog.iters.check147, label %vec.epilog.scalar.ph145.preheader, label %vec.epilog.ph148, !prof !94

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check146
  %vec.epilog.resume.val143 = phi i64 [ %n.vec135, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check132 ]
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph148 ], [ %index.next153, %vec.epilog.vector.body150 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 %index151
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 %index151
  %wide.load152 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !93
  store <4 x i8> %wide.load152, ptr %i.bp, align 1, !tbaa !93
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.br, label %vec.epilog.middle.block154, label %vec.epilog.vector.body150, !llvm.loop !732

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n155, label %._crit_edge68.us.us, label %vec.epilog.scalar.ph145.preheader

vec.epilog.scalar.ph145.preheader:                ; preds = %iter.check144, %vector.memcheck127, %vec.epilog.iter.check146, %vec.epilog.middle.block154
  %indvars.iv90.ph = phi i64 [ 0, %iter.check144 ], [ 0, %vector.memcheck127 ], [ %n.vec135, %vec.epilog.iter.check146 ], [ %n.vec149, %vec.epilog.middle.block154 ] ; 3 uses
  br i1 %lcmp.mod172.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol

vec.epilog.scalar.ph145.prol:                     ; preds = %vec.epilog.scalar.ph145.preheader, %vec.epilog.scalar.ph145.prol
  %indvars.iv90.prol = phi i64 [ %indvars.iv.next91.prol, %vec.epilog.scalar.ph145.prol ], [ %indvars.iv90.ph, %vec.epilog.scalar.ph145.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %vec.epilog.scalar.ph145.prol ], [ 0, %vec.epilog.scalar.ph145.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv90.prol
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv90.prol
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !93
  %indvars.iv.next91.prol = add nuw nsw i64 %indvars.iv90.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol, !llvm.loop !733

vec.epilog.scalar.ph145.prol.loopexit:            ; preds = %vec.epilog.scalar.ph145.prol, %vec.epilog.scalar.ph145.preheader
  %indvars.iv90.unr = phi i64 [ %indvars.iv90.ph, %vec.epilog.scalar.ph145.preheader ], [ %indvars.iv.next91.prol, %vec.epilog.scalar.ph145.prol ]
  %i.bv = sub i64 %indvars.iv90.ph, %.fr77
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge68.us.us, label %vec.epilog.scalar.ph145

vec.epilog.scalar.ph145:                          ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.3, %vec.epilog.scalar.ph145 ], [ %indvars.iv90.unr, %vec.epilog.scalar.ph145.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv90
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv90
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !93
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next91
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next91
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !93
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next91.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next91.1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !93
  %indvars.iv.next91.2 = add nuw nsw i64 %indvars.iv90, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next91.2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next91.2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !93, !range !95, !noundef !88
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !93
  %indvars.iv.next91.3 = add nuw nsw i64 %indvars.iv90, 4 ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %indvars.iv.next91.3, %.fr77
  br i1 %exitcond93.not.3, label %._crit_edge68.us.us, label %vec.epilog.scalar.ph145, !llvm.loop !734

._crit_edge68.us.us:                              ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145, %vec.epilog.middle.block154, %middle.block141
  %i.cj = add i64 %.04369.us.us, %i.ag
  %i.ck = add i64 %.04270.us.us, %.fr77
  %i.cl = add nsw i32 %.04171.us.us, 1            ; 2 uses
  %exitcond94.not = icmp eq i32 %i.cl, %i.l
  %indvar.next129 = add i64 %indvar128, 1
  br i1 %exitcond94.not, label %._crit_edge74, label %.lr.ph.us.us, !llvm.loop !735

.lr.ph.us:                                        ; preds = %.lr.ph73.split.us, %._crit_edge.us
  %.04171.us = phi i32 [ %i.cw, %._crit_edge.us ], [ %i.a, %.lr.ph73.split.us ]
  %.04369.us = phi i64 [ %i.cv, %._crit_edge.us ], [ %i.e, %.lr.ph73.split.us ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.04369.us
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.e
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next96, %bb.e ] ; 4 uses
  %exitcond99.not = icmp eq i64 %indvars.iv95, %wide.trip.count98
  br i1 %exitcond99.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit60.us

_ZNK2cv8MatShapeixEm.exit60.us:                   ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv95
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.cp = trunc i64 %i.co to i32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv95
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !56 ; 3 uses
  %i.cs = add nsw i32 %i.cr, %i.cp
  %i.ct = srem i32 %i.cs, %i.cr
  %i.cu = or i32 %i.ct, %i.cr
  %or.cond.us = icmp sgt i32 %i.cu, -1
  br i1 %or.cond.us, label %bb.e, label %.split76.us

bb.e:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60.us
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge.us, label %bb.d, !llvm.loop !730

._crit_edge.us:                                   ; preds = %bb.e
  %i.cv = add i64 %.04369.us, %i.ag
  %i.cw = add nsw i32 %.04171.us, 1               ; 2 uses
  %exitcond102.not = icmp eq i32 %i.cw, %i.l
  br i1 %exitcond102.not, label %._crit_edge74, label %.lr.ph.us, !llvm.loop !735

.lr.ph73.split:                                   ; preds = %.lr.ph73
  br i1 %.not, label %._crit_edge74, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.lr.ph73.split
  %i.cx = add i64 %i.j, %i.v
  %min.iters.check = icmp ult i64 %.fr77, 4
  %invariant.op = sub i64 %i.cx, %i.aa
  %min.iters.check120 = icmp ult i64 %.fr77, 32
  %i.cy = and i64 %.fr77, 28
  %n.vec = and i64 %.fr77, -32                    ; 4 uses
  %cmp.n = icmp eq i64 %.fr77, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  %n.vec122 = and i64 %.fr77, -4                  ; 3 uses
  %cmp.n126 = icmp eq i64 %.fr77, %n.vec122
  %xtraiter = and i64 %.fr77, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

._crit_edge74:                                    ; preds = %._crit_edge68, %._crit_edge68.us.us, %._crit_edge.us, %.lr.ph73.split, %bb.a
  ret void

iter.check:                                       ; preds = %.lr.ph67.preheader, %._crit_edge68
  %indvar = phi i64 [ 0, %.lr.ph67.preheader ], [ %indvar.next, %._crit_edge68 ] ; 2 uses
  %.04171 = phi i32 [ %i.a, %.lr.ph67.preheader ], [ %i.ec, %._crit_edge68 ]
  %.04270 = phi i64 [ %i.j, %.lr.ph67.preheader ], [ %i.eb, %._crit_edge68 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04270 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.da = mul i64 %.fr77, %indvar
  %.reass = add i64 %i.da, %invariant.op
  %diff.check = icmp ugt i64 %.reass, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <16 x i8>, ptr %i.dc, align 1, !tbaa !93
  %wide.load121 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !93
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <16 x i8> %wide.load, ptr %i.db, align 1, !tbaa !93
  store <16 x i8> %wide.load121, ptr %i.de, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !736

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.z, i64 %index123
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index123
end_hunk_1
