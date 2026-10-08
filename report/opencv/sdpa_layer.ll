Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sdpa_layer?download=true
inline.NumInlined: 461
inline.NumDeleted: 271
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIhSaIhEE17_M_default_appendEm:bb.a
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !74
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #18 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_3dnn13SDPALayerImpl21forward_fallback_implERKNS0_3MatES9_S9_RS7_iiiiiiEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  tail call void @_ZZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS_3MatES4_S4_RS2_iiiiiiENKUlRKNS_5RangeEE_clES8_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_3dnn13SDPALayerImpl21forward_fallback_implERKNS0_3MatES9_S9_RS7_iiiiiiEUlS3_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS1_3MatES6_S6_RS4_iiiiiiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS_3MatES4_S4_RS2_iiiiiiEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !91
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS1_3MatES6_S6_RS4_iiiiiiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS1_3MatES6_S6_RS4_iiiiiiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !71
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !tbaa.struct !149
  store ptr %i.c, ptr %0, align 8, !tbaa !71
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS1_3MatES6_S6_RS4_iiiiiiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS1_3MatES6_S6_RS4_iiiiiiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #19
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS1_3MatES6_S6_RS4_iiiiiiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS1_3MatES6_S6_RS4_iiiiiiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNK2cv3dnn13SDPALayerImpl21forward_fallback_implERKNS_3MatES4_S4_RS2_iiiiiiENKUlRKNS_5RangeEE_clES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !84, !align !86
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170, !nonnull !84, !align !86
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51
  %i.g = sext i32 %i.f to i64
  %i.h = mul nsw i64 %i.g, %i.c                   ; 5 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc90

.noexc90:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18 ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h ; 2 uses
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !83
  %i.m = add nsw i64 %i.h, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc90
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !83
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc90, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.16.0 = phi ptr [ %i.l, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc90 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.091.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc90 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !60     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !61   ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !171, !nonnull !84, !align !86 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172, !nonnull !84, !align !85
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.y = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !84, !align !86 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173, !nonnull !84, !align !86 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !174, !nonnull !84, !align !85
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !170, !nonnull !84, !align !86 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !175, !nonnull !84, !align !85
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !176, !nonnull !84, !align !86 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !177, !nonnull !84, !align !85
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load i32, ptr %i.y, align 4, !tbaa !51  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph133.split.preheader, label %._crit_edge134

.lr.ph133.split.preheader:                        ; preds = %.lr.ph133
  %i.aq = sext i32 %i.p to i64                    ; 2 uses
  %wide.trip.count183 = sext i32 %i.r to i64
  %.pre = load i32, ptr %i.u, align 4, !tbaa !51
  %.pre185.a = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %.pre186.a = load i32, ptr %i.aj, align 4, !tbaa !51
  br label %.lr.ph133.split

._crit_edge134:                                   ; preds = %._crit_edge131, %.lr.ph133, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.091.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge134
  %i.ar = ptrtoint ptr %.sroa.16.0 to i64
  %i.as = ptrtoint ptr %.sroa.091.0 to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0, i64 noundef %i.at) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge134, %bb.b
  ret void

