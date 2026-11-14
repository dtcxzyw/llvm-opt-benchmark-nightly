Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InlineAdvisor?download=true
inline.NumInlined: 1588
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES1_EEERNS_25OptimizationRemarkEmitterEb:bb.a
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i79: ; preds = %.lr.ph.i.i.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78
  %i.oh = load ptr, ptr %i.oa, align 8, !tbaa !29 ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %.05.i.i.i.i.i77, i64 -64 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i79
  %i.ok = load i64, ptr %i.oi, align 8, !tbaa !30
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ol) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i81

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i80
  %.not.i.i.i.i.i82 = icmp eq ptr %i.nv, %i.oa
  br i1 %.not.i.i.i.i.i82, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i83, label %.lr.ph.i.i.i.i.i76, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i83: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i.i81
  %.pre.i.i.i.i84 = load ptr, ptr %i.nu, align 8, !tbaa !24, !noalias !463
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i85

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i85: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i83, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i72
  %i.om = phi ptr [ %.pre.i.i.i.i84, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i83 ], [ %i.nv, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit6.i.i72 ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %"_ZZN4llvm12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES1_EEERNS_25OptimizationRemarkEmitterEbENK3$_2clEv.exit.i", label %bb.av

bb.av:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i85
  call void @free(ptr noundef %i.om) #19
  br label %"_ZZN4llvm12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES1_EEERNS_25OptimizationRemarkEmitterEbENK3$_2clEv.exit.i"

"_ZZN4llvm12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES1_EEERNS_25OptimizationRemarkEmitterEbENK3$_2clEv.exit.i": ; preds = %bb.av, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @_ZN4llvm25OptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(424) %10) #19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %10, align 8, !tbaa !12
  %i.op = load ptr, ptr %i.mk, align 8, !tbaa !24 ; 3 uses
  %i.oq = load i32, ptr %i.mm, align 8, !tbaa !84 ; 2 uses
  %.not4.i.i.i.i86 = icmp eq i32 %i.oq, 0
  br i1 %.not4.i.i.i.i86, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i98, label %.lr.ph.i.preheader.i.i.i87

.lr.ph.i.preheader.i.i.i87:                       ; preds = %"_ZZN4llvm12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES1_EEERNS_25OptimizationRemarkEmitterEbENK3$_2clEv.exit.i"
  %i.or = zext i32 %i.oq to i64
  %.idx.i.i.i88 = mul nuw nsw i64 %i.or, 80
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx.i.i.i88
  br label %.lr.ph.i.i.i.i89

.lr.ph.i.i.i.i89:                                 ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i94, %.lr.ph.i.preheader.i.i.i87
  %.05.i.i.i.i90 = phi ptr [ %i.ot, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i94 ], [ %i.os, %.lr.ph.i.preheader.i.i.i87 ] ; 4 uses
  %i.ot = getelementptr inbounds i8, ptr %.05.i.i.i.i90, i64 -80 ; 3 uses
  %i.ou = getelementptr inbounds i8, ptr %.05.i.i.i.i90, i64 -48
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !29 ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %.05.i.i.i.i90, i64 -32 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i91: ; preds = %.lr.ph.i.i.i.i89
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !30
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i92: ; preds = %.lr.ph.i.i.i.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i91
  %i.pa = load ptr, ptr %i.ot, align 8, !tbaa !29 ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %.05.i.i.i.i90, i64 -64 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i92
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !30
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i94

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i93
  %.not.i.i.i.i95 = icmp eq ptr %i.op, %i.ot
  br i1 %.not.i.i.i.i95, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i96, label %.lr.ph.i.i.i.i89, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i96: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i94
  %.pre.i.i.i97 = load ptr, ptr %i.mk, align 8, !tbaa !24
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i98

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i98: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i96, %"_ZZN4llvm12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES1_EEERNS_25OptimizationRemarkEmitterEbENK3$_2clEv.exit.i"
  %i.pf = phi ptr [ %.pre.i.i.i97, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i96 ], [ %i.op, %"_ZZN4llvm12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES1_EEERNS_25OptimizationRemarkEmitterEbENK3$_2clEv.exit.i" ] ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.ml
  br i1 %i.pg, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i99, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i98
  call void @free(ptr noundef %i.pf) #19
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i99

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i99: ; preds = %bb.aw, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES3_EEERS0_bE3$_2EEvT_PDTclfL0p_EE.exit"

