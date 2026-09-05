Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/scriptset?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@uhash_compareScriptSet_78:bb.a
  %i.ac = and i32 %i.ab, %.012.5.i                ; 2 uses
  %.not.5.i = icmp eq i32 %i.ac, 0
  br i1 %.not.5.i, label %._crit_edge.5.i, label %.lr.ph.5.i, !llvm.loop !0

._crit_edge.5.i:                                  ; preds = %.lr.ph.5.i, %._crit_edge.4.i
  %.1.lcssa.5.i = phi i32 [ %.1.lcssa.4.i, %._crit_edge.4.i ], [ %i.aa, %.lr.ph.5.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %.not10.6.i = icmp eq i32 %i.ae, 0
  br i1 %.not10.6.i, label %_ZNK6icu_789ScriptSet12countMembersEv.exit, label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %._crit_edge.5.i, %.lr.ph.6.i
  %.012.6.i = phi i32 [ %i.ah, %.lr.ph.6.i ], [ %i.ae, %._crit_edge.5.i ] ; 2 uses
  %.111.6.i = phi i32 [ %i.af, %.lr.ph.6.i ], [ %.1.lcssa.5.i, %._crit_edge.5.i ]
  %i.af = add nsw i32 %.111.6.i, 1                ; 2 uses
  %i.ag = add i32 %.012.6.i, -1
  %i.ah = and i32 %i.ag, %.012.6.i                ; 2 uses
  %.not.6.i = icmp eq i32 %i.ah, 0
  br i1 %.not.6.i, label %_ZNK6icu_789ScriptSet12countMembersEv.exit, label %.lr.ph.6.i, !llvm.loop !0

_ZNK6icu_789ScriptSet12countMembersEv.exit:       ; preds = %.lr.ph.6.i, %._crit_edge.5.i
  %.1.lcssa.6.i = phi i32 [ %.1.lcssa.5.i, %._crit_edge.5.i ], [ %i.af, %.lr.ph.6.i ]
  %i.ai = load i32, ptr %1, align 4, !tbaa !12    ; 2 uses
  %.not10.i18 = icmp eq i32 %i.ai, 0
  br i1 %.not10.i18, label %._crit_edge.i23, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_ZNK6icu_789ScriptSet12countMembersEv.exit, %.lr.ph.i19
  %.012.i20 = phi i32 [ %i.al, %.lr.ph.i19 ], [ %i.ai, %_ZNK6icu_789ScriptSet12countMembersEv.exit ] ; 2 uses
  %.111.i21 = phi i32 [ %i.aj, %.lr.ph.i19 ], [ 0, %_ZNK6icu_789ScriptSet12countMembersEv.exit ]
  %i.aj = add nuw nsw i32 %.111.i21, 1            ; 2 uses
  %i.ak = add i32 %.012.i20, -1
  %i.al = and i32 %i.ak, %.012.i20                ; 2 uses
  %.not.i22 = icmp eq i32 %i.al, 0
  br i1 %.not.i22, label %._crit_edge.i23, label %.lr.ph.i19, !llvm.loop !0

._crit_edge.i23:                                  ; preds = %.lr.ph.i19, %_ZNK6icu_789ScriptSet12countMembersEv.exit
  %.1.lcssa.i24 = phi i32 [ 0, %_ZNK6icu_789ScriptSet12countMembersEv.exit ], [ %i.aj, %.lr.ph.i19 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12 ; 2 uses
  %.not10.1.i25 = icmp eq i32 %i.an, 0
  br i1 %.not10.1.i25, label %._crit_edge.1.i30, label %.lr.ph.1.i26

.lr.ph.1.i26:                                     ; preds = %._crit_edge.i23, %.lr.ph.1.i26
  %.012.1.i27 = phi i32 [ %i.aq, %.lr.ph.1.i26 ], [ %i.an, %._crit_edge.i23 ] ; 2 uses
  %.111.1.i28 = phi i32 [ %i.ao, %.lr.ph.1.i26 ], [ %.1.lcssa.i24, %._crit_edge.i23 ]
  %i.ao = add nsw i32 %.111.1.i28, 1              ; 2 uses
  %i.ap = add i32 %.012.1.i27, -1
  %i.aq = and i32 %i.ap, %.012.1.i27              ; 2 uses
  %.not.1.i29 = icmp eq i32 %i.aq, 0
  br i1 %.not.1.i29, label %._crit_edge.1.i30, label %.lr.ph.1.i26, !llvm.loop !0

._crit_edge.1.i30:                                ; preds = %.lr.ph.1.i26, %._crit_edge.i23
  %.1.lcssa.1.i31 = phi i32 [ %.1.lcssa.i24, %._crit_edge.i23 ], [ %i.ao, %.lr.ph.1.i26 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12 ; 2 uses
  %.not10.2.i32 = icmp eq i32 %i.as, 0
  br i1 %.not10.2.i32, label %._crit_edge.2.i37, label %.lr.ph.2.i33

.lr.ph.2.i33:                                     ; preds = %._crit_edge.1.i30, %.lr.ph.2.i33
  %.012.2.i34 = phi i32 [ %i.av, %.lr.ph.2.i33 ], [ %i.as, %._crit_edge.1.i30 ] ; 2 uses
  %.111.2.i35 = phi i32 [ %i.at, %.lr.ph.2.i33 ], [ %.1.lcssa.1.i31, %._crit_edge.1.i30 ]
  %i.at = add nsw i32 %.111.2.i35, 1              ; 2 uses
  %i.au = add i32 %.012.2.i34, -1
  %i.av = and i32 %i.au, %.012.2.i34              ; 2 uses
  %.not.2.i36 = icmp eq i32 %i.av, 0
  br i1 %.not.2.i36, label %._crit_edge.2.i37, label %.lr.ph.2.i33, !llvm.loop !0

._crit_edge.2.i37:                                ; preds = %.lr.ph.2.i33, %._crit_edge.1.i30
  %.1.lcssa.2.i38 = phi i32 [ %.1.lcssa.1.i31, %._crit_edge.1.i30 ], [ %i.at, %.lr.ph.2.i33 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %.not10.3.i39 = icmp eq i32 %i.ax, 0
  br i1 %.not10.3.i39, label %._crit_edge.3.i44, label %.lr.ph.3.i40

.lr.ph.3.i40:                                     ; preds = %._crit_edge.2.i37, %.lr.ph.3.i40
  %.012.3.i41 = phi i32 [ %i.ba, %.lr.ph.3.i40 ], [ %i.ax, %._crit_edge.2.i37 ] ; 2 uses
  %.111.3.i42 = phi i32 [ %i.ay, %.lr.ph.3.i40 ], [ %.1.lcssa.2.i38, %._crit_edge.2.i37 ]
  %i.ay = add nsw i32 %.111.3.i42, 1              ; 2 uses
  %i.az = add i32 %.012.3.i41, -1
  %i.ba = and i32 %i.az, %.012.3.i41              ; 2 uses
  %.not.3.i43 = icmp eq i32 %i.ba, 0
  br i1 %.not.3.i43, label %._crit_edge.3.i44, label %.lr.ph.3.i40, !llvm.loop !0

._crit_edge.3.i44:                                ; preds = %.lr.ph.3.i40, %._crit_edge.2.i37
  %.1.lcssa.3.i45 = phi i32 [ %.1.lcssa.2.i38, %._crit_edge.2.i37 ], [ %i.ay, %.lr.ph.3.i40 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12 ; 2 uses
  %.not10.4.i46 = icmp eq i32 %i.bc, 0
  br i1 %.not10.4.i46, label %._crit_edge.4.i51, label %.lr.ph.4.i47

.lr.ph.4.i47:                                     ; preds = %._crit_edge.3.i44, %.lr.ph.4.i47
  %.012.4.i48 = phi i32 [ %i.bf, %.lr.ph.4.i47 ], [ %i.bc, %._crit_edge.3.i44 ] ; 2 uses
  %.111.4.i49 = phi i32 [ %i.bd, %.lr.ph.4.i47 ], [ %.1.lcssa.3.i45, %._crit_edge.3.i44 ]
  %i.bd = add nsw i32 %.111.4.i49, 1              ; 2 uses
  %i.be = add i32 %.012.4.i48, -1
  %i.bf = and i32 %i.be, %.012.4.i48              ; 2 uses
  %.not.4.i50 = icmp eq i32 %i.bf, 0
  br i1 %.not.4.i50, label %._crit_edge.4.i51, label %.lr.ph.4.i47, !llvm.loop !0

._crit_edge.4.i51:                                ; preds = %.lr.ph.4.i47, %._crit_edge.3.i44
  %.1.lcssa.4.i52 = phi i32 [ %.1.lcssa.3.i45, %._crit_edge.3.i44 ], [ %i.bd, %.lr.ph.4.i47 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12 ; 2 uses
  %.not10.5.i53 = icmp eq i32 %i.bh, 0
  br i1 %.not10.5.i53, label %._crit_edge.5.i58, label %.lr.ph.5.i54

.lr.ph.5.i54:                                     ; preds = %._crit_edge.4.i51, %.lr.ph.5.i54
  %.012.5.i55 = phi i32 [ %i.bk, %.lr.ph.5.i54 ], [ %i.bh, %._crit_edge.4.i51 ] ; 2 uses
  %.111.5.i56 = phi i32 [ %i.bi, %.lr.ph.5.i54 ], [ %.1.lcssa.4.i52, %._crit_edge.4.i51 ]
  %i.bi = add nsw i32 %.111.5.i56, 1              ; 2 uses
  %i.bj = add i32 %.012.5.i55, -1
  %i.bk = and i32 %i.bj, %.012.5.i55              ; 2 uses
  %.not.5.i57 = icmp eq i32 %i.bk, 0
  br i1 %.not.5.i57, label %._crit_edge.5.i58, label %.lr.ph.5.i54, !llvm.loop !0

._crit_edge.5.i58:                                ; preds = %.lr.ph.5.i54, %._crit_edge.4.i51
  %.1.lcssa.5.i59 = phi i32 [ %.1.lcssa.4.i52, %._crit_edge.4.i51 ], [ %i.bi, %.lr.ph.5.i54 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !12 ; 2 uses
  %.not10.6.i60 = icmp eq i32 %i.bm, 0
  br i1 %.not10.6.i60, label %_ZNK6icu_789ScriptSet12countMembersEv.exit66, label %.lr.ph.6.i61

.lr.ph.6.i61:                                     ; preds = %._crit_edge.5.i58, %.lr.ph.6.i61
  %.012.6.i62 = phi i32 [ %i.bp, %.lr.ph.6.i61 ], [ %i.bm, %._crit_edge.5.i58 ] ; 2 uses
  %.111.6.i63 = phi i32 [ %i.bn, %.lr.ph.6.i61 ], [ %.1.lcssa.5.i59, %._crit_edge.5.i58 ]
  %i.bn = add nsw i32 %.111.6.i63, 1              ; 2 uses
  %i.bo = add i32 %.012.6.i62, -1
  %i.bp = and i32 %i.bo, %.012.6.i62              ; 2 uses
  %.not.6.i64 = icmp eq i32 %i.bp, 0
  br i1 %.not.6.i64, label %_ZNK6icu_789ScriptSet12countMembersEv.exit66, label %.lr.ph.6.i61, !llvm.loop !0

_ZNK6icu_789ScriptSet12countMembersEv.exit66:     ; preds = %.lr.ph.6.i61, %._crit_edge.5.i58
  %.1.lcssa.6.i65 = phi i32 [ %.1.lcssa.5.i59, %._crit_edge.5.i58 ], [ %i.bn, %.lr.ph.6.i61 ]
  %i.bq = sub nsw i32 %.1.lcssa.6.i, %.1.lcssa.6.i65 ; 2 uses
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, label %.loopexit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i: ; preds = %_ZNK6icu_789ScriptSet12countMembersEv.exit66, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1
  %.0816.i = phi i32 [ %i.cc, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ], [ 0, %_ZNK6icu_789ScriptSet12countMembersEv.exit66 ] ; 5 uses
  %i.br = lshr i32 %.0816.i, 5
  %i.bs = and i32 %.0816.i, 30
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12 ; 2 uses
  %i.bw = shl nuw nsw i32 1, %i.bs
  %i.bx = and i32 %i.bw, %i.bv
  %.not.i67 = icmp eq i32 %i.bx, 0
  br i1 %.not.i67, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %i.by = or disjoint i32 %.0816.i, 1             ; 2 uses
  %i.bz = and i32 %i.by, 31
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.bv
  %.not.i67.1 = icmp eq i32 %i.cb, 0
  br i1 %.not.i67.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i
  %i.cc = add nuw nsw i32 %.0816.i, 2             ; 2 uses
  %exitcond.i.1 = icmp eq i32 %i.cc, 224
  br i1 %exitcond.i.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit:         ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %.2.i = phi i32 [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ], [ %.0816.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i ], [ %i.by, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i ] ; 3 uses
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit
  %.0816.i69 = phi i32 [ 0, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit ], [ %i.co, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1 ] ; 5 uses
  %i.cd = lshr i32 %.0816.i69, 5
  %i.ce = and i32 %.0816.i69, 30
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12 ; 2 uses
  %i.ci = shl nuw nsw i32 1, %i.ce
  %i.cj = and i32 %i.ci, %i.ch
  %.not.i70 = icmp eq i32 %i.cj, 0
  br i1 %.not.i70, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68
  %i.ck = or disjoint i32 %.0816.i69, 1           ; 2 uses
  %i.cl = and i32 %i.ck, 31
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = and i32 %i.cm, %i.ch
  %.not.i70.1 = icmp eq i32 %i.cn, 0
  br i1 %.not.i70.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72
  %i.co = add nuw nsw i32 %.0816.i69, 2           ; 2 uses
  %exitcond.i73.1 = icmp eq i32 %i.co, 224
  br i1 %exitcond.i73.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit74:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68
  %.2.i71 = phi i32 [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1 ], [ %.0816.i69, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68 ], [ %i.ck, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72 ] ; 2 uses
  %i.cp = sub nsw i32 %.2.i, %.2.i71              ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = icmp sgt i32 %.2.i, 0
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89
  %.0105 = phi i32 [ %.2.i86, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ], [ %.2.i71, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ] ; 2 uses
  %.015104 = phi i32 [ %.2.i78, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ], [ %.2.i, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ] ; 2 uses
  %or.cond.i = icmp samesign ugt i32 %.015104, 222
  br i1 %or.cond.i, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader: ; preds = %.lr.ph
  %i.ct = add nuw nsw i32 %.015104, 1
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79
  %.0816.i76 = phi i32 [ %i.db, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79 ], [ %i.ct, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader ] ; 4 uses
  %i.cu = lshr i32 %.0816.i76, 5
  %i.cv = and i32 %.0816.i76, 31
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12
  %i.cz = shl nuw i32 1, %i.cv
  %i.da = and i32 %i.cz, %i.cy
  %.not.i77 = icmp eq i32 %i.da, 0
  br i1 %.not.i77, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75
  %i.db = add nuw nsw i32 %.0816.i76, 1           ; 2 uses
  %exitcond.i80 = icmp eq i32 %i.db, 224
  br i1 %exitcond.i80, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit81:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79, %.lr.ph
  %.2.i78 = phi i32 [ -1, %.lr.ph ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79 ], [ %.0816.i76, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75 ] ; 3 uses
  %or.cond.i82 = icmp ugt i32 %.0105, 222
  br i1 %or.cond.i82, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83.preheader

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83.preheader: ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81
  %2 = add nuw nsw i32 %.0105, 1
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83.preheader, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87
  %.0816.i84 = phi i32 [ %i.dj, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87 ], [ %2, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83.preheader ] ; 4 uses
  %i.dc = lshr i32 %.0816.i84, 5
  %i.dd = and i32 %.0816.i84, 31
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12
  %i.dh = shl nuw i32 1, %i.dd
  %i.di = and i32 %i.dh, %i.dg
  %.not.i85 = icmp eq i32 %i.di, 0
  br i1 %.not.i85, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83
  %i.dj = add nuw nsw i32 %.0816.i84, 1           ; 2 uses
  %exitcond.i88 = icmp eq i32 %i.dj, 224
  br i1 %exitcond.i88, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit89:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81
  %.2.i86 = phi i32 [ -1, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81 ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87 ], [ %.0816.i84, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83 ] ; 2 uses
  %i.dk = sub nsw i32 %.2.i78, %.2.i86            ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = icmp sgt i32 %.2.i78, 0
  %i.dn = and i1 %i.dm, %i.dl
  br i1 %i.dn, label %.lr.ph, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, %_ZNK6icu_789ScriptSet12countMembersEv.exit66
  %.016 = phi i32 [ %i.bq, %_ZNK6icu_789ScriptSet12countMembersEv.exit66 ], [ %i.cp, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ], [ %i.dk, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @uhash_hashScriptSet_78(ptr nofree readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %i.a)
  %op.rdx = xor i32 %i.h, %i.c
  %op.rdx1 = xor i32 %i.e, %i.g
  %op.rdx2 = xor i32 %op.rdx, %op.rdx1
  ret i32 %op.rdx2
}

; Function Attrs: mustprogress nounwind uwtable
define void @uhash_deleteScriptSet_78(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_789ScriptSetD1Ev(ptr noundef nonnull align 4 dead_on_return(28) dereferenceable(28) %0) #14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { allocsize(0) }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS10UErrorCode", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"branch_weights", i32 1, i32 1048575}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!6, !6, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"_ZTSN6icu_7815MaybeStackArrayI11UScriptCodeLi20EEE", !16, i64 0, !7, i64 8, !6, i64 12, !6, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !6, i64 12}
!20 = !{!"char16_t", !6, i64 0}
!21 = !{!20, !20, i64 0}
!22 = distinct !{!22, !14}
!23 = !{!"vtable pointer", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14, !28}
!27 = !{!17, !7, i64 8}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = !{!"_ZTS11UScriptCode", !6, i64 0}
!30 = !{!29, !29, i64 0}
!31 = distinct !{!31, !14}
end_hunk_0
