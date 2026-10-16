Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_table_func_system?download=true
inline.NumInlined: 14721
inline.NumDeleted: 5969
loop-unroll.NumCompletelyUnrolled: 87
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN6duckdb14TestVectorFlat8GenerateERNS_14TestVectorInfoE:bb.a
  store ptr null, ptr %5, align 8, !tbaa !704
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.ds
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc41
  %i.el = add i64 %i.dy, -8
  %i.em = sub i64 %i.el, %i.dz                    ; 2 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.em, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ei, i64 8
  %i.ep = add i64 %i.dy, -8
  %i.eq = sub i64 %i.ep, %i.dz
  %i.er = and i64 %i.eq, -8                       ; 2 uses
  %scevgep174 = getelementptr i8, ptr %scevgep, i64 %i.er
  %scevgep175 = getelementptr i8, ptr %i.dx, i64 8
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.er
  %bound0 = icmp ult ptr %i.ei, %scevgep176
  %bound1 = icmp ult ptr %i.dx, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader180, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, 4611686018427387900     ; 3 uses
  %i.es = shl i64 %n.vec, 3                       ; 2 uses
  %i.et = getelementptr i8, ptr %i.ei, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.dx, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ei, i64 %i.ev ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.dx, i64 %i.ev ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.ew = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep177, align 8, !tbaa !704, !alias.scope !1787
  %wide.load178 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !704, !alias.scope !1787
  %i.ex = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !704, !alias.scope !1788, !noalias !1789
  store <2 x i64> %wide.load178, ptr %i.ex, align 8, !tbaa !704, !alias.scope !1788, !noalias !1789
  %i.ey = getelementptr i8, ptr %next.gep177, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep177, align 8, !tbaa !704, !alias.scope !1787
  store <2 x ptr> splat (ptr null), ptr %i.ey, align 8, !tbaa !704, !alias.scope !1787
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !1781

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader180

.lr.ph.i.i.i.i.i.i.i.preheader180:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ei, %vector.memcheck ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.et, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dx, %vector.memcheck ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader180, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader180 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader180 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.fa = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !704, !alias.scope !1786
  store i64 %i.fa, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !704, !alias.scope !1785
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !704, !alias.scope !1786
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.ds
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1782

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ei, %.noexc41 ], [ %i.et, %middle.block ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dx) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ah
  store ptr %i.ei, ptr %i.dq, align 8, !tbaa !750
  store ptr %i.fd, ptr %i.dr, align 8, !tbaa !748
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.fe, ptr %i.dt, align 8, !tbaa !749
  %.pr = load ptr, ptr %5, align 8, !tbaa !704    ; 3 uses
  %.not.i42 = icmp eq ptr %.pr, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.pr) #26
  call void @_ZdlPv(ptr noundef nonnull %.pr) #29
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ff = add i64 %.025107, 2048
  %i.fg = load ptr, ptr %4, align 8, !tbaa !743   ; 2 uses
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !743
  %i.fi = icmp eq ptr %i.fg, %i.fh
  %indvars.iv.next = add i64 %indvars.iv, -2048
  br i1 %i.fi, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, label %bb.b, !llvm.loop !1783