"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES3_EEERS0_bE3$_2EEvT_PDTclfL0p_EE.exit": ; preds = %_ZNK4llvm25OptimizationRemarkEmitter7enabledEv.exit.i108, %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i99
  %i.ph = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21InlineRemarkAttribute, i64 120), align 8, !tbaa !56, !range !20, !noundef !21
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.ax, label %_ZNSt8optionalIN4llvm10InlineCostEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

bb.ax:                                            ; preds = %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES3_EEERS0_bE3$_2EEvT_PDTclfL0p_EE.exit"
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !61
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !66, !nonnull !21, !align !67
  %i.pm = call ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(8) %i.pl, ptr nonnull @.str.16, i64 13, ptr nonnull @.str.17, i64 8) #19
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.po = load ptr, ptr %i.pj, align 8, !tbaa !61
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !66, !nonnull !21, !align !67
  %i.pq = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.pn, ptr noundef nonnull align 8 dereferenceable(8) %i.pp, i32 noundef -1, ptr %i.pm) #19
  store ptr %i.pq, ptr %i.pn, align 8, !tbaa !69
  br label %_ZNSt8optionalIN4llvm10InlineCostEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

_ZN4llvm10InlineCostD2Ev.exit.thread:             ; preds = %bb.p, %.split, %_ZN4llvm10InlineCostD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %20, i64 24, i1 false)
  %i.pr = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ps, align 8, !tbaa !155
  %i.pt = load i8, ptr %i.pr, align 8, !tbaa !155, !range !20, !noundef !21
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.ay, label %_ZNSt8optionalIN4llvm10InlineCostEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

bb.ay:                                            ; preds = %_ZN4llvm10InlineCostD2Ev.exit.thread
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pw = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.py = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !157
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !157
  %i.qa = load i64, ptr %i.pw, align 8
  store i64 %i.qa, ptr %i.pv, align 8
  store i32 0, ptr %i.py, align 8, !tbaa !157
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qc = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qe = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !157
  store i32 %i.qf, ptr %i.qd, align 8, !tbaa !157
  %i.qg = load i64, ptr %i.qc, align 8
  store i64 %i.qg, ptr %i.qb, align 8
  store i32 0, ptr %i.qe, align 8, !tbaa !157
  store i8 1, ptr %i.ps, align 8, !tbaa !155
  br label %_ZNSt8optionalIN4llvm10InlineCostEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

_ZNSt8optionalIN4llvm10InlineCostEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit: ; preds = %bb.ay, %_ZN4llvm10InlineCostD2Ev.exit.thread, %bb.ax, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES3_EEERS0_bE3$_2EEvT_PDTclfL0p_EE.exit", %bb.d, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sink = phi i8 [ 1, %bb.d ], [ 0, %bb.ax ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %bb.c ], [ 0, %"_ZN4llvm25OptimizationRemarkEmitter4emitIZNS_12shouldInlineERNS_8CallBaseERNS_19TargetTransformInfoENS_12function_refIFNS_10InlineCostES3_EEERS0_bE3$_2EEvT_PDTclfL0p_EE.exit" ], [ 1, %_ZN4llvm10InlineCostD2Ev.exit.thread ], [ 1, %bb.ay ]
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sink, ptr %i.qh, align 8, !tbaa !154
  %i.qi = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.qj = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 8, !tbaa !155, !range !20, !noundef !21
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.az, label %_ZN4llvm10InlineCostD2Ev.exit112

bb.az:                                            ; preds = %_ZNSt8optionalIN4llvm10InlineCostEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit
  store i8 0, ptr %i.qj, align 8, !tbaa !155
  %i.qm = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !157
  %i.qo = icmp ugt i32 %i.qn, 64
  br i1 %i.qo, label %bb.ba, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i111

bb.ba:                                            ; preds = %bb.az
  %i.qp = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !30 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i111, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.qq) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i111

_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i111:           ; preds = %bb.bb, %bb.ba, %bb.az
  %i.qs = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !157
  %i.qu = icmp ugt i32 %i.qt, 64
  br i1 %i.qu, label %bb.bc, label %_ZN4llvm10InlineCostD2Ev.exit112

