inline.NumInlined: 1469
inline.NumDeleted: 612
begin_hunk_0_@_ZN6Assimp3PLY7Element12ParseElementERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEPS1_:bb.a
  br label %bb.aa, !llvm.loop !7

.critedge.ithread-pre-split.i68:                  ; preds = %bb.ab
  %.pr.i69 = load i8, ptr %i.bt, align 1
  br label %.critedge.i.i70

.critedge.i.i70:                                  ; preds = %bb.aa, %.critedge.ithread-pre-split.i68
  %i.bw = phi i8 [ %.pr.i69, %.critedge.ithread-pre-split.i68 ], [ %i.bu, %bb.aa ] ; 2 uses
  %.0.lcssa.i.i71 = phi ptr [ %i.bt, %.critedge.ithread-pre-split.i68 ], [ %.0.i.i66, %bb.aa ] ; 3 uses
  %i.bx = icmp ugt i8 %i.bw, 13
  %switch.cast279 = zext nneg i8 %i.bw to i14
  %switch.downshift281 = lshr i14 3070, %switch.cast279
  %switch.masked282 = trunc i14 %switch.downshift281 to i1
  %i.by = select i1 %i.bx, i1 true, i1 %switch.masked282 ; 2 uses
  %i.bz = ptrtoint ptr %.0.lcssa.i.i71 to i64     ; 3 uses
  %i.ca = sub i64 %i.bz, %i.br
  %i.cb = getelementptr inbounds i8, ptr %i.bo, i64 %i.ca ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bo, %.0.lcssa.i.i71
  br i1 %.not.i.i.i73, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit79, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i.i70
  %.not11.i.i.i74 = icmp eq ptr %.0.lcssa.i.i71, %i.bn
  br i1 %.not11.i.i.i74, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i75, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = sub i64 %i.bq, %i.bz                    ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, 1
  br i1 %i.cd, label %bb.af, label %bb.ag, !prof !3

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull align 1 %i.cb, i64 %i.cc, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i75

bb.ag:                                            ; preds = %bb.ae
  %i.ce = icmp eq i64 %i.cc, 1
  br i1 %i.ce, label %bb.ah, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i75

bb.ah:                                            ; preds = %bb.ag
  %i.cf = load i8, ptr %i.cb, align 1
  store i8 %i.cf, ptr %i.bo, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i75

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i75: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.cg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bz
  %i.cj = getelementptr inbounds i8, ptr %i.bo, i64 %i.ci ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.cg, %i.cj
  br i1 %.not.i.i.i.i76, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit79, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i77

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i77:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i75
  store ptr %i.cj, ptr %i.e, align 8
  br i1 %i.by, label %bb.ai, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit79: ; preds = %.critedge.i.i70, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i75
  br i1 %i.by, label %bb.ai, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit

bb.ai:                                            ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i77, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit79
  %i.ck = tail call noundef i32 @_ZN6Assimp3PLY7Element13ParseSemanticERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 %i.ck, ptr %i.cl, align 8
  %i.cm = icmp eq i32 %i.ck, 6
  br i1 %i.cm, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.cn = load ptr, ptr %1, align 8               ; 3 uses
  %i.co = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #26 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.cp, ptr %3, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i64 0, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.co, ptr %i.c, align 8
  %i.cr = icmp ugt i64 %i.co, 15
  br i1 %i.cr, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.aj
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.cs, ptr %3, align 8
  %i.ct = load i64, ptr %i.c, align 8
  store i64 %i.ct, ptr %i.cp, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.aj
  %i.cu = phi ptr [ %i.cs, %.noexc.i ], [ %i.cp, %bb.aj ] ; 2 uses
  switch i64 %i.co, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.cv = load i8, ptr %i.cn, align 1
  store i8 %i.cv, ptr %i.cu, align 1
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr nonnull align 1 %i.cn, i64 %i.co, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i
  %i.cw = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.cw, ptr %i.cq, align 8
  %i.cx = load ptr, ptr %3, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  %i.dd = load ptr, ptr %3, align 8               ; 6 uses
  %i.de = icmp eq ptr %i.dd, %i.cp                ; 2 uses
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.am
  br i1 %i.de, label %bb.an, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.am
  br i1 %i.de, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.df = load i64, ptr %i.cq, align 8            ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  %.not21.i = icmp eq ptr %3, %i.cz
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ao, !prof !9

