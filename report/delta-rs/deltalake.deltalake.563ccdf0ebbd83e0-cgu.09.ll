inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB9_13RawDeltaTable16cleanup_metadata0s_0B9_:bb.a
bb.fm:                                            ; preds = %bb.fk
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sf
  %i.sq = load i8, ptr %i.sp, align 1, !alias.scope !7389, !noalias !7392, !noundef !4
  %i.sr = icmp sgt i8 %i.sq, -65
  br i1 %i.sr, label %bb.fn, label %bb.gb

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fh
  %i.ss = sub i64 %i.sd, %i.sa                    ; 5 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.se ; 3 uses
  switch i64 %i.ss, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.fo
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.su = load i8, ptr %i.st, align 1, !alias.scope !7395, !noalias !7398, !noundef !4 ; 2 uses
  switch i8 %i.su, label %bb.fp [
    i8 43, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fn
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.st, align 1, !alias.scope !7395, !noalias !7398
  br label %bb.fp

bb.fp:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fo
  %i.sv = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.su, %bb.fo ]
  switch i8 %i.sv, label %bb.fw [
    i8 43, label %bb.fq
    i8 45, label %bb.fr
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sa
  %i.sx = add nsw i64 %i.ss, -1
  br label %bb.fw

bb.fr:                                            ; preds = %bb.fp
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sa ; 2 uses
  %i.sz = add nsw i64 %i.ss, -1                   ; 3 uses
  %i.ta = icmp samesign ult i64 %i.ss, 17
  br i1 %i.ta, label %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.fr
  %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sz, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.fr, %bb.fu
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tb, %bb.fu ], [ %i.sy, %bb.fr ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tc, %bb.fu ], [ %i.sz, %bb.fr ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tn, %bb.fu ], [ 0, %bb.fr ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.tc = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.td = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.te = extractvalue { i64, i1 } %i.td, 0
  %i.tf = extractvalue { i64, i1 } %i.td, 1
  br i1 %i.tf, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.fs, !prof !64

bb.fs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tg = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !7395, !noalias !7398, !noundef !4
  %i.th = zext i8 %i.tg to i32
  %i.ti = add nsw i32 %i.th, -48                  ; 2 uses
  %i.tj = icmp ult i32 %i.ti, 10
  br i1 %i.tj, label %bb.ft, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.ft:                                            ; preds = %bb.fs
  %i.tk = zext nneg i32 %i.ti to i64
  %i.tl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.te, i64 %i.tk) ; 2 uses
  %i.tm = extractvalue { i64, i1 } %i.tl, 1
  br i1 %i.tm, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.fu, !prof !64

bb.fu:                                            ; preds = %bb.ft
  %i.tn = extractvalue { i64, i1 } %i.tl, 0       ; 2 uses
  %.not102.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tc, 0
  br i1 %.not102.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fv
  %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tu, %bb.fv ], [ %i.sy, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tt, %bb.fv ], [ %i.sz, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.2138.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tw, %bb.fv ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.to = load i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !7395, !noalias !7398, !noundef !4
  %i.tp = zext i8 %i.to to i32
  %i.tq = add nsw i32 %i.tp, -48                  ; 2 uses
  %i.tr = icmp ugt i32 %i.tq, 9
  br i1 %i.tr, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ts = mul i64 %.sroa.084.2138.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  %i.tt = add nsw i64 %.sroa.26.2139.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.tv = zext nneg i32 %i.tq to i64
  %i.tw = sub i64 %i.ts, %i.tv                    ; 2 uses
  %.not103.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tt, 0
  br i1 %.not103.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fw:                                            ; preds = %bb.fq, %bb.fp
  %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sx, %bb.fq ], [ %i.ss, %bb.fp ] ; 4 uses
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.sw, %bb.fq ], [ %i.st, %bb.fp ] ; 2 uses
  %i.tx = icmp samesign ult i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16
  br i1 %i.tx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.fw
  %.not105146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not105146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.fw, %bb.fz
  %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ty, %bb.fz ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fw ] ; 2 uses
  %.sroa.26.3144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tz, %bb.fz ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.084.3143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uk, %bb.fz ], [ 0, %bb.fw ]
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.tz = add nsw i64 %.sroa.26.3144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ua = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.ub = extractvalue { i64, i1 } %i.ua, 0
  %i.uc = extractvalue { i64, i1 } %i.ua, 1
  br i1 %i.uc, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.fx, !prof !64

bb.fx:                                            ; preds = %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ud = load i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !7395, !noalias !7398, !noundef !4
  %i.ue = zext i8 %i.ud to i32
  %i.uf = add nsw i32 %i.ue, -48                  ; 2 uses
  %i.ug = icmp ult i32 %i.uf, 10
  br i1 %i.ug, label %bb.fy, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.uh = zext nneg i32 %i.uf to i64
  %i.ui = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ub, i64 %i.uh) ; 2 uses
  %i.uj = extractvalue { i64, i1 } %i.ui, 1
  br i1 %i.uj, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.fz, !prof !64

bb.fz:                                            ; preds = %bb.fy
  %i.uk = extractvalue { i64, i1 } %i.ui, 0       ; 2 uses
  %.not104.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tz, 0
  br i1 %.not104.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ga
  %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ur, %bb.ga ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uq, %bb.ga ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.4147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ut, %bb.ga ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ul = load i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !7395, !noalias !7398, !noundef !4
  %i.um = zext i8 %i.ul to i32
  %i.un = add nsw i32 %i.um, -48                  ; 2 uses
  %i.uo = icmp ugt i32 %i.un, 9
  br i1 %i.uo, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = mul i64 %.sroa.084.4147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  %i.uq = add nsw i64 %.sroa.26.4148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.us = zext nneg i32 %i.un to i64
  %i.ut = add i64 %i.up, %i.us                    ; 2 uses
  %.not105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.uq, 0
  br i1 %.not105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gb:                                            ; preds = %bb.fm, %bb.fl, %bb.fj, %bb.fi, %.noexc225.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sh, i64 noundef %i.sg, i64 noundef %i.se, i64 noundef %i.sf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #36
          to label %.noexc226.i.i unwind label %.loopexit.split-lp410.i.i, !noalias !7254

.noexc226.i.i:                                    ; preds = %bb.gb
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.fu, %bb.fv, %bb.fz, %bb.ga, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uu = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ut, %bb.ga ], [ %i.uk, %bb.fz ], [ %i.tw, %bb.fv ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tn, %bb.fu ] ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.qq, i64 80
  %i.uw = load i32, ptr %i.uv, align 8, !range !7246, !alias.scope !7370, !noalias !7371, !noundef !4 ; 2 uses
  %i.ux = ashr i32 %i.uw, 13                      ; 3 uses
  %i.uy = add nsw i32 %i.ux, -1                   ; 2 uses
  %i.uz = icmp slt i32 %i.ux, 1
  br i1 %i.uz, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.va = sub nsw i32 1, %i.ux
  %i.vb = udiv i32 %i.va, 400
  %i.vc = add nuw nsw i32 %i.vb, 1                ; 2 uses
  %i.vd = mul nuw nsw i32 %i.vc, 400
  %i.ve = add nsw i32 %i.vd, %i.uy
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.vc, -146097
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ve, %bb.gc ], [ %i.uy, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.vf = sdiv i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.vg = mul nsw i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1461
  %i.vh = ashr i32 %i.vg, 2
  %i.vi = ashr i32 %i.vf, 2
  %i.vj = lshr i32 %i.uw, 4
  %i.vk = and i32 %i.vj, 511
  %i.vl = getelementptr inbounds nuw i8, ptr %i.qq, i64 84
  %i.vm = load i32, ptr %i.vl, align 4, !alias.scope !7370, !noalias !7371, !noundef !4
  %i.vn = zext i32 %i.vm to i64
  %i.vo = add nuw nsw i32 %i.vk, -719163
  %i.vp = add nsw i32 %i.vo, %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vq = sub nsw i32 %i.vp, %i.vf
  %i.vr = add nsw i32 %i.vq, %i.vh
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i32 %i.vr, %i.vi
  %i.vs = sext i32 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.vt = mul nsw i64 %i.vs, 86400
  %i.vu = add nsw i64 %i.vt, %i.vn
  %i.vv = mul nsw i64 %i.vu, 1000
  %i.vw = getelementptr inbounds nuw i8, ptr %i.qq, i64 88
  %i.vx = load i32, ptr %i.vw, align 4, !alias.scope !7370, !noalias !7371, !noundef !4
  %i.vy = udiv i32 %i.vx, 1000000
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = add nsw i64 %i.vv, %i.vz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7400
  store i64 %i.uu, ptr %i.i, align 8, !noalias !7401
  store i64 %i.wa, ptr %i.qp, align 8, !noalias !7401
  %i.wb = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_0INtB7_5FnMutTRTxxEEE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %.noexc227.i.i unwind label %.loopexit409.i.i, !noalias !7254

.noexc227.i.i:                                    ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7400
  br i1 %i.wb, label %bb.ge, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i

.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.noexc224.i.i, %.noexc223.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7375
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ft, %bb.fs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fy, %bb.fx, %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc227.i.i, %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fo, %bb.fo, %bb.fn, %bb.eu
  %i.wc = load ptr, ptr %.sroa.5325.0..sroa_idx.i.i, align 8, !alias.scope !7349, !noalias !7352, !nonnull !4, !noundef !4
  %i.wd = icmp eq ptr %i.qr, %i.wc
  br i1 %i.wd, label %.loopexit483.i.i, label %bb.eu

bb.ge:                                            ; preds = %.noexc227.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !7250
  %i.we = invoke noundef i64 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.uu)
          to label %bb.gg unwind label %.loopexit.split-lp410.i.i, !noalias !7254

