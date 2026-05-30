inline.NumInlined: 1359
inline.NumDeleted: 494
begin_hunk_0_@_ZN5boost15program_options6detail7cmdline16parse_terminatorERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
          to label %.noexc24 unwind label %.loopexit ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i19
  store ptr %i.av, ptr %i.al, align 8, !tbaa !12
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i17

._crit_edge.i.i.i.i17:                            ; preds = %.noexc24, %bb.d
  %i.aw = phi ptr [ %i.av, %.noexc24 ], [ %i.an, %bb.d ] ; 3 uses
  switch i64 %i.aq, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i18
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i17
  %i.ax = load i8, ptr %i.ao, align 1, !tbaa !15
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !15
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i18

bb.h:                                             ; preds = %._crit_edge.i.i.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i18

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i18: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.aq, ptr %i.ay, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  store i8 0, ptr %i.az, align 1, !tbaa !15
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.bb, ptr %i.u, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit26

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit26 unwind label %.loopexit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit26: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i18, %bb.i
  store i32 2147483647, ptr %i.r, align 8, !tbaa !73
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !66  ; 3 uses
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !70
  %.not.i27 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit26
  invoke void @_ZN5boost15program_options12basic_optionIcEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(90) %i.bc, ptr noundef nonnull align 8 dereferenceable(90) %3)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %bb.j
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  store ptr %i.bf, ptr %i.w, align 8, !tbaa !66
  br label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit26
  invoke void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bc, ptr noundef nonnull align 8 dereferenceable(90) %3)
          to label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit unwind label %.loopexit

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc28, %bb.k
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !41  ; 3 uses
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33
  %.05.i.i.i.i31 = phi ptr [ %i.bn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33 ], [ %i.bg, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i.i31, align 8, !tbaa !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i31, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i30
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.bn, %i.bh
  br i1 %.not.i.i.i.i34, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i30, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i33
  %.pr.i.i = load ptr, ptr %i.t, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit
  %i.bo = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bg, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i35
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !41  ; 3 uses
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !42  ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i
  %.05.i.i.i3.i = phi ptr [ %i.ca, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i ], [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i: ; preds = %.lr.ph.i.i.i2.i
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.ca, %i.bu
  br i1 %.not.i.i.i6.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i, label %.lr.ph.i.i.i2.i, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i
  %.pr.i8.i = load ptr, ptr %i.s, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cb = phi ptr [ %.pr.i8.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i ], [ %i.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i10.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i10.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i
  %i.cc = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i
  %i.cg = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.p
  br i1 %i.ch, label %_ZN5boost15program_options12basic_optionIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !15
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #30
  br label %_ZN5boost15program_options12basic_optionIcED2Ev.exit

_ZN5boost15program_options12basic_optionIcED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ck = add i32 %.048, 1                        ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 5
  %i.cs = icmp ugt i64 %i.cr, %i.cl
  br i1 %i.cs, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit._crit_edge, !llvm.loop !126

.loopexit:                                        ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i19, %bb.i, %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i21, %.noexc6.i.i.i20
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options6detail7cmdline13finish_optionERNS0_12basic_optionIcEERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKS6_INS_9function1IS6_IS4_SaIS4_EESF_EESaISJ_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(90) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::bad_function_call", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.boost::program_options::unknown_option", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.boost::shared_ptr", align 8 ; 7 uses
  %10 = alloca %"class.boost::shared_ptr", align 8 ; 7 uses
  %11 = alloca %"class.boost::program_options::invalid_command_line_syntax", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::vector.19", align 8   ; 8 uses
  %17 = alloca %"class.std::vector", align 8      ; 11 uses
  %18 = alloca %"class.std::vector.19", align 8   ; 10 uses
  %19 = alloca %"class.boost::program_options::invalid_command_line_syntax", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.boost::program_options::invalid_command_line_syntax", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 9 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.dj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !7
  %i.e = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.f = icmp ugt i64 %i.b, 15
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.b, 0
  br i1 %i.g, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.b, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %._crit_edge.i.i.thread, !prof !11

.noexc6.i:                                        ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

._crit_edge.i.i.thread:                           ; preds = %bb.d
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !12
  store i64 %i.b, ptr %i.d, align 8, !tbaa !15
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.e, align 1, !tbaa !15
  store i8 %i.k, ptr %i.d, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i.i.thread ], [ %i.d, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.e, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.e, %bb.f
  %i.m = phi ptr [ %i.d, %bb.e ], [ %i.l, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b
  store i8 0, ptr %i.o, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %.not79 = icmp eq ptr %i.r, %i.s
  br i1 %.not79, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20   ; 3 uses
  %i.y = and i32 %i.x, 512
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = and i32 %i.x, 1024
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = and i32 %i.x, 2048
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = invoke noundef ptr @_ZNK5boost15program_options19options_description12find_nothrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ab, i1 noundef zeroext %i.ad)
          to label %bb.i unwind label %bb.l       ; 4 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.not80 = icmp eq ptr %i.ae, null
  br i1 %.not80, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !33, !range !127, !noundef !128
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 1, ptr %i.ai, align 8, !tbaa !129
  br label %.critedge

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.dc

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5boost15program_options14unknown_optionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5boost15throw_exceptionINS_15program_options14unknown_optionEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(184) %6) #27
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost15program_options22error_with_option_nameD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %6) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.am, %bb.s ], [ %i.al, %bb.r ] ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.dc