.body33:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ad, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.v, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.r ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.v ], [ %i.do, %bb.ad ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75 ], [ %.pn8.i.i.i71, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !704   ; 3 uses
  %.not.i43 = icmp eq ptr %i.fj, null
  br i1 %.not.i43, label %.body, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44: ; preds = %.body33
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.fj) #26
  call void @_ZdlPv(ptr noundef nonnull %i.fj) #29
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44, %.body33, %bb.m, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.bf, %bb.m ], [ %.pn.pn, %.body33 ], [ %.pn.pn, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ac, %bb.e ]
  %i.fk = load ptr, ptr %4, align 8, !tbaa !730   ; 3 uses
  %i.fl = load ptr, ptr %i.h, align 8, !tbaa !729 ; 2 uses
  %.not4.i.i.i.i46 = icmp eq ptr %i.fk, %i.fl
  br i1 %.not4.i.i.i.i46, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %bb.ai, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57
  %.05.i.i.i.i48 = phi ptr [ %i.fr, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57 ], [ %i.fk, %bb.ai ] ; 4 uses
  %i.fm = load ptr, ptr %.05.i.i.i.i48, align 8, !tbaa !275 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i48, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !276 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i49 = icmp eq ptr %i.fm, %i.fo
  br i1 %.not4.i.i.i.i.i.i.i.i49, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i.i50:                         ; preds = %.lr.ph.i.i.i.i47, %.lr.ph.i.i.i.i.i.i.i.i50
  %.05.i.i.i.i.i.i.i.i51 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i50 ], [ %i.fm, %.lr.ph.i.i.i.i47 ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i.i.i.i.i51) #26
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i51, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i.i.i.i.i.i.i52, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i.i50, !llvm.loop !8

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53: ; preds = %.lr.ph.i.i.i.i.i.i.i.i50
  %.pr.i.i.i.i.i.i54 = load ptr, ptr %.05.i.i.i.i48, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53, %.lr.ph.i.i.i.i47
  %i.fq = phi ptr [ %.pr.i.i.i.i.i.i54, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i53 ], [ %i.fm, %.lr.ph.i.i.i.i47 ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i56 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i.i.i.i.i.i56, label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #29
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57

_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57: ; preds = %bb.aj, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i55
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i48, i64 24 ; 2 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.fr, %i.fl
  br i1 %.not.i.i.i.i58, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59, label %.lr.ph.i.i.i.i47, !llvm.loop !44

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i57
  %.pr.i.i60 = load ptr, ptr %4, align 8, !tbaa !730
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59, %bb.ai
  %i.fs = phi ptr [ %.pr.i.i60, %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i59 ], [ %i.fk, %bb.ai ] ; 2 uses
  %.not.i.i1.i.i62 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i.i62, label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit63, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61
  call void @_ZdlPv(ptr noundef nonnull %i.fs) #29
  br label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit63

_ZN6duckdb19TestGeneratedValuesD2Ev.exit63:       ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i61, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18TestVectorConstant8GenerateERNS_14TestVectorInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::TestGeneratedValues", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::unique_ptr.1703", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN6duckdb14TestVectorFlat14GenerateValuesERNS_14TestVectorInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TestGeneratedValues") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  %i.l = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27
          to label %.noexc unwind label %bb.h     ; 3 uses

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i ], [ %i.fa, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !275 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !276  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i.i.i.i.i) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.q = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.fb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !730
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.s = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fa, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  br label %_ZN6duckdb19TestGeneratedValuesD2Ev.exit

_ZN6duckdb19TestGeneratedValuesD2Ev.exit:         ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %bb.e unwind label %bb.d, !noalias !1798

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.l) #29, !noalias !1798
  br label %.body

bb.e:                                             ; preds = %.noexc
  store ptr %i.l, ptr %7, align 8, !tbaa !704, !alias.scope !1798
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !745, !nonnull !101, !align !195
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef 2048)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !745, !nonnull !101, !align !195 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !128
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !127
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.lr.ph.a

._crit_edge:                                      ; preds = %bb.ag, %.preheader
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ai unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.ag
  %.093 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %bb.ag ] ; 10 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !704   ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit, !prof !93

.noexc.i:                                         ; preds = %.lr.ph.a
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 49, ptr %i.g, align 8, !tbaa !117
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc52 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc52:                                         ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !97
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !117 ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ah, ptr noundef nonnull align 1 dereferenceable(49) @.str.185, i64 49, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !119
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc52
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.m unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.noexc52
  %.0.i.i = phi i1 [ false, %bb.j ], [ true, %.noexc52 ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ag
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.an) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0.i.i, label %bb.l, label %.body22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0.i.i, label %bb.l, label %.body22

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.af) #26
  br label %.body22

bb.m:                                             ; preds = %bb.j
  unreachable

_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !673
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !674 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.093, ptr %i.j, align 8, !tbaa !117
  store i64 %i.av, ptr %i.k, align 8, !tbaa !117
  %.not.i.i.i = icmp ult i64 %.093, %i.av
  br i1 %.not.i.i.i, label %bb.r, label %.noexc.i54, !prof !278