.lr.ph133.split:                                  ; preds = %.lr.ph133.split.preheader, %._crit_edge131
  %indvar = phi i64 [ 0, %.lr.ph133.split.preheader ], [ %indvar.next, %._crit_edge131 ] ; 2 uses
  %i.au = phi i32 [ %.pre185.a, %.lr.ph133.split.preheader ], [ %i.ee, %._crit_edge131 ] ; 2 uses
  %i.av = phi i32 [ %i.ao, %.lr.ph133.split.preheader ], [ %i.ef, %._crit_edge131 ] ; 3 uses
  %i.aw = phi i32 [ %.pre186.a, %.lr.ph133.split.preheader ], [ %i.eg, %._crit_edge131 ] ; 2 uses
  %i.ax = phi i32 [ %.pre185.a, %.lr.ph133.split.preheader ], [ %i.eh, %._crit_edge131 ] ; 3 uses
  %i.ay = phi i32 [ %.pre, %.lr.ph133.split.preheader ], [ %i.ei, %._crit_edge131 ] ; 4 uses
  %indvars.iv180 = phi i64 [ %i.aq, %.lr.ph133.split.preheader ], [ %indvars.iv.next181, %._crit_edge131 ] ; 4 uses
  %i.az = trunc nsw i64 %indvars.iv180 to i32     ; 2 uses
  %i.ba = sdiv i32 %i.az, %i.ay
  %i.bb = srem i32 %i.az, %i.ay
  %i.bc = sext i32 %i.av to i64                   ; 4 uses
  %i.bd = mul nsw i64 %indvars.iv180, %i.bc
  %i.be = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul i64 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bg
  %i.bi = sext i32 %i.ax to i64                   ; 2 uses
  %i.bj = mul i64 %indvars.iv180, %i.bi           ; 2 uses
  %i.bk = mul i64 %i.bj, %i.bf
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bk
  %i.bm = sext i32 %i.aw to i64                   ; 5 uses
  %i.bn = mul i64 %i.bj, %i.bm
  %i.bo = getelementptr [4 x i8], ptr %i.ah, i64 %i.bn ; 2 uses
  %i.bp = sext i32 %i.ba to i64                   ; 3 uses
  %i.bq = sext i32 %i.ay to i64                   ; 3 uses
  %i.br = mul nsw i64 %i.bp, %i.bq
  %i.bs = mul i64 %i.br, %i.bc
  %i.bt = mul i64 %i.bs, %i.bm
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bt
  %i.bv = icmp sgt i32 %i.av, 0
  br i1 %i.bv, label %.preheader102.lr.ph, label %._crit_edge131

.preheader102.lr.ph:                              ; preds = %.lr.ph133.split
  %i.bw = add i64 %indvar, %i.aq
  %i.bx = shl i64 %i.bw, 2
  %i.by = sext i32 %i.bb to i64                   ; 2 uses
  %2 = shl nsw i64 %i.bq, 2
  %3 = mul i64 %2, %i.bc
  %4 = mul i64 %3, %i.bm
  %5 = mul i64 %4, %i.bp
  %scevgep = getelementptr i8, ptr %i.am, i64 %5  ; 2 uses
  %i.bz = shl nsw i64 %i.bq, 2
  %i.ca = mul i64 %i.bz, %i.bc
  %i.cb = mul i64 %i.ca, %i.bm
  %i.cc = mul i64 %i.cb, %i.bp                    ; 2 uses
  %scevgep219 = getelementptr i8, ptr %i.am, i64 %i.cc
  %scevgep221 = getelementptr i8, ptr %i.am, i64 %i.cc
  %i.cd = mul i64 %i.bx, %i.bi
  %i.ce = mul i64 %i.cd, %i.bm
  %scevgep223 = getelementptr i8, ptr %i.ah, i64 %i.ce
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.lr.ph, %._crit_edge129.split
  %i.cf = phi i32 [ %i.au, %.preheader102.lr.ph ], [ %i.ht, %._crit_edge129.split ] ; 4 uses
  %i.cg = phi i32 [ %i.ax, %.preheader102.lr.ph ], [ %i.ht, %._crit_edge129.split ] ; 7 uses
  %indvars.iv177 = phi i64 [ 0, %.preheader102.lr.ph ], [ %indvars.iv.next178, %._crit_edge129.split ] ; 11 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.preheader.lr.ph, label %._crit_edge107.thread

._crit_edge107.thread:                            ; preds = %.preheader102
  %i.ci = sext i32 %i.cg to i64
  %i.cj = mul nsw i64 %indvars.iv177, %i.ci
  %i.ck = getelementptr [4 x i8], ptr %.sroa.091.0, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !83
  br label %.preheader101

