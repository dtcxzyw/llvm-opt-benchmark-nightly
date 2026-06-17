inline.NumInlined: 772
inline.NumDeleted: 374
begin_hunk_0_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i246.8 = phi ptr [ %i.hd, %bb.ce ], [ %i.hh, %bb.ch ] ; 4 uses
  %i.hg = load i8, ptr %.0.i.i246.8, align 1      ; 2 uses
  switch i8 %i.hg, label %.critedge.i.i248.8 [
    i8 32, label %bb.cg
    i8 9, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %.not.i.i247.8 = icmp eq ptr %.0.i.i246.8, %i.ca
  br i1 %.not.i.i247.8, label %.critedge.i.i248thread-pre-split.8, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.i.i246.8, i64 1
  br label %bb.cf, !llvm.loop !8

.critedge.i.i248thread-pre-split.8:               ; preds = %bb.cg
  %.pr521.8 = load i8, ptr %scevgep.i.i245.8, align 1
  br label %.critedge.i.i248.8

.critedge.i.i248.8:                               ; preds = %bb.cf, %.critedge.i.i248thread-pre-split.8
  %i.hi = phi i8 [ %.pr521.8, %.critedge.i.i248thread-pre-split.8 ], [ %i.hg, %bb.cf ] ; 3 uses
  %.0.lcssa.i.i249.8 = phi ptr [ %scevgep.i.i245.8, %.critedge.i.i248thread-pre-split.8 ], [ %.0.i.i246.8, %bb.cf ]
  switch i8 %i.hi, label %bb.ci [
    i8 13, label %bb.dc
    i8 10, label %bb.dc
    i8 0, label %bb.dc
    i8 12, label %bb.dc
  ]

bb.ci:                                            ; preds = %.critedge.i.i248.8
  %i.hj = add i8 %i.hi, -48
  %or.cond.i251.8 = icmp ult i8 %i.hj, 10
  br i1 %or.cond.i251.8, label %bb.cj, label %switch.early.test536.8

switch.early.test536.8:                           ; preds = %bb.ci
  switch i8 %i.hi, label %bb.dc [
    i8 45, label %bb.cj
    i8 43, label %bb.cj
  ]

bb.cj:                                            ; preds = %switch.early.test536.8, %switch.early.test536.8, %bb.ci
  %i.hk = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i249.8, ptr noundef nonnull align 4 dereferenceable(4) %i.cp, i1 noundef zeroext true)
          to label %bb.ck unwind label %.loopexit549 ; 3 uses

bb.ck:                                            ; preds = %bb.cj
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = sub i64 %i.cd, %i.hl
  %scevgep.i.i245.9 = getelementptr i8, ptr %i.hk, i64 %i.hm ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cn, %bb.ck
  %.0.i.i246.9 = phi ptr [ %i.hk, %bb.ck ], [ %i.ho, %bb.cn ] ; 4 uses
  %i.hn = load i8, ptr %.0.i.i246.9, align 1      ; 2 uses
  switch i8 %i.hn, label %.critedge.i.i248.9 [
    i8 32, label %bb.cm
    i8 9, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl, %bb.cl
  %.not.i.i247.9 = icmp eq ptr %.0.i.i246.9, %i.ca
  br i1 %.not.i.i247.9, label %.critedge.i.i248thread-pre-split.9, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i.i246.9, i64 1
  br label %bb.cl, !llvm.loop !8

.critedge.i.i248thread-pre-split.9:               ; preds = %bb.cm
  %.pr521.9 = load i8, ptr %scevgep.i.i245.9, align 1
  br label %.critedge.i.i248.9

.critedge.i.i248.9:                               ; preds = %bb.cl, %.critedge.i.i248thread-pre-split.9
  %i.hp = phi i8 [ %.pr521.9, %.critedge.i.i248thread-pre-split.9 ], [ %i.hn, %bb.cl ] ; 3 uses
  %.0.lcssa.i.i249.9 = phi ptr [ %scevgep.i.i245.9, %.critedge.i.i248thread-pre-split.9 ], [ %.0.i.i246.9, %bb.cl ] ; 6 uses
  switch i8 %i.hp, label %bb.co [
    i8 13, label %bb.de
    i8 10, label %bb.de
    i8 0, label %bb.de
    i8 12, label %bb.de
  ]

bb.co:                                            ; preds = %.critedge.i.i248.9
  %i.hq = add i8 %i.hp, -48
  %or.cond.i251.9 = icmp ult i8 %i.hq, 10
  br i1 %or.cond.i251.9, label %bb.cp, label %switch.early.test536.9

switch.early.test536.9:                           ; preds = %bb.co
  switch i8 %i.hp, label %bb.de [
    i8 45, label %bb.cp
    i8 43, label %bb.cp
  ]

bb.cp:                                            ; preds = %switch.early.test536.9, %switch.early.test536.9, %bb.co
  %i.hr = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i249.9, ptr noundef nonnull align 4 dereferenceable(4) %i.cq, i1 noundef zeroext true)
          to label %bb.cq unwind label %.loopexit549 ; 3 uses