bb.u:                                             ; preds = %bb.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5boost15program_options18option_description3keyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.v unwind label %bb.ao

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112 unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNK5boost15program_options18option_description8semanticEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %i.ae)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  %i.at = load ptr, ptr %9, align 8, !tbaa !76    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %bb.x unwind label %bb.aq      ; 4 uses

bb.x:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 7 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit, label %bb.y
end_hunk_0
begin_hunk_1_@_ZN5boost15program_options6detail7cmdline13finish_optionERNS0_12basic_optionIcEERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKS6_INS_9function1IS6_IS4_SaIS4_EESF_EESaISJ_EE:bb.a
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !81 ; 7 uses
  %.not.i.i113 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i113, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit115, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = atomicrmw sub ptr %i.bv, i32 1 acq_rel, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.af, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit115

bb.af:                                            ; preds = %bb.ae
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %.noexc.i.i114 unwind label %bb.ah, !inline_history !82

.noexc.i.i114:                                    ; preds = %bb.af
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cc = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.ag, label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit115

bb.ag:                                            ; preds = %.noexc.i.i114
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit115 unwind label %bb.ah, !inline_history !82

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #29
  unreachable

_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit115: ; preds = %bb.ad, %bb.ae, %.noexc.i.i114, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 5                 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !42 ; 2 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = lshr exact i64 %i.cw, 5
  %i.cy = add nsw i64 %i.cx, %i.cq
  %i.cz = trunc i64 %i.cy to i32
  %.not87 = icmp ugt i32 %i.ax, %i.cz
  br i1 %.not87, label %bb.cs, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit115
  %i.da = icmp eq ptr %i.cm, %i.cl
  %i.db = icmp ne i32 %i.bs, 0
  %or.cond.not = or i1 %i.db, %i.da
  br i1 %or.cond.not, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.al unwind label %bb.aw

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5boost15program_options14invalid_syntaxC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i(ptr noundef nonnull align 8 dereferenceable(188) %11, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 0)
          to label %bb.am unwind label %bb.ax

bb.am:                                            ; preds = %bb.al
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost15program_options27invalid_command_line_syntaxE, i64 16), ptr %11, align 8, !tbaa !50
  invoke void @_ZN5boost15throw_exceptionINS_15program_options27invalid_command_line_syntaxEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(188) %11) #27
          to label %bb.an unwind label %bb.ay

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.v, %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.dc

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  %i.dd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.ar