.preheader.lr.ph:                                 ; preds = %.preheader102
  %i.cm = load i32, ptr %i.aa, align 4, !tbaa !51 ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = sext i32 %i.cm to i64                   ; 2 uses
  %i.cp = mul nuw nsw i64 %indvars.iv177, %i.co
  %i.cq = getelementptr [4 x i8], ptr %i.bh, i64 %i.cp ; 5 uses
  %i.cr = load ptr, ptr %i.an, align 8, !tbaa !178, !nonnull !84, !align !86 ; 2 uses
  %i.cs = zext nneg i32 %i.cg to i64              ; 6 uses
  %i.ct = mul nuw nsw i64 %indvars.iv177, %i.cs
  %i.cu = getelementptr [4 x i8], ptr %.sroa.091.0, i64 %i.ct ; 3 uses
  br i1 %i.cn, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre187 = load float, ptr %i.cr, align 4, !tbaa !83
  %i.cv = fmul float %.pre187, 0.000000e+00       ; 2 uses
  %min.iters.check244 = icmp ult i32 %i.cg, 8
  br i1 %min.iters.check244, label %.preheader.preheader255, label %vector.ph245

vector.ph245:                                     ; preds = %.preheader.preheader
  %n.vec246 = and i64 %i.cs, 2147483640           ; 3 uses
  %broadcast.splatinsert247 = insertelement <4 x float> poison, float %i.cv, i64 0
  %broadcast.splat248 = shufflevector <4 x float> %broadcast.splatinsert247, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph245
  %index250 = phi i64 [ 0, %vector.ph245 ], [ %index.next251, %vector.body249 ] ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %i.cu, i64 %index250 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store <4 x float> %broadcast.splat248, ptr %i.cw, align 4, !tbaa !83
  store <4 x float> %broadcast.splat248, ptr %i.cx, align 4, !tbaa !83
  %index.next251 = add nuw i64 %index250, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.cy, label %middle.block252, label %vector.body249, !llvm.loop !150

middle.block252:                                  ; preds = %vector.body249
  %cmp.n253 = icmp eq i64 %n.vec246, %i.cs
  br i1 %cmp.n253, label %._crit_edge107, label %.preheader.preheader255

.preheader.preheader255:                          ; preds = %.preheader.preheader, %middle.block252
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec246, %middle.block252 ]
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count143 = zext nneg i32 %i.cm to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count143, 3      ; 3 uses
  %i.cz = icmp ult i32 %i.cm, 4
  %unroll_iter = and i64 %wide.trip.count143, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod264 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv145 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next146, %._crit_edge.us ] ; 3 uses
  %i.da = mul nuw nsw i64 %indvars.iv145, %i.co
  %i.db = getelementptr [4 x i8], ptr %i.bl, i64 %i.da ; 5 uses
  br i1 %i.cz, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.081104.us = phi float [ %i.dv, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.dc = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv140
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !83
  %i.de = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv140
  %i.df = load float, ptr %i.de, align 4, !tbaa !83
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.df, float %.081104.us)
  %indvars.iv.next141 = or disjoint i64 %indvars.iv140, 1 ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next141
  %i.di = load float, ptr %i.dh, align 4, !tbaa !83
  %i.dj = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv.next141
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !83
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.di, float %i.dk, float %i.dg)
  %indvars.iv.next141.1 = or disjoint i64 %indvars.iv140, 2 ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next141.1
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !83
  %i.do = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv.next141.1
  %i.dp = load float, ptr %i.do, align 4, !tbaa !83
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dp, float %i.dl)
  %indvars.iv.next141.2 = or disjoint i64 %indvars.iv140, 3 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next141.2
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !83
  %i.dt = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv.next141.2
  %i.du = load float, ptr %i.dt, align 4, !tbaa !83
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.du, float %i.dq) ; 3 uses
  %indvars.iv.next141.3 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !151

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv140.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next141.3, %._crit_edge.us.unr-lcssa ]
  %.081104.us.epil.init = phi float [ 0.000000e+00, %.preheader.us ], [ %i.dv, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod264)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv140.epil = phi i64 [ %indvars.iv140.epil.init, %.epil.preheader ], [ %indvars.iv.next141.epil, %bb.c ] ; 3 uses
  %.081104.us.epil = phi float [ %.081104.us.epil.init, %.epil.preheader ], [ %i.ea, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.dw = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv140.epil
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !83
  %i.dy = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv140.epil
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !83
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dz, float %.081104.us.epil) ; 2 uses
  %indvars.iv.next141.epil = add nuw nsw i64 %indvars.iv140.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !152

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.dv, %._crit_edge.us.unr-lcssa ], [ %i.ea, %bb.c ]
  %i.eb = load float, ptr %i.cr, align 4, !tbaa !83
  %i.ec = fmul float %.lcssa, %i.eb
  %i.ed = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv145
  store float %i.ec, ptr %i.ed, align 4, !tbaa !83
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %i.cs
  br i1 %exitcond149.not, label %._crit_edge107, label %.preheader.us, !llvm.loop !153