.loopexit409.i.i:                                 ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd, %bb.fe, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ew
  %lpad.loopexit411.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.loopexit.split-lp410.i.i:                        ; preds = %bb.ge, %bb.gb
  %lpad.loopexit.split-lp412.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.gf:                                            ; preds = %.loopexit.split-lp410.i.i, %.loopexit409.i.i
  %lpad.phi413.i.i = phi { ptr, i32 } [ %lpad.loopexit411.i.i, %.loopexit409.i.i ], [ %lpad.loopexit.split-lp412.i.i, %.loopexit.split-lp410.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !7250
  br label %bb.iv

.loopexit483.i.i:                                 ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !7250
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8, !noalias !7250, !noundef !4
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !7250
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.wi = load i64, ptr %i.wh, align 8, !noalias !7250, !noundef !4
  %i.wj = call i64 @llvm.smin.i64(i64 %i.we, i64 %i.wi)
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %.loopexit483.i.i
  %i.wk = phi ptr [ %i.wh, %bb.gg ], [ %i.wf, %.loopexit483.i.i ] ; 4 uses
  %i.wl = phi i64 [ %i.wj, %bb.gg ], [ %i.wg, %.loopexit483.i.i ]
  store i64 %i.wl, ptr %i.wk, align 8, !noalias !7250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !7250
  %.val165.i.i = load ptr, ptr %i.qa, align 8, !noalias !7250, !nonnull !4, !noundef !4 ; 2 uses
  %.val166.i.i = load i64, ptr %i.qb, align 8, !noalias !7250, !noundef !4 ; 2 uses
  %.idx397.i.i = mul nuw nsw i64 %.val166.i.i, 96
  %i.wm = getelementptr inbounds nuw i8, ptr %.val165.i.i, i64 %.idx397.i.i ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.wm, ptr %i.wn, align 8, !alias.scope !7406, !noalias !7409
  %i.wo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  store ptr %i.wk, ptr %i.wo, align 8, !alias.scope !7406, !noalias !7409
  call void @llvm.experimental.noalias.scope.decl(metadata !7411)
  call void @llvm.experimental.noalias.scope.decl(metadata !7414)
  call void @llvm.experimental.noalias.scope.decl(metadata !7417)
  call void @llvm.experimental.noalias.scope.decl(metadata !7420)
  call void @llvm.experimental.noalias.scope.decl(metadata !7423)
  call void @llvm.experimental.noalias.scope.decl(metadata !7426)
  call void @llvm.experimental.noalias.scope.decl(metadata !7429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7432
  store ptr %i.wo, ptr %i.h, align 8, !noalias !7432
  %i.wp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.wo, ptr %i.wp, align 8, !noalias !7432
  %i.wq = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.wo, ptr %i.wq, align 8, !noalias !7432
  call void @llvm.experimental.noalias.scope.decl(metadata !7437)
  %i.wr = icmp eq i64 %.val166.i.i, 0
  br i1 %i.wr, label %.loopexit402.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.gh, %.backedge.i.i.i.i.i.i.i.i.i.i
  %i.ws = phi ptr [ %i.wt, %.backedge.i.i.i.i.i.i.i.i.i.i ], [ %.val165.i.i, %bb.gh ] ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 96 ; 3 uses
  store ptr %i.wt, ptr %i.bg, align 8, !alias.scope !7440, !noalias !7443
  call void @llvm.experimental.noalias.scope.decl(metadata !7445)
  %i.wu = load i64, ptr %i.ws, align 8, !range !63, !alias.scope !7448, !noalias !7451, !noundef !4
  %i.wv = icmp eq i64 %i.wu, -9223372036854775808
  br i1 %i.wv, label %.backedge.i.i.i.i.i.i.i.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ww = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ws)
          to label %.noexc232.i.i unwind label %.loopexit.split-lp.i.i, !noalias !7254 ; 2 uses

.noexc232.i.i:                                    ; preds = %bb.gi
  %i.wx = extractvalue { i64, i64 } %i.ww, 0
  %i.wy = trunc nuw i64 %i.wx to i1
  br i1 %i.wy, label %bb.gj, label %.backedge.i.i.i.i.i.i.i.i.i.i

bb.gj:                                            ; preds = %.noexc232.i.i
  %i.wz = extractvalue { i64, i64 } %i.ww, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7453
  store i64 %i.wz, ptr %i.g, align 8, !noalias !7457
  %i.xa = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s4_0INtB7_5FnMutTRxEE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc233.i.i unwind label %.loopexit.split-lp.i.i, !noalias !7254

.noexc233.i.i:                                    ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7453
  br i1 %i.xa, label %bb.gk, label %.backedge.i.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc233.i.i, %.noexc232.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.xb = icmp eq ptr %i.wt, %i.wm
  br i1 %i.xb, label %.loopexit402.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.gk:                                            ; preds = %.noexc233.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7432
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !7460, !noalias !7250, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %i.wn, align 8, !alias.scope !7460, !noalias !7250, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %i.wo, align 8, !alias.scope !7460, !noalias !7250, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7461
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %i.f, align 8, !noalias !7468
  %i.xc = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i
  br i1 %i.xc, label %.loopexit401.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.xd = ptrtoint ptr %.sroa.4.0.copyload.i.i.i.i.i to i64
  %i.xe = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.xf = sub nuw i64 %i.xd, %i.xe
  %i.xg = udiv exact i64 %i.xf, 96
  %i.xh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.gm

bb.gm:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, %bb.gl
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gl ], [ %i.xs, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wz, %bb.gl ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.xi = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7471)
  call void @llvm.experimental.noalias.scope.decl(metadata !7474)
  %i.xj = load i64, ptr %i.xi, align 8, !range !63, !alias.scope !7476, !noalias !7479, !noundef !4
  %i.xk = icmp eq i64 %i.xj, -9223372036854775808
  br i1 %i.xk, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.experimental.noalias.scope.decl(metadata !7480)
  %i.xl = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.xi)
          to label %.noexc234.i.i unwind label %.loopexit.i.i, !noalias !7254 ; 2 uses

.noexc234.i.i:                                    ; preds = %bb.gn
  %i.xm = extractvalue { i64, i64 } %i.xl, 0
  %i.xn = trunc nuw i64 %i.xm to i1
  br i1 %i.xn, label %bb.go, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i

bb.go:                                            ; preds = %.noexc234.i.i
  %i.xo = extractvalue { i64, i64 } %i.xl, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7483)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !7486, !noalias !7487, !nonnull !4, !align !344, !noundef !4
  %i.xp = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7489, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.xo, %i.xp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7490
  store i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !7493
  store i64 %i.xo, ptr %i.d, align 8, !noalias !7493
  %i.xq = invoke noundef i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYxNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRxB1p_EE9call_onceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %i.xh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc235.i.i unwind label %.loopexit.i.i, !noalias !7254

.noexc235.i.i:                                    ; preds = %bb.gp
  %i.xr = icmp sgt i8 %i.xq, 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.xr, i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, i64 %i.xo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7490
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc235.i.i, %bb.go, %.noexc234.i.i, %bb.gm
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.0.i.i.i.i.i.i.i.i.i, %bb.gm ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i, %.noexc234.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc235.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %i.xs = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.xt = icmp eq i64 %i.xs, %i.xg
  br i1 %i.xt, label %.loopexit401.i.i, label %bb.gm

.loopexit.i.i:                                    ; preds = %bb.gp, %bb.gn
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit.split-lp.i.i:                           ; preds = %bb.gj, %bb.gi
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13382
  %i.cl = icmp eq ptr %i.ci, null
  br i1 %i.cl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cm = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !13432
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.al, !noalias !13382

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.co = cmpxchg ptr %i.bl, i64 8, i64 0 release monotonic, align 8, !noalias !13382
  %.sroa.18.0.in.i.i.i.i76.i = extractvalue { i64, i1 } %i.co, 1
  br i1 %.sroa.18.0.in.i.i.i.i76.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit78.i, label %bb.ar, !prof !5

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.bl, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit78.i unwind label %.thread20.i, !noalias !13382

.thread20.i:                                      ; preds = %bb.ar
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13382
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit78.i: ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13382
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
          to label %bb.at unwind label %.thread11.i, !noalias !13382

bb.as:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13382
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs7p2uQeJxui2_9deltalake.exit.i

.thread11.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit78.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs7p2uQeJxui2_9deltalake.exit.i

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13382
  br label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.au, %.thread11.i, %bb.as, %.thread20.i, %.thread15.i, %.body71.i
  %.sroa.01.7.i = phi i8 [ 0, %.thread20.i ], [ 0, %bb.as ], [ 1, %.body71.i ], [ 0, %.thread11.i ], [ 1, %bb.au ], [ 1, %.thread15.i ]
  %.pn25.pn.i = phi { ptr, i32 } [ %i.cp, %.thread20.i ], [ %.pn21.i, %bb.as ], [ %eh.lpad-body72.i, %.body71.i ], [ %i.cq, %.thread11.i ], [ %i.bp, %bb.au ], [ %i.bp, %.thread15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13382
  br label %bb.y

bb.au:                                            ; preds = %.thread15.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderE9drop_slowCs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.x, !noalias !13382

bb.av:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aw:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit69.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13382
  %i.ct = trunc nuw i8 %.sroa.01.1.i to i1
  br i1 %i.ct, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit86.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit86.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i82.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13382
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13439)
  call void @llvm.experimental.noalias.scope.decl(metadata !13442)
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !13445, !noalias !13382, !nonnull !4, !noundef !4
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !13446
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.ax, label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext14create_catalog0Cs7p2uQeJxui2_9deltalake.exit

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit86.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu) #40
          to label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext14create_catalog0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.bd, !noalias !13382

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i82.i unwind label %bb.az, !noalias !13382

bb.az:                                            ; preds = %bb.ay
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body83.i unwind label %bb.ba, !noalias !13382

bb.ba:                                            ; preds = %bb.az
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13382
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i82.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit86.i unwind label %bb.bc, !noalias !13382