bb.aq:                                            ; preds = %bb.w
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn83 = phi { ptr, i32 } [ %i.de, %bb.aq ], [ %i.dd, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.dc

bb.as:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.au

bb.at:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn85 = phi { ptr, i32 } [ %i.dg, %bb.at ], [ %i.df, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.dc

bb.av:                                            ; preds = %bb.aj
  %i.dh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.aw:                                            ; preds = %bb.ak
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.ax:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.az

bb.ay:                                            ; preds = %bb.am
  %i.dk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost15program_options22error_with_option_nameD2Ev(ptr noundef nonnull align 8 dereferenceable(188) %11) #26
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn103 = phi { ptr, i32 } [ %i.dk, %bb.ay ], [ %i.dj, %bb.ax ] ; 2 uses
  %i.dl = load ptr, ptr %14, align 8, !tbaa !12   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.az
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !15
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.aw
  %.pn103.pn = phi { ptr, i32 } [ %i.di, %bb.aw ], [ %.pn103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %.pn103, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.dq = load ptr, ptr %12, align 8, !tbaa !12   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !15
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.av
  %.pn103.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.av ], [ %.pn103.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.pn103.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.dc

bb.ba:                                            ; preds = %bb.ai
  %i.dv = icmp eq ptr %i.ct, %i.cs
  br i1 %i.dv, label %.critedge, label %.lr.ph262

.lr.ph262:                                        ; preds = %bb.ba
  %i.dw = zext i32 %i.ax to i64
  %.not = icmp ugt i64 %i.cq, %i.dw
  %i.dx = trunc nuw i64 %i.cq to i32              ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not93391393 = icmp eq i32 %i.ax, %i.dx
  %.not93391 = select i1 %.not, i1 true, i1 %.not93391393
  br i1 %.not93391, label %.critedge, label %.lr.ph392

.lr.ph392:                                        ; preds = %.lr.ph262
  %i.eg = xor i32 %i.dx, -1
  %i.eh = add i32 %i.ax, %i.eg
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit169
  %i.ei = add i32 %i.ej, -1
  %.not93 = icmp eq i32 %i.ej, 0
  br i1 %.not93, label %.critedge, label %bb.bc, !llvm.loop !130

bb.bc:                                            ; preds = %.lr.ph392, %bb.bb
  %i.ej = phi i32 [ %i.eh, %.lr.ph392 ], [ %i.ei, %bb.bb ] ; 2 uses
  %i.ek = phi ptr [ %i.ct, %.lr.ph392 ], [ %i.mb, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.el = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.bf    ; 4 uses

.noexc:                                           ; preds = %bb.bc
  store ptr %i.el, ptr %17, align 8, !tbaa !41
  store ptr %i.el, ptr %29, align 8, !tbaa !42
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %i.em, ptr %i.dy, align 8, !tbaa !45
  %i.en = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RKT1_(ptr noundef nonnull %i.el, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %.lr.ph.preheader unwind label %bb.bd

bb.bd:                                            ; preds = %.noexc
  %i.eo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE ; 2 uses
  %i.ep = load ptr, ptr %17, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i, label %.body, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.et) #30
  br label %.body

.lr.ph.preheader:                                 ; preds = %.noexc
  store ptr %i.en, ptr %29, align 8, !tbaa !42
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit
  %i.eu = phi ptr [ %30, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit ], [ null, %.lr.ph.preheader ] ; 5 uses
  %i.ev = phi ptr [ %i.fo, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.073260 = phi i32 [ %i.hj, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ew = zext i32 %.073260 to i64                ; 2 uses
  %i.ex = load ptr, ptr %i.ea, align 8, !tbaa !54
  %i.ey = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 5
  %i.fd = icmp ugt i64 %i.fc, %i.ew
  br i1 %i.fd, label %bb.bg, label %.critedge3.thread

bb.bf:                                            ; preds = %bb.bc
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %.body

bb.bg:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.ew ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !17, !noalias !131 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i122, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !131
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.28)
          to label %.noexc123 unwind label %.loopexit.split-lp

.noexc123:                                        ; preds = %bb.bh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost17bad_function_callE, i64 16), ptr %4, align 8, !tbaa !50, !noalias !131
  invoke void @_ZN5boost15throw_exceptionINS_17bad_function_callEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
          to label %bb.bi unwind label %bb.bj, !noalias !131

bb.bi:                                            ; preds = %.noexc123
  unreachable

bb.bj:                                            ; preds = %.noexc123
  %i.fh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !131
  br label %.body124

bb.bk:                                            ; preds = %bb.bg
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = and i64 %i.fi, -2
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !62, !noalias !131
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  invoke void %i.fm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.19") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i unwind label %.loopexit, !inline_history !63

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.bk
  %30 = load ptr, ptr %18, align 8, !tbaa !68     ; 4 uses
  store ptr %30, ptr %16, align 8, !tbaa !68
  %31 = load ptr, ptr %i.ec, align 8, !tbaa !66   ; 3 uses
  store ptr %31, ptr %i.dz, align 8, !tbaa !66
  %i.fo = load ptr, ptr %i.ed, align 8, !tbaa !70 ; 3 uses
  store ptr %i.fo, ptr %i.eb, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i1.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.fp = ptrtoint ptr %i.ev to i64
  %i.fq = ptrtoint ptr %i.eu to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fr) #30
  %.pre = load ptr, ptr %18, align 8, !tbaa !68   ; 3 uses
  %.pre264 = load ptr, ptr %i.ec, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre264
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit, %_ZN5boost15program_options12basic_optionIcED2Ev.exit211
  %.05.i.i.i = phi ptr [ %i.hd, %_ZN5boost15program_options12basic_optionIcED2Ev.exit211 ], [ %.pre, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit ] ; 9 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !41 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i.i185 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not4.i.i.i.i185, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i193, label %.lr.ph.i.i.i.i186

.lr.ph.i.i.i.i186:                                ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i189
  %.05.i.i.i.i187 = phi ptr [ %i.gb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i189 ], [ %i.ft, %.lr.ph.i.i.i ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i.i187, align 8, !tbaa !12 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i187, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i188: ; preds = %.lr.ph.i.i.i.i186
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !15
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i189

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i189: ; preds = %.lr.ph.i.i.i.i186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i188
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i187, i64 32 ; 2 uses
  %.not.i.i.i.i190 = icmp eq ptr %i.gb, %i.fv
  br i1 %.not.i.i.i.i190, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i191, label %.lr.ph.i.i.i.i186, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i191: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i189
  %.pr.i.i192 = load ptr, ptr %i.fs, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i193

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i193: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i191, %.lr.ph.i.i.i
  %i.gc = phi ptr [ %.pr.i.i192, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i191 ], [ %i.ft, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i194 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i1.i.i194, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i195, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i193
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !45
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i195

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i195: ; preds = %bb.bl, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i193
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !41 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i1.i196 = icmp eq ptr %i.gj, %i.gl
  br i1 %.not4.i.i.i1.i196, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i204, label %.lr.ph.i.i.i2.i197

.lr.ph.i.i.i2.i197:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i195, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i200
  %.05.i.i.i3.i198 = phi ptr [ %i.gr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i200 ], [ %i.gj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i195 ] ; 3 uses
  %i.gm = load ptr, ptr %.05.i.i.i3.i198, align 8, !tbaa !12 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i198, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i199: ; preds = %.lr.ph.i.i.i2.i197
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !15
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i200

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i200: ; preds = %.lr.ph.i.i.i2.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i199
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i198, i64 32 ; 2 uses
  %.not.i.i.i6.i201 = icmp eq ptr %i.gr, %i.gl
  br i1 %.not.i.i.i6.i201, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i202, label %.lr.ph.i.i.i2.i197, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i202: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i200
  %.pr.i8.i203 = load ptr, ptr %i.gi, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i204

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i204: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i202, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i195
  %i.gs = phi ptr [ %.pr.i8.i203, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i202 ], [ %i.gj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i195 ] ; 3 uses
  %.not.i.i1.i10.i205 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i1.i10.i205, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i206, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i204
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !45
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gx) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i206

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i206: ; preds = %bb.bm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i204
  %i.gy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZN5boost15program_options12basic_optionIcED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i206
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !15
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #30
  br label %_ZN5boost15program_options12basic_optionIcED2Ev.exit211

_ZN5boost15program_options12basic_optionIcED2Ev.exit211: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.hd, %.pre264
  br i1 %.not.i.i.i127, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !72

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZN5boost15program_options12basic_optionIcED2Ev.exit211
  %.pr.i = load ptr, ptr %18, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit
  %i.he = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i
  %i.hf = load ptr, ptr %i.ed, align 8, !tbaa !70
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hi) #30
  br label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.hj = add i32 %.073260, 1
  %i.hk = icmp eq ptr %30, %31
  br i1 %i.hk, label %.lr.ph, label %.critedge3, !llvm.loop !134

.loopexit:                                        ; preds = %bb.bk
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %.body124

.loopexit.split-lp:                               ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %.body124

.body124:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.bj
  %eh.lpad-body125 = phi { ptr, i32 } [ %i.fh, %bb.bj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.cr

.critedge3:                                       ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit
  %i.hl = load ptr, ptr %2, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.hl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129 unwind label %.loopexit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129: ; preds = %.critedge3
  %i.hm = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.hn = load ptr, ptr %2, align 8, !tbaa !41
  %i.ho = load i32, ptr %i.w, align 8, !tbaa !20  ; 3 uses
  %i.hp = and i32 %i.ho, 512
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = and i32 %i.ho, 1024
  %i.hs = icmp ne i32 %i.hr, 0
  %i.ht = and i32 %i.ho, 2048
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = invoke noundef ptr @_ZNK5boost15program_options19options_description12find_nothrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb(ptr noundef nonnull align 8 dereferenceable(128) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %i.hn, i1 noundef zeroext %i.hq, i1 noundef zeroext %i.hs, i1 noundef zeroext %i.hu)
          to label %bb.bo unwind label %bb.bu

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129
  %.not94 = icmp eq ptr %i.hv, null
  br i1 %.not94, label %.critedge3.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5boost15program_options14invalid_syntaxC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i(ptr noundef nonnull align 8 dereferenceable(188) %19, i32 noundef 34, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 0)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost15program_options27invalid_command_line_syntaxE, i64 16), ptr %19, align 8, !tbaa !50
  invoke void @_ZN5boost15throw_exceptionINS_15program_options27invalid_command_line_syntaxEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(188) %19) #27
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %bb.bs
  unreachable

.loopexit241:                                     ; preds = %.critedge3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i145, %bb.cl
  %lpad.loopexit243 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.cr

.loopexit.split-lp242:                            ; preds = %.noexc6.i.i.i.invoke, %.noexc.i.i.i.invoke
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.cr

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit129
  %i.hw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.cr

bb.bv:                                            ; preds = %bb.bp
  %i.hx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.bw:                                            ; preds = %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.bx:                                            ; preds = %bb.br
  %i.hz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.bz

bb.by:                                            ; preds = %bb.bs
  %i.ia = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  call void @_ZN5boost15program_options22error_with_option_nameD2Ev(ptr noundef nonnull align 8 dereferenceable(188) %19) #26
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn95 = phi { ptr, i32 } [ %i.ia, %bb.by ], [ %i.hz, %bb.bx ] ; 2 uses
  %i.ib = load ptr, ptr %22, align 8, !tbaa !12   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.bz
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !15
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.bw
  %.pn95.pn = phi { ptr, i32 } [ %i.hy, %bb.bw ], [ %.pn95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn95, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.ig = load ptr, ptr %20, align 8, !tbaa !12   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !15
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.bv
  %.pn95.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.bv ], [ %.pn95.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.pn95.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.cr

.critedge3.thread:                                ; preds = %.lr.ph, %bb.bo
  %i.il = phi ptr [ %i.fo, %bb.bo ], [ %i.ev, %.lr.ph ]
  %i.im = phi ptr [ %31, %bb.bo ], [ %i.eu, %.lr.ph ] ; 2 uses
  %.pr.i166 = phi ptr [ %30, %bb.bo ], [ %i.eu, %.lr.ph ] ; 5 uses
  %i.in = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.io = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 6 uses
  %i.ip = load ptr, ptr %i.ee, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %.critedge3.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 3 uses
  store ptr %i.iq, ptr %i.io, align 8, !tbaa !7
  %i.ir = load ptr, ptr %i.in, align 8, !tbaa !12 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !16 ; 8 uses
  %i.iu = icmp ugt i64 %i.it, 15
  br i1 %i.iu, label %bb.cb, label %._crit_edge.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.iv = icmp slt i64 %i.it, 0
  br i1 %i.iv, label %.noexc.i.i.i.invoke, label %bb.cc

.noexc.i.i.i.invoke:                              ; preds = %bb.ch, %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc.i.i.i.cont unwind label %.loopexit.split-lp242

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.iw = add nuw i64 %i.it, 1                    ; 2 uses
  %i.ix = icmp slt i64 %i.iw, 0
  br i1 %i.ix, label %.noexc6.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !11

.noexc6.i.i.i.invoke:                             ; preds = %bb.ci, %bb.cc
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc6.i.i.i.cont unwind label %.loopexit.split-lp242

.noexc6.i.i.i.cont:                               ; preds = %.noexc6.i.i.i.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.cc
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #28
          to label %.noexc140 unwind label %.loopexit241 ; 2 uses

.noexc140:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.iy, ptr %i.io, align 8, !tbaa !12
  store i64 %i.it, ptr %i.iq, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc140, %bb.ca
  %i.iz = phi ptr [ %i.iy, %.noexc140 ], [ %i.iq, %bb.ca ] ; 3 uses
  switch i64 %i.it, label %bb.ce [
    i64 1, label %bb.cd
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ja = load i8, ptr %i.ir, align 1, !tbaa !15
  store i8 %i.ja, ptr %i.iz, align 1, !tbaa !15
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.ce:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %i.ir, i64 %i.it, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.ce, %bb.cd, %._crit_edge.i.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store i64 %i.it, ptr %i.jb, align 8, !tbaa !16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.it
  store i8 0, ptr %i.jc, align 1, !tbaa !15
  %i.jd = load ptr, ptr %i.ck, align 8, !tbaa !42
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store ptr %i.je, ptr %i.ck, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.cf:                                            ; preds = %.critedge3.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr %i.io, ptr noundef nonnull align 8 dereferenceable(32) %i.in)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit241

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.cf
  %i.jf = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.jg = load ptr, ptr %i.q, align 8, !tbaa !42  ; 6 uses
  %i.jh = load ptr, ptr %i.ef, align 8, !tbaa !45
  %.not.i142 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i142, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 3 uses
  store ptr %i.ji, ptr %i.jg, align 8, !tbaa !7
  %i.jj = load ptr, ptr %i.jf, align 8, !tbaa !12 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !16 ; 8 uses
  %i.jm = icmp ugt i64 %i.jl, 15
  br i1 %i.jm, label %bb.ch, label %._crit_edge.i.i.i.i143

bb.ch:                                            ; preds = %bb.cg
  %i.jn = icmp slt i64 %i.jl, 0
  br i1 %i.jn, label %.noexc.i.i.i.invoke, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jo = add nuw i64 %i.jl, 1                    ; 2 uses
  %i.jp = icmp slt i64 %i.jo, 0
  br i1 %i.jp, label %.noexc6.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i145, !prof !11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i145: ; preds = %bb.ci
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jo) #28
          to label %.noexc150 unwind label %.loopexit241 ; 2 uses

.noexc150:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i145
  store ptr %i.jq, ptr %i.jg, align 8, !tbaa !12
  store i64 %i.jl, ptr %i.ji, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i143

._crit_edge.i.i.i.i143:                           ; preds = %.noexc150, %bb.cg
  %i.jr = phi ptr [ %i.jq, %.noexc150 ], [ %i.ji, %bb.cg ] ; 3 uses
  switch i64 %i.jl, label %bb.ck [
    i64 1, label %bb.cj
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i144
  ]

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i143
  %i.js = load i8, ptr %i.jj, align 1, !tbaa !15
  store i8 %i.js, ptr %i.jr, align 1, !tbaa !15
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i144

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i143
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jr, ptr align 1 %i.jj, i64 %i.jl, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i144

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i144: ; preds = %bb.ck, %bb.cj, %._crit_edge.i.i.i.i143
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %i.jl, ptr %i.jt, align 8, !tbaa !16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jl
  store i8 0, ptr %i.ju, align 1, !tbaa !15
  %i.jv = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  store ptr %i.jw, ptr %i.q, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152

bb.cl:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %i.jf)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152 unwind label %.loopexit241

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i144, %bb.cl
  %i.jx = load ptr, ptr %2, align 8, !tbaa !47
  %i.jy = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.jx)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit unwind label %bb.cq ; 0 uses

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152
  %i.jz = load ptr, ptr %17, align 8, !tbaa !41   ; 3 uses
  %i.ka = load ptr, ptr %29, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i154 = icmp eq ptr %i.jz, %i.ka
  br i1 %.not4.i.i.i154, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i156 = phi ptr [ %i.kg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit ] ; 3 uses
  %i.kb = load ptr, ptr %.05.i.i.i156, align 8, !tbaa !12 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i.i.i156, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i155
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !15
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.05.i.i.i156, i64 32 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.kg, %i.ka
  br i1 %.not.i.i.i157, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i155, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i158 = load ptr, ptr %17, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.kh = phi ptr [ %.pr.i158, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.jz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit ] ; 3 uses
  %.not.i.i1.i159 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i1.i159, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ki = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.kl) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %.not4.i.i.i161 = icmp eq ptr %.pr.i166, %i.im
  br i1 %.not4.i.i.i161, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i167, label %.lr.ph.i.i.i162