._crit_edge131:                                   ; preds = %._crit_edge129.split, %.lr.ph133.split
  %i.ee = phi i32 [ %i.au, %.lr.ph133.split ], [ %i.ht, %._crit_edge129.split ]
  %i.ef = phi i32 [ %i.av, %.lr.ph133.split ], [ %i.hu, %._crit_edge129.split ]
  %i.eg = phi i32 [ %i.aw, %.lr.ph133.split ], [ %i.hr, %._crit_edge129.split ]
  %i.eh = phi i32 [ %i.ax, %.lr.ph133.split ], [ %i.ht, %._crit_edge129.split ]
  %i.ei = phi i32 [ %i.ay, %.lr.ph133.split ], [ %i.hs, %._crit_edge129.split ]
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134, label %.lr.ph133.split, !llvm.loop !154

.preheader:                                       ; preds = %.preheader.preheader255, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader255 ] ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv
  store float %i.cv, ptr %i.ej, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cs
  br i1 %exitcond.not, label %._crit_edge107, label %.preheader, !llvm.loop !155

._crit_edge107:                                   ; preds = %.preheader, %._crit_edge.us, %middle.block252
  %i.ek = zext nneg i32 %i.cg to i64
  %i.el = mul nuw nsw i64 %indvars.iv177, %i.ek
  %i.em = getelementptr [4 x i8], ptr %.sroa.091.0, i64 %i.el ; 6 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !83 ; 3 uses
  %.not = icmp eq i32 %i.cg, 1
  br i1 %.not, label %.preheader101, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge107
  %i.eo = add nsw i64 %i.cs, -1                   ; 2 uses
  %xtraiter266 = and i64 %i.eo, 3                 ; 3 uses
  %i.ep = add nsw i32 %i.cg, -2
  %i.eq = icmp ult i32 %i.ep, 3
  br i1 %i.eq, label %.epil.preheader265, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter271 = and i64 %i.eo, -4
  br label %bb.e

.preheader101.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod268.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod268.not, label %.preheader101, label %.epil.preheader265

.epil.preheader265:                               ; preds = %.preheader101.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv150.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next151.3, %.preheader101.loopexit.unr-lcssa ]
  %.079109.epil.init = phi float [ %i.en, %.lr.ph ], [ %.1.3, %.preheader101.loopexit.unr-lcssa ]
  %lcmp.mod270 = icmp ne i64 %xtraiter266, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader265
  %indvars.iv150.epil = phi i64 [ %indvars.iv150.epil.init, %.epil.preheader265 ], [ %indvars.iv.next151.epil, %bb.d ] ; 2 uses
  %.079109.epil = phi float [ %.079109.epil.init, %.epil.preheader265 ], [ %.1.epil, %bb.d ] ; 2 uses
  %epil.iter267 = phi i64 [ 0, %.epil.preheader265 ], [ %epil.iter267.next, %bb.d ]
  %i.er = getelementptr [4 x i8], ptr %i.em, i64 %indvars.iv150.epil
  %i.es = load float, ptr %i.er, align 4, !tbaa !83 ; 2 uses
  %i.et = fcmp ogt float %i.es, %.079109.epil
  %.1.epil = select i1 %i.et, float %i.es, float %.079109.epil ; 2 uses
  %indvars.iv.next151.epil = add nuw nsw i64 %indvars.iv150.epil, 1
  %epil.iter267.next = add i64 %epil.iter267, 1   ; 2 uses
  %epil.iter267.cmp.not = icmp eq i64 %epil.iter267.next, %xtraiter266
  br i1 %epil.iter267.cmp.not, label %.preheader101, label %bb.d, !llvm.loop !156