.body83.i:                                        ; preds = %.thread.i, %bb.bc, %bb.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit69.i
  %.pn33.i = phi { ptr, i32 } [ %.pn30.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit69.i ], [ %.pn30.pn10.i, %.thread.i ], [ %i.de, %bb.bc ], [ %i.cy, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13382
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  call void @llvm.experimental.noalias.scope.decl(metadata !13450)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !13453, !noalias !13382, !nonnull !4, !noundef !4
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !13454
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit88.i

bb.bb:                                            ; preds = %.body83.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.da) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit88.i unwind label %bb.x, !noalias !13382

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i82.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body83.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit88.i: ; preds = %bb.bd, %bb.bb, %.body83.i
  %.pn35.i = phi { ptr, i32 } [ %i.df, %bb.bd ], [ %.pn33.i, %bb.bb ], [ %.pn33.i, %.body83.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13382
  store i8 2, ptr %i.p, align 8, !noalias !13382
  resume { ptr, i32 } %.pn35.i

bb.bd:                                            ; preds = %bb.ax
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs7p2uQeJxui2_9deltalake.exit88.i

.thread.i:                                        ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit69.i
  %.pn30.pn10.i = phi { ptr, i32 } [ %.pn30.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs7p2uQeJxui2_9deltalake.exit69.i ], [ %i.z, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #38
          to label %.body83.i unwind label %bb.x, !noalias !13382

bb.be:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #36, !noalias !13382
  unreachable

bb.bf:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #36, !noalias !13382
  unreachable

_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext14create_catalog0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit86.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef nonnull align 16 dereferenceable(336) %i.b, i64 336, i1 false)
  store i8 1, ptr %i.p, align 8, !noalias !13382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext15create_function0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [336 x i8], align 16              ; 26 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 11 uses
  %i.n = alloca [288 x i8], align 16              ; 5 uses
  %i.o = alloca [288 x i8], align 16              ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 2000 ; 3 uses
  %i.q = load i8, ptr %i.p, align 16, !range !1884, !noalias !13458, !noundef !4
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.ah
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13458
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 1968
  %.val83.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !13458
  %.phi.trans.insert230.i = getelementptr i8, ptr %.val, i64 1976
  %.val84.pre.i = load ptr, ptr %.phi.trans.insert230.i, align 8, !noalias !13458
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 2001 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 1984
  %i.u = load ptr, ptr %i.t, align 16, !noalias !13458, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !noalias !13458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13458
  store i8 1, ptr %i.r, align 1, !noalias !13458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.o, ptr noundef nonnull align 16 dereferenceable(288) %.val, i64 288, i1 false), !noalias !13458
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.val63.i = load ptr, ptr %i.v, align 8, !noalias !13455, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val63.i, i64 16 ; 7 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8, !noalias !13455 ; 4 uses
  %i.y = and i64 %i.x, 8
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ugt i64 %i.x, -17
  %or.cond.i.i.i.i = or i1 %i.aa, %i.z
  br i1 %or.cond.i.i.i.i, label %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !6344

_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %bb.d
  %i.ab = add nuw i64 %i.x, 16
  %i.ac = cmpxchg weak ptr %i.w, i64 %i.x, i64 %i.ab acquire monotonic, align 8, !noalias !13455
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.f, label %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !5995

_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %bb.d
  %i.ae = invoke noundef zeroext i1 @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.w, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000)
          to label %bb.f unwind label %bb.e, !noalias !13455 ; 0 uses

bb.e:                                             ; preds = %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i

bb.f:                                             ; preds = %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val63.i, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  invoke fastcc void @_RNvXsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1680) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ag)
          to label %bb.i unwind label %bb.h, !noalias !13455

bb.g:                                             ; preds = %bb.h
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.u, !noalias !13455

bb.h:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = atomicrmw sub ptr %i.w, i64 16 release, align 8, !noalias !13455
  %i.ak = and i64 %i.aj, -14
  %i.al = icmp eq i64 %i.ak, 18
  br i1 %i.al, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i, !prof !64

bb.i:                                             ; preds = %bb.f
  %i.am = atomicrmw sub ptr %i.w, i64 16 release, align 8, !noalias !13455
  %i.an = and i64 %i.am, -14
  %i.ao = icmp eq i64 %i.an, 18
  br i1 %i.ao, label %bb.j, label %bb.l, !prof !64

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.w)
          to label %bb.l unwind label %bb.k, !noalias !13455

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 1936
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !13460, !noalias !13458, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13463
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc88.i unwind label %bb.r, !noalias !13455

.noexc88.i:                                       ; preds = %bb.m
  %i.as = load i64, ptr %i.a, align 8, !range !3, !noalias !13463, !noundef !4
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !63, !noalias !13463, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.at, label %bb.n, label %bb.s, !prof !64

bb.n:                                             ; preds = %.noexc88.i
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !13463
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #37
          to label %.noexc89.i unwind label %bb.r, !noalias !13455

.noexc89.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %.val, i64 1944
  %.val82.i = load ptr, ptr %i.ay, align 8, !noalias !13458, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val82.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !605, !invariant.load !4, !noalias !13455
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13458
  store i8 0, ptr %i.r, align 1, !noalias !13458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.n, ptr noundef nonnull align 16 dereferenceable(288) %i.o, i64 288, i1 false), !noalias !13458
  %i.bf = getelementptr inbounds nuw i8, ptr %.val82.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !4, !noalias !13455, !nonnull !4
  %i.bh = invoke { ptr, ptr } %i.bg(ptr noundef nonnull %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ah, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(288) %i.n)
          to label %bb.q unwind label %bb.p, !noalias !13455 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13458
  br label %.body.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13458
  %i.bj = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 1968
  store ptr %i.bj, ptr %i.bl, align 16, !noalias !13458
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 1976
  store ptr %i.bk, ptr %i.bm, align 8, !noalias !13458
  br label %bb.y

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %.noexc88.i
  %i.bo = load ptr, ptr %i.aw, align 8, !noalias !13463, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = icmp ugt i64 %i.av, 39
  tail call void @llvm.assume(i1 %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13463
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bo, ptr noundef nonnull readonly align 1 dereferenceable(40) @159, i64 range(i64 0, -9223372036854775808) 40, i1 false), !noalias !13473
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %i.bq, align 8, !noalias !13458
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.av, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !13458
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bo, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !13458
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 40, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !noalias !13458
  br label %bb.t

bb.t:                                             ; preds = %bb.cl, %bb.s
  store i64 36, ptr %i.b, align 16, !noalias !13458
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.br)
          to label %bb.cb unwind label %bb.ag, !noalias !13455

.body.i:                                          ; preds = %bb.af, %bb.ae, %bb.x, %bb.r, %bb.p, %bb.k
  %.pn49.pn.pn.i = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.ck, %bb.ae ], [ %i.bn, %bb.r ], [ %i.ck, %bb.af ], [ %i.bx, %bb.x ], [ %i.bi, %bb.p ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.bs) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.u, !noalias !13455

bb.u:                                             ; preds = %bb.cq, %bb.ck, %bb.cc, %bb.bw, %bb.bm, %bb.bh, %bb.ax, %bb.ar, %bb.x, %.body.i, %bb.g
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13455
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.body130.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ag, %.body.i, %bb.h, %bb.g, %bb.e
  %.pn53.i = phi { ptr, i32 } [ %i.cs, %bb.ag ], [ %.pn49.pn.pn.i, %.body.i ], [ %.pn47202.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.pn38213.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.pn29224.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.pn20.i, %.body130.i ], [ %i.ai, %bb.h ], [ %i.af, %bb.e ], [ %i.ai, %bb.g ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 2001
  %i.bv = load i8, ptr %i.bu, align 1, !range !101, !noalias !13458, !noundef !4
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.cq, label %bb.co

bb.v:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #36, !noalias !13455
  unreachable

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #36, !noalias !13455
  unreachable

bb.x:                                             ; preds = %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13458
  %.val58.i = load ptr, ptr %i.by, align 8, !noalias !13458
  %.val59.i = load ptr, ptr %i.bz, align 8, !noalias !13458, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val58.i, ptr nonnull %.val59.i) #38
          to label %.body.i unwind label %bb.u, !noalias !13455

bb.y:                                             ; preds = %bb.q, %bb.c
  %.val84.i = phi ptr [ %.val84.pre.i, %bb.c ], [ %i.bk, %bb.q ]
  %.val83.i = phi ptr [ %.val83.pre.i, %bb.c ], [ %i.bj, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13458
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 1968 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val, i64 1976   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val84.i, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !4, !noalias !13474, !nonnull !4
  invoke void %i.cb(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull %.val83.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.x, !noalias !13455, !inline_history !13478

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.y
  %i.cc = load i64, ptr %i.m, align 8, !range !288, !noalias !13458, !noundef !4 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 2
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13458
  store i64 37, ptr %0, align 16, !alias.scope !13455, !noalias !13479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13458
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext15create_function0Cs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !13458 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13458 ; 10 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13458 ; 3 uses
  %.sroa.8154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.8154.0.copyload.i = load ptr, ptr %.sroa.8154.0..sroa_idx.i, align 8, !noalias !13458 ; 3 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !13458 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13458
  %.val.i = load ptr, ptr %i.by, align 8, !noalias !13458 ; 5 uses
  %.val57.i = load ptr, ptr %i.bz, align 8, !noalias !13458, !nonnull !4, !align !344, !noundef !4 ; 5 uses
  %i.ce = load ptr, ptr %.val57.i, align 8, !invariant.load !4, !noalias !13455 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ce(ptr noundef nonnull %.val.i)
          to label %bb.ac unwind label %bb.ae, !noalias !13455

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %.val57.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !276, !invariant.load !4, !noalias !13455 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %.val57.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !605, !invariant.load !4, !noalias !13455
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.cg, i64 noundef range(i64 1, 536870913) %i.cj) #41, !noalias !13455
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val57.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !276, !invariant.load !4, !noalias !13455 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.body.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %.val57.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !605, !invariant.load !4, !noalias !13455
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.cm, i64 noundef range(i64 1, 536870913) %i.cp) #41, !noalias !13455
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ad, %bb.ac
  %i.cq = trunc nuw i64 %i.cc to i1
  br i1 %i.cq, label %bb.cl, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs7p2uQeJxui2_9deltalake.exit.i

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.cr)
          to label %bb.ah unwind label %bb.ag, !noalias !13455

bb.ag:                                            ; preds = %bb.au, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs7p2uQeJxui2_9deltalake.exit.i, %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i

