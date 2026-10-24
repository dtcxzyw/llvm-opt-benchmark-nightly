Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ObserverManager?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2581
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK3fmt2v99formatterIN5folly5RangeIPKcEEcvE6formatINS0_20basic_format_contextINS0_8appenderEcEEEENT_8iteratorES6_RSC_:bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.43) #40
  unreachable

_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit5: ; preds = %bb.d, %bb.d, %bb.d
  %.sroa.0.0.copyload.i3 = load ptr, ptr %3, align 8
  %i.p = tail call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS6_EE(ptr %.sroa.0.0.copyload.i3, ptr %1, i64 %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %_ZNK3fmt2v99formatterINS0_17basic_string_viewIcEEcvE6formatINS0_20basic_format_contextINS0_8appenderEcEEEEDTcldtfp0_3outEERKS3_RT_.exit

_ZNK3fmt2v99formatterINS0_17basic_string_viewIcEEcvE6formatINS0_20basic_format_contextINS0_8appenderEcEEEEDTcldtfp0_3outEERKS3_RT_.exit: ; preds = %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit, %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit5
  %.sroa.015.0.i = phi ptr [ %i.m, %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit ], [ %i.p, %_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewINS0_13type_identityIT_E4typeEEERKNS0_18basic_format_specsIS7_EENS1_10locale_refE.exit5 ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i8 @_ZN3fmt2v96detail23parse_presentation_typeIcEENS0_17presentation_typeET_(i8 noundef signext %0) local_unnamed_addr #1 comdat {
bb.a:
  %switch.tableidx = add i8 %0, -63               ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 58
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3fmt2v96detail23parse_presentation_typeIcEENS0_17presentation_typeET_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %struct.width_adapter, align 8      ; 4 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !625     ; 3 uses
  %i.b = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.b, 10
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.g = sub i64 %i.c, %i.d
  %scevgep34.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.a to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not31.i32 = icmp eq ptr %i.j, %1
  br i1 %.not31.i32, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not31.i = icmp eq ptr %i.o, %1
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph, !llvm.loop !29

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %.0.i1834 = phi ptr [ %i.p, %bb.c ], [ %0, %bb.b ]
  %.024.i33 = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !625   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !29

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.024.i.lcssa = phi i32 [ %.024.i33, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i1834, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep34.i, %bb.b ], [ %scevgep34.i, %bb.c ] ; 2 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.e, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = zext i32 %.024.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !625
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ugt i64 %i.ae, 2147483647
  %.not17 = icmp eq i32 %.lcssa, -1
  %or.cond25 = select i1 %i.af, i1 true, i1 %.not17
  br i1 %or.cond25, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.not17.old = icmp eq i32 %.lcssa, -1
  br i1 %.not17.old, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ag = load ptr, ptr %2, align 8, !tbaa !736, !nonnull !316, !align !676
  store i32 %.lcssa, ptr %i.ag, align 4, !tbaa !740
  br label %bb.q

_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.49) #40
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ah = icmp eq i8 %i.a, 123
  br i1 %i.ah, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !742
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !625
  switch i8 %i.aj, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = call noundef ptr @_ZN3fmt2v96detail15do_parse_arg_idIcRZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN3fmt2v96detail12parse_arg_idIcZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_.exit

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !743, !noalias !3295, !nonnull !316, !align !675
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !745, !noalias !3295 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.52) #40, !noalias !3295
  unreachable

_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEv.exit: ; preds = %bb.k
  %i.aq = add nuw nsw i32 %i.ao, 1
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !745, !noalias !3295
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !746, !nonnull !316, !align !675 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 1, ptr %i.at, align 8, !tbaa !747
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %i.ao, ptr %.sroa.41.0..sroa_idx.i.i, align 8
  br label %_ZN3fmt2v96detail12parse_arg_idIcZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_.exit