.preheader101:                                    ; preds = %.preheader101.loopexit.unr-lcssa, %bb.d, %._crit_edge107.thread, %._crit_edge107
  %.079.lcssa = phi float [ %i.en, %._crit_edge107 ], [ %i.cl, %._crit_edge107.thread ], [ %.1.3, %.preheader101.loopexit.unr-lcssa ], [ %.1.epil, %bb.d ]
  %i.eu = icmp sgt i32 %i.cf, 0
  br i1 %i.eu, label %.lr.ph113, label %._crit_edge119.thread

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv150 = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next151.3, %bb.e ] ; 5 uses
  %.079109 = phi float [ %i.en, %.lr.ph.new ], [ %.1.3, %bb.e ] ; 2 uses
  %niter272 = phi i64 [ 0, %.lr.ph.new ], [ %niter272.next.3, %bb.e ]
  %i.ev = getelementptr [4 x i8], ptr %i.em, i64 %indvars.iv150
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !83 ; 2 uses
  %i.ex = fcmp ogt float %i.ew, %.079109
  %.1 = select i1 %i.ex, float %i.ew, float %.079109 ; 2 uses
  %i.ey = getelementptr [4 x i8], ptr %i.em, i64 %indvars.iv150
  %i.ez = getelementptr i8, ptr %i.ey, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !83 ; 2 uses
  %i.fb = fcmp ogt float %i.fa, %.1
  %.1.1 = select i1 %i.fb, float %i.fa, float %.1 ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.em, i64 %indvars.iv150
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !83 ; 2 uses
  %i.ff = fcmp ogt float %i.fe, %.1.1
  %.1.2 = select i1 %i.ff, float %i.fe, float %.1.1 ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.em, i64 %indvars.iv150
  %i.fh = getelementptr i8, ptr %i.fg, i64 12
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !83 ; 2 uses
  %i.fj = fcmp ogt float %i.fi, %.1.2
  %.1.3 = select i1 %i.fj, float %i.fi, float %.1.2 ; 3 uses
  %indvars.iv.next151.3 = add nuw nsw i64 %indvars.iv150, 4 ; 2 uses
  %niter272.next.3 = add nuw i64 %niter272, 4     ; 2 uses
  %niter272.ncmp.3 = icmp eq i64 %niter272.next.3, %unroll_iter271
  br i1 %niter272.ncmp.3, label %.preheader101.loopexit.unr-lcssa, label %bb.e, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph113
  %i.fk = fdiv float 1.000000e+00, %i.gh          ; 2 uses
  %i.fl = icmp sgt i32 %i.gc, 0                   ; 2 uses
  br i1 %i.fl, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %._crit_edge
  %i.fm = zext nneg i32 %i.gc to i64              ; 4 uses
  %i.fn = mul nuw nsw i64 %indvars.iv177, %i.fm
  %i.fo = getelementptr [4 x i8], ptr %.sroa.091.0, i64 %i.fn ; 2 uses
  %min.iters.check230 = icmp ult i32 %i.gc, 8
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph118
  %n.vec232 = and i64 %i.fm, 2147483640           ; 3 uses
  %broadcast.splatinsert233 = insertelement <4 x float> poison, float %i.fk, i64 0
  %broadcast.splat234 = shufflevector <4 x float> %broadcast.splatinsert233, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph231
  %index236 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body235 ] ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index236 ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 16     ; 2 uses
  %wide.load237 = load <4 x float>, ptr %i.fp, align 4, !tbaa !83
  %wide.load238 = load <4 x float>, ptr %i.fq, align 4, !tbaa !83
  %i.fr = fmul <4 x float> %broadcast.splat234, %wide.load237
  %i.fs = fmul <4 x float> %broadcast.splat234, %wide.load238
  store <4 x float> %i.fr, ptr %i.fp, align 4, !tbaa !83
  store <4 x float> %i.fs, ptr %i.fq, align 4, !tbaa !83
  %index.next239 = add nuw i64 %index236, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.ft, label %middle.block240, label %vector.body235, !llvm.loop !158