bb.cq:                                            ; preds = %bb.cp
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = sub i64 %i.cd, %i.hs
  %scevgep.i.i245.10 = getelementptr i8, ptr %i.hr, i64 %i.ht ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ct, %bb.cq
  %.0.i.i246.10 = phi ptr [ %i.hr, %bb.cq ], [ %i.hv, %bb.ct ] ; 4 uses
  %i.hu = load i8, ptr %.0.i.i246.10, align 1     ; 2 uses
  switch i8 %i.hu, label %.critedge.i.i248.10 [
    i8 32, label %bb.cs
    i8 9, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr, %bb.cr
  %.not.i.i247.10 = icmp eq ptr %.0.i.i246.10, %i.ca
  br i1 %.not.i.i247.10, label %.critedge.i.i248thread-pre-split.10, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i246.10, i64 1
  br label %bb.cr, !llvm.loop !8

.critedge.i.i248thread-pre-split.10:              ; preds = %bb.cs
  %.pr521.10 = load i8, ptr %scevgep.i.i245.10, align 1
  br label %.critedge.i.i248.10

.critedge.i.i248.10:                              ; preds = %bb.cr, %.critedge.i.i248thread-pre-split.10
  %i.hw = phi i8 [ %.pr521.10, %.critedge.i.i248thread-pre-split.10 ], [ %i.hu, %bb.cr ] ; 3 uses
  %.0.lcssa.i.i249.10 = phi ptr [ %scevgep.i.i245.10, %.critedge.i.i248thread-pre-split.10 ], [ %.0.i.i246.10, %bb.cr ]
  switch i8 %i.hw, label %bb.cu [
    i8 13, label %bb.dc
    i8 10, label %bb.dc
    i8 0, label %bb.dc
    i8 12, label %bb.dc
  ]

bb.cu:                                            ; preds = %.critedge.i.i248.10
  %i.hx = add i8 %i.hw, -48
  %or.cond.i251.10 = icmp ult i8 %i.hx, 10
  br i1 %or.cond.i251.10, label %bb.cv, label %switch.early.test536.10

switch.early.test536.10:                          ; preds = %bb.cu
  switch i8 %i.hw, label %bb.dc [
    i8 45, label %bb.cv
    i8 43, label %bb.cv
  ]

bb.cv:                                            ; preds = %switch.early.test536.10, %switch.early.test536.10, %bb.cu
  %i.hy = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i249.10, ptr noundef nonnull align 4 dereferenceable(4) %i.cr, i1 noundef zeroext true)
          to label %bb.cw unwind label %.loopexit549 ; 3 uses