bb.ao:                                            ; preds = %bb.an
  switch i64 %i.df, label %bb.aq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load i8, ptr %i.dd, align 1
  store i8 %i.dh, ptr %i.da, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.dd, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.di = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.di, ptr %i.dj, align 8
  %i.dk = load ptr, ptr %i.cz, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.dd, ptr %i.cz, align 8
  %i.dn = load <2 x i64>, ptr %i.cq, align 8
  store <2 x i64> %i.dn, ptr %i.dm, align 8
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.do = load i64, ptr %i.db, align 8
  store ptr %i.dd, ptr %i.cz, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dq = load <2 x i64>, ptr %i.cq, align 8
  store <2 x i64> %i.dq, ptr %i.dp, align 8
  %.not.i80 = icmp eq ptr %i.da, null
  br i1 %.not.i80, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.da, ptr %3, align 8
  store i64 %i.do, ptr %i.cp, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cp, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ar, %bb.as
  %i.dr = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.da, %bb.ar ], [ %i.cp, %bb.as ], [ %i.dd, %bb.an ]
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.dr, align 1
  %i.ds = load ptr, ptr %3, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cp
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.du = load i64, ptr %i.cp, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.dw = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 noundef signext 32, i64 noundef -1) #27 ; 7 uses
  %.not = icmp eq i64 %i.dw, -1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8            ; 5 uses
  %i.dz = icmp ugt i64 %i.dw, %i.dy
  br i1 %i.dz, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.93, i64 noundef %i.dw, i64 noundef %i.dy) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.at
  switch i64 %i.dy, label %bb.aw [
    i64 -1, label %bb.av
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ]

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  store i64 %i.dw, ptr %i.dx, align 8
  %i.ea = load ptr, ptr %i.cz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dw
  store i8 0, ptr %i.eb, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.ec = sub i64 %i.dy, %i.dw
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dy, i64 %i.ec)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 noundef %i.dw, i64 noundef %spec.select.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.aw, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai
  %i.ed = load ptr, ptr %1, align 8               ; 10 uses
  %i.ee = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.eg = ptrtoint ptr %i.ee to i64               ; 2 uses
  %.not.i81 = icmp eq ptr %i.ed, null
  br i1 %.not.i81, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ei ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %.0.i.i82 = phi ptr [ %i.ed, %bb.ay ], [ %i.el, %bb.bb ] ; 4 uses
  %i.ek = load i8, ptr %.0.i.i82, align 1         ; 2 uses
  switch i8 %i.ek, label %.critedge.i.i86 [
    i8 32, label %bb.ba
    i8 9, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %.not.i.i83 = icmp eq ptr %.0.i.i82, %i.ee
  br i1 %.not.i.i83, label %.critedge.ithread-pre-split.i84, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i82, i64 1
  br label %bb.az, !llvm.loop !7

.critedge.ithread-pre-split.i84:                  ; preds = %bb.ba
  %.pr.i85 = load i8, ptr %i.ej, align 1
  br label %.critedge.i.i86

.critedge.i.i86:                                  ; preds = %bb.az, %.critedge.ithread-pre-split.i84
  %i.em = phi i8 [ %.pr.i85, %.critedge.ithread-pre-split.i84 ], [ %i.ek, %bb.az ] ; 2 uses
  %.0.lcssa.i.i87 = phi ptr [ %i.ej, %.critedge.ithread-pre-split.i84 ], [ %.0.i.i82, %bb.az ] ; 3 uses
  %i.en = icmp ugt i8 %i.em, 13
  %switch.cast284 = zext nneg i8 %i.em to i14
  %switch.downshift286 = lshr i14 3070, %switch.cast284
  %switch.masked287 = trunc i14 %switch.downshift286 to i1
  %i.eo = select i1 %i.en, i1 true, i1 %switch.masked287 ; 2 uses
  %i.ep = ptrtoint ptr %.0.lcssa.i.i87 to i64     ; 3 uses
  %i.eq = sub i64 %i.ep, %i.eh
  %i.er = getelementptr inbounds i8, ptr %i.ed, i64 %i.eq ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.ed, %.0.lcssa.i.i87
  br i1 %.not.i.i.i89, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit95, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i86
  %.not11.i.i.i90 = icmp eq ptr %.0.lcssa.i.i87, %i.ee
  br i1 %.not11.i.i.i90, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i91, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = sub i64 %i.eg, %i.ep                    ; 3 uses
  %i.et = icmp sgt i64 %i.es, 1
  br i1 %i.et, label %bb.be, label %bb.bf, !prof !3

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull align 1 %i.er, i64 %i.es, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i91

bb.bf:                                            ; preds = %bb.bd
  %i.eu = icmp eq i64 %i.es, 1
  br i1 %i.eu, label %bb.bg, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i91

bb.bg:                                            ; preds = %bb.bf
  %i.ev = load i8, ptr %i.er, align 1
  store i8 %i.ev, ptr %i.ed, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i91

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i91: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  %i.ew = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = sub i64 %i.ex, %i.ep
  %i.ez = getelementptr inbounds i8, ptr %i.ed, i64 %i.ey ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.ew, %i.ez
  br i1 %.not.i.i.i.i92, label %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit95, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i93

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i93:  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i91
  store ptr %i.ez, ptr %i.e, align 8
  br i1 %i.eo, label %bb.bh, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit

_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit95: ; preds = %.critedge.i.i86, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i91
  br i1 %i.eo, label %bb.bh, label %_ZN6Assimp3PLY3DOM20SkipSpacesAndLineEndERSt6vectorIcSaIcEE.exit

bb.bh:                                            ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i93, %_ZN6Assimp3PLY3DOM10SkipSpacesERSt6vectorIcSaIcEE.exit95
  %i.fa = load i32, ptr %i.cl, align 8
  %i.fb = icmp eq i32 %i.fa, 5
  %i.fc = load ptr, ptr %1, align 8               ; 5 uses
  br i1 %i.fb, label %bb.bi, label %bb.cc

bb.bi:                                            ; preds = %bb.bh
  %i.fd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.fe, ptr %4, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.fg = add i64 %i.fd, -1                       ; 4 uses
  store i64 %i.fg, ptr %i.b, align 8
  %i.fh = icmp ugt i64 %i.fg, 15
  br i1 %i.fh, label %.noexc.i97, label %._crit_edge.i.i96

.noexc.i97:                                       ; preds = %bb.bi
  %i.fi = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.fi, ptr %4, align 8
  %i.fj = load i64, ptr %i.b, align 8
  store i64 %i.fj, ptr %i.fe, align 8
  br label %._crit_edge.i.i96

._crit_edge.i.i96:                                ; preds = %.noexc.i97, %bb.bi
  %i.fk = phi ptr [ %i.fi, %.noexc.i97 ], [ %i.fe, %bb.bi ] ; 2 uses
  switch i64 %i.fg, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i96
  %i.fl = load i8, ptr %i.fc, align 1
  store i8 %i.fl, ptr %i.fk, align 1
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr nonnull align 1 %i.fc, i64 %i.fg, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i.i96
  %i.fm = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.fm, ptr %i.ff, align 8
  %i.fn = load ptr, ptr %4, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  store i8 0, ptr %i.fo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.fq = load ptr, ptr %i.fp, align 8            ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  %i.ft = load ptr, ptr %4, align 8               ; 6 uses
  %i.fu = icmp eq ptr %i.ft, %i.fe                ; 2 uses
  br i1 %i.fs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106: ; preds = %bb.bl
  br i1 %i.fu, label %bb.bm, label %.thread.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i100: ; preds = %bb.bl
  br i1 %i.fu, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i101

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106
  %i.fv = load i64, ptr %i.ff, align 8            ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.fw)
  %.not21.i103 = icmp eq ptr %4, %i.fp
  br i1 %.not21.i103, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit108, label %bb.bn, !prof !9

bb.bn:                                            ; preds = %bb.bm
  switch i64 %i.fv, label %bb.bp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104
    i64 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.fx = load i8, ptr %i.ft, align 1
  store i8 %i.fx, ptr %i.fq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.ft, i64 %i.fv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i104: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.fy = load i64, ptr %i.ff, align 8            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.fy, ptr %i.fz, align 8
  %i.ga = load ptr, ptr %i.fp, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  store i8 0, ptr %i.gb, align 1
  %.pre.i105 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit108

.thread.i107:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ft, ptr %i.fp, align 8
  %i.gd = load <2 x i64>, ptr %i.ff, align 8
  store <2 x i64> %i.gd, ptr %i.gc, align 8
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i100
  %i.ge = load i64, ptr %i.fr, align 8
  store ptr %i.ft, ptr %i.fp, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gg = load <2 x i64>, ptr %i.ff, align 8
  store <2 x i64> %i.gg, ptr %i.gf, align 8
  %.not.i102 = icmp eq ptr %i.fq, null
  br i1 %.not.i102, label %bb.br, label %bb.bq
end_hunk_0