middle.block240:                                  ; preds = %vector.body235
  %cmp.n241 = icmp eq i64 %n.vec232, %i.fm
  br i1 %cmp.n241, label %._crit_edge119, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph118, %middle.block240
  %indvars.iv158.ph = phi i64 [ 0, %.lr.ph118 ], [ %n.vec232, %middle.block240 ]
  br label %scalar.ph229

.lr.ph113:                                        ; preds = %.preheader101, %.lr.ph113
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.lr.ph113 ], [ 0, %.preheader101 ] ; 3 uses
  %i.fu = phi i32 [ %i.gc, %.lr.ph113 ], [ %i.cf, %.preheader101 ]
  %.077111 = phi float [ %i.gh, %.lr.ph113 ], [ 0.000000e+00, %.preheader101 ]
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nuw nsw i64 %indvars.iv177, %i.fv
  %i.fx = getelementptr [4 x i8], ptr %.sroa.091.0, i64 %i.fw
  %i.fy = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv155
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !83
  %i.ga = fsub float %i.fz, %.079.lcssa
  %i.gb = tail call noundef float @expf(float noundef %i.ga) #20 ; 2 uses
  %i.gc = load i32, ptr %i.ae, align 4, !tbaa !51 ; 9 uses
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = mul nsw i64 %indvars.iv177, %i.gd
  %i.gf = getelementptr [4 x i8], ptr %.sroa.091.0, i64 %i.ge
  %i.gg = getelementptr [4 x i8], ptr %i.gf, i64 %indvars.iv155
  store float %i.gb, ptr %i.gg, align 4, !tbaa !83
  %i.gh = fadd float %.077111, %i.gb              ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.gi = icmp slt i64 %indvars.iv.next156, %i.gd
  br i1 %i.gi, label %.lr.ph113, label %._crit_edge, !llvm.loop !159

._crit_edge119:                                   ; preds = %scalar.ph229, %middle.block240, %._crit_edge
  %i.gj = load i32, ptr %i.u, align 4, !tbaa !51  ; 4 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = mul i64 %indvars.iv177, %i.gk
  %i.gm = add i64 %i.gl, %i.by                    ; 3 uses
  %i.gn = load i32, ptr %i.aj, align 4, !tbaa !51 ; 8 uses
  %i.go = sext i32 %i.gn to i64                   ; 5 uses
  %i.gp = mul i64 %i.gm, %i.go
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.gp ; 4 uses
  %i.gr = icmp sgt i32 %i.gn, 0
  br i1 %i.gr, label %.preheader100, label %._crit_edge129.split

._crit_edge119.thread:                            ; preds = %.preheader101
  %i.gs = load i32, ptr %i.u, align 4, !tbaa !51  ; 3 uses
  %i.gt = load i32, ptr %i.aj, align 4, !tbaa !51 ; 5 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.preheader100.thread203, label %._crit_edge129.split

.preheader100.thread203:                          ; preds = %._crit_edge119.thread
  %6 = zext nneg i32 %i.gt to i64
  %i.gv = sext i32 %i.gs to i64
  %i.gw = mul i64 %indvars.iv177, %i.gv
  %i.gx = add i64 %i.gw, %i.by
  %7 = shl i64 %i.gx, 2
  %i.gy = mul i64 %7, %6
  %scevgep163204 = getelementptr i8, ptr %scevgep, i64 %i.gy
  %i.gz = zext nneg i32 %i.gt to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep163204, i8 0, i64 %i.ha, i1 false), !tbaa !83
  br label %._crit_edge129.split

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %scalar.ph229 ], [ %indvars.iv158.ph, %scalar.ph229.preheader ] ; 2 uses
  %i.hb = getelementptr [4 x i8], ptr %i.fo, i64 %indvars.iv158 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !83
  %i.hd = fmul float %i.fk, %i.hc
  store float %i.hd, ptr %i.hb, align 4, !tbaa !83
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %i.fm
  br i1 %exitcond162.not, label %._crit_edge119, label %scalar.ph229, !llvm.loop !160