bb.ah:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs7p2uQeJxui2_9deltalake.exit.i
  %i.ct = xor i64 %.sroa.2.0.copyload.i, -9223372036854775808
  %i.cu = icmp slt i64 %.sroa.2.0.copyload.i, 0
  %i.cv = select i1 %i.cu, i64 %i.ct, i64 3
  switch i64 %i.cv, label %bb.b [
    i64 0, label %bb.ai
    i64 1, label %bb.ay
    i64 2, label %bb.bn
    i64 3, label %bb.cd
  ]

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13458
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  store ptr %.sroa.4.0.copyload.i, ptr %i.l, align 8, !noalias !13458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13458
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !13458, !nonnull !4, !align !344, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %.val62.i = load ptr, ptr %i.cy, align 8, !noalias !13455, !nonnull !4, !noundef !4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val62.i, i64 16 ; 8 uses
  %i.da = cmpxchg weak ptr %i.cz, i64 0, i64 8 acquire monotonic, align 8, !noalias !13455
  %i.db = extractvalue { i64, i1 } %i.da, 1
  br i1 %i.db, label %bb.ak, label %bb.aj, !prof !5

bb.aj:                                            ; preds = %bb.ai
  %i.dc = invoke noundef zeroext i1 @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cz, i64 undef, i32 noundef 1000000000)
          to label %bb.ak unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread.i, !noalias !13455 ; 0 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.aj
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13458
  call void @llvm.experimental.noalias.scope.decl(metadata !13480)
  call void @llvm.experimental.noalias.scope.decl(metadata !13483)
  %i.de = load ptr, ptr %i.l, align 8, !alias.scope !13486, !noalias !13458, !nonnull !4, !noundef !4
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !13487
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.i

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %.val62.i, i64 24
  %i.di = load ptr, ptr %i.l, align 8, !noalias !13458, !nonnull !4, !noundef !4
  invoke void @_RNvXs5_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8VI8w5SIoU4_15datafusion_expr8registry16FunctionRegistry12register_udf(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.dh, ptr noundef nonnull %i.di)
          to label %bb.am unwind label %bb.al, !noalias !13455

bb.al:                                            ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13458
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !13488)
  %i.dk = load i64, ptr %i.j, align 8, !range !403, !alias.scope !13491, !noalias !13493, !noundef !4 ; 2 uses
  %.not.i92.i = icmp eq i64 %i.dk, 20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !13494, !noalias !13458 ; 4 uses
  br i1 %.not.i92.i, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13458
  store ptr %i.dm, ptr %i.k, align 8, !noalias !13458
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !13495
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs7p2uQeJxui2_9deltalake.exit.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.as, !noalias !13455

bb.aq:                                            ; preds = %bb.as, %bb.al
  %.pn45.i = phi { ptr, i32 } [ %i.dr, %bb.as ], [ %i.dj, %bb.al ] ; 2 uses
  %i.dq = cmpxchg ptr %i.cz, i64 8, i64 0 release monotonic, align 8, !noalias !13455
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.dq, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i, label %bb.ar, !prof !5

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cz, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i unwind label %bb.u, !noalias !13455

bb.as:                                            ; preds = %bb.ap
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.ds = cmpxchg ptr %i.cz, i64 8, i64 0 release monotonic, align 8, !noalias !13455
  %.sroa.18.0.in.i.i.i.i95.i = extractvalue { i64, i1 } %i.ds, 1
  br i1 %.sroa.18.0.in.i.i.i.i95.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit97.i, label %bb.at, !prof !5

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cz, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit97.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread204.i, !noalias !13455

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread204.i: ; preds = %bb.aw, %bb.at
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit97.i: ; preds = %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13458
  br label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit125.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit111.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit97.i
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !13458, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dv)
          to label %bb.ci unwind label %bb.ag, !noalias !13455

bb.av:                                            ; preds = %bb.am
  %.sroa.10167.0..sroa_idx168.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10167.0..sroa_idx168.i, i64 24, i1 false), !noalias !13458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13458
  call void @llvm.experimental.noalias.scope.decl(metadata !13502)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.dk, ptr %i.dw, align 8, !alias.scope !13505, !noalias !13458
  %.sroa.2171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.dm, ptr %.sroa.2171.0..sroa_idx.i, align 16, !alias.scope !13505, !noalias !13458
  store i64 36, ptr %i.b, align 16, !alias.scope !13507, !noalias !13508
  %i.dx = cmpxchg ptr %i.cz, i64 8, i64 0 release monotonic, align 8, !noalias !13455
  %.sroa.18.0.in.i.i.i.i98.i = extractvalue { i64, i1 } %i.dx, 1
  br i1 %.sroa.18.0.in.i.i.i.i98.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit100.i, label %bb.aw, !prof !5

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cz, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit100.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread204.i, !noalias !13455

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit100.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13458
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread204.i, %bb.ar, %bb.aq
  %.pn47202.ph.i = phi { ptr, i32 } [ %i.dt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread204.i ], [ %.pn45.i, %bb.aq ], [ %.pn45.i, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13458
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread.i
  %.pn47202.i = phi { ptr, i32 } [ %i.dd, %bb.ax ], [ %i.dd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.thread.i ], [ %.pn47202.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i ]
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext19create_memory_table0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bz, ptr noundef nonnull align 16 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !13574
  store i8 1, ptr %i.bo, align 1, !noalias !13574
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 1080
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 1192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !13574
  %i.cd = trunc nuw i8 %.sroa.17.0.copyload.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13576)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.ce = cmpxchg ptr %.sroa.14.0.copyload.i, i64 1, i64 0 monotonic monotonic, align 8, !noalias !13579
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ce, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.b
  fence acquire
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 16
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.cf, align 16, !noalias !13582 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 24
  %.sroa.6.0.copyload3.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !noalias !13582 ; 2 uses
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.i.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.0..sroa_idx4.i.i, i64 304, i1 false), !noalias !13582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13583
  store ptr %.sroa.14.0.copyload.i, ptr %i.g, align 8, !noalias !13583
  invoke void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc.i unwind label %bb.j, !noalias !13571

.noexc.i:                                         ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13583
  %i.cg = icmp eq i64 %.sroa.0.0.copyload1.i.i, 36
  br i1 %i.cg, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %bb.h

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %.noexc.i, %bb.b
  %.sroa.6.07.i.i = phi ptr [ %.sroa.6.0.copyload3.i.i, %.noexc.i ], [ %.sroa.14.0.copyload.i, %bb.b ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.07.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13584
  store ptr %.sroa.6.07.i.i, ptr %i.f, align 8, !noalias !13585
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.6.07.i.i, i64 16
  invoke fastcc void @_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(320) %.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ch)
          to label %bb.e unwind label %bb.c, !noalias !13571

bb.c:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = atomicrmw sub ptr %.sroa.6.07.i.i, i64 1 release, align 8, !noalias !13588
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.d, label %.body.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %.body.i unwind label %bb.g, !noalias !13593

bb.e:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %i.cl = atomicrmw sub ptr %.sroa.6.07.i.i, i64 1 release, align 8, !noalias !13594
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.f, label %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs7p2uQeJxui2_9deltalake.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.j, !noalias !13571

bb.g:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13593
  unreachable

_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13584
  br label %bb.k

bb.h:                                             ; preds = %.noexc.i
  store i64 %.sroa.0.0.copyload1.i.i, ptr %.val, align 16, !alias.scope !13576, !noalias !13574
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.6.0.copyload3.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !13576, !noalias !13574
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.i.i, i64 304, i1 false), !noalias !13574
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0296.i)
  br label %bb.bf

.body.i:                                          ; preds = %bb.bb, %bb.j, %bb.d, %bb.c
  %.pn126.i = phi { ptr, i32 } [ %.pn123.pn.i, %bb.bb ], [ %i.cr, %bb.j ], [ %i.ci, %bb.d ], [ %i.ci, %bb.c ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  %i.cp = load i8, ptr %i.co, align 1, !range !101, !noalias !13574, !noundef !4
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.iq, label %.body264.i

bb.j:                                             ; preds = %bb.he, %bb.ba, %bb.f, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.h, %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !13574
  %i.cs = load ptr, ptr %i.bq, align 16, !noalias !13574, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cs)
          to label %bb.m unwind label %bb.l, !noalias !13571

bb.l:                                             ; preds = %bb.k
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !13574
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState8optimize(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.bi, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val)
          to label %bb.o unwind label %bb.n, !noalias !13571

bb.n:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !13574
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.bi) #38
          to label %bb.ax unwind label %bb.av, !noalias !13571

bb.o:                                             ; preds = %bb.m
  %i.cv = load i64, ptr %i.bj, align 16, !range !485, !alias.scope !13599, !noalias !13602, !noundef !4 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 36
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !noalias !13574
  br i1 %i.cw, label %bb.aw, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.11.0..sroa_idx287.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.11.0..sroa_idx287.i, i64 272, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !13574
  store i8 1, ptr %i.bp, align 2, !noalias !13574
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 320
  store i64 %i.cv, ptr %i.cy, align 16, !noalias !13574
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !13574
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.i, i64 272, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.bi)
          to label %bb.r unwind label %bb.q, !noalias !13571

bb.q:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !13574
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit172.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !13574
  br i1 %i.cd, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0296.i)
  %i.da = load ptr, ptr %i.bq, align 16, !noalias !13574, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !13574
  call void @llvm.experimental.noalias.scope.decl(metadata !13604)
  call void @llvm.experimental.noalias.scope.decl(metadata !13607)
  %i.db = load i64, ptr %i.bu, align 8, !range !288, !alias.scope !13607, !noalias !13609, !noundef !4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val, i64 1008
  %i.dd = load ptr, ptr %i.dc, align 16, !alias.scope !13607, !noalias !13609, !nonnull !4, !noundef !4 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val, i64 1016
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !13607, !noalias !13609, !noundef !4 ; 3 uses
  %i.dg = atomicrmw add ptr %i.dd, i64 1 monotonic, align 8, !noalias !13610
  %i.dh = icmp slt i64 %i.dg, 0                   ; 3 uses
  switch i64 %i.db, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %i.dh, label %bb.w, label %bb.ag