.noexc.i54:                                       ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ax, ptr %4, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i64 55, ptr %i.f, align 8, !tbaa !117
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc55 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.ay, ptr %4, align 8, !tbaa !97
  %i.az = load i64, ptr %i.f, align 8, !tbaa !117 ; 3 uses
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ay, ptr noundef nonnull align 1 dereferenceable(55) @.str.212, i64 55, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !119
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc55
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.q unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i54
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %.noexc55
  %.0.i.i.i = phi i1 [ false, %bb.n ], [ true, %.noexc55 ] ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ax
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.be) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.0.i.i.i, label %bb.p, label %.body22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.0.i.i.i, label %bb.p, label %.body22

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.aw) #26
  br label %.body22

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bg = getelementptr inbounds nuw [104 x i8], ptr %i.ar, i64 %.093
  %i.bh = load ptr, ptr %8, align 8, !tbaa !729
  %i.bi = load ptr, ptr %6, align 8, !tbaa !730   ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.093, ptr %i.d, align 8, !tbaa !117
  store i64 %i.bm, ptr %i.e, align 8, !tbaa !117
  %.not.i.i.i57 = icmp ult i64 %.093, %i.bm
  br i1 %.not.i.i.i57, label %.noexc26, label %.noexc.i75, !prof !278

.noexc.i75:                                       ; preds = %bb.r
  %i.bn = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.bo, ptr %1, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 55, ptr %i.a, align 8, !tbaa !117
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc76 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58 ; 3 uses

.noexc76:                                         ; preds = %.noexc.i75
  store ptr %i.bp, ptr %1, align 8, !tbaa !97
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !117 ; 3 uses
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bp, ptr noundef nonnull align 1 dereferenceable(55) @.str.212, i64 55, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !119
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  store i8 0, ptr %i.bs, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc76
  invoke void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.v unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58: ; preds = %.noexc.i75
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %.noexc76
  %.0.i.i.i61 = phi i1 [ false, %bb.s ], [ true, %.noexc76 ] ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !97    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bo
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bv) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i.i.i61, label %bb.u, label %.body22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0.i.i.i61, label %bb.u, label %.body22

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58
  %.pn8.i.i.i59 = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i58 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63 ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62 ]
  call void @__cxa_free_exception(ptr %i.bn) #26
  br label %.body22

bb.v:                                             ; preds = %bb.s
  unreachable

.noexc26:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %.093
  %i.by = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 0)
          to label %_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit unwind label %bb.ah

_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit: ; preds = %.noexc26
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.bg, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %i.by)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit
  %i.bz = load ptr, ptr %7, align 8, !tbaa !704   ; 3 uses
  %.not.i28 = icmp eq ptr %i.bz, null
  br i1 %.not.i28, label %.noexc.i67, label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit37, !prof !93

.noexc.i67:                                       ; preds = %bb.w
  %i.ca = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 49, ptr %i.c, align 8, !tbaa !117
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc68 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i29 ; 3 uses

.noexc68:                                         ; preds = %.noexc.i67
  store ptr %i.cc, ptr %3, align 8, !tbaa !97
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !117 ; 3 uses
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cc, ptr noundef nonnull align 1 dereferenceable(49) @.str.185, i64 49, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !119
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc68
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.aa unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i29: ; preds = %.noexc.i67
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %.noexc68
  %.0.i.i32 = phi i1 [ false, %bb.x ], [ true, %.noexc68 ] ; 2 uses
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.cb
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.ci) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0.i.i32, label %bb.z, label %.body22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i34: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0.i.i32, label %bb.z, label %.body22

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i29
  %.pn9.i.i30 = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i29 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i34 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33 ]
  call void @__cxa_free_exception(ptr %i.ca) #26
  br label %.body22

bb.aa:                                            ; preds = %bb.x
  unreachable

_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit37: ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !673
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !674 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 104               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.093, ptr %i.h, align 8, !tbaa !117
  store i64 %i.cq, ptr %i.i, align 8, !tbaa !117
  %.not.i.i.i38 = icmp ult i64 %.093, %i.cq
  br i1 %.not.i.i.i38, label %bb.af, label %.noexc.i71, !prof !278

.noexc.i71:                                       ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit37
  %i.cr = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.cs, ptr %2, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 55, ptr %i.b, align 8, !tbaa !117
  %i.ct = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc72 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i39 ; 3 uses

.noexc72:                                         ; preds = %.noexc.i71
  store ptr %i.ct, ptr %2, align 8, !tbaa !97
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !117 ; 3 uses
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ct, ptr noundef nonnull align 1 dereferenceable(55) @.str.212, i64 55, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !119
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  store i8 0, ptr %i.cw, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc72
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.ae unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i39: ; preds = %.noexc.i71
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.noexc72
  %.0.i.i.i42 = phi i1 [ false, %bb.ab ], [ true, %.noexc72 ] ; 2 uses
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cs
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cz) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i.i42, label %bb.ad, label %.body22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i.i42, label %bb.ad, label %.body22

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i39
  %.pn8.i.i.i40 = phi { ptr, i32 } [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i39 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44 ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43 ]
  call void @__cxa_free_exception(ptr %i.cr) #26
  br label %.body22