.preheader100:                                    ; preds = %._crit_edge119
  %8 = shl i64 %i.gm, 2
  %9 = mul i64 %8, %i.go
  %scevgep163 = getelementptr i8, ptr %scevgep, i64 %9
  %i.he = zext nneg i32 %i.gn to i64
  %i.hf = shl nuw nsw i64 %i.he, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep163, i8 0, i64 %i.hf, i1 false), !tbaa !83
  br i1 %i.fl, label %.lr.ph125.preheader, label %._crit_edge129.split

.lr.ph125.preheader:                              ; preds = %.preheader100
  %i.hg = zext nneg i32 %i.gc to i64              ; 3 uses
  %i.hh = mul nuw nsw i64 %indvars.iv177, %i.hg
  %i.hi = getelementptr [4 x i8], ptr %.sroa.091.0, i64 %i.hh
  %wide.trip.count170 = zext nneg i32 %i.gn to i64 ; 6 uses
  %i.hj = shl i64 %i.gm, 2
  %i.hk = mul i64 %i.hj, %i.go                    ; 2 uses
  %scevgep220 = getelementptr i8, ptr %scevgep219, i64 %i.hk
  %i.hl = shl nuw nsw i64 %wide.trip.count170, 2  ; 2 uses
  %i.hm = getelementptr i8, ptr %scevgep221, i64 %i.hk
  %scevgep222 = getelementptr i8, ptr %i.hm, i64 %i.hl
  %scevgep224 = getelementptr i8, ptr %scevgep223, i64 %i.hl
  %i.hn = shl nuw nsw i64 %i.go, 2
  %i.ho = add nsw i64 %i.hg, -1
  %i.hp = mul i64 %i.hn, %i.ho
  %scevgep225 = getelementptr i8, ptr %scevgep224, i64 %i.hp
  %min.iters.check = icmp ult i32 %i.gn, 8
  %bound0 = icmp ult ptr %scevgep220, %scevgep225
  %bound1 = icmp ult ptr %i.bo, %scevgep222
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count170, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count170
  %xtraiter273 = and i64 %wide.trip.count170, 1
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  %i.hq = add nsw i64 %wide.trip.count170, -1
  br label %.lr.ph125