bb.u:                                             ; preds = %bb.s
  br i1 %i.dh, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.s
  br i1 %i.dh, label %bb.ab, label %bb.aa

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.x
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.ae ], [ %.sink18.i.sroa.gep299.i, %bb.x ]
  %.sink16.i.i = phi ptr [ %i.dp, %bb.ae ], [ %i.dd, %bb.x ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.ae ], [ %.sink15.i.sroa.gep300.i, %bb.x ]
  %.sink13.i.i = phi i64 [ %i.dr, %bb.ae ], [ %i.df, %bb.x ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.ae ], [ 24, %bb.x ]
  %.sink10.ph.i.i = phi ptr [ %i.dv, %bb.ae ], [ %i.dj, %bb.x ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.ae ], [ 32, %bb.x ]
  %.sink7.ph.i.i = phi i64 [ %i.dx, %bb.ae ], [ %i.dl, %bb.x ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !13604, !noalias !13611
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !13604, !noalias !13611
  br label %bb.ag

bb.x:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !13607, !noalias !13609, !nonnull !4, !noundef !4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !13607, !noalias !13609, !noundef !4
  %i.dm = atomicrmw add ptr %i.dj, i64 1 monotonic, align 8, !noalias !13610
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %bb.z, label %.sink.split.i.i

bb.y:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !13607, !noalias !13609, !nonnull !4, !noundef !4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !13607, !noalias !13609, !noundef !4
  %i.ds = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !13610
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 1040
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !13607, !noalias !13609, !nonnull !4, !noundef !4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val, i64 1048
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !13607, !noalias !13609, !noundef !4
  %i.dy = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8, !noalias !13610
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.dd, ptr %.sink18.i.sroa.gep299.i, align 8, !alias.scope !13604, !noalias !13611
  store i64 %i.df, ptr %.sink15.i.sroa.gep300.i, align 8, !alias.scope !13604, !noalias !13611
  br label %.sink.split.i.i

bb.af:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %.sink.split.i.i, %bb.t
  %.sink12.i.i = phi i64 [ 8, %bb.t ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.dd, %bb.t ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.t ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.df, %bb.t ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.ea, align 8, !alias.scope !13604, !noalias !13611
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.eb, align 8, !alias.scope !13604, !noalias !13611
  store i64 %i.db, ptr %i.bd, align 8, !alias.scope !13604, !noalias !13611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0296.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13574
  %i.ec = getelementptr inbounds nuw i8, ptr %.val, i64 1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ec, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0296.i, i64 56, i1 false), !noalias !13574
  %.sroa.7297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1304
  store ptr %i.da, ptr %.sroa.7297.0..sroa_idx.i, align 8, !noalias !13574
  %.sroa.9298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1560
  store i8 0, ptr %.sroa.9298.0..sroa_idx.i, align 8, !noalias !13574
  br label %bb.bf

.body166.i:                                       ; preds = %bb.br, %bb.bn, %bb.be
  %.pn17.i = phi { ptr, i32 } [ %.pn.i.i, %bb.bn ], [ %i.fn, %bb.be ], [ %i.gb, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0296.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit172.i

bb.ah:                                            ; preds = %bb.aj, %bb.ai
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

bb.ai:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13612
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) 30, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc140.i unwind label %bb.ah, !noalias !13571

.noexc140.i:                                      ; preds = %bb.ai
  %i.ee = load i64, ptr %i.e, align 8, !range !3, !noalias !13612, !noundef !4
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !range !63, !noalias !13612, !noundef !4 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ef, label %bb.aj, label %bb.ak, !prof !64

bb.aj:                                            ; preds = %.noexc140.i
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !13612
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.eh, i64 %i.ej) #37
          to label %.noexc141.i unwind label %bb.ah, !noalias !13571

.noexc141.i:                                      ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %.noexc140.i
  %i.ek = load ptr, ptr %i.ei, align 8, !noalias !13612, !nonnull !4, !noundef !4 ; 2 uses
  %i.el = icmp ugt i64 %i.eh, 29
  call void @llvm.assume(i1 %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ek, ptr noundef nonnull readonly align 1 dereferenceable(30) @164, i64 range(i64 0, -9223372036854775808) 30, i1 false), !noalias !13627
  store i64 %i.eh, ptr %i.bg, align 8, !alias.scope !13628, !noalias !13574
  %.sroa.5464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.ek, ptr %.sroa.5464.0..sroa_idx.i, align 8, !alias.scope !13628, !noalias !13574
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 30, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13628, !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13632
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc143.i unwind label %bb.am, !noalias !13571

.noexc143.i:                                      ; preds = %bb.ak
  %i.em = load i64, ptr %i.d, align 8, !range !3, !noalias !13632, !noundef !4
  %i.en = trunc nuw i64 %i.em to i1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !63, !noalias !13632, !noundef !4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.en, label %bb.al, label %bb.ao, !prof !64

bb.al:                                            ; preds = %.noexc143.i
  %i.er = load i64, ptr %i.eq, align 8, !noalias !13632
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ep, i64 %i.er) #37
          to label %.noexc144.i unwind label %bb.am, !noalias !13571

.noexc144.i:                                      ; preds = %bb.al
  unreachable

.body156.i:                                       ; preds = %bb.ap, %bb.an, %bb.am
  %.pn112.i = phi { ptr, i32 } [ %i.et, %bb.an ], [ %i.es, %bb.am ], [ %i.ew, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13574
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg) #38
          to label %.body161.i unwind label %bb.av, !noalias !13571

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.al, %bb.ak
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body156.i

bb.an:                                            ; preds = %bb.ao
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !13574
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf) #38
          to label %.body156.i unwind label %bb.av, !noalias !13571

bb.ao:                                            ; preds = %.noexc143.i
  %i.eu = load ptr, ptr %i.eq, align 8, !noalias !13632, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13632
  store i64 %i.ep, ptr %i.bf, align 8, !noalias !13574
  %.sroa.4413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.eu, ptr %.sroa.4413.0..sroa_idx.i, align 8, !noalias !13574
  %.sroa.5414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 0, ptr %.sroa.5414.0..sroa_idx.i, align 8, !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !13574
  store ptr %i.bg, ptr %i.be, align 8, !noalias !13574
  %.sroa.5290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5290.0..sroa_idx.i, align 8, !noalias !13574
  %i.ev = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bf, ptr %i.ev, align 8, !noalias !13574
  %.sroa.5292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5292.0..sroa_idx.i, align 8, !noalias !13574
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, ptr noundef nonnull @32, ptr noundef nonnull %i.be)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit155.i unwind label %bb.an, !noalias !13571

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit155.i:  ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !13574
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ap, !noalias !13571

bb.ap:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit155.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body156.i unwind label %bb.aq, !noalias !13571

bb.aq:                                            ; preds = %bb.ap
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13571
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit155.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.am, !noalias !13571

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13574
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i160.i unwind label %bb.ar, !noalias !13571

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body161.i unwind label %bb.as, !noalias !13571

bb.as:                                            ; preds = %bb.ar
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13571
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i160.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.au unwind label %bb.at, !noalias !13571

.body161.i:                                       ; preds = %bb.at, %bb.ar, %.body156.i, %bb.ah
  %.pn114.i = phi { ptr, i32 } [ %i.ed, %bb.ah ], [ %.pn112.i, %.body156.i ], [ %i.fa, %bb.at ], [ %i.ey, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13574
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit172.i

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i160.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i160.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13574
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13574
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext19create_memory_table0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
          to label %bb.dt unwind label %bb.ds, !noalias !13571

.body211.i:                                       ; preds = %bb.ds, %bb.dq, %.body205.i, %bb.dh
  %.pn76.i = phi { ptr, i32 } [ %i.ih, %bb.dh ], [ %.pn74.i, %.body205.i ], [ %i.ix, %bb.ds ], [ %i.iv, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13574
  br label %bb.cp

bb.ds:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i210.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.body211.i

bb.dt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i210.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13574
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.26.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13574
  %i.iy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 10, ptr %i.iy, align 8, !noalias !13574
  store i64 36, ptr %i.i, align 16, !noalias !13574
  br label %bb.cu

bb.du:                                            ; preds = %.thread.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit283.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit283.i: ; preds = %bb.io, %bb.in, %bb.ed, %bb.dv, %bb.du
  %.pn103.i = phi { ptr, i32 } [ %i.jb, %bb.dv ], [ %i.iz, %bb.du ], [ %.pn100.pn.i, %bb.ed ], [ %.pn100.pn.i, %bb.io ], [ %.pn100.pn.i, %bb.in ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.val, i64 1238
  store i8 0, ptr %i.ja, align 2, !noalias !13574
  br label %bb.cp

bb.dv:                                            ; preds = %bb.ib
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit283.i

bb.dw:                                            ; preds = %.thread.i
  %.val.i = load ptr, ptr %i.ig, align 8, !noalias !13571, !nonnull !4, !noundef !4
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %.val137.i = load ptr, ptr %i.jc, align 8, !noalias !13571, !nonnull !4, !noundef !4 ; 2 uses
  %i.jd = atomicrmw add ptr %.val137.i, i64 1 monotonic, align 8, !noalias !13571
  %i.je = icmp slt i64 %i.jd, 0
  br i1 %i.je, label %bb.dx, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit215.i

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit215.i: ; preds = %bb.dw
  store ptr %.val137.i, ptr %i.fo, align 16, !noalias !13574
  %i.jf = getelementptr inbounds nuw i8, ptr %.val, i64 1238
  store i8 1, ptr %i.jf, align 2, !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13574
  %i.jg = getelementptr inbounds nuw i8, ptr %.val, i64 992
  %i.jh = load ptr, ptr %i.jg, align 16, !noalias !13574, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jh)
          to label %bb.ea unwind label %bb.dz, !noalias !13571

bb.dy:                                            ; preds = %bb.eb, %bb.dz
  %.pn82.i = phi { ptr, i32 } [ %i.jk, %bb.eb ], [ %i.ji, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13574
  br label %bb.ed

bb.dz:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit215.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ea:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit215.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13574
  %i.jj = getelementptr inbounds nuw i8, ptr %.val, i64 1234
  store i8 0, ptr %i.jj, align 2, !noalias !13574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.ab, ptr noundef nonnull align 16 dereferenceable(320) %i.if, i64 320, i1 false), !noalias !13574
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame3new(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1680) %i.ac, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.ab)
          to label %bb.ec unwind label %bb.eb, !noalias !13571

bb.eb:                                            ; preds = %bb.ea
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13574
  br label %bb.dy

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13574
  %i.jl = getelementptr inbounds nuw i8, ptr %.val, i64 1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.jl, ptr noundef nonnull align 16 dereferenceable(336) %i.ad, i64 336, i1 false), !noalias !13574
  %.sroa.8372.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1936
  store i8 0, ptr %.sroa.8372.0..sroa_idx.i, align 16, !noalias !13574
  br label %bb.gb