_ZN3fmt2v96detail12parse_arg_idIcZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_.exit: ; preds = %bb.j, %_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEv.exit
  %.0.i = phi ptr [ %i.ak, %bb.j ], [ %i.ai, %_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt2v96detail12parse_arg_idIcZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_.exit, %bb.h
  %.0 = phi ptr [ %i.ai, %bb.h ], [ %.0.i, %_ZN3fmt2v96detail12parse_arg_idIcZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_.exit ] ; 3 uses
  %i.au = icmp eq ptr %.0, %1
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i8, ptr %.0, align 1, !tbaa !625
  %.not16 = icmp eq i8 %i.av, 125
  br i1 %.not16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.50) #40
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.f
  %.1 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.aw, %bb.p ], [ %0, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %struct.precision_adapter, align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %.thread34, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !625   ; 3 uses
  %4 = sext i8 %i.b to i32
  %5 = add nsw i32 %4, -48
  %or.cond = icmp ult i32 %5, 10
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.g = sub i64 %i.c, %i.d
  %scevgep34.i = getelementptr i8, ptr %i.a, i64 %i.g ; 2 uses
  %6 = sext i8 %i.b to i32
  %i.h = add nsw i32 %6, -48                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.not31.i43 = icmp eq ptr %i.i, %1
  br i1 %.not31.i43, label %.critedge.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = mul i32 %i.p, 10
  %i.k = zext nneg i8 %i.q to i32
  %i.l = add nsw i32 %i.k, -48
  %i.m = add i32 %i.l, %i.j                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %.not31.i = icmp eq ptr %i.n, %1
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph, !llvm.loop !29

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %i.p = phi i32 [ %i.m, %bb.d ], [ %i.h, %bb.c ] ; 4 uses
  %.0.i2645 = phi ptr [ %i.o, %bb.d ], [ %i.a, %bb.c ]
  %.024.i44 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.q = load i8, ptr %i.o, align 1, !tbaa !625   ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !29

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.024.i.lcssa = phi i32 [ %.024.i44, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  %.lcssa = phi i32 [ %i.p, %..critedge.i_crit_edge ], [ %i.h, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i2645, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.o, %..critedge.i_crit_edge ], [ %scevgep34.i, %bb.c ], [ %scevgep34.i, %bb.d ] ; 2 uses
  %i.s = ptrtoint ptr %.lcssa.i to i64
  %i.t = ptrtoint ptr %i.a to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp slt i64 %i.u, 10
  br i1 %i.v, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.w = icmp eq i64 %i.u, 10
  br i1 %i.w, label %bb.f, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = zext i32 %.024.i.lcssa to i64
  %i.y = mul nuw nsw i64 %i.x, 10
  %i.z = load i8, ptr %.0.lcssa.i, align 1, !tbaa !625
  %i.aa = sext i8 %i.z to i64
  %i.ab = add nsw i64 %i.aa, 4294967248
  %i.ac = and i64 %i.ab, 4294967294
  %i.ad = add nuw nsw i64 %i.ac, %i.y
  %i.ae = icmp samesign ugt i64 %i.ad, 2147483647
  %.not25 = icmp eq i32 %.lcssa, -1
  %or.cond35 = select i1 %i.ae, i1 true, i1 %.not25
  br i1 %or.cond35, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.g

_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.not25.old = icmp eq i32 %.lcssa, -1
  br i1 %.not25.old, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.af = load ptr, ptr %2, align 8, !tbaa !736, !nonnull !316, !align !676
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %.lcssa, ptr %i.ag, align 4, !tbaa !721
  br label %bb.q

_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.f, %bb.e, %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.49) #40
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.ah = icmp eq i8 %i.b, 123
  br i1 %i.ah, label %bb.i, label %.thread34

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %.not23 = icmp eq ptr %i.ai, %1
  br i1 %.not23, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !742
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !625
  switch i8 %i.aj, label %bb.k [
    i8 125, label %bb.l
    i8 58, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ak = call noundef ptr @_ZN3fmt2v96detail15do_parse_arg_idIcRZNS1_15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E17precision_adapterEESE_SE_SE_SG_(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN3fmt2v96detail12parse_arg_idIcZNS1_15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E17precision_adapterEESE_SE_SE_SG_.exit

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !743, !noalias !3298, !nonnull !316, !align !675
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !745, !noalias !3298 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEv.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.52) #40, !noalias !3298
  unreachable

_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEv.exit: ; preds = %bb.l
  %i.aq = add nuw nsw i32 %i.ao, 1
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !745, !noalias !3298
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !746, !nonnull !316, !align !675 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i32 1, ptr %i.at, align 8, !tbaa !747
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i32 %i.ao, ptr %.sroa.41.0..sroa_idx.i.i, align 8
  br label %_ZN3fmt2v96detail12parse_arg_idIcZNS1_15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E17precision_adapterEESE_SE_SE_SG_.exit

_ZN3fmt2v96detail12parse_arg_idIcZNS1_15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E17precision_adapterEESE_SE_SE_SG_.exit: ; preds = %bb.k, %_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEv.exit
  %.0.i = phi ptr [ %i.ak, %bb.k ], [ %i.ai, %_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZN3fmt2v96detail12parse_arg_idIcZNS1_15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E17precision_adapterEESE_SE_SE_SG_.exit, %bb.i
  %.0 = phi ptr [ %i.ai, %bb.i ], [ %.0.i, %_ZN3fmt2v96detail12parse_arg_idIcZNS1_15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E17precision_adapterEESE_SE_SE_SG_.exit ] ; 3 uses
  %i.au = icmp eq ptr %.0, %1
  br i1 %i.au, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.aw = load i8, ptr %.0, align 1, !tbaa !625
  %.not24 = icmp eq i8 %i.aw, 125
  br i1 %.not24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.50) #40
  unreachable

.thread34:                                        ; preds = %bb.a, %bb.h
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.53) #40
  unreachable

bb.q:                                             ; preds = %bb.g, %bb.o
  %.1 = phi ptr [ %.lcssa.i, %bb.g ], [ %i.av, %bb.o ]
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !733
  switch i32 %i.ay, label %_ZN3fmt2v96detail13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEE13end_precisionEv.exit [
    i32 14, label %bb.r
    i32 8, label %bb.r
    i32 7, label %bb.r
    i32 6, label %bb.r
    i32 5, label %bb.r
    i32 4, label %bb.r
    i32 3, label %bb.r
    i32 2, label %bb.r
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.54) #40
  unreachable

_ZN3fmt2v96detail13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEE13end_precisionEv.exit: ; preds = %bb.q
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt2v96detail15do_parse_arg_idIcRZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !625     ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i8 %i.c, 48
  br i1 %.not30, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep34.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not31.i52 = icmp eq ptr %i.j, %1
  br i1 %.not31.i52, label %.critedge.i, label %.lr.ph55

bb.d:                                             ; preds = %.lr.ph55
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not31.i = icmp eq ptr %i.o, %1
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph55, !llvm.loop !29

.lr.ph55:                                         ; preds = %bb.c, %bb.d
end_hunk_0