bb.bc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i111
  %i.qv = load ptr, ptr %i.qi, align 8, !tbaa !30 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %_ZN4llvm10InlineCostD2Ev.exit112, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZdaPv(ptr noundef nonnull %i.qv) #20
  br label %_ZN4llvm10InlineCostD2Ev.exit112

_ZN4llvm10InlineCostD2Ev.exit112:                 ; preds = %_ZNSt8optionalIN4llvm10InlineCostEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit, %_ZN4llvm5APIntD2Ev.exit.i.i.i.i.i.i111, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22formatCallSiteLocationB5cxx11ENS_8DebugLocERKNS_14CallSiteFormatE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [21 x i8], align 16               ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [21 x i8], align 16               ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::raw_string_ostream", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !50
  store i8 0, ptr %i.i, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.l, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.m, align 4, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %3, ptr %i.o, align 8, !tbaa !112
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %.not90 = icmp eq ptr %1, null
  br i1 %.not90, label %._crit_edge, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.lr.ph

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.lr.ph: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %9 = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 19 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 18 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.d, i64 17 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit

._crit_edge:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, %_ZNK4llvm10DILocation12getInlinedAtEv.exit, %bb.a
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !114, !nonnull !21, !align !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !48
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !50 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  store i64 %i.al, ptr %i.h, align 8, !tbaa !49
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) #19 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !29
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !49
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %._crit_edge
  %i.ap = phi ptr [ %i.an, %bb.b ], [ %i.ai, %._crit_edge ] ; 2 uses
  switch i64 %i.al, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !30
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !49  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !50
  %i.at = load ptr, ptr %0, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.av = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.i
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !30
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.lr.ph, %_ZNK4llvm10DILocation12getInlinedAtEv.exit
  %.092 = phi ptr [ %1, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.lr.ph ], [ %i.js, %_ZNK4llvm10DILocation12getInlinedAtEv.exit ] ; 9 uses
  %.sroa.077.091 = phi i1 [ true, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.lr.ph ], [ false, %_ZNK4llvm10DILocation12getInlinedAtEv.exit ] ; 3 uses
  %spec.select87 = select i1 %.sroa.077.091, i64 0, i64 3 ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !337
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !338 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %spec.select87, %i.bd
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %spec.select = select i1 %.sroa.077.091, ptr @.str.19, ptr @.str.18
  %i.bf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %spec.select, i64 noundef %spec.select87) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  br i1 %.sroa.077.091, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ba, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false)
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  store ptr %i.bh, ptr %i.q, align 8, !tbaa !338
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.f, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.092, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !347 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.092, i64 -16 ; 9 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = and i64 %i.bl, 2
  %.not.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bn = getelementptr inbounds i8, ptr %.092, i64 -32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24
  br label %_ZNK4llvm10DILocation8getScopeEv.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bp = lshr i64 %i.bl, 2
  %i.bq = and i64 %i.bp, 15
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.br
  br label %_ZNK4llvm10DILocation8getScopeEv.exit

_ZNK4llvm10DILocation8getScopeEv.exit:            ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.bo, %bb.h ]
  %i.bt = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !350
  %i.bu = call noundef ptr @_ZNK4llvm12DILocalScope13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !364 ; 2 uses
  %i.bx = sub i32 %i.bj, %i.bw
  %i.by = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bz = and i64 %i.by, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bz, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit
  %i.ca = getelementptr inbounds i8, ptr %.092, i64 -32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !24
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i.i

bb.k:                                             ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit
  %i.cc = lshr i64 %i.by, 2
  %i.cd = and i64 %i.cc, 15
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ce
  br label %_ZNK4llvm10DILocation8getScopeEv.exit.i.i

_ZNK4llvm10DILocation8getScopeEv.exit.i.i:        ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cf, %bb.k ], [ %i.cb, %bb.j ]
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !350 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !365
  %.not.i.i = icmp eq i8 %i.ch, 20
  br i1 %.not.i.i, label %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i, label %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i

_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i: ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i.i
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21EnableFSDiscriminatorE, i64 120), align 8, !tbaa !56, !range !20, !noundef !21
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.o, label %.thread9.i