.lr.ph.i.i.i162:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZN5boost15program_options12basic_optionIcED2Ev.exit238
  %.05.i.i.i163 = phi ptr [ %i.lx, %_ZN5boost15program_options12basic_optionIcED2Ev.exit238 ], [ %.pr.i166, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 9 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 64 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !41 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 72
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i.i212 = icmp eq ptr %i.kn, %i.kp
  br i1 %.not4.i.i.i.i212, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i220, label %.lr.ph.i.i.i.i213

.lr.ph.i.i.i.i213:                                ; preds = %.lr.ph.i.i.i162, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i216
  %.05.i.i.i.i214 = phi ptr [ %i.kv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i216 ], [ %i.kn, %.lr.ph.i.i.i162 ] ; 3 uses
  %i.kq = load ptr, ptr %.05.i.i.i.i214, align 8, !tbaa !12 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i214, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i215: ; preds = %.lr.ph.i.i.i.i213
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !15
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i216

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i216: ; preds = %.lr.ph.i.i.i.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i215
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i214, i64 32 ; 2 uses
  %.not.i.i.i.i217 = icmp eq ptr %i.kv, %i.kp
  br i1 %.not.i.i.i.i217, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i218, label %.lr.ph.i.i.i.i213, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i218: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i216
  %.pr.i.i219 = load ptr, ptr %i.km, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i220

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i220: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i218, %.lr.ph.i.i.i162
  %i.kw = phi ptr [ %.pr.i.i219, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i218 ], [ %i.kn, %.lr.ph.i.i.i162 ] ; 3 uses
  %.not.i.i1.i.i221 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i1.i.i221, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i222, label %bb.cn

bb.cn:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i220
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 80
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !45
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.lb) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i222

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i222: ; preds = %bb.cn, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i220
  %i.lc = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 40 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !41 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 48
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i1.i223 = icmp eq ptr %i.ld, %i.lf
  br i1 %.not4.i.i.i1.i223, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i231, label %.lr.ph.i.i.i2.i224

