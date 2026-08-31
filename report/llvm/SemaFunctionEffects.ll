Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaFunctionEffects?download=true
inline.NumInlined: 2371
inline.NumDeleted: 1423
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12_GLOBAL__N_18Analyzer16completeAnalysisERKNS_12CallableInfoEONS_23PendingFunctionAnalysisE:bb.a
._crit_edge._crit_edge57.i.i.i.i.i.i.us.i:        ; preds = %bb.gc, %._crit_edge.i.i.i.i.i.i.us.i
  %.2.i.i.i.i.i.i.us.i = phi ptr [ %i.aio, %bb.gc ], [ %.val7.i.i.i13, %._crit_edge.i.i.i.i.i.i.us.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.us.i = load i8, ptr %.2.i.i.i.i.i.i.us.i, align 8, !tbaa !30
  %i.aip = icmp eq i8 %.2.val.i.i.i.i.i.i.us.i, %i.ail
  br i1 %i.aip, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.us.i, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge._crit_edge57.i.i.i.i.i.i.us.i, %._crit_edge.i.i.i.i.i.i.us.i
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.us.i

_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.us.i: ; preds = %bb.gd, %._crit_edge._crit_edge57.i.i.i.i.i.i.us.i, %._crit_edge._crit_edge.i.i.i.i.i.i.us.i, %bb.gb
  %.028.i.i.i.i.i.i.us.i = phi ptr [ %.1.i.i.i.i.i.i.us.i, %._crit_edge._crit_edge.i.i.i.i.i.i.us.i ], [ %i.aie, %bb.gd ], [ %.2.i.i.i.i.i.i.us.i, %._crit_edge._crit_edge57.i.i.i.i.i.i.us.i ], [ %.val7.i.i.i13, %bb.gb ] ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %.028.i.i.i.i.i.i.us.i, %i.aig
  %i.aiq = icmp eq ptr %.028.i.i.i.i.i.i.us.i, null
  %or.cond.us.i = or i1 %.not.i.i.us.i, %i.aiq
  br i1 %or.cond.us.i, label %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.us17.i, label %bb.ge

_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.us17.i: ; preds = %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.us.i
  %i.air = shl nuw nsw i64 1, %.sroa.4.014.us15.i
  %i.ais = or i64 %i.air, %i.aik                  ; 2 uses
  store i64 %i.ais, ptr %i.ahf, align 8, !tbaa !774
  br label %bb.ge

bb.ge:                                            ; preds = %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.us17.i, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.us.i
  %i.ait = phi i64 [ %i.ais, %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.us17.i ], [ %i.aik, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.us.i ]
  %i.aiu = icmp ult i64 %.sroa.4.014.us15.i, 3
  br i1 %i.aiu, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i:       ; preds = %bb.ge
  %i.aiv = add nuw nsw i64 %.sroa.4.014.us15.i, 1
  %i.aiw = shl nuw nsw i64 2, %.sroa.4.014.us15.i
  %i.aix = and i64 %i.aiw, %.sroa.0.0.copyload
  %.not.i.i15.us20.i = icmp eq i64 %i.aix, 0
  br i1 %.not.i.i15.us20.i, label %bb.gf, label %._crit_edge.i.i.i.i.i.i.us.i.loopexit

bb.gf:                                            ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i
  %i.aiy = add nuw nsw i64 %.sroa.4.014.us15.i, 2 ; 2 uses
  %exitcond.not.i.i.us21.i = icmp eq i64 %i.aiy, 4
  br i1 %exitcond.not.i.i.us21.i, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i.1

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i.1:     ; preds = %bb.gf
  %i.aiz = shl nuw nsw i64 4, %.sroa.4.014.us15.i
  %i.aja = and i64 %i.aiz, %.sroa.0.0.copyload
  %.not.i.i15.us20.i.1 = icmp eq i64 %i.aja, 0
  br i1 %.not.i.i15.us20.i.1, label %bb.gg, label %._crit_edge.i.i.i.i.i.i.us.i.loopexit

bb.gg:                                            ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i.1
  %i.ajb = add nuw nsw i64 %.sroa.4.014.us15.i, 3 ; 2 uses
  %exitcond.not.i.i.us21.i.1 = icmp eq i64 %i.ajb, 4
  br i1 %exitcond.not.i.i.us21.i.1, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i.2

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i.2:     ; preds = %bb.gg
  %i.ajc = shl nuw nsw i64 8, %.sroa.4.014.us15.i
  %i.ajd = and i64 %i.ajc, %.sroa.0.0.copyload
  %.not.i.i15.us20.i.2 = icmp eq i64 %i.ajd, 0
  br i1 %.not.i.i15.us20.i.2, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit, label %._crit_edge.i.i.i.i.i.i.us.i.loopexit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.aje = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i.i17, i64 32
  br label %.lr.ph.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i18.loopexit:                  ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.2, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.1, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i
  %.sroa.4.1.i.lcssa = phi i64 [ %i.akd, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i ], [ %i.akg, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.1 ], [ %i.akj, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.2 ]
  br label %.lr.ph.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %.lr.ph.i.i.i.i.i.i.i18.loopexit, %.lr.ph.split.split.i
  %i.ajf = phi i64 [ %.sroa.01.0.copyload, %.lr.ph.split.split.i ], [ %i.akb, %.lr.ph.i.i.i.i.i.i.i18.loopexit ] ; 2 uses
  %.sroa.4.014.i = phi i64 [ %.sroa.2.1.i.ph.i, %.lr.ph.split.split.i ], [ %.sroa.4.1.i.lcssa, %.lr.ph.i.i.i.i.i.i.i18.loopexit ] ; 9 uses
  %i.ajg = trunc nuw nsw i64 %.sroa.4.014.i to i8 ; 7 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gl, %.lr.ph.i.i.i.i.i.i.i18
  %.051.i.i.i.i.i.i.i19 = phi i64 [ %i.aif, %.lr.ph.i.i.i.i.i.i.i18 ], [ %i.ajp, %bb.gl ] ; 2 uses
  %.02950.i.i.i.i.i.i.i20 = phi ptr [ %.val7.i.i.i13, %.lr.ph.i.i.i.i.i.i.i18 ], [ %i.ajo, %bb.gl ] ; 9 uses
  %.029.val39.i.i.i.i.i.i.i21 = load i8, ptr %.02950.i.i.i.i.i.i.i20, align 8, !tbaa !30
  %i.ajh = icmp eq i8 %.029.val39.i.i.i.i.i.i.i21, %i.ajg
  br i1 %i.ajh, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aji = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i.i20, i64 32
  %.val37.i.i.i.i.i.i.i22 = load i8, ptr %i.aji, align 8, !tbaa !30
  %i.ajj = icmp eq i8 %.val37.i.i.i.i.i.i.i22, %i.ajg
  br i1 %i.ajj, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ajk = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i.i20, i64 64
  %.val35.i.i.i.i.i.i.i23 = load i8, ptr %i.ajk, align 8, !tbaa !30
  %i.ajl = icmp eq i8 %.val35.i.i.i.i.i.i.i23, %i.ajg
  br i1 %i.ajl, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit196, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ajm = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i.i20, i64 96
  %.val33.i.i.i.i.i.i.i24 = load i8, ptr %i.ajm, align 8, !tbaa !30
  %i.ajn = icmp eq i8 %.val33.i.i.i.i.i.i.i24, %i.ajg
  br i1 %i.ajn, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit198, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ajo = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i.i20, i64 128
  %i.ajp = add nsw i64 %.051.i.i.i.i.i.i.i19, -1
  %i.ajq = icmp sgt i64 %.051.i.i.i.i.i.i.i19, 1
  br i1 %i.ajq, label %bb.gh, label %._crit_edge.loopexit.i.i.i.i.i.i.i25, !llvm.loop !1000

._crit_edge.loopexit.i.i.i.i.i.i.i25:             ; preds = %bb.gl
  switch i32 %i.aii, label %default.unreachable [
    i32 3, label %bb.gm
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i34
    i32 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i.i31
    i32 0, label %bb.go
  ]

bb.gm:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i25
  %.029.val.i.i.i.i.i.i.i37 = load i8, ptr %scevgep.i.i.i.i.i.i.i17, align 8, !tbaa !30
  %i.ajr = icmp eq i8 %.029.val.i.i.i.i.i.i.i37, %i.ajg
  br i1 %i.ajr, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26, label %._crit_edge._crit_edge.i.i.i.i.i.i.i34

._crit_edge._crit_edge.i.i.i.i.i.i.i34:           ; preds = %bb.gm, %._crit_edge.loopexit.i.i.i.i.i.i.i25
  %.1.i.i.i.i.i.i.i35 = phi ptr [ %scevgep.i.i.i.i.i.i.i17, %._crit_edge.loopexit.i.i.i.i.i.i.i25 ], [ %i.aje, %bb.gm ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i36 = load i8, ptr %.1.i.i.i.i.i.i.i35, align 8, !tbaa !30
  %i.ajs = icmp eq i8 %.1.val.i.i.i.i.i.i.i36, %i.ajg
  br i1 %i.ajs, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i34
  %i.ajt = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i35, i64 32
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i.i31

._crit_edge._crit_edge57.i.i.i.i.i.i.i31:         ; preds = %bb.gn, %._crit_edge.loopexit.i.i.i.i.i.i.i25
  %.2.i.i.i.i.i.i.i32 = phi ptr [ %i.ajt, %bb.gn ], [ %scevgep.i.i.i.i.i.i.i17, %._crit_edge.loopexit.i.i.i.i.i.i.i25 ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i33 = load i8, ptr %.2.i.i.i.i.i.i.i32, align 8, !tbaa !30
  %i.aju = icmp eq i8 %.2.val.i.i.i.i.i.i.i33, %i.ajg
  br i1 %i.aju, label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26, label %bb.go

default.unreachable:                              ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i25
  unreachable

bb.go:                                            ; preds = %._crit_edge._crit_edge57.i.i.i.i.i.i.i31, %._crit_edge.loopexit.i.i.i.i.i.i.i25
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26

_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit: ; preds = %bb.gi
  %i.ajv = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i.i20, i64 32
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26

_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit196: ; preds = %bb.gj
  %i.ajw = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i.i20, i64 64
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26

_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit198: ; preds = %bb.gk
  %i.ajx = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i.i.i20, i64 96
  br label %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26

_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26: ; preds = %bb.gh, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit196, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit198, %bb.go, %._crit_edge._crit_edge57.i.i.i.i.i.i.i31, %._crit_edge._crit_edge.i.i.i.i.i.i.i34, %bb.gm
  %.028.i.i.i.i.i.i.i27 = phi ptr [ %.1.i.i.i.i.i.i.i35, %._crit_edge._crit_edge.i.i.i.i.i.i.i34 ], [ %i.aie, %bb.go ], [ %.2.i.i.i.i.i.i.i32, %._crit_edge._crit_edge57.i.i.i.i.i.i.i31 ], [ %scevgep.i.i.i.i.i.i.i17, %bb.gm ], [ %i.ajx, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit198 ], [ %i.ajw, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit196 ], [ %i.ajv, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26.loopexit.split.loop.exit ], [ %.02950.i.i.i.i.i.i.i20, %bb.gh ] ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %.028.i.i.i.i.i.i.i27, %i.aig
  %i.ajy = icmp eq ptr %.028.i.i.i.i.i.i.i27, null
  %or.cond.i29 = or i1 %.not.i.i.i28, %i.ajy
  br i1 %or.cond.i29, label %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i, label %bb.gp

.split.us.i:                                      ; preds = %_ZN12_GLOBAL__N_123PendingFunctionAnalysis28violationForInferrableEffectEN5clang14FunctionEffectE.exit.thread.us.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %i.aho, i64 noundef 4) #21
  unreachable

_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i: ; preds = %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26
  %i.ajz = shl nuw nsw i64 1, %.sroa.4.014.i
  %i.aka = or i64 %i.ajz, %i.ajf                  ; 2 uses
  store i64 %i.aka, ptr %i.ahf, align 8, !tbaa !774
  br label %bb.gp

bb.gp:                                            ; preds = %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26
  %i.akb = phi i64 [ %i.ajf, %_ZN4llvm7find_ifIRNS_11SmallVectorIN12_GLOBAL__N_19ViolationELj1EEEZNS2_20EffectToViolationMap6lookupEN5clang14FunctionEffectEEUlRKT_E_EEDaOS9_T0_.exit.i.i.i26 ], [ %i.aka, %_ZN5clang21FunctionEffectKindSet6insertENS_14FunctionEffectE.exit.i ]
  %i.akc = icmp ult i64 %.sroa.4.014.i, 3
  br i1 %i.akc, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i:            ; preds = %bb.gp
  %i.akd = add nuw nsw i64 %.sroa.4.014.i, 1
  %i.ake = shl nuw nsw i64 2, %.sroa.4.014.i
  %i.akf = and i64 %i.ake, %.sroa.0.0.copyload
  %.not.i.i15.i = icmp eq i64 %i.akf, 0
  br i1 %.not.i.i15.i, label %bb.gq, label %.lr.ph.i.i.i.i.i.i.i18.loopexit

bb.gq:                                            ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i
  %i.akg = add nuw nsw i64 %.sroa.4.014.i, 2      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.akg, 4
  br i1 %exitcond.not.i.i.i, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.1

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.1:          ; preds = %bb.gq
  %i.akh = shl nuw nsw i64 4, %.sroa.4.014.i
  %i.aki = and i64 %i.akh, %.sroa.0.0.copyload
  %.not.i.i15.i.1 = icmp eq i64 %i.aki, 0
  br i1 %.not.i.i15.i.1, label %bb.gr, label %.lr.ph.i.i.i.i.i.i.i18.loopexit

bb.gr:                                            ; preds = %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.1
  %i.akj = add nuw nsw i64 %.sroa.4.014.i, 3      ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.akj, 4
  br i1 %exitcond.not.i.i.i.1, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit, label %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.2

_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.2:          ; preds = %bb.gr
  %i.akk = shl nuw nsw i64 8, %.sroa.4.014.i
  %i.akl = and i64 %i.akk, %.sroa.0.0.copyload
  %.not.i.i15.i.2 = icmp eq i64 %i.akl, 0
  br i1 %.not.i.i15.i.2, label %_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit, label %.lr.ph.i.i.i.i.i.i.i18.loopexit

_ZN12_GLOBAL__N_124CompleteFunctionAnalysisC2ERN5clang10ASTContextEONS_23PendingFunctionAnalysisENS1_21FunctionEffectKindSetES6_.exit: ; preds = %bb.gp, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.2, %bb.gq, %bb.gr, %bb.ge, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i.2, %bb.gf, %bb.gg, %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit.us.i, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us.i.2, %bb.fz, %bb.ga, %_ZNK5clang21FunctionEffectKindSet5beginEv.exit.._crit_edge_crit_edge.i
  %i.akm = phi ptr [ %.pre.i, %_ZNK5clang21FunctionEffectKindSet5beginEv.exit.._crit_edge_crit_edge.i ], [ null, %_ZN5clang21FunctionEffectKindSet8iteratorppEv.exit.us.i ], [ %.val.i12, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.i.2 ], [ %.val.i12, %bb.ge ], [ %.val.i12, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us18.i.2 ], [ null, %_ZNKSt6bitsetILm4EE4testEm.exit.i.i.us.i.2 ], [ null, %bb.ga ], [ null, %bb.fz ], [ %.val.i12, %bb.gg ], [ %.val.i12, %bb.gf ], [ %.val.i12, %bb.gr ], [ %.val.i12, %bb.gq ], [ %.val.i12, %bb.gp ]
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ako = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.ako, align 8, !tbaa !795
  store ptr %i.akm, ptr %i.akn, align 8, !tbaa !795
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.akq = load ptr, ptr %1, align 8, !tbaa !803
  %i.akr = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN12_GLOBAL__N_18Analyzer11AnalysisMapixEPKN5clang4DeclE(ptr noundef nonnull align 8 dereferenceable(24) %i.akp, ptr noundef %i.akq)
  %i.aks = ptrtoint ptr %i.ahf to i64
  %i.akt = or i64 %i.aks, 4
  store i64 %i.akt, ptr %i.akr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang12FunctionDecl18getFunctionEffectsEv(ptr dead_on_unwind noalias writable sret(%"class.clang::FunctionEffectsRef") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1003 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -2
  %spec.select.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  br i1 %.not.i.i.i, label %_ZNK5clang12RedeclarableINS_12FunctionDeclEE17getMostRecentDeclEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1006 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1009 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1010
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !776

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1009
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1011
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1013
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1014
  %i.x = or i64 %.pre-phi.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i, 1           ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i = phi i64 [ %i.z, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.a ] ; 2 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i10.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i, -6 ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 4 uses
  %.not.not14.i.i.i.i = icmp eq i64 %i.ab, 0
  %.not.not.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %_ZNK5clang12RedeclarableINS_12FunctionDeclEE17getMostRecentDeclEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1013
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1011 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1015 ; 2 uses
  %.not12.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !1013
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !69
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !34
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !34
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #20, !inline_history !1018
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1014
  br label %_ZNK5clang12RedeclarableINS_12FunctionDeclEE17getMostRecentDeclEv.exit

_ZNK5clang12RedeclarableINS_12FunctionDeclEE17getMostRecentDeclEv.exit: ; preds = %bb.b, %bb.i, %bb.l
  %.3.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.am, %bb.l ], [ %i.ac, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !tbaa !48
  %i.ao = and i64 %.sroa.0.0.copyload.i, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !814 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 16
  %.not.i = icmp eq i8 %i.as, 24
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang12RedeclarableINS_12FunctionDeclEE17getMostRecentDeclEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i.i.i.i4 = load i64, ptr %i.at, align 8, !tbaa !48
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i4, -16
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !814
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 16
  %i.az = icmp eq i8 %i.ay, 24
  br i1 %i.az, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %_ZNK5clang17FunctionProtoType18getFunctionEffectsEv.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.m
  %i.ba = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aq) #20 ; 2 uses
  %.not.not = icmp eq ptr %i.ba, null
  br i1 %.not.not, label %_ZNK5clang17FunctionProtoType18getFunctionEffectsEv.exit.thread, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang12RedeclarableINS_12FunctionDeclEE17getMostRecentDeclEv.exit, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.1.i7 = phi ptr [ %i.ba, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %i.aq, %_ZNK5clang12RedeclarableINS_12FunctionDeclEE17getMostRecentDeclEv.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i7, i64 16
  %i.bc = load i64, ptr %i.bb, align 16, !noalias !1019 ; 8 uses
  %i.bd = and i64 %i.bc, 1073741824
  %.not23.i = icmp eq i64 %i.bd, 0
  br i1 %.not23.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %.1.i7, i64 48
  %i.bf = lshr i64 %i.bc, 48                      ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = lshr i64 %i.bc, 31
  %.lobit.i.i.i.i = and i64 %i.bh, 1
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.lobit.i.i.i.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %i.bj, 7
  %i.bl = and i64 %i.bk, -8
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = load i24, ptr %i.bm, align 8, !noalias !1019 ; 5 uses
  %i.bo = lshr i24 %i.bn, 13
  %i.bp = and i24 %i.bo, 15                       ; 2 uses
  %.not.not.i = icmp eq i24 %i.bp, 0
  br i1 %.not.not.i, label %.thread.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.bq = and i24 %i.bn, 4096
  %.not10.i = icmp eq i24 %i.bq, 0
  %i.br = zext nneg i24 %i.bp to i64              ; 3 uses
  %i.bs = lshr i24 %i.bn, 10
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i24 %i.bs, 1
  %i.bt = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = lshr i24 %i.bn, 11
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i24 %i.bw, 1
  %i.bx = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.by = and i64 %i.bc, 503316480
  %i.bz = icmp eq i64 %i.by, 67108864
  %i.ca = and i24 %i.bn, 1023
  %i.cb = zext nneg i24 %i.ca to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.bz, i64 %i.cb, i64 0
  %i.cc = trunc i64 %i.bc to i32
  %i.cd = lshr i32 %i.cc, 25
  %i.ce = and i32 %i.cd, 15                       ; 3 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang18FunctionEffectsRef3getENS_8QualTypeE.137, i64 %i.cf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %spec.select.i.i.i.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i.i.i.i = add nsw i32 %i.ce, -6
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i.i.i.i, 3
  %i.ci = zext i1 %switch.i.i.i.i.i.i.i.i.i to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %switch.ext
  %i.cl = and i64 %i.bc, 536870912
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0
end_hunk_0