bb.ed:                                            ; preds = %bb.ga, %bb.gf, %.body256.i, %bb.hb, %bb.gz, %bb.dy
  %.pn100.pn.i = phi { ptr, i32 } [ %.pn82.i, %bb.dy ], [ %.pn96.pn.pn.i, %.body256.i ], [ %.pn94.i, %bb.gz ], [ %i.os, %bb.hb ], [ %i.nc, %bb.gf ], [ %i.my, %bb.ga ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val, i64 1238
  %i.jn = load i8, ptr %i.jm, align 2, !range !101, !noalias !13574, !noundef !4
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.in, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit283.i

bb.ee:                                            ; preds = %bb.ef
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !13574
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.jq) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.av, !noalias !13571

bb.ef:                                            ; preds = %bb.a, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !13574
  %i.jq = getelementptr inbounds nuw i8, ptr %.val, i64 1264 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame19collect_partitioned0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.au, ptr noundef nonnull align 16 %i.jq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eg unwind label %bb.ee, !noalias !13571

bb.eg:                                            ; preds = %bb.ef
  %i.jr = load i64, ptr %i.au, align 8, !range !6373, !noalias !13574, !noundef !4 ; 3 uses
  %i.js = icmp eq i64 %i.jr, 21
  br i1 %i.js, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !13574
  store i64 37, ptr %0, align 16, !alias.scope !13571, !noalias !13641
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_memory_table0Cs7p2uQeJxui2_9deltalake.exit

bb.ei:                                            ; preds = %bb.eg
  %.sroa.3327.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.0..sroa_idx.i, i64 24, i1 false), !noalias !13574
  %.sroa.5328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.5328.0.copyload.i = load i64, ptr %.sroa.5328.0..sroa_idx.i, align 8, !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !13574
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.jq)
          to label %bb.ek unwind label %bb.ej, !noalias !13571

bb.ej:                                            ; preds = %bb.ei
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs7p2uQeJxui2_9deltalake.exit.i

bb.ek:                                            ; preds = %bb.ei
  %.not.i216.i = icmp eq i64 %i.jr, 20
  br i1 %.not.i216.i, label %bb.el, label %bb.fv

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.i, i64 24, i1 false), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8334.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !13574
  %i.ju = getelementptr inbounds nuw i8, ptr %.val, i64 1239 ; 2 uses
  store i8 0, ptr %i.ju, align 1, !noalias !13574
  %i.jv = getelementptr inbounds nuw i8, ptr %.val, i64 1248
  %i.jw = load ptr, ptr %i.jv, align 16, !noalias !13574, !nonnull !4, !noundef !4
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable7try_new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.aq, ptr noundef nonnull %i.jw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.at)
          to label %bb.en unwind label %bb.em, !noalias !13571

bb.em:                                            ; preds = %bb.el
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !13574
  br label %.body218.sink.split.i

bb.en:                                            ; preds = %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !13678)
  %i.jy = load i64, ptr %i.aq, align 8, !range !63, !alias.scope !13681, !noalias !13683, !noundef !4 ; 2 uses
  %i.jz = icmp eq i64 %i.jy, -9223372036854775808
  %i.ka = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ka, i64 40, i1 false), !alias.scope !13684, !noalias !13574
  br i1 %i.jz, label %bb.ft, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.sroa.10336.0..sroa_idx337.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %.sroa.10336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10336.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10336.0..sroa_idx337.i, i64 64, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !13574
  store i64 %i.jy, ptr %i.ap, align 8, !noalias !13574
  %.sroa.8334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.i, i64 40, i1 false), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !13574
  %i.kb = getelementptr inbounds nuw i8, ptr %.val, i64 1236
  store i8 0, ptr %i.kb, align 4, !noalias !13574
  %i.kc = getelementptr inbounds nuw i8, ptr %.val, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 16 dereferenceable(24) %i.kc, i64 24, i1 false), !noalias !13574
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable16with_constraints(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao)
          to label %bb.eq unwind label %bb.ep, !noalias !13571

bb.ep:                                            ; preds = %bb.eo
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !13574
  br label %.body218.sink.split.i

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !13574
  %i.ke = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  store i8 0, ptr %i.ke, align 1, !noalias !13574
  %i.kf = getelementptr inbounds nuw i8, ptr %.val, i64 1080
  %.sroa.0338.0.copyload.i = load i64, ptr %i.kf, align 8, !noalias !13574
  %.sroa.5339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1088
  %.sroa.5339.0.copyload.i = load ptr, ptr %.sroa.5339.0..sroa_idx.i, align 8, !noalias !13574, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6340.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1096
  %.sroa.6340.0.copyload.i = load i64, ptr %.sroa.6340.0..sroa_idx.i, align 8, !noalias !13574 ; 2 uses
  %i.kg = icmp ult i64 %.sroa.6340.0.copyload.i, 64051194700380388
  call void @llvm.assume(i1 %i.kg)
  %i.kh = getelementptr inbounds nuw [144 x i8], ptr %.sroa.5339.0.copyload.i, i64 %.sroa.6340.0.copyload.i
  store ptr %.sroa.5339.0.copyload.i, ptr %i.am, align 8, !alias.scope !13685, !noalias !13688
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.0338.0.copyload.i, ptr %i.ki, align 8, !alias.scope !13685, !noalias !13688
  %i.kj = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.5339.0.copyload.i, ptr %i.kj, align 8, !alias.scope !13685, !noalias !13688
  %i.kk = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.kh, ptr %i.kk, align 8, !alias.scope !13685, !noalias !13688
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB19_3vec9into_iter8IntoIterB3r_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.am)
          to label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.er, !noalias !13571

bb.er:                                            ; preds = %bb.eq
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !13574
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ar) #38
          to label %.body218.sink.split.i unwind label %bb.av, !noalias !13571

_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13574
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable20with_column_defaults(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.an)
          to label %bb.et unwind label %bb.es, !noalias !13571

bb.es:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit.i
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !13574
  br label %.body218.sink.split.i

bb.et:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13690
  store i64 1, ptr %i.b, align 8, !noalias !13690
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.kn, align 8, !noalias !13690
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ko, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.as, i64 112, i1 false), !noalias !13574
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13693
  %i.kp = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3025) 128, i64 noundef range(i64 8, 17) 8) #41, !noalias !13693 ; 3 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.eu, label %bb.ex, !prof !64

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #37
          to label %.noexc.i.i unwind label %bb.ev, !noalias !13696

.noexc.i.i:                                       ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %bb.eu
  %i.kr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ko)
          to label %.body218.i unwind label %bb.ew, !noalias !13696

bb.ew:                                            ; preds = %bb.ev
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13696
  unreachable

bb.ex:                                            ; preds = %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.kp, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !13696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !13574
  %i.kt = getelementptr inbounds nuw i8, ptr %.val, i64 992 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 16, !noalias !13574, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !13574
  %i.kv = getelementptr inbounds nuw i8, ptr %.val, i64 1000
  call void @llvm.experimental.noalias.scope.decl(metadata !13697)
  call void @llvm.experimental.noalias.scope.decl(metadata !13700)
  %i.kw = load i64, ptr %i.kv, align 8, !range !288, !alias.scope !13700, !noalias !13702, !noundef !4 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.val, i64 1008
  %i.ky = load ptr, ptr %i.kx, align 16, !alias.scope !13700, !noalias !13702, !nonnull !4, !noundef !4 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.val, i64 1016
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !13700, !noalias !13702, !noundef !4 ; 3 uses
  %i.lb = atomicrmw add ptr %i.ky, i64 1 monotonic, align 8, !noalias !13703
  %i.lc = icmp slt i64 %i.lb, 0                   ; 3 uses
  switch i64 %i.kw, label %default.unreachable [
    i64 0, label %bb.ey
    i64 1, label %bb.ez
    i64 2, label %bb.fa
  ]

bb.ey:                                            ; preds = %bb.ex
  br i1 %i.lc, label %bb.fb, label %bb.fl

bb.ez:                                            ; preds = %bb.ex
  br i1 %i.lc, label %bb.fd, label %bb.fc

bb.fa:                                            ; preds = %bb.ex
  br i1 %i.lc, label %bb.fg, label %bb.ff

bb.fb:                                            ; preds = %bb.ey
  call void @llvm.trap()
  unreachable

.sink.split.i220.i:                               ; preds = %bb.fj, %bb.fc
  %.sink18.i221.sroa.phi.i = phi ptr [ %.sink18.i221.sroa.gep.i, %bb.fj ], [ %.sink18.i221.sroa.gep351.i, %bb.fc ]
  %.sink16.i222.i = phi ptr [ %i.lk, %bb.fj ], [ %i.ky, %bb.fc ]
  %.sink15.i223.sroa.phi.i = phi ptr [ %.sink15.i223.sroa.gep.i, %bb.fj ], [ %.sink15.i223.sroa.gep352.i, %bb.fc ]
  %.sink13.i224.i = phi i64 [ %i.lm, %bb.fj ], [ %i.la, %bb.fc ]
  %.sink12.ph.i225.i = phi i64 [ 40, %bb.fj ], [ 24, %bb.fc ]
  %.sink10.ph.i226.i = phi ptr [ %i.lq, %bb.fj ], [ %i.le, %bb.fc ]
  %.sink9.ph.i227.i = phi i64 [ 48, %bb.fj ], [ 32, %bb.fc ]
  %.sink7.ph.i228.i = phi i64 [ %i.ls, %bb.fj ], [ %i.lg, %bb.fc ]
  store ptr %.sink16.i222.i, ptr %.sink18.i221.sroa.phi.i, align 8, !alias.scope !13697, !noalias !13704
  store i64 %.sink13.i224.i, ptr %.sink15.i223.sroa.phi.i, align 8, !alias.scope !13697, !noalias !13704
  br label %bb.fl