.lr.ph.i.i.i2.i224:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i222, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i227
  %.05.i.i.i3.i225 = phi ptr [ %i.ll, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i227 ], [ %i.ld, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i222 ] ; 3 uses
  %i.lg = load ptr, ptr %.05.i.i.i3.i225, align 8, !tbaa !12 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i225, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i226: ; preds = %.lr.ph.i.i.i2.i224
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !15
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i227

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i227: ; preds = %.lr.ph.i.i.i2.i224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i226
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i225, i64 32 ; 2 uses
  %.not.i.i.i6.i228 = icmp eq ptr %i.ll, %i.lf
  br i1 %.not.i.i.i6.i228, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i229, label %.lr.ph.i.i.i2.i224, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i229: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5.i227
  %.pr.i8.i230 = load ptr, ptr %i.lc, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i231

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i229, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i222
  %i.lm = phi ptr [ %.pr.i8.i230, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7.i229 ], [ %i.ld, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i222 ] ; 3 uses
  %.not.i.i1.i10.i232 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i1.i10.i232, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i233, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i231
  %i.ln = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 56
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !45
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = ptrtoint ptr %i.lm to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lr) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i233

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i233: ; preds = %bb.co, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9.i231
  %i.ls = load ptr, ptr %.05.i.i.i163, align 8, !tbaa !12 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZN5boost15program_options12basic_optionIcED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i233
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !15
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #30
  br label %_ZN5boost15program_options12basic_optionIcED2Ev.exit238