_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i: ; preds = %_ZNK4llvm10DILocation8getScopeEv.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !347 ; 10 uses
  %i.cm = and i32 %i.cl, 7
  %i.cn = icmp eq i32 %i.cm, 7
  %i.co = icmp ugt i32 %i.cl, 7
  %i.cp = and i1 %i.co, %i.cn
  br i1 %i.cp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i
  %i.cq = lshr i32 %i.cl, 16
  %i.cr = and i32 %i.cq, 7
  %i.cs = and i32 %i.cl, 268435456
  %.not.i1.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i1.i, label %bb.m, label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ct = lshr i32 %i.cl, 3
  %.0.i.i.i = and i32 %i.ct, 65535
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.n:                                             ; preds = %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.i
  %i.cu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21EnableFSDiscriminatorE, i64 120), align 8, !tbaa !56, !range !20, !noundef !21
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i
  %spec.select.i35.i = phi i32 [ 0, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i ], [ %i.cl, %bb.n ]
  %i.cw = and i32 %spec.select.i35.i, 255
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.p:                                             ; preds = %bb.n
  %i.cx = and i32 %i.cl, 1
  %.not.i7.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i7.i.i, label %bb.q, label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

bb.q:                                             ; preds = %bb.p
  %i.cy = lshr exact i32 %i.cl, 1                 ; 2 uses
  %i.cz = and i32 %i.cl, 64
  %.not7.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not7.i.i.i, label %.thread9.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = lshr i32 %i.cl, 2
  %i.db = and i32 %i.da, 4064
  %i.dc = and i32 %i.cy, 31
  %i.dd = or disjoint i32 %i.db, %i.dc
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

.thread9.i:                                       ; preds = %bb.q, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i
  %i.de = phi i32 [ %i.cy, %bb.q ], [ 0, %_ZNK4llvm10DILocation16getDiscriminatorEv.exit.thread.i ]
  %i.df = and i32 %i.de, 31
  br label %_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit

_ZNK4llvm10DILocation20getBaseDiscriminatorEv.exit: ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.r, %.thread9.i
end_hunk_0
begin_hunk_1_@_ZN4llvm22formatCallSiteLocationB5cxx11ENS_8DebugLocERKNS_14CallSiteFormatE:bb.a
  %.sroa.5.0 = phi i64 [ %i.ea, %_ZNK4llvm12DISubprogram14getLinkageNameEv.exit ], [ %i.ey, %bb.aa ] ; 4 uses
  %.pn = phi { ptr, i64 } [ %i.dz, %_ZNK4llvm12DISubprogram14getLinkageNameEv.exit ], [ %i.ex, %bb.aa ]
  %.sroa.0.0 = extractvalue { ptr, i64 } %.pn, 0  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %.not.i29 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i29, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNK4llvm12DISubprogram7getNameEv.exit.thread, %_ZNK4llvm12DISubprogram7getNameEv.exit
  store ptr %i.r, ptr %5, align 8, !tbaa !48, !alias.scope !474
  store i64 0, ptr %i.s, align 8, !tbaa !50, !alias.scope !474
  store i8 0, ptr %i.r, align 8, !tbaa !30, !alias.scope !474
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.ac:                                            ; preds = %_ZNK4llvm12DISubprogram7getNameEv.exit
  store ptr %i.r, ptr %5, align 8, !tbaa !48, !alias.scope !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19, !noalias !474
  store i64 %.sroa.5.0, ptr %i.g, align 8, !tbaa !49, !noalias !474
  %i.ez = icmp ugt i64 %.sroa.5.0, 15
  br i1 %i.ez, label %bb.ad, label %._crit_edge.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.fa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #19 ; 2 uses
  store ptr %i.fa, ptr %5, align 8, !tbaa !29, !alias.scope !474
  %i.fb = load i64, ptr %i.g, align 8, !tbaa !49, !noalias !474
  store i64 %i.fb, ptr %i.r, align 8, !tbaa !30, !alias.scope !474
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ad, %bb.ac
  %i.fc = phi ptr [ %i.fa, %bb.ad ], [ %i.r, %bb.ac ] ; 2 uses
  switch i64 %.sroa.5.0, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.fd = load i8, ptr %.sroa.0.0, align 1, !tbaa !30
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.5.0, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i
  %i.fe = load i64, ptr %i.g, align 8, !tbaa !49, !noalias !474 ; 2 uses
  store i64 %i.fe, ptr %i.s, align 8, !tbaa !50, !alias.scope !474
  %i.ff = load ptr, ptr %5, align 8, !tbaa !29, !alias.scope !474
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19, !noalias !474
  %.pre = load ptr, ptr %5, align 8, !tbaa !29
  %.pre95 = load i64, ptr %i.s, align 8, !tbaa !50
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.fh = phi i64 [ 0, %bb.ab ], [ %.pre95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  %i.fi = phi ptr [ %i.r, %bb.ab ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  %i.fj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.fi, i64 noundef %i.fh) #19 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !337
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !338 ; 2 uses
  %i.fo = icmp eq ptr %i.fl, %i.fn
  br i1 %i.fo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.fp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull @.str.20, i64 noundef 1) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.ah:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store i8 58, ptr %i.fn, align 1
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !338
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  store ptr %i.fr, ptr %i.fm, align 8, !tbaa !338
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.ag, %bb.ah
  %.0.i.i = phi ptr [ %i.fp, %bb.ag ], [ %i.fj, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19, !noalias !475
  %i.fs = icmp eq i32 %i.bj, %i.bw
  br i1 %i.fs, label %.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ft = zext i32 %i.bx to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 48, ptr %i.u, align 4, !tbaa !30, !noalias !475
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.111.i = phi ptr [ %i.fx, %.lr.ph.i ], [ %i.t, %.lr.ph.i.preheader ]
  %.0810.i = phi i64 [ %i.fy, %.lr.ph.i ], [ %i.ft, %.lr.ph.i.preheader ] ; 3 uses
  %i.fu = urem i64 %.0810.i, 10
  %i.fv = trunc nuw nsw i64 %i.fu to i8
  %i.fw = or disjoint i8 %i.fv, 48
  %i.fx = getelementptr inbounds i8, ptr %.111.i, i64 -1 ; 3 uses
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !30, !noalias !475
  %i.fy = udiv i64 %.0810.i, 10
  %.not.i30 = icmp samesign ult i64 %.0810.i, 10
  br i1 %.not.i30, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !468

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread.i
  %.1.lcssa.i = phi ptr [ %i.u, %.thread.i ], [ %i.fx, %.lr.ph.i ] ; 3 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !48, !alias.scope !475
  store i64 0, ptr %i.w, align 8, !tbaa !50, !alias.scope !475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19, !noalias !475
  %i.fz = ptrtoint ptr %.1.lcssa.i to i64
  %i.ga = sub i64 %i.x, %i.fz                     ; 4 uses
  store i64 %i.ga, ptr %i.e, align 8, !tbaa !49, !noalias !475
  %i.gb = icmp ugt i64 %i.ga, 15
  br i1 %i.gb, label %bb.ai, label %._crit_edge.i.i.i31

bb.ai:                                            ; preds = %._crit_edge.i
  %i.gc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #19 ; 2 uses
  store ptr %i.gc, ptr %6, align 8, !tbaa !29, !alias.scope !475
  %i.gd = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !475
  store i64 %i.gd, ptr %i.v, align 8, !tbaa !30, !alias.scope !475
  br label %._crit_edge.i.i.i31

._crit_edge.i.i.i31:                              ; preds = %bb.ai, %._crit_edge.i
  %i.ge = phi ptr [ %i.gc, %bb.ai ], [ %i.v, %._crit_edge.i ] ; 2 uses
  switch i64 %i.ga, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i31
  %i.gf = load i8, ptr %.1.lcssa.i, align 1, !tbaa !30, !noalias !475
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !30
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull align 1 %.1.lcssa.i, i64 %i.ga, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

_ZN4llvm6utostrB5cxx11Emb.exit:                   ; preds = %._crit_edge.i.i.i31, %bb.aj, %bb.ak
  %i.gg = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !475 ; 2 uses
  store i64 %i.gg, ptr %i.w, align 8, !tbaa !50, !alias.scope !475
  %i.gh = load ptr, ptr %6, align 8, !tbaa !29, !alias.scope !475
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  store i8 0, ptr %i.gi, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19, !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19, !noalias !475
  %i.gj = load ptr, ptr %6, align 8, !tbaa !29
  %i.gk = load i64, ptr %i.w, align 8, !tbaa !50
  %i.gl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.gj, i64 noundef %i.gk) #19 ; 0 uses
  %i.gm = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.v
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  %i.go = load i64, ptr %i.v, align 8, !tbaa !30
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.gq = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.r
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.gs = load i64, ptr %i.r, align 8, !tbaa !30
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.gu = load i32, ptr %2, align 4, !tbaa !478   ; 2 uses
  %i.gv = and i32 %i.gu, -3
  %spec.select.i = icmp eq i32 %i.gv, 1
  br i1 %spec.select.i, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.gw = load ptr, ptr %i.p, align 8, !tbaa !337
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !338 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.20, i64 noundef 1) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.an:                                            ; preds = %bb.al
  store i8 58, ptr %i.gx, align 1
  %i.ha = load ptr, ptr %i.q, align 8, !tbaa !338
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  store ptr %i.hb, ptr %i.q, align 8, !tbaa !338
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm11raw_ostreamlsEPKc.exit40:               ; preds = %bb.am, %bb.an
  %.0.i.i39 = phi ptr [ %i.gz, %bb.am ], [ %4, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.hc = getelementptr inbounds nuw i8, ptr %.092, i64 2
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !366 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !479
  %i.he = icmp eq i16 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i41.preheader, label %.lr.ph.i41

.lr.ph.i41.preheader:                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  store i8 48, ptr %i.z, align 4, !tbaa !30, !noalias !479
  br label %._crit_edge.i45

.lr.ph.i41:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %14 = urem i16 %i.hd, 10
  %15 = udiv i16 %i.hd, 10
  %16 = trunc nuw nsw i16 %14 to i8
  %17 = or disjoint i8 %16, 48
  store i8 %17, ptr %9, align 4, !tbaa !30, !noalias !479
  %.not.i44 = icmp ult i16 %i.hd, 10
  br i1 %.not.i44, label %._crit_edge.i45, label %.lr.ph.i41.1

.lr.ph.i41.1:                                     ; preds = %.lr.ph.i41
  %18 = urem i16 %15, 10
  %19 = trunc nuw nsw i16 %18 to i8
  %20 = or disjoint i8 %19, 48
  store i8 %20, ptr %10, align 1, !tbaa !30, !noalias !479
  %.not.i44.1 = icmp ult i16 %i.hd, 100
  br i1 %.not.i44.1, label %._crit_edge.i45, label %.thread.i48

.thread.i48:                                      ; preds = %.lr.ph.i41.1
  %21 = udiv i16 %i.hd, 100
  %22 = urem i16 %21, 10
  %23 = trunc nuw nsw i16 %22 to i8
  %24 = or disjoint i8 %23, 48
  store i8 %24, ptr %11, align 2, !tbaa !30, !noalias !479
  %.not.i44.2 = icmp ult i16 %i.hd, 1000
  br i1 %.not.i44.2, label %._crit_edge.i45, label %.lr.ph.i41.a

.lr.ph.i41.a:                                     ; preds = %.thread.i48
  %25 = udiv i16 %i.hd, 1000
  %26 = urem i16 %25, 10
  %i.hf = trunc nuw nsw i16 %26 to i8
  %i.hg = or disjoint i8 %i.hf, 48
  store i8 %i.hg, ptr %12, align 1, !tbaa !30, !noalias !479
  %.not.i44.a = icmp ult i16 %i.hd, 10000
  br i1 %.not.i44.a, label %._crit_edge.i45, label %.lr.ph.i41.4

.lr.ph.i41.4:                                     ; preds = %.lr.ph.i41.a
  %27 = udiv i16 %i.hd, 10000
  %28 = trunc nuw nsw i16 %27 to i8
  %29 = or disjoint i8 %28, 48
  store i8 %29, ptr %13, align 1, !tbaa !30, !noalias !479
  br label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %.lr.ph.i41, %.lr.ph.i41.1, %.thread.i48, %.lr.ph.i41.a, %.lr.ph.i41.4, %.lr.ph.i41.preheader
  %.1.lcssa.i46 = phi ptr [ %i.z, %.lr.ph.i41.preheader ], [ %9, %.lr.ph.i41 ], [ %10, %.lr.ph.i41.1 ], [ %11, %.thread.i48 ], [ %12, %.lr.ph.i41.a ], [ %13, %.lr.ph.i41.4 ] ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !48, !alias.scope !479
  store i64 0, ptr %i.ab, align 8, !tbaa !50, !alias.scope !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !479
  %i.hh = ptrtoint ptr %.1.lcssa.i46 to i64
  %i.hi = sub i64 %i.ac, %i.hh                    ; 4 uses
  store i64 %i.hi, ptr %i.c, align 8, !tbaa !49, !noalias !479
  %i.hj = icmp ugt i64 %i.hi, 15
  br i1 %i.hj, label %bb.ao, label %._crit_edge.i.i.i47

bb.ao:                                            ; preds = %._crit_edge.i45
  %i.hk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #19 ; 2 uses
  store ptr %i.hk, ptr %7, align 8, !tbaa !29, !alias.scope !479
  %i.hl = load i64, ptr %i.c, align 8, !tbaa !49, !noalias !479
  store i64 %i.hl, ptr %i.aa, align 8, !tbaa !30, !alias.scope !479
  br label %._crit_edge.i.i.i47

._crit_edge.i.i.i47:                              ; preds = %bb.ao, %._crit_edge.i45
  %i.hm = phi ptr [ %i.hk, %bb.ao ], [ %i.aa, %._crit_edge.i45 ] ; 2 uses
  switch i64 %i.hi, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit49
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i47
  %i.hn = load i8, ptr %.1.lcssa.i46, align 1, !tbaa !30, !noalias !479
  store i8 %i.hn, ptr %i.hm, align 1, !tbaa !30
  br label %_ZN4llvm6utostrB5cxx11Emb.exit49

bb.aq:                                            ; preds = %._crit_edge.i.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr nonnull align 1 %.1.lcssa.i46, i64 %i.hi, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit49

_ZN4llvm6utostrB5cxx11Emb.exit49:                 ; preds = %._crit_edge.i.i.i47, %bb.ap, %bb.aq
  %i.ho = load i64, ptr %i.c, align 8, !tbaa !49, !noalias !479 ; 2 uses
  store i64 %i.ho, ptr %i.ab, align 8, !tbaa !50, !alias.scope !479
  %i.hp = load ptr, ptr %7, align 8, !tbaa !29, !alias.scope !479
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  store i8 0, ptr %i.hq, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !479
  %i.hr = load ptr, ptr %7, align 8, !tbaa !29
  %i.hs = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.ht = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i39, ptr noundef %i.hr, i64 noundef %i.hs) #19 ; 0 uses
  %i.hu = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.aa
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit49
  %i.hw = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre96 = load i32, ptr %2, align 4, !tbaa !478
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.hy = phi i32 [ %.pre96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  %i.hz = and i32 %i.hy, -2
  %spec.select.i53 = icmp eq i32 %i.hz, 2
  %i.ia = icmp ne i32 %.1.i.i, 0
  %or.cond = and i1 %i.ia, %spec.select.i53
  br i1 %or.cond, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.ib = load ptr, ptr %i.p, align 8, !tbaa !337
  %i.ic = load ptr, ptr %i.q, align 8, !tbaa !338 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ie = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.21, i64 noundef 1) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