bb.ae:                                            ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.db = getelementptr inbounds nuw [104 x i8], ptr %i.cm, i64 %.093
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.db, i8 noundef zeroext 2)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = add nuw i64 %.093, 1                    ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !745, !nonnull !101, !align !195 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !128
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !127
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 24
  %i.dl = icmp ult i64 %i.dc, %i.dk
  br i1 %i.dl, label %.lr.ph.a, label %._crit_edge, !llvm.loop !1792

bb.ah:                                            ; preds = %.noexc26, %bb.af, %_ZNK6duckdb19TestGeneratedValues8GetValueEmm.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body22

bb.ai:                                            ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 3, ptr %i.dn, align 8, !tbaa !115
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %9, align 8, !tbaa !746, !nonnull !101, !align !195 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !748 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !749
  %.not.i.i = icmp eq ptr %i.dq, %i.ds
  br i1 %.not.i.i, label %bb.aj, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ai
  %i.dt = load i64, ptr %7, align 8, !tbaa !704
  store i64 %i.dt, ptr %i.dq, align 8, !tbaa !704
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.du, ptr %i.dp, align 8, !tbaa !748
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !750 ; 7 uses
  %i.dw = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.ak, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.183) #28
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #27
          to label %.noexc50 unwind label %.loopexit.split-lp ; 7 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy
  %i.ei = load i64, ptr %7, align 8, !tbaa !704
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !704
  store ptr null, ptr %7, align 8, !tbaa !704
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.dq
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc50
  %i.ej = add i64 %i.dw, -8
  %i.ek = sub i64 %i.ej, %i.dx                    ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ek, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.em, 4611686018427387900     ; 3 uses
  %i.en = shl i64 %n.vec, 3                       ; 2 uses
  %i.eo = getelementptr i8, ptr %i.eg, i64 %i.en  ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dv, i64 %i.en
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eg, i64 %i.eq ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.dv, i64 %i.eq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  %i.er = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep114, align 8, !tbaa !704, !alias.scope !1800
  %wide.load115 = load <2 x i64>, ptr %i.er, align 8, !tbaa !704, !alias.scope !1800
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !704, !alias.scope !1799
  store <2 x i64> %wide.load115, ptr %i.es, align 8, !tbaa !704, !alias.scope !1799
  %i.et = getelementptr i8, ptr %next.gep114, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep114, align 8, !tbaa !704, !alias.scope !1800
  store <2 x ptr> splat (ptr null), ptr %i.et, align 8, !tbaa !704, !alias.scope !1800
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !1796

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.i.preheader117:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eo, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ep, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader117 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  %i.ev = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !704, !alias.scope !1800
  store i64 %i.ev, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !704, !alias.scope !1799
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !704, !alias.scope !1800
  %i.ew = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ew, %i.dq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1797

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc50
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.noexc50 ], [ %i.eo, %middle.block ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dv) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.al
  store ptr %i.eg, ptr %i.do, align 8, !tbaa !750
  store ptr %i.ey, ptr %i.dp, align 8, !tbaa !748
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.ez, ptr %i.dr, align 8, !tbaa !749
  %.pr = load ptr, ptr %7, align 8, !tbaa !704    ; 3 uses
  %.not.i51 = icmp eq ptr %.pr, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.pr) #26
  call void @_ZdlPv(ptr noundef nonnull %.pr) #29
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fa = load ptr, ptr %6, align 8, !tbaa !730   ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fb = load ptr, ptr %10, align 8, !tbaa !729  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fa, %i.fb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_5ValueELb1ESaIS2_EEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.loopexit.split-lp:                               ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ak, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.body22:                                          ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33, %bb.ah, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.p, %.loopexit.split-lp, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.l ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.p ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i34 ], [ %.pn9.i.i30, %bb.z ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44 ], [ %.pn8.i.i.i40, %bb.ad ], [ %i.dm, %bb.ah ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i63 ], [ %.pn8.i.i.i59, %bb.u ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62 ]
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d, %.body22
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body22 ], [ %i.ac, %bb.h ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN6duckdb19TestGeneratedValuesD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20TestVectorDictionary8GenerateERNS_14TestVectorInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit:
  %1 = alloca %"class.std::unordered_set.1922", align 8 ; 14 uses
  %i.a = alloca [2 x i64], align 8                ; 6 uses
  %2 = alloca %"struct.std::hash.1400", align 1   ; 3 uses
  %3 = alloca %"struct.std::equal_to.1403", align 1 ; 3 uses
  %4 = alloca %"class.std::allocator.550", align 1 ; 3 uses
  %5 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !746, !nonnull !101, !align !195 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !748
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !750
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 1, ptr %i.a, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.k, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKmEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6duckdb14TestVectorFlat8GenerateERNS_14TestVectorInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !746, !nonnull !101, !align !195 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !748
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !750
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.i, %i.s
  br i1 %i.t, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !582 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.ab = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !189 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #29
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge
  %i.ac = load ptr, ptr %1, align 8, !tbaa !583
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !584
  %i.af = shl i64 %i.ae, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %1, align 8, !tbaa !583   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.b:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEEC2ESt16initializer_listImEmRKS1_RKS3_RKS4_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.c:                                             ; preds = %.lr.ph51, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.ak = phi ptr [ %i.m, %.lr.ph51 ], [ %i.cn, %_ZN6duckdb15SelectionVectorD2Ev.exit ]
  %.02150 = phi i64 [ %i.j, %.lr.ph51 ], [ %i.cm, %_ZN6duckdb15SelectionVectorD2Ev.exit ] ; 2 uses
  %.02248 = phi i64 [ 0, %.lr.ph51 ], [ %i.bv, %_ZN6duckdb15SelectionVectorD2Ev.exit ] ; 3 uses
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.02150)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.am = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.h

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !115 ; 3 uses
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.ap = load i64, ptr %i.v, align 8, !tbaa !753
  %.not.not.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = load i64, ptr %i.w, align 8             ; 2 uses
  %i.ar = load ptr, ptr %1, align 8
  %i.as = load ptr, ptr %5, align 8               ; 2 uses
  br i1 %.not.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread.us
  %.047.us = phi i64 [ %i.ax, %.thread.us ], [ 0, %.lr.ph ] ; 3 uses
  %.02046.us = phi i64 [ %.1.us, %.thread.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.at = add i64 %.047.us, %.02248
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.split.us
  %.sroa.06.0.in.i.i.i.us = phi ptr [ %i.x, %.lr.ph.split.us ], [ %.sroa.06.0.i.i.i.us, %bb.g ]
  %.sroa.06.0.i.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.i.us, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.us = icmp eq ptr %.sroa.06.0.i.i.i.us, null
  br i1 %.not.i.i.i.us, label %.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !117
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %.loopexit.us, label %bb.f, !llvm.loop !1801

.thread.us:                                       ; preds = %bb.f, %.loopexit.us
  %.1.us = phi i64 [ %i.ay, %.loopexit.us ], [ %.02046.us, %bb.f ] ; 2 uses
  %i.ax = add nuw i64 %.047.us, 1                 ; 2 uses
  %exitcond53.not = icmp eq i64 %i.ax, %i.ao
  br i1 %exitcond53.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph.split.us, !llvm.loop !1802

.loopexit.us:                                     ; preds = %bb.g
  %i.ay = add i64 %.02046.us, 1
  %i.az = trunc i64 %.047.us to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.02046.us
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !73
  br label %.thread.us

bb.h:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.u) #26
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %.thread, %.thread.us, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %.020.lcssa = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader ], [ %.1.us, %.thread.us ], [ %.1, %.thread ]
  invoke void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.020.lcssa)
          to label %bb.m unwind label %bb.t

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %.047 = phi i64 [ %i.bt, %.thread ], [ 0, %.lr.ph ] ; 3 uses
  %.02046 = phi i64 [ %.1, %.thread ], [ 0, %.lr.ph ] ; 5 uses
  %i.bd = add i64 %.047, %.02248                  ; 3 uses
  %i.be = urem i64 %i.bd, %i.aq                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !268 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !189 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !117
  %i.bk = icmp eq i64 %i.bd, %i.bj
  br i1 %i.bk, label %.loopexit43, label %.lr.ph.i.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.bl = icmp eq i64 %i.bd, %i.bo
end_hunk_0