._crit_edge129.split:                             ; preds = %._crit_edge126, %._crit_edge119, %.preheader100.thread203, %._crit_edge119.thread, %.preheader100
  %i.hr = phi i32 [ %i.gt, %._crit_edge119.thread ], [ %i.gn, %.preheader100 ], [ %i.gt, %.preheader100.thread203 ], [ %i.gn, %._crit_edge119 ], [ %i.gn, %._crit_edge126 ]
  %i.hs = phi i32 [ %i.gs, %._crit_edge119.thread ], [ %i.gj, %.preheader100 ], [ %i.gs, %.preheader100.thread203 ], [ %i.gj, %._crit_edge119 ], [ %i.gj, %._crit_edge126 ]
  %i.ht = phi i32 [ %i.cf, %._crit_edge119.thread ], [ %i.gc, %.preheader100 ], [ %i.cf, %.preheader100.thread203 ], [ %i.gc, %._crit_edge119 ], [ %i.gc, %._crit_edge126 ] ; 4 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.hu = load i32, ptr %i.y, align 4, !tbaa !51  ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = icmp slt i64 %indvars.iv.next178, %i.hv
  br i1 %i.hw, label %.preheader102, label %._crit_edge131, !llvm.loop !161

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %._crit_edge126
  %indvars.iv172 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next173, %._crit_edge126 ] ; 3 uses
  %i.hx = getelementptr [4 x i8], ptr %i.hi, i64 %indvars.iv172
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !83 ; 4 uses
  %i.hz = mul nuw nsw i64 %indvars.iv172, %i.go
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.hz ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph125
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hy, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load = load <4 x float>, ptr %i.ib, align 4, !tbaa !83, !alias.scope !180
  %wide.load226 = load <4 x float>, ptr %i.ic, align 4, !tbaa !83, !alias.scope !180
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %wide.load227 = load <4 x float>, ptr %i.id, align 4, !tbaa !83, !alias.scope !181, !noalias !180
  %wide.load228 = load <4 x float>, ptr %i.ie, align 4, !tbaa !83, !alias.scope !181, !noalias !180
  %i.if = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load227)
  %i.ig = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load226, <4 x float> %wide.load228)
  store <4 x float> %i.if, ptr %i.id, align 4, !tbaa !83, !alias.scope !181, !noalias !180
  store <4 x float> %i.ig, ptr %i.ie, align 4, !tbaa !83, !alias.scope !181, !noalias !180
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge126, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph125, %middle.block
  %indvars.iv167.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph125 ] ; 5 uses
  br i1 %lcmp.mod274.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv167.ph
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !83
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv167.ph ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !83
  %i.im = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.ij, float %i.il)
  store float %i.im, ptr %i.ik, align 4, !tbaa !83
  %indvars.iv.next168.prol = or disjoint i64 %indvars.iv167.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv167.unr = phi i64 [ %indvars.iv167.ph, %scalar.ph.preheader ], [ %indvars.iv.next168.prol, %scalar.ph.prol ]
  %i.in = icmp eq i64 %indvars.iv167.ph, %i.hq
  br i1 %i.in, label %._crit_edge126, label %scalar.ph

._crit_edge126:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %i.hg
  br i1 %exitcond176.not, label %._crit_edge129.split, label %.lr.ph125, !llvm.loop !166

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.1, %scalar.ph ], [ %indvars.iv167.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv167
  %i.ip = load float, ptr %i.io, align 4, !tbaa !83
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv167 ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !83
  %i.is = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.ip, float %i.ir)
  store float %i.is, ptr %i.iq, align 4, !tbaa !83
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next168
  %i.iu = load float, ptr %i.it, align 4, !tbaa !83
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next168 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !83
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.iu, float %i.iw)
  store float %i.ix, ptr %i.iv, align 4, !tbaa !83
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %exitcond171.not.1 = icmp eq i64 %indvars.iv.next168.1, %wide.trip.count170
  br i1 %exitcond171.not.1, label %._crit_edge126, label %scalar.ph, !llvm.loop !167
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

declare void @_ZN2cv8MatShapeC1ESt16initializer_listIiE(ptr noundef nonnull align 4 dereferenceable(52), ptr, i64) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.38", align 16   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 6 uses
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
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !92
  %i.k = load <2 x ptr>, ptr %0, align 8, !tbaa !183
  %i.l = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  store ptr %i.m, ptr %i.i, align 16, !tbaa !92
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !183
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !183
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !183
  store ptr %i.j, ptr %i.a, align 8, !tbaa !92
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

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80   ; 5 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  %i.v = sdiv exact i64 %i.u, 52
  %i.w = icmp ugt i64 %1, %i.v
  br i1 %i.w, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.s
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.x = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.06.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !182

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre16 = load ptr, ptr %i.r, align 8, !tbaa !80 ; 2 uses
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !81
  %.pre18 = ptrtoint ptr %.pre16 to i64
  %.pre19 = ptrtoint ptr %.pre17 to i64
  %.pre21 = sub i64 %.pre18, %.pre19
  %i.z = sdiv exact i64 %.pre21, -52
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, %bb.e
  %.pre-phi22 = phi i64 [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ 0, %bb.e ]
  %i.aa = phi ptr [ %.pre16, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = add i64 %.pre-phi22, %1                 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not13.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ] ; 2 uses
  %.01114.i.i.i.i = phi i64 [ %i.ac, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ]
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.015.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

end_hunk_0