bb.fc:                                            ; preds = %bb.ez
  %i.ld = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.le = load ptr, ptr %i.ld, align 8, !alias.scope !13700, !noalias !13702, !nonnull !4, !noundef !4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.lg = load i64, ptr %i.lf, align 8, !alias.scope !13700, !noalias !13702, !noundef !4
  %i.lh = atomicrmw add ptr %i.le, i64 1 monotonic, align 8, !noalias !13703
  %i.li = icmp slt i64 %i.lh, 0
  br i1 %i.li, label %bb.fe, label %.sink.split.i220.i

bb.fd:                                            ; preds = %bb.ez
  call void @llvm.trap()
  unreachable

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.trap()
  unreachable

bb.ff:                                            ; preds = %bb.fa
  %i.lj = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.lk = load ptr, ptr %i.lj, align 8, !alias.scope !13700, !noalias !13702, !nonnull !4, !noundef !4 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !13700, !noalias !13702, !noundef !4
  %i.ln = atomicrmw add ptr %i.lk, i64 1 monotonic, align 8, !noalias !13703
  %i.lo = icmp slt i64 %i.ln, 0
  br i1 %i.lo, label %bb.fi, label %bb.fh

bb.fg:                                            ; preds = %bb.fa
  call void @llvm.trap()
  unreachable

bb.fh:                                            ; preds = %bb.ff
  %i.lp = getelementptr inbounds nuw i8, ptr %.val, i64 1040
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !13700, !noalias !13702, !nonnull !4, !noundef !4 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val, i64 1048
  %i.ls = load i64, ptr %i.lr, align 8, !alias.scope !13700, !noalias !13702, !noundef !4
  %i.lt = atomicrmw add ptr %i.lq, i64 1 monotonic, align 8, !noalias !13703
  %i.lu = icmp slt i64 %i.lt, 0
  br i1 %i.lu, label %bb.fk, label %bb.fj

bb.fi:                                            ; preds = %bb.ff
  call void @llvm.trap()
  unreachable

bb.fj:                                            ; preds = %bb.fh
  store ptr %i.ky, ptr %.sink18.i221.sroa.gep351.i, align 8, !alias.scope !13697, !noalias !13704
  store i64 %i.la, ptr %.sink15.i223.sroa.gep352.i, align 8, !alias.scope !13697, !noalias !13704
  br label %.sink.split.i220.i

bb.fk:                                            ; preds = %bb.fh
  call void @llvm.trap()
  unreachable

bb.fl:                                            ; preds = %.sink.split.i220.i, %bb.ey
  %.sink12.i229.i = phi i64 [ 8, %bb.ey ], [ %.sink12.ph.i225.i, %.sink.split.i220.i ]
  %.sink10.i230.i = phi ptr [ %i.ky, %bb.ey ], [ %.sink10.ph.i226.i, %.sink.split.i220.i ]
  %.sink9.i231.i = phi i64 [ 16, %bb.ey ], [ %.sink9.ph.i227.i, %.sink.split.i220.i ]
  %.sink7.i232.i = phi i64 [ %i.la, %bb.ey ], [ %.sink7.ph.i228.i, %.sink.split.i220.i ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink12.i229.i
  store ptr %.sink10.i230.i, ptr %i.lv, align 8, !alias.scope !13697, !noalias !13704
  %i.lw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink9.i231.i
  store i64 %.sink7.i232.i, ptr %i.lw, align 8, !alias.scope !13697, !noalias !13704
  store i64 %i.kw, ptr %i.aj, align 8, !alias.scope !13697, !noalias !13704
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ku, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.aj, ptr noundef nonnull %i.kp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @167)
          to label %bb.fm unwind label %bb.fq, !noalias !13571

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13574
  call void @llvm.experimental.noalias.scope.decl(metadata !13705)
  %i.lx = load i64, ptr %i.ak, align 8, !range !403, !alias.scope !13708, !noalias !13710, !noundef !4 ; 2 uses
  %.not.i236.i = icmp eq i64 %i.lx, 20
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !alias.scope !13711, !noalias !13574 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !13711, !noalias !13574 ; 2 uses
  br i1 %.not.i236.i, label %bb.fn, label %bb.fs

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13574
  store ptr %i.lz, ptr %i.al, align 8, !noalias !13574
  %i.mc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.mb, ptr %i.mc, align 8, !noalias !13574
  %i.md = icmp eq ptr %i.lz, null
  br i1 %i.md, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit239.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.me = atomicrmw sub ptr %i.lz, i64 1 release, align 8, !noalias !13712
  %i.mf = icmp eq i64 %i.me, 1
  br i1 %i.mf, label %bb.fp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit239.i

bb.fp:                                            ; preds = %bb.fo
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit239.i unwind label %.thread439.i, !noalias !13571

.thread439.i:                                     ; preds = %bb.fp
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13574
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit239.i: ; preds = %bb.fp, %bb.fo, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13574
  %i.mh = load ptr, ptr %i.kt, align 16, !noalias !13574, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mh)
          to label %bb.fr unwind label %.thread436.i, !noalias !13571

bb.fq:                                            ; preds = %bb.fl
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13574
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs7p2uQeJxui2_9deltalake.exit.i

.thread436.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit239.i
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs7p2uQeJxui2_9deltalake.exit.i

bb.fr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit239.i
  store i8 0, ptr %i.ju, align 1, !noalias !13574
  br label %bb.cu

bb.fs:                                            ; preds = %bb.fm
  %.sroa.12349.0..sroa_idx350.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.4356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4356.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12349.0..sroa_idx350.i, i64 16, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13574
  call void @llvm.experimental.noalias.scope.decl(metadata !13719)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.lx, ptr %i.mk, align 8, !alias.scope !13722, !noalias !13574
  %.sroa.2354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.lz, ptr %.sroa.2354.0..sroa_idx.i, align 16, !alias.scope !13722, !noalias !13574
  %.sroa.3355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.mb, ptr %.sroa.3355.0..sroa_idx.i, align 8, !alias.scope !13722, !noalias !13574
  store i64 36, ptr %i.i, align 16, !alias.scope !13724, !noalias !13725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13574
  br label %bb.fu

bb.ft:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !13574
  %i.ml = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ml, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.i, i64 40, i1 false), !noalias !13574
  store i64 36, ptr %i.i, align 16, !alias.scope !13726, !noalias !13729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fv, %bb.ft, %bb.fs
  %i.mm = getelementptr inbounds nuw i8, ptr %.val, i64 1239 ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !range !101, !noalias !13574, !noundef !4
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.fw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit.i

.body218.sink.split.i:                            ; preds = %bb.es, %bb.er, %bb.ep, %bb.em
  %.pn40.pn.pn.ph.i = phi { ptr, i32 } [ %i.jx, %bb.em ], [ %i.kd, %bb.ep ], [ %i.kl, %bb.er ], [ %i.km, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !13574
  br label %.body218.i

.body218.i:                                       ; preds = %.body218.sink.split.i, %bb.ev
  %.pn40.pn.pn.i = phi { ptr, i32 } [ %i.kr, %bb.ev ], [ %.pn40.pn.pn.ph.i, %.body218.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs7p2uQeJxui2_9deltalake.exit.i

bb.fv:                                            ; preds = %bb.ek
  %.sroa.2330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2330.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.i, i64 24, i1 false), !noalias !13574
  call void @llvm.experimental.noalias.scope.decl(metadata !13731)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.jr, ptr %i.mp, align 8, !alias.scope !13734, !noalias !13574
  %.sroa.3331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.5328.0.copyload.i, ptr %.sroa.3331.0..sroa_idx.i, align 8, !alias.scope !13734, !noalias !13574
  store i64 36, ptr %i.i, align 16, !alias.scope !13736, !noalias !13737
  br label %bb.fu

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.fx, %bb.fw, %bb.fu
  store i8 0, ptr %i.mm, align 1, !noalias !13574
  br label %bb.co

bb.fw:                                            ; preds = %bb.fu
  %i.mq = getelementptr inbounds nuw i8, ptr %.val, i64 1248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13738)
  call void @llvm.experimental.noalias.scope.decl(metadata !13741)
  %i.mr = load ptr, ptr %i.mq, align 8, !alias.scope !13744, !noalias !13574, !nonnull !4, !noundef !4
  %i.ms = atomicrmw sub ptr %i.mr, i64 1 release, align 8, !noalias !13745
  %i.mt = icmp eq i64 %i.ms, 1
  br i1 %i.mt, label %bb.fx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit.i

bb.fx:                                            ; preds = %bb.fw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mq) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cf, !noalias !13571

bb.fy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs7p2uQeJxui2_9deltalake.exit.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.val, i64 1248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13746)
  call void @llvm.experimental.noalias.scope.decl(metadata !13749)
  %i.mv = load ptr, ptr %i.mu, align 8, !alias.scope !13752, !noalias !13574, !nonnull !4, !noundef !4
  %i.mw = atomicrmw sub ptr %i.mv, i64 1 release, align 8, !noalias !13753
  %i.mx = icmp eq i64 %i.mw, 1
  br i1 %i.mx, label %bb.fz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit243.i

bb.fz:                                            ; preds = %bb.fy
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mu) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit243.i unwind label %bb.av, !noalias !13571

bb.ga:                                            ; preds = %bb.gb
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13574
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.mz) #38
          to label %bb.ed unwind label %bb.av, !noalias !13571

bb.gb:                                            ; preds = %bb.a, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13574
  %i.mz = getelementptr inbounds nuw i8, ptr %.val, i64 1264 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame19collect_partitioned0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aa, ptr noundef nonnull align 16 %i.mz, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gc unwind label %bb.ga, !noalias !13571