_ZN5boost15program_options12basic_optionIcED2Ev.exit238: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 96 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.lx, %i.im
  br i1 %.not.i.i.i164, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i167, label %.lr.ph.i.i.i162, !llvm.loop !72

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i167: ; preds = %_ZN5boost15program_options12basic_optionIcED2Ev.exit238, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not.i.i1.i168 = icmp eq ptr %.pr.i166, null
  br i1 %.not.i.i1.i168, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit169, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i167
  %i.ly = ptrtoint ptr %i.il to i64
  %i.lz = ptrtoint ptr %.pr.i166 to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i166, i64 noundef %i.ma) #30
  br label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit169

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit169: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i167, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.mb = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.mc = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit169..critedge.loopexit_crit_edge, label %bb.bb, !llvm.loop !130

bb.cq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit152
  %i.me = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit241, %.loopexit.split-lp242, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.cq, %.body124
  %.pn100 = phi { ptr, i32 } [ %eh.lpad-body125, %.body124 ], [ %i.me, %bb.cq ], [ %i.hw, %bb.bu ], [ %.pn95.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %lpad.loopexit243, %.loopexit241 ], [ %lpad.loopexit.split-lp244, %.loopexit.split-lp242 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #26
  br label %.body

.body:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.cr
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.cr ], [ %i.fe, %bb.bf ], [ %i.eo, %bb.be ], [ %i.eo, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.dc

bb.cs:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit115
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN5boost15program_options14invalid_syntaxC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i(ptr noundef nonnull align 8 dereferenceable(188) %24, i32 noundef 34, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 0)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost15program_options27invalid_command_line_syntaxE, i64 16), ptr %24, align 8, !tbaa !50
  invoke void @_ZN5boost15throw_exceptionINS_15program_options27invalid_command_line_syntaxEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(188) %24) #27
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  unreachable

bb.cx:                                            ; preds = %bb.cs
  %i.mf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.cy:                                            ; preds = %bb.ct
  %i.mg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.cz:                                            ; preds = %bb.cu
  %i.mh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
  br label %bb.db

bb.da:                                            ; preds = %bb.cv
  %i.mi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost15program_options22error_with_option_nameE
end_hunk_1