bb.cw:                                            ; preds = %bb.cv
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = sub i64 %i.cd, %i.hz
  %scevgep.i.i245.11 = getelementptr i8, ptr %i.hy, i64 %i.ia ; 2 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %bb.cw
  %.0.i.i246.11 = phi ptr [ %i.hy, %bb.cw ], [ %i.ic, %bb.cz ] ; 4 uses
  %i.ib = load i8, ptr %.0.i.i246.11, align 1     ; 2 uses
  switch i8 %i.ib, label %.critedge.i.i248.11 [
    i8 32, label %bb.cy
    i8 9, label %bb.cy
  ]

bb.cy:                                            ; preds = %bb.cx, %bb.cx
  %.not.i.i247.11 = icmp eq ptr %.0.i.i246.11, %i.ca
  br i1 %.not.i.i247.11, label %.critedge.i.i248thread-pre-split.11, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i.i246.11, i64 1
  br label %bb.cx, !llvm.loop !8

.critedge.i.i248thread-pre-split.11:              ; preds = %bb.cy
  %.pr521.11 = load i8, ptr %scevgep.i.i245.11, align 1
  br label %.critedge.i.i248.11

.critedge.i.i248.11:                              ; preds = %bb.cx, %.critedge.i.i248thread-pre-split.11
  %i.id = phi i8 [ %.pr521.11, %.critedge.i.i248thread-pre-split.11 ], [ %i.ib, %bb.cx ] ; 3 uses
  %.0.lcssa.i.i249.11 = phi ptr [ %scevgep.i.i245.11, %.critedge.i.i248thread-pre-split.11 ], [ %.0.i.i246.11, %bb.cx ]
  switch i8 %i.id, label %bb.da [
    i8 13, label %bb.dc
    i8 10, label %bb.dc
    i8 0, label %bb.dc
    i8 12, label %bb.dc
  ]

bb.da:                                            ; preds = %.critedge.i.i248.11
  %i.ie = add i8 %i.id, -48
  %or.cond.i251.11 = icmp ult i8 %i.ie, 10
  br i1 %or.cond.i251.11, label %bb.db, label %switch.early.test536.11

switch.early.test536.11:                          ; preds = %bb.da
  switch i8 %i.id, label %bb.dc [
    i8 45, label %bb.db
    i8 43, label %bb.db
  ]

bb.db:                                            ; preds = %switch.early.test536.11, %switch.early.test536.11, %bb.da
  %i.if = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i249.11, ptr noundef nonnull align 4 dereferenceable(4) %i.cs, i1 noundef zeroext true)
          to label %bb.de unwind label %.loopexit549

bb.dc:                                            ; preds = %switch.early.test536, %.critedge.i.i248, %.critedge.i.i248, %.critedge.i.i248, %.critedge.i.i248, %.critedge.i.i248.1, %.critedge.i.i248.1, %.critedge.i.i248.1, %.critedge.i.i248.1, %switch.early.test536.1, %switch.early.test536.11, %.critedge.i.i248.2, %.critedge.i.i248.2, %.critedge.i.i248.2, %.critedge.i.i248.2, %switch.early.test536.2, %.critedge.i.i248.11, %.critedge.i.i248.11, %.critedge.i.i248.11, %.critedge.i.i248.11, %.critedge.i.i248.3, %.critedge.i.i248.3, %.critedge.i.i248.3, %.critedge.i.i248.3, %switch.early.test536.3, %.critedge.i.i248.4, %.critedge.i.i248.4, %.critedge.i.i248.4, %.critedge.i.i248.4, %switch.early.test536.4, %.critedge.i.i248.5, %.critedge.i.i248.5, %.critedge.i.i248.5, %.critedge.i.i248.5, %switch.early.test536.5, %.critedge.i.i248.6, %.critedge.i.i248.6, %.critedge.i.i248.6, %.critedge.i.i248.6, %switch.early.test536.6, %.critedge.i.i248.10, %.critedge.i.i248.10, %.critedge.i.i248.10, %.critedge.i.i248.10, %.critedge.i.i248.7, %.critedge.i.i248.7, %.critedge.i.i248.7, %.critedge.i.i248.7, %switch.early.test536.7, %switch.early.test536.10, %.critedge.i.i248.8, %.critedge.i.i248.8, %.critedge.i.i248.8, %.critedge.i.i248.8, %switch.early.test536.8
  %i.ig = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dd unwind label %.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ig, ptr noundef nonnull @.str.5)
          to label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351 unwind label %.loopexit.split-lp, !llvm.loop !11