bb.gc:                                            ; preds = %bb.gb
  %i.na = load i64, ptr %i.aa, align 8, !range !6373, !noalias !13574, !noundef !4 ; 3 uses
  %i.nb = icmp eq i64 %i.na, 21
  br i1 %i.nb, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13574
  store i64 37, ptr %0, align 16, !alias.scope !13571, !noalias !13641
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_memory_table0Cs7p2uQeJxui2_9deltalake.exit

bb.ge:                                            ; preds = %bb.gc
  %.sroa.3375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3375.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3375.0..sroa_idx.i, i64 24, i1 false), !noalias !13574
  %.sroa.5376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.5376.0.copyload.i = load i64, ptr %.sroa.5376.0..sroa_idx.i, align 8, !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13574
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.mz)
          to label %bb.gg unwind label %bb.gf, !noalias !13571

bb.gf:                                            ; preds = %bb.ge
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.gg:                                            ; preds = %bb.ge
  %.not.i244.i = icmp eq i64 %i.na, 20
  br i1 %.not.i244.i, label %bb.gh, label %bb.hz

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3375.i, i64 24, i1 false), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8382.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13574
  %i.nd = getelementptr inbounds nuw i8, ptr %.val, i64 1238 ; 2 uses
  store i8 0, ptr %i.nd, align 2, !noalias !13574
  %i.ne = getelementptr inbounds nuw i8, ptr %.val, i64 1248
  %i.nf = load ptr, ptr %i.ne, align 16, !noalias !13574, !nonnull !4, !noundef !4
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable7try_new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.w, ptr noundef nonnull %i.nf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.gj unwind label %bb.gi, !noalias !13571

bb.gi:                                            ; preds = %bb.gh
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13574
  br label %.body256.sink.split.i

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.experimental.noalias.scope.decl(metadata !13754)
  %i.nh = load i64, ptr %i.w, align 8, !range !63, !alias.scope !13757, !noalias !13759, !noundef !4 ; 2 uses
  %i.ni = icmp eq i64 %i.nh, -9223372036854775808
  %i.nj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8382.i, ptr noundef nonnull align 8 dereferenceable(40) %i.nj, i64 40, i1 false), !alias.scope !13760, !noalias !13574
  br i1 %i.ni, label %bb.hx, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %.sroa.10384.0..sroa_idx385.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.10384.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10384.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10384.0..sroa_idx385.i, i64 64, i1 false), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13574
  store i64 %i.nh, ptr %i.v, align 8, !noalias !13574
  %.sroa.8382.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8382.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8382.i, i64 40, i1 false), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13574
  %i.nk = getelementptr inbounds nuw i8, ptr %.val, i64 1236
  store i8 0, ptr %i.nk, align 4, !noalias !13574
  %i.nl = getelementptr inbounds nuw i8, ptr %.val, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 16 dereferenceable(24) %i.nl, i64 24, i1 false), !noalias !13574
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable16with_constraints(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u)
          to label %bb.gm unwind label %bb.gl, !noalias !13571

bb.gl:                                            ; preds = %bb.gk
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13574
  br label %.body256.sink.split.i

bb.gm:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13574
  %i.nn = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  store i8 0, ptr %i.nn, align 1, !noalias !13574
  %i.no = getelementptr inbounds nuw i8, ptr %.val, i64 1080
  %.sroa.0386.0.copyload.i = load i64, ptr %i.no, align 8, !noalias !13574
  %.sroa.5387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1088
  %.sroa.5387.0.copyload.i = load ptr, ptr %.sroa.5387.0..sroa_idx.i, align 8, !noalias !13574, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1096
  %.sroa.6388.0.copyload.i = load i64, ptr %.sroa.6388.0..sroa_idx.i, align 8, !noalias !13574 ; 2 uses
  %i.np = icmp ult i64 %.sroa.6388.0.copyload.i, 64051194700380388
  call void @llvm.assume(i1 %i.np)
  %i.nq = getelementptr inbounds nuw [144 x i8], ptr %.sroa.5387.0.copyload.i, i64 %.sroa.6388.0.copyload.i
  store ptr %.sroa.5387.0.copyload.i, ptr %i.s, align 8, !alias.scope !13761, !noalias !13764
  %i.nr = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.0386.0.copyload.i, ptr %i.nr, align 8, !alias.scope !13761, !noalias !13764
  %i.ns = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5387.0.copyload.i, ptr %i.ns, align 8, !alias.scope !13761, !noalias !13764
  %i.nt = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.nq, ptr %i.nt, align 8, !alias.scope !13761, !noalias !13764
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB19_3vec9into_iter8IntoIterB3r_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s)
          to label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit253.i unwind label %bb.gn, !noalias !13571

bb.gn:                                            ; preds = %bb.gm
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13574
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.x) #38
          to label %.body256.sink.split.i unwind label %bb.av, !noalias !13571

_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit253.i: ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13574
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable20with_column_defaults(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.t)
          to label %bb.gp unwind label %bb.go, !noalias !13571

bb.go:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit253.i
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13574
  br label %.body256.sink.split.i

bb.gp:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs7p2uQeJxui2_9deltalake.exit253.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13766
  store i64 1, ptr %i.a, align 8, !noalias !13766
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.nw, align 8, !noalias !13766
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.nx, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.y, i64 112, i1 false), !noalias !13574
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !13769
  %i.ny = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3025) 128, i64 noundef range(i64 8, 17) 8) #41, !noalias !13769 ; 3 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.gq, label %bb.gt, !prof !64

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #37
          to label %.noexc.i255.i unwind label %bb.gr, !noalias !13772

.noexc.i255.i:                                    ; preds = %bb.gq
  unreachable

bb.gr:                                            ; preds = %bb.gq
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.nx)
          to label %.body256.i unwind label %bb.gs, !noalias !13772

bb.gs:                                            ; preds = %bb.gr
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13772
  unreachable

bb.gt:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ny, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !13772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8382.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13574
  %i.oc = getelementptr inbounds nuw i8, ptr %.val, i64 992 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 16, !noalias !13574, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13574
  %i.oe = getelementptr inbounds nuw i8, ptr %.val, i64 1237
  store i8 0, ptr %i.oe, align 1, !noalias !13574
  %i.of = getelementptr inbounds nuw i8, ptr %.val, i64 1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.of, i64 56, i1 false), !noalias !13574
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.od, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.p, ptr noundef nonnull %i.ny, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @167)
          to label %bb.gv unwind label %bb.gu, !noalias !13571

bb.gu:                                            ; preds = %bb.gt
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13574
  br label %bb.gz

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13574
  call void @llvm.experimental.noalias.scope.decl(metadata !13773)
  %i.oh = load i64, ptr %i.q, align 8, !range !403, !alias.scope !13776, !noalias !13778, !noundef !4 ; 2 uses
  %.not.i259.i = icmp eq i64 %i.oh, 20
  %i.oi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !alias.scope !13779, !noalias !13574 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !alias.scope !13779, !noalias !13574 ; 2 uses
  br i1 %.not.i259.i, label %bb.gw, label %bb.hw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13574
  store ptr %i.oj, ptr %i.r, align 8, !noalias !13574
  %i.om = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ol, ptr %i.om, align 8, !noalias !13574
  %i.on = icmp eq ptr %i.oj, null
  br i1 %i.on, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit262.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.oo = atomicrmw sub ptr %i.oj, i64 1 release, align 8, !noalias !13780
  %i.op = icmp eq i64 %i.oo, 1
  br i1 %i.op, label %bb.gy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit262.i

bb.gy:                                            ; preds = %bb.gx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit262.i unwind label %bb.ha, !noalias !13571

bb.gz:                                            ; preds = %bb.ha, %bb.gu
  %.pn94.i = phi { ptr, i32 } [ %i.oq, %bb.ha ], [ %i.og, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13574
  br label %bb.ed

bb.ha:                                            ; preds = %bb.gy
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit262.i: ; preds = %bb.gy, %bb.gx, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13574
  %i.or = load ptr, ptr %i.oc, align 16, !noalias !13574, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.or)
          to label %bb.hc unwind label %bb.hb, !noalias !13571

bb.hb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit262.i
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.hc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit262.i
  store i8 0, ptr %i.nd, align 2, !noalias !13574
  br label %bb.cu

bb.hd:                                            ; preds = %bb.cu, %bb.co
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit172.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit174.i: ; preds = %bb.cu
  %i.ou = getelementptr inbounds nuw i8, ptr %.val, i64 1234 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 2, !range !101, !noalias !13574, !noundef !4
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit174.i
  store i8 0, ptr %i.ou, align 2, !noalias !13574
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %.val)
          to label %bb.hh unwind label %bb.j, !noalias !13571

bb.hf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit174.i
  %i.ox = getelementptr inbounds nuw i8, ptr %.val, i64 320
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ox)
          to label %bb.he unwind label %bb.hg, !noalias !13571

bb.hg:                                            ; preds = %bb.ic, %bb.hf
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.hh:                                            ; preds = %bb.he
  %i.oz = getelementptr inbounds nuw i8, ptr %.val, i64 1235 ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !range !101, !noalias !13574, !noundef !4
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.hi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.hk, %bb.hh
  store i8 0, ptr %i.oz, align 1, !noalias !13574
  %i.pc = getelementptr inbounds nuw i8, ptr %.val, i64 1236 ; 2 uses
  %i.pd = load i8, ptr %i.pc, align 4, !range !101, !noalias !13574, !noundef !4
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %bb.hn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs7p2uQeJxui2_9deltalake.exit.i

bb.hi:                                            ; preds = %bb.hh
  %i.pf = getelementptr inbounds nuw i8, ptr %.val, i64 1080 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pf)
          to label %bb.hk unwind label %bb.hj, !noalias !13571

bb.hj:                                            ; preds = %bb.hi
  %i.pg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pf)
          to label %.body264.i unwind label %bb.hl, !noalias !13571

bb.hk:                                            ; preds = %bb.hi
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.hm, !noalias !13571

bb.hl:                                            ; preds = %bb.hj
end_hunk_3