bb.au:                                            ; preds = %bb.as
  store i8 46, ptr %i.ic, align 1
  %i.if = load ptr, ptr %i.q, align 8, !tbaa !338
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store ptr %i.ig, ptr %i.q, align 8, !tbaa !338
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

_ZN4llvm11raw_ostreamlsEPKc.exit56:               ; preds = %bb.at, %bb.au
  %.0.i.i55 = phi ptr [ %i.ie, %bb.at ], [ %4, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ih = zext nneg i32 %.1.i.i to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !480
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56, %.lr.ph.i57
  %.111.i58 = phi ptr [ %i.il, %.lr.ph.i57 ], [ %i.ad, %_ZN4llvm11raw_ostreamlsEPKc.exit56 ]
  %.0810.i59 = phi i64 [ %i.im, %.lr.ph.i57 ], [ %i.ih, %_ZN4llvm11raw_ostreamlsEPKc.exit56 ] ; 3 uses
  %i.ii = urem i64 %.0810.i59, 10
  %i.ij = trunc nuw nsw i64 %i.ii to i8
  %i.ik = or disjoint i8 %i.ij, 48
  %i.il = getelementptr inbounds i8, ptr %.111.i58, i64 -1 ; 5 uses
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !30, !noalias !480
  %i.im = udiv i64 %.0810.i59, 10
  %.not.i60 = icmp samesign ult i64 %.0810.i59, 10
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i57, !llvm.loop !468

._crit_edge.i61:                                  ; preds = %.lr.ph.i57
  store ptr %i.ae, ptr %8, align 8, !tbaa !48, !alias.scope !480
  store i64 0, ptr %i.af, align 8, !tbaa !50, !alias.scope !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !480
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.ag, %i.in                    ; 4 uses
  store i64 %i.io, ptr %i.a, align 8, !tbaa !49, !noalias !480
  %i.ip = icmp ugt i64 %i.io, 15
  br i1 %i.ip, label %bb.av, label %._crit_edge.i.i.i63

bb.av:                                            ; preds = %._crit_edge.i61
  %i.iq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.iq, ptr %8, align 8, !tbaa !29, !alias.scope !480
  %i.ir = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !480
  store i64 %i.ir, ptr %i.ae, align 8, !tbaa !30, !alias.scope !480
  br label %._crit_edge.i.i.i63

._crit_edge.i.i.i63:                              ; preds = %bb.av, %._crit_edge.i61
  %i.is = phi ptr [ %i.iq, %bb.av ], [ %i.ae, %._crit_edge.i61 ] ; 2 uses
  switch i64 %i.io, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit65
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i63
  %i.it = load i8, ptr %i.il, align 1, !tbaa !30, !noalias !480
  store i8 %i.it, ptr %i.is, align 1, !tbaa !30
  br label %_ZN4llvm6utostrB5cxx11Emb.exit65

bb.ax:                                            ; preds = %._crit_edge.i.i.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.is, ptr noundef nonnull align 1 dereferenceable(1) %i.il, i64 %i.io, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit65

_ZN4llvm6utostrB5cxx11Emb.exit65:                 ; preds = %._crit_edge.i.i.i63, %bb.aw, %bb.ax
  %i.iu = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !480 ; 2 uses
  store i64 %i.iu, ptr %i.af, align 8, !tbaa !50, !alias.scope !480
  %i.iv = load ptr, ptr %8, align 8, !tbaa !29, !alias.scope !480
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iu
  store i8 0, ptr %i.iw, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !480
  %i.ix = load ptr, ptr %8, align 8, !tbaa !29
  %i.iy = load i64, ptr %i.af, align 8, !tbaa !50
  %i.iz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i55, ptr noundef %i.ix, i64 noundef %i.iy) #19 ; 0 uses
  %i.ja = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ae
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit65
  %i.jc = load i64, ptr %i.ae, align 8, !tbaa !30
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.ar
  %i.je = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.jf = and i64 %i.je, 2
  %.not.i.i.i.i69 = icmp eq i64 %i.jf, 0
  br i1 %.not.i.i.i.i69, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %bb.ay
  %i.jg = and i64 %i.je, 960
  %i.jh = icmp eq i64 %i.jg, 128
  br i1 %i.jh, label %bb.az, label %._crit_edge

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %bb.ay
  %i.ji = getelementptr inbounds i8, ptr %.092, i64 -24
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !84
  %i.jk = icmp eq i32 %i.jj, 2
  br i1 %i.jk, label %.thread.i.i, label %._crit_edge

.thread.i.i:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i
  %i.jl = getelementptr inbounds i8, ptr %.092, i64 -32
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !24
  br label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

bb.az:                                            ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %i.jn = lshr i64 %i.je, 2
  %i.jo = and i64 %i.jn, 15
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.jp
  br label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

_ZNK4llvm10DILocation12getInlinedAtEv.exit:       ; preds = %.thread.i.i, %bb.az
  %.sroa.0.0.i.i.i.i71 = phi ptr [ %i.jq, %bb.az ], [ %i.jm, %.thread.i.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i71, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !350 ; 2 uses
  %.not = icmp eq ptr %i.js, null
  br i1 %.not, label %._crit_edge, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit, !llvm.loop !473
}

declare noundef ptr @_ZNK4llvm12DILocalScope13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

end_hunk_1