bb.de:                                            ; preds = %.critedge.i.i248.9, %.critedge.i.i248.9, %.critedge.i.i248.9, %.critedge.i.i248.9, %switch.early.test536.9, %bb.db
  %.ph = phi i1 [ true, %.critedge.i.i248.9 ], [ true, %.critedge.i.i248.9 ], [ true, %switch.early.test536.9 ], [ true, %.critedge.i.i248.9 ], [ true, %.critedge.i.i248.9 ], [ false, %bb.db ] ; 2 uses
  %.ph802 = phi i1 [ false, %.critedge.i.i248.9 ], [ false, %.critedge.i.i248.9 ], [ false, %switch.early.test536.9 ], [ false, %.critedge.i.i248.9 ], [ false, %.critedge.i.i248.9 ], [ true, %bb.db ]
  %.1518.ph = phi ptr [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %.0.lcssa.i.i249.9, %switch.early.test536.9 ], [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %i.if, %bb.db ] ; 4 uses
  %i.ih = load i8, ptr %.1518.ph, align 1         ; 2 uses
  switch i8 %i.ih, label %_ZN6Assimp9IsLineEndIcEEbT_.exit254 [
    i8 13, label %bb.dg
    i8 10, label %bb.dg
    i8 0, label %bb.dg
    i8 12, label %bb.dg
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit254:              ; preds = %bb.de, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256
  %i.ii = phi i8 [ %.pr522, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256 ], [ %i.ih, %bb.de ]
  %.0163 = phi ptr [ %i.ij, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256 ], [ %.1518.ph, %bb.de ] ; 2 uses
  switch i8 %i.ii, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256 [
    i8 32, label %bb.df
    i8 9, label %bb.df
    i8 13, label %bb.df
    i8 10, label %bb.df
    i8 0, label %bb.df
    i8 12, label %bb.df
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256:      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit254
  %i.ij = getelementptr inbounds nuw i8, ptr %.0163, i64 1 ; 2 uses
  %.pr522 = load i8, ptr %i.ij, align 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit254, !llvm.loop !12

.loopexit550:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i353, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385
  %lpad.loopexit552 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp551:                            ; preds = %.invoke
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.df:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254
  %i.ik = ptrtoint ptr %.0163 to i64
  %i.il = ptrtoint ptr %.1518.ph to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = trunc i64 %i.im to i32
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de, %bb.de, %bb.de, %bb.de
  %spec.select = select i1 %.ph, ptr @.str.6, ptr @.str.7
  %spec.select537 = select i1 %.ph, i32 9, i32 0
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.2519 = phi ptr [ %.1518.ph, %bb.df ], [ %spec.select, %bb.dg ] ; 3 uses
  %.0164 = phi i32 [ %i.in, %bb.df ], [ %spec.select537, %bb.dg ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0506.0611, i64 32 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0506.0611, i64 40 ; 5 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 2 uses
  %.not543605 = icmp eq ptr %i.ip, %i.ir
  %.pre685 = zext i32 %.0164 to i64               ; 3 uses
  br i1 %.not543605, label %._crit_edge609, label %.lr.ph608

.lr.ph608:                                        ; preds = %bb.dh
  %.not194 = icmp eq i32 %.0164, 0
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph608, %bb.dl
  %.sroa.0483.0606 = phi ptr [ %i.ip, %.lr.ph608 ], [ %i.ix, %bb.dl ] ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0483.0606, i64 8
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = icmp eq i64 %i.it, %.pre685
  br i1 %i.iu, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  br i1 %.not194, label %.loopexit548, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.iv = load ptr, ptr %.sroa.0483.0606, align 8
  %i.iw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.2519, ptr noundef nonnull dereferenceable(1) %i.iv) #26
  %.not195 = icmp eq i32 %i.iw, 0
  br i1 %.not195, label %.loopexit548, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.di
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0483.0606, i64 80 ; 2 uses
  %.not543 = icmp eq ptr %i.ix, %i.ir
  br i1 %.not543, label %._crit_edge609, label %bb.di

._crit_edge609:                                   ; preds = %bb.dl, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.cg, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %.pre685, ptr %i.a, align 8
  %i.iy = icmp ugt i32 %.0164, 15
  br i1 %i.iy, label %.noexc.i259, label %._crit_edge.i.i258

.noexc.i259:                                      ; preds = %._crit_edge609
  %i.iz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc261 unwind label %bb.dr ; 2 uses

.noexc261:                                        ; preds = %.noexc.i259
  store ptr %i.iz, ptr %10, align 8
  %i.ja = load i64, ptr %i.a, align 8
  store i64 %i.ja, ptr %i.cg, align 8
  br label %._crit_edge.i.i258

._crit_edge.i.i258:                               ; preds = %.noexc261, %._crit_edge609
  %i.jb = phi ptr [ %i.iz, %.noexc261 ], [ %i.cg, %._crit_edge609 ] ; 2 uses
  switch i32 %.0164, label %bb.dn [
    i32 1, label %bb.dm
    i32 0, label %bb.do
  ]

bb.dm:                                            ; preds = %._crit_edge.i.i258
  %i.jc = load i8, ptr %.2519, align 1
  store i8 %i.jc, ptr %i.jb, align 1
  br label %bb.do

bb.dn:                                            ; preds = %._crit_edge.i.i258
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jb, ptr nonnull align 1 %.2519, i64 %.pre685, i1 false)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %._crit_edge.i.i258
  %i.jd = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.jd, ptr %i.ch, align 8
  %i.je = load ptr, ptr %10, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jd
  store i8 0, ptr %i.jf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.jg = load ptr, ptr %i.iq, align 8            ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0506.0611, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8
  %.not.i263 = icmp eq ptr %i.jg, %i.ji
  br i1 %.not.i263, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN6Assimp11RAWImporter15MeshInformationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc265 unwind label %bb.ds

.noexc265:                                        ; preds = %bb.dp
  %i.jj = load ptr, ptr %i.iq, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  store ptr %i.jk, ptr %i.iq, align 8
  br label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit

bb.dq:                                            ; preds = %bb.do
  invoke void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit unwind label %bb.ds

_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit: ; preds = %bb.dq, %.noexc265
  %i.jl = load ptr, ptr %10, align 8              ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.cg
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit
  %i.jn = load i64, ptr %i.cg, align 8
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.jp = load ptr, ptr %i.iq, align 8
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -80
  br label %.loopexit548

bb.dr:                                            ; preds = %.noexc.i259
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = load ptr, ptr %10, align 8              ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.cg
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.ds
  %i.jv = load i64, ptr %i.cg, align 8
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.dr
  %.pn197 = phi { ptr, i32 } [ %i.jr, %bb.dr ], [ %i.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ], [ %i.js, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ew

.loopexit548:                                     ; preds = %bb.dk, %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %.3155 = phi ptr [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %.sroa.0483.0606, %bb.dj ], [ %.sroa.0483.0606, %bb.dk ] ; 9 uses
  br i1 %.ph802, label %bb.dt, label %bb.em

bb.dt:                                            ; preds = %.loopexit548
  %i.jx = load <2 x float>, ptr %i.d, align 16    ; 6 uses
  %i.jy = load float, ptr %i.cj, align 8          ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.3155, i64 56 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.3155, i64 64 ; 10 uses
  %i.kb = load ptr, ptr %i.ka, align 8            ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.3155, i64 72 ; 6 uses
  %i.kd = load ptr, ptr %i.kc, align 8
  %.not.i273 = icmp eq ptr %i.kb, %i.kd
  br i1 %.not.i273, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
end_hunk_0
