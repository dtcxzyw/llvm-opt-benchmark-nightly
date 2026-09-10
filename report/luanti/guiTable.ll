Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiTable?download=true
inline.NumInlined: 1972
inline.NumDeleted: 855
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8GUITable8setTableERKSt6vectorINS_6OptionESaIS1_EERKS0_INS_11TableColumnESaIS6_EERS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EE:bb.a
  %.1330901.ph = phi i32 [ %.2331, %_ZN11StreamProxylsEPFRSoS0_E.exit504 ], [ %i.lf, %_ZN11StreamProxylsEPFRSoS0_E.exit441.thread ] ; 15 uses
  %.sroa.0729.0899.ph = phi ptr [ %i.tn, %_ZN11StreamProxylsEPFRSoS0_E.exit504 ], [ %i.lo, %_ZN11StreamProxylsEPFRSoS0_E.exit441.thread ]
  br label %.lr.ph907

_ZN11StreamProxylsEPFRSoS0_E.exit504.jt3:         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit464
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0729.0899, i64 64 ; 2 uses
  %.not800.jt3 = icmp eq ptr %i.to, %i.lq
  br i1 %.not800.jt3, label %._crit_edge908.jt3, label %.lr.ph907.backedge

_ZN11StreamProxylsEPFRSoS0_E.exit504.jt2:         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit460
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0729.0899, i64 64 ; 2 uses
  %.not800.jt2 = icmp eq ptr %i.tp, %i.lq
  br i1 %.not800.jt2, label %._crit_edge908.jt2, label %.lr.ph907.backedge

_ZN11StreamProxylsEPFRSoS0_E.exit504.jt1:         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit456
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0729.0899, i64 64 ; 2 uses
  %.not800.jt1 = icmp eq ptr %i.tq, %i.lq
  br i1 %.not800.jt1, label %._crit_edge908.jt1, label %.lr.ph907.backedge

_ZN11StreamProxylsEPFRSoS0_E.exit504.jt0:         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit452
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0729.0899, i64 64 ; 2 uses
  %.not800.jt0 = icmp eq ptr %i.tr, %i.lq
  br i1 %.not800.jt0, label %._crit_edge908.jt0, label %.lr.ph907.backedge

.lr.ph907.backedge:                               ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt0, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt1, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt2, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt3
  %.0325903.be = phi i32 [ 2, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt2 ], [ 3, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt3 ], [ 0, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt0 ], [ 1, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt1 ]
  %.sroa.0729.0899.be = phi ptr [ %i.tp, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt2 ], [ %i.to, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt3 ], [ %i.tr, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt0 ], [ %i.tq, %_ZN11StreamProxylsEPFRSoS0_E.exit504.jt1 ]
  br label %.lr.ph907

.lr.ph931:                                        ; preds = %.lr.ph931.preheader, %.critedge
  %indvars.iv989 = phi i64 [ 0, %.lr.ph931.preheader ], [ %indvars.iv.next990, %.critedge ] ; 2 uses
  %i.ts = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv989 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 48
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 56 ; 2 uses
  %.promoted = load ptr, ptr %i.tu, align 8, !tbaa !355 ; 2 uses
  %i.tv = load ptr, ptr %i.tt, align 8, !tbaa !355 ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %.promoted
  br i1 %i.tw, label %.critedge, label %.lr.ph928

.lr.ph928:                                        ; preds = %.lr.ph931, %bb.bv
  %i.tx = phi ptr [ %i.uc, %bb.bv ], [ %.promoted, %.lr.ph931 ] ; 2 uses
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 -4
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !357
  %i.ua = sext i32 %i.tz to i64
  %i.ub = icmp sgt i64 %indvars.iv998, %i.ua
  br i1 %i.ub, label %bb.bv, label %.critedge

bb.bv:                                            ; preds = %.lr.ph928
  %i.uc = getelementptr inbounds i8, ptr %i.tx, i64 -8 ; 3 uses
  store ptr %i.uc, ptr %i.tu, align 8, !tbaa !359
  %i.ud = icmp eq ptr %i.tv, %i.uc
  br i1 %i.ud, label %.critedge, label %.lr.ph928, !llvm.loop !278

.critedge:                                        ; preds = %.lr.ph928, %bb.bv, %.lr.ph931
  %indvars.iv.next990 = add nuw nsw i64 %indvars.iv989, 1 ; 2 uses
  %i.ue = icmp samesign ult i64 %indvars.iv.next990, %i.gi
  br i1 %i.ue, label %.lr.ph931, label %._crit_edge932, !llvm.loop !279

._crit_edge932:                                   ; preds = %.critedge
  %i.uf = add nuw nsw i64 %indvars.iv998, 1       ; 4 uses
  br i1 %i.gm, label %.loopexit811, label %.lr.ph936

.lr.ph940.preheader:                              ; preds = %bb.bz
  %i.ug = trunc nuw nsw i64 %i.uf to i32
  %i.uh = trunc nuw nsw i64 %i.uf to i32
  br label %.lr.ph940

.preheader810.jt3:                                ; preds = %.preheader817.jt3
  %i.ui = add nuw nsw i64 %indvars.iv998, 1
  br label %.loopexit811

.preheader810.jt2:                                ; preds = %.preheader817.jt2
  %i.uj = add nuw nsw i64 %indvars.iv998, 1
  br label %.loopexit811

.preheader810.jt1:                                ; preds = %.preheader817.jt1
  %i.uk = add nuw nsw i64 %indvars.iv998, 1
  br label %.loopexit811

.preheader810.jt0:                                ; preds = %.preheader817.jt0
  %i.ul = add nuw nsw i64 %indvars.iv998, 1
  br label %.loopexit811

.lr.ph936:                                        ; preds = %._crit_edge932, %bb.bz
  %indvars.iv992 = phi i64 [ %indvars.iv.next993, %bb.bz ], [ 0, %._crit_edge932 ] ; 3 uses
  %.0318933 = phi i32 [ %i.vh, %bb.bz ], [ 0, %._crit_edge932 ]
  %i.um = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv992 ; 3 uses
  %i.un = mul nuw nsw i64 %indvars.iv992, %i.ij
  %i.uo = load ptr, ptr %3, align 8, !tbaa !155
  %i.up = getelementptr [32 x i8], ptr %i.uo, i64 %i.un
  %i.uq = getelementptr [32 x i8], ptr %i.up, i64 %indvars.iv998
  %i.ur = invoke noundef i32 @_ZN8GUITable11allocStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.uq)
          to label %bb.bw unwind label %bb.ca     ; 2 uses

bb.bw:                                            ; preds = %.lr.ph936
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i32 %i.ur, ptr %i.us, align 8, !tbaa !368
  %i.ut = load ptr, ptr %i.gs, align 8, !tbaa !105 ; 3 uses
  %.not377 = icmp eq ptr %i.ut, null
  br i1 %.not377, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.uu = load ptr, ptr %i.ii, align 8, !tbaa !142
  %i.uv = sext i32 %i.ur to i64
  %i.uw = getelementptr inbounds nuw [32 x i8], ptr %i.uu, i64 %i.uv
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !122
  %i.uy = load ptr, ptr %i.ut, align 8, !tbaa !21
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = invoke i64 %i.va(ptr noundef nonnull align 8 dereferenceable(8) %i.ut, ptr noundef %i.ux)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %.sroa.091.0.extract.trunc = trunc i64 %i.vb to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bw, %bb.by
  %i.vc = phi i32 [ %.sroa.091.0.extract.trunc, %bb.by ], [ 0, %bb.bw ]
  %i.vd = getelementptr inbounds nuw i8, ptr %i.um, i64 12
  %..1323 = call i32 @llvm.smax.i32(i32 %i.vc, i32 %.1323.lcssa1147) ; 2 uses
  store i32 %..1323, ptr %i.vd, align 4, !tbaa !369
  %i.ve = load i32, ptr %i.um, align 8, !tbaa !370
  %i.vf = add i32 %..1323, %.1330.lcssa1117
  %i.vg = add i32 %i.vf, %i.ve
  %i.vh = call i32 @llvm.smax.i32(i32 %.0318933, i32 %i.vg) ; 6 uses
  %indvars.iv.next993 = add nuw nsw i64 %indvars.iv992, 1 ; 2 uses
  %i.vi = icmp samesign ult i64 %indvars.iv.next993, %i.ik
  br i1 %i.vi, label %.lr.ph936, label %.lr.ph940.preheader, !llvm.loop !280

bb.ca:                                            ; preds = %.lr.ph936
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.bx
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph940:                                        ; preds = %.lr.ph940.preheader, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit
  %indvars.iv995 = phi i64 [ %indvars.iv.next996, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit ], [ 0, %.lr.ph940.preheader ] ; 2 uses
  %.sroa.38.0938 = phi i32 [ %.sroa.38.1, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit ], [ 0, %.lr.ph940.preheader ]
  %i.vl = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv995 ; 9 uses
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !370
  %i.vn = add nsw i32 %i.vm, %.1330.lcssa1117     ; 6 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 12
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !369 ; 3 uses
  switch i32 %.0325.lcssa1137, label %bb.ce [
    i32 0, label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit
    i32 1, label %bb.cc
    i32 2, label %bb.cd
  ]

bb.cc:                                            ; preds = %.lr.ph940
  %i.vq = sub i32 %i.vh, %i.vp
  %i.vr = add i32 %i.vq, %i.vn
  %i.vs = sdiv i32 %i.vr, 2
  br label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit

bb.cd:                                            ; preds = %.lr.ph940
  %i.vt = sub nsw i32 %i.vh, %i.vp
  br label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit

bb.ce:                                            ; preds = %.lr.ph940
  %i.vu = add nsw i32 %i.vn, %i.vp
  br label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit

_ZN8GUITable12alignContentEPNS_4CellEiii.exit:    ; preds = %.lr.ph940, %bb.cc, %bb.cd, %bb.ce
  %.sroa.24.0 = phi i32 [ %i.vn, %bb.ce ], [ %i.vt, %bb.cd ], [ %i.vs, %bb.cc ], [ %i.vn, %.lr.ph940 ] ; 2 uses
  %.sink.i = phi i32 [ %i.vu, %bb.ce ], [ %i.vh, %bb.cd ], [ %i.vh, %bb.cc ], [ %i.vh, %.lr.ph940 ] ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !368 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !355
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vl, i64 56
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !355 ; 2 uses
  %i.wb = icmp ne ptr %i.vy, %i.wa                ; 2 uses
  %i.wc = zext i1 %i.wb to i8                     ; 2 uses
  br i1 %i.wb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZN8GUITable12alignContentEPNS_4CellEiii.exit
  %i.wd = getelementptr inbounds i8, ptr %i.wa, i64 -8
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !130
  br label %bb.cg

.loopexit812:                                     ; preds = %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit814 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp813:                            ; preds = %bb.cj
  %lpad.loopexit.split-lp815 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cg:                                            ; preds = %bb.cf, %_ZN8GUITable12alignContentEPNS_4CellEiii.exit
  %.sroa.38.1 = phi i32 [ %.sroa.38.0938, %_ZN8GUITable12alignContentEPNS_4CellEiii.exit ], [ %i.we, %bb.cf ] ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vl, i64 24 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vl, i64 32 ; 3 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !371 ; 14 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vl, i64 40 ; 3 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !372
  %.not.i505 = icmp eq ptr %i.wh, %i.wj
  br i1 %.not.i505, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 %i.vn, ptr %i.wh, align 4, !tbaa !130
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  store i32 %.sink.i, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !130
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store i32 %.sroa.24.0, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !130
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 12
  store i32 %.033211691186, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !373
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  store i32 %i.vw, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !130
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 20
  store i32 %.0327.lcssa1127, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !130
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  store i32 %.sroa.38.1, ptr %.sroa.38.0..sroa_idx, align 4, !tbaa !130
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 28
  store i8 %i.wc, ptr %.sroa.41.0..sroa_idx, align 4, !tbaa !134
  %.sroa.43702.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  store i32 %i.ug, ptr %.sroa.43702.0..sroa_idx, align 4, !tbaa !130
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 40
  store ptr %i.wk, ptr %i.wg, align 8, !tbaa !371
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit

bb.ci:                                            ; preds = %bb.cg
  %i.wl = load ptr, ptr %i.wf, align 8, !tbaa !374 ; 5 uses
  %i.wm = ptrtoint ptr %i.wh to i64
  %i.wn = ptrtoint ptr %i.wl to i64               ; 2 uses
  %i.wo = sub i64 %i.wm, %i.wn                    ; 3 uses
  %i.wp = icmp eq i64 %i.wo, 9223372036854775800
  br i1 %i.wp, label %bb.cj, label %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #31
          to label %.noexc507 unwind label %.loopexit.split-lp813

.noexc507:                                        ; preds = %bb.cj
  unreachable

_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ci
  %i.wq = sdiv exact i64 %i.wo, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.wq, i64 1)
  %i.wr = add nsw i64 %.sroa.speculated.i.i.i, %i.wq ; 2 uses
  %i.ws = icmp ult i64 %i.wr, %i.wq
  %i.wt = call i64 @llvm.umin.i64(i64 %i.wr, i64 230584300921369395)
  %i.wu = select i1 %i.ws, i64 230584300921369395, i64 %i.wt ; 3 uses
  %.not.i.i.i506 = icmp ne i64 %i.wu, 0
  call void @llvm.assume(i1 %.not.i.i.i506)
  %i.wv = mul nuw nsw i64 %i.wu, 40
  %i.ww = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wv) #27
          to label %.noexc508 unwind label %.loopexit812 ; 5 uses

.noexc508:                                        ; preds = %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wo ; 9 uses
  store i32 %i.vn, ptr %i.wx, align 4, !tbaa !130
  %.sroa.18.0..sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  store i32 %.sink.i, ptr %.sroa.18.0..sroa_idx625, align 4, !tbaa !130
  %.sroa.24.0..sroa_idx637 = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store i32 %.sroa.24.0, ptr %.sroa.24.0..sroa_idx637, align 4, !tbaa !130
  %.sroa.33.0..sroa_idx647 = getelementptr inbounds nuw i8, ptr %i.wx, i64 12
  store i32 %.033211691186, ptr %.sroa.33.0..sroa_idx647, align 4, !tbaa !373
  %.sroa.34.0..sroa_idx657 = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  store i32 %i.vw, ptr %.sroa.34.0..sroa_idx657, align 4, !tbaa !130
  %.sroa.37.0..sroa_idx667 = getelementptr inbounds nuw i8, ptr %i.wx, i64 20
  store i32 %.0327.lcssa1127, ptr %.sroa.37.0..sroa_idx667, align 4, !tbaa !130
  %.sroa.38.0..sroa_idx677 = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  store i32 %.sroa.38.1, ptr %.sroa.38.0..sroa_idx677, align 4, !tbaa !130
  %.sroa.41.0..sroa_idx687 = getelementptr inbounds nuw i8, ptr %i.wx, i64 28
  store i8 %i.wc, ptr %.sroa.41.0..sroa_idx687, align 4, !tbaa !134
  %.sroa.43702.0..sroa_idx703 = getelementptr inbounds nuw i8, ptr %i.wx, i64 32
  store i32 %i.uh, ptr %.sroa.43702.0..sroa_idx703, align 4, !tbaa !130
  %.not10.i.i.i.i.i = icmp eq ptr %i.wl, %i.wh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc508, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.wz, %.lr.ph.i.i.i.i.i ], [ %i.ww, %.noexc508 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.wy, %.lr.ph.i.i.i.i.i ], [ %i.wl, %.noexc508 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !376, !alias.scope !377
  %i.wy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.wy, %i.wh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !284

_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc508
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ww, %.noexc508 ], [ %i.wz, %.lr.ph.i.i.i.i.i ]
  %i.xa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40
  %.not.i23.i.i = icmp eq ptr %i.wl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %10 = load ptr, ptr %i.wi, align 8, !tbaa !372
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %11, %i.wn
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %12) #29
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ck, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ww, ptr %i.wf, align 8, !tbaa !374
  store ptr %i.xa, ptr %i.wg, align 8, !tbaa !371
  %i.xb = getelementptr inbounds nuw [40 x i8], ptr %i.ww, i64 %i.wu
  store ptr %i.xb, ptr %i.wi, align 8, !tbaa !372
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ch
  store i32 %.sink.i, ptr %i.vl, align 8, !tbaa !370
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 1 ; 2 uses
  %i.xc = icmp samesign ult i64 %indvars.iv.next996, %i.gi
  br i1 %i.xc, label %.lr.ph940, label %.loopexit811, !llvm.loop !285

.lr.ph925.preheader:                              ; preds = %bb.co
  %i.xd = trunc nuw nsw i64 %i.ls to i32
  %i.xe = trunc nuw nsw i64 %i.ls to i32
  br label %.lr.ph925

.lr.ph922:                                        ; preds = %.preheader824, %bb.co
  %indvars.iv983 = phi i64 [ %indvars.iv.next984, %bb.co ], [ 0, %.preheader824 ] ; 3 uses
  %.0315920 = phi i32 [ %i.yy, %bb.co ], [ 0, %.preheader824 ]
  %i.xf = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv983 ; 6 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 3 uses
  store i32 -1, ptr %i.xg, align 8, !tbaa !368
  %i.xh = mul nuw nsw i64 %indvars.iv983, %i.ij
  %i.xi = load ptr, ptr %3, align 8, !tbaa !155
  %i.xj = getelementptr [32 x i8], ptr %i.xi, i64 %i.xh
  %i.xk = getelementptr [32 x i8], ptr %i.xj, i64 %indvars.iv998
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !141
  %i.xm = call i64 @__isoc23_strtol(ptr noundef nonnull %i.xl, ptr noundef null, i32 noundef 10) #28, !inline_history !8
  %i.xn = trunc i64 %i.xm to i32                  ; 2 uses
  %i.xo = load ptr, ptr %i.hn, align 8, !tbaa !100 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.xo, null
  br i1 %.not10.i.i.i, label %thread-pre-split, label %.lr.ph.i.i.i509

.lr.ph.i.i.i509:                                  ; preds = %.lr.ph922, %.lr.ph.i.i.i509
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i509 ], [ %i.xo, %.lr.ph922 ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i509 ], [ %i.hm, %.lr.ph922 ] ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !130
  %i.xr = icmp slt i32 %i.xq, %i.xn               ; 3 uses
  %.19.i.i.i = select i1 %i.xr, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.xr, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i510 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i510, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i509, !llvm.loop !276

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i509
  %i.xs = icmp eq ptr %.19.i.i.i, %i.hm
  br i1 %i.xs, label %thread-pre-split, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.xr, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.xt = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !130
  %i.xu = icmp sgt i32 %i.xt, %i.xn
  br i1 %i.xu, label %thread-pre-split, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit
  %i.xv = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !353 ; 2 uses
  store i32 %i.xw, ptr %i.xg, align 8, !tbaa !368
  br label %13

thread-pre-split:                                 ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %.lr.ph922, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE4findERS3_.exit
  %.pr = load i32, ptr %i.xg, align 8, !tbaa !368
  br label %13

13:                                               ; preds = %thread-pre-split, %bb.cl
  %14 = phi i32 [ %.pr, %thread-pre-split ], [ %i.xw, %bb.cl ] ; 2 uses
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %bb.cm, label %.thread794

.thread794:                                       ; preds = %13
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  store float 1.000000e+00, ptr %i.xx, align 8, !tbaa !378
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xf, i64 12 ; 2 uses
  store i32 0, ptr %i.xy, align 4, !tbaa !369
  br label %bb.co

bb.cm:                                            ; preds = %13
  %i.xz = zext nneg i32 %14 to i64
  %i.ya = load ptr, ptr %i.ig, align 8, !tbaa !120
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.xz
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !204 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xf, i64 16 ; 2 uses
  store float 1.000000e+00, ptr %i.yd, align 8, !tbaa !378
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xf, i64 12 ; 4 uses
  store i32 0, ptr %i.ye, align 4, !tbaa !369
  %.not376 = icmp eq ptr %i.yc, null
  br i1 %.not376, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yf = load i32, ptr %i.ih, align 4, !tbaa !98
  %i.yg = sitofp nsz i32 %i.yf to float
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 72
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yc, i64 76
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !133
  %i.yk = uitofp nsz i32 %i.yj to float
  %i.yl = fdiv nsz float %i.yg, %i.yk             ; 2 uses
  %i.ym = fcmp nsz olt float %i.yl, %.0758
  %.sroa.speculated = select i1 %i.ym, float %i.yl, float %.0758 ; 3 uses
  %i.yn = fcmp nsz ogt float %.sroa.speculated, 1.000000e+00
  %i.yo = call nsz float @llvm.floor.f32(float %.sroa.speculated)
  %storemerge802 = select i1 %i.yn, float %i.yo, float %.sroa.speculated ; 2 uses
  store float %storemerge802, ptr %i.yd, align 8, !tbaa !378
  %i.yp = load i32, ptr %i.yh, align 4, !tbaa !132
  %i.yq = uitofp nsz i32 %i.yp to float
  %i.yr = fmul nsz float %storemerge802, %i.yq
  %i.ys = fptosi float %i.yr to i32               ; 2 uses
  store i32 %i.ys, ptr %i.ye, align 4, !tbaa !369
  br label %bb.co

bb.co:                                            ; preds = %.thread794, %bb.cn, %bb.cm
  %i.yt = phi i32 [ 0, %.thread794 ], [ %i.ys, %bb.cn ], [ 0, %bb.cm ]
  %i.yu = phi ptr [ %i.xy, %.thread794 ], [ %i.ye, %bb.cn ], [ %i.ye, %bb.cm ]
  %..1323393 = call i32 @llvm.smax.i32(i32 %i.yt, i32 %.1323.lcssa1146) ; 2 uses
  store i32 %..1323393, ptr %i.yu, align 4, !tbaa !369
  %i.yv = load i32, ptr %i.xf, align 8, !tbaa !370
  %i.yw = add i32 %..1323393, %.1330.lcssa1116
  %i.yx = add i32 %i.yw, %i.yv
  %i.yy = call i32 @llvm.smax.i32(i32 %.0315920, i32 %i.yx) ; 6 uses
  %indvars.iv.next984 = add nuw nsw i64 %indvars.iv983, 1 ; 2 uses
  %i.yz = icmp samesign ult i64 %indvars.iv.next984, %i.ik
  br i1 %i.yz, label %.lr.ph922, label %.lr.ph925.preheader, !llvm.loop !286

._crit_edge926:                                   ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit529, %.preheader824
  %i.za = load ptr, ptr %i.hn, align 8, !tbaa !100
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.za)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit unwind label %bb.cp

bb.cp:                                            ; preds = %._crit_edge926
  %i.zb = landingpad { ptr, i32 }
          catch ptr null
  %i.zc = extractvalue { ptr, i32 } %i.zb, 0
  call void @__clang_call_terminate(ptr %i.zc) #30
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit: ; preds = %._crit_edge926
  store ptr null, ptr %i.hn, align 8, !tbaa !100
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !101
  store ptr %i.hm, ptr %i.hp, align 8, !tbaa !102
  store i64 0, ptr %i.hq, align 8, !tbaa !103
  br label %.loopexit811

.lr.ph925:                                        ; preds = %.lr.ph925.preheader, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit529
  %indvars.iv986 = phi i64 [ 0, %.lr.ph925.preheader ], [ %indvars.iv.next987, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit529 ] ; 2 uses
  %i.zd = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv986 ; 8 uses
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !370
  %i.zf = add nsw i32 %i.ze, %.1330.lcssa1116     ; 6 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !369 ; 3 uses
  switch i32 %.0325.lcssa1136, label %bb.cs [
    i32 0, label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit513
    i32 1, label %bb.cq
    i32 2, label %bb.cr
  ]

bb.cq:                                            ; preds = %.lr.ph925
  %i.zi = sub i32 %i.yy, %i.zh
  %i.zj = add i32 %i.zi, %i.zf
  %i.zk = sdiv i32 %i.zj, 2
  br label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit513

bb.cr:                                            ; preds = %.lr.ph925
  %i.zl = sub nsw i32 %i.yy, %i.zh
  br label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit513

bb.cs:                                            ; preds = %.lr.ph925
  %i.zm = add nsw i32 %i.zf, %i.zh
  br label %_ZN8GUITable12alignContentEPNS_4CellEiii.exit513

_ZN8GUITable12alignContentEPNS_4CellEiii.exit513: ; preds = %.lr.ph925, %bb.cq, %bb.cr, %bb.cs
  %.sroa.24.1 = phi i32 [ %i.zf, %bb.cs ], [ %i.zl, %bb.cr ], [ %i.zk, %bb.cq ], [ %i.zf, %.lr.ph925 ] ; 2 uses
  %.sink.i512 = phi i32 [ %i.zm, %bb.cs ], [ %i.yy, %bb.cr ], [ %i.yy, %bb.cq ], [ %i.yy, %.lr.ph925 ] ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !368 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %i.zq = load float, ptr %i.zp, align 8, !tbaa !378 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zd, i64 24 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zd, i64 32 ; 3 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !371 ; 14 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zd, i64 40 ; 3 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !372
  %.not.i514 = icmp eq ptr %i.zt, %i.zv
  br i1 %.not.i514, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZN8GUITable12alignContentEPNS_4CellEiii.exit513
  store i32 %i.zf, ptr %i.zt, align 4, !tbaa !130
  %.sroa.18.0..sroa_idx627 = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  store i32 %.sink.i512, ptr %.sroa.18.0..sroa_idx627, align 4, !tbaa !130
  %.sroa.24.0..sroa_idx639 = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i32 %.sroa.24.1, ptr %.sroa.24.0..sroa_idx639, align 4, !tbaa !130
  %.sroa.33.0..sroa_idx649 = getelementptr inbounds nuw i8, ptr %i.zt, i64 12
  store i32 %.033211691186, ptr %.sroa.33.0..sroa_idx649, align 4, !tbaa !373
  %.sroa.34.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i32 %i.zo, ptr %.sroa.34.0..sroa_idx659, align 4, !tbaa !130
  %.sroa.37.0..sroa_idx669 = getelementptr inbounds nuw i8, ptr %i.zt, i64 20
  store i32 %.0327.lcssa1126, ptr %.sroa.37.0..sroa_idx669, align 4, !tbaa !130
  %.sroa.38.0..sroa_idx679 = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i32 0, ptr %.sroa.38.0..sroa_idx679, align 4, !tbaa !130
  %.sroa.43702.0..sroa_idx705 = getelementptr inbounds nuw i8, ptr %i.zt, i64 32
  store i32 %i.xd, ptr %.sroa.43702.0..sroa_idx705, align 4, !tbaa !130
  %.sroa.44.0..sroa_idx715 = getelementptr inbounds nuw i8, ptr %i.zt, i64 36
  store float %i.zq, ptr %.sroa.44.0..sroa_idx715, align 4, !tbaa !375
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 40
  store ptr %i.zw, ptr %i.zs, align 8, !tbaa !371
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit529

bb.cu:                                            ; preds = %_ZN8GUITable12alignContentEPNS_4CellEiii.exit513
  %i.zx = load ptr, ptr %i.zr, align 8, !tbaa !374 ; 5 uses
  %i.zy = ptrtoint ptr %i.zt to i64
  %i.zz = ptrtoint ptr %i.zx to i64               ; 2 uses
  %i.aaa = sub i64 %i.zy, %i.zz                   ; 3 uses
  %i.aab = icmp eq i64 %i.aaa, 9223372036854775800
  br i1 %i.aab, label %bb.cv, label %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i515

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #31
          to label %.noexc527 unwind label %.loopexit.split-lp820

.noexc527:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i515: ; preds = %bb.cu
  %i.aac = sdiv exact i64 %i.aaa, 40              ; 3 uses
  %.sroa.speculated.i.i.i516 = call i64 @llvm.umax.i64(i64 %i.aac, i64 1)
  %i.aad = add nsw i64 %.sroa.speculated.i.i.i516, %i.aac ; 2 uses
  %i.aae = icmp ult i64 %i.aad, %i.aac
  %i.aaf = call i64 @llvm.umin.i64(i64 %i.aad, i64 230584300921369395)
  %i.aag = select i1 %i.aae, i64 230584300921369395, i64 %i.aaf ; 3 uses
  %.not.i.i.i517 = icmp ne i64 %i.aag, 0
  call void @llvm.assume(i1 %.not.i.i.i517)
  %i.aah = mul nuw nsw i64 %i.aag, 40
  %i.aai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aah) #27
          to label %.noexc528 unwind label %.loopexit819 ; 5 uses

.noexc528:                                        ; preds = %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i515
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aaa ; 9 uses
  store i32 %i.zf, ptr %i.aaj, align 4, !tbaa !130
  %.sroa.18.0..sroa_idx629 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 4
  store i32 %.sink.i512, ptr %.sroa.18.0..sroa_idx629, align 4, !tbaa !130
  %.sroa.24.0..sroa_idx641 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  store i32 %.sroa.24.1, ptr %.sroa.24.0..sroa_idx641, align 4, !tbaa !130
  %.sroa.33.0..sroa_idx651 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 12
  store i32 %.033211691186, ptr %.sroa.33.0..sroa_idx651, align 4, !tbaa !373
  %.sroa.34.0..sroa_idx661 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  store i32 %i.zo, ptr %.sroa.34.0..sroa_idx661, align 4, !tbaa !130
  %.sroa.37.0..sroa_idx671 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 20
  store i32 %.0327.lcssa1126, ptr %.sroa.37.0..sroa_idx671, align 4, !tbaa !130
  %.sroa.38.0..sroa_idx681 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  store i32 0, ptr %.sroa.38.0..sroa_idx681, align 4, !tbaa !130
  %.sroa.43702.0..sroa_idx707 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 32
  store i32 %i.xe, ptr %.sroa.43702.0..sroa_idx707, align 4, !tbaa !130
  %.sroa.44.0..sroa_idx717 = getelementptr inbounds nuw i8, ptr %i.aaj, i64 36
  store float %i.zq, ptr %.sroa.44.0..sroa_idx717, align 4, !tbaa !375
  %.not10.i.i.i.i.i518 = icmp eq ptr %i.zx, %i.zt
  br i1 %.not10.i.i.i.i.i518, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i523, label %.lr.ph.i.i.i.i.i519

.lr.ph.i.i.i.i.i519:                              ; preds = %.noexc528, %.lr.ph.i.i.i.i.i519
  %.012.i.i.i.i.i520 = phi ptr [ %i.aal, %.lr.ph.i.i.i.i.i519 ], [ %i.aai, %.noexc528 ] ; 2 uses
  %.0911.i.i.i.i.i521 = phi ptr [ %i.aak, %.lr.ph.i.i.i.i.i519 ], [ %i.zx, %.noexc528 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i520, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i521, i64 40, i1 false), !tbaa.struct !376, !alias.scope !379
  %i.aak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i521, i64 40 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i520, i64 40 ; 2 uses
  %.not.i.i.i.i.i522 = icmp eq ptr %i.aak, %i.zt
  br i1 %.not.i.i.i.i.i522, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i523, label %.lr.ph.i.i.i.i.i519, !llvm.loop !284

_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i523: ; preds = %.lr.ph.i.i.i.i.i519, %.noexc528
  %.0.lcssa.i.i.i.i.i524 = phi ptr [ %i.aai, %.noexc528 ], [ %i.aal, %.lr.ph.i.i.i.i.i519 ]
  %i.aam = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i524, i64 40
  %.not.i23.i.i525 = icmp eq ptr %i.zx, null
  br i1 %.not.i23.i.i525, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i526, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i523
  %16 = load ptr, ptr %i.zu, align 8, !tbaa !372
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %i.zx, i64 noundef %18) #29
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i526

_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i526: ; preds = %bb.cw, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i523
  store ptr %i.aai, ptr %i.zr, align 8, !tbaa !374
  store ptr %i.aam, ptr %i.zs, align 8, !tbaa !371
  %i.aan = getelementptr inbounds nuw [40 x i8], ptr %i.aai, i64 %i.aag
  store ptr %i.aan, ptr %i.zu, align 8, !tbaa !372
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit529

_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit529: ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i526, %bb.ct
  store i32 %.sink.i512, ptr %i.zd, align 8, !tbaa !370
  %indvars.iv.next987 = add nuw nsw i64 %indvars.iv986, 1 ; 2 uses
  %i.aao = icmp samesign ult i64 %indvars.iv.next987, %i.gi
  br i1 %i.aao, label %.lr.ph925, label %._crit_edge926, !llvm.loop !290

.loopexit819:                                     ; preds = %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i515
  %lpad.loopexit821 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp820:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp822 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cx:                                            ; preds = %.thread792
  br i1 %i.lj, label %.preheader825, label %bb.dh

.preheader825:                                    ; preds = %bb.cx
  br i1 %i.gm, label %.loopexit811, label %.lr.ph919

.lr.ph919:                                        ; preds = %.preheader825
  %i.aap = trunc nuw nsw i64 %indvars.iv998 to i32
  %i.aaq = add nsw i32 %.0320.lcssa1150, %i.aap   ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph919, %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit
  %indvars.iv980 = phi i64 [ 0, %.lr.ph919 ], [ %indvars.iv.next981, %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i32 -1, ptr %8, align 4, !tbaa !97
  %i.aar = mul nuw nsw i64 %indvars.iv980, %i.ij
  %i.aas = load ptr, ptr %3, align 8, !tbaa !155
  %i.aat = getelementptr [32 x i8], ptr %i.aas, i64 %i.aar
  %i.aau = getelementptr [32 x i8], ptr %i.aat, i64 %indvars.iv998
  %i.aav = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %i.aau, ptr noundef nonnull align 4 dereferenceable(4) %8, i1 noundef zeroext true, i8 noundef zeroext -1)
          to label %bb.cz unwind label %bb.df

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.aav, label %bb.da, label %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit

bb.da:                                            ; preds = %bb.cz
  %i.aaw = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv980 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 48 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 56 ; 3 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !359 ; 7 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 64 ; 3 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !380
  %.not.i530 = icmp eq ptr %i.aaz, %i.abb
  br i1 %.not.i530, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.abc = load i32, ptr %8, align 4, !tbaa !130
  store i32 %i.abc, ptr %i.aaz, align 4, !tbaa !130
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 4
  store i32 %i.aaq, ptr %i.abd, align 4, !tbaa !357
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store ptr %i.abe, ptr %i.aay, align 8, !tbaa !359
  br label %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit

bb.dc:                                            ; preds = %bb.da
  %i.abf = load ptr, ptr %i.aax, align 8, !tbaa !381 ; 5 uses
  %i.abg = ptrtoint ptr %i.aaz to i64
  %i.abh = ptrtoint ptr %i.abf to i64             ; 2 uses
  %i.abi = sub i64 %i.abg, %i.abh                 ; 3 uses
  %i.abj = icmp eq i64 %i.abi, 9223372036854775800
  br i1 %i.abj, label %bb.dd, label %_ZNKSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #31
          to label %.noexc539 unwind label %.loopexit.split-lp828

.noexc539:                                        ; preds = %bb.dd
  unreachable

_ZNKSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dc
  %i.abk = ashr exact i64 %i.abi, 3               ; 3 uses
  %.sroa.speculated.i.i.i531 = call i64 @llvm.umax.i64(i64 %i.abk, i64 1)
  %i.abl = add nsw i64 %.sroa.speculated.i.i.i531, %i.abk ; 2 uses
  %i.abm = icmp ult i64 %i.abl, %i.abk
  %i.abn = call i64 @llvm.umin.i64(i64 %i.abl, i64 1152921504606846975)
  %i.abo = select i1 %i.abm, i64 1152921504606846975, i64 %i.abn ; 3 uses
  %.not.i.i.i532 = icmp ne i64 %i.abo, 0
  call void @llvm.assume(i1 %.not.i.i.i532)
  %i.abp = shl nuw nsw i64 %i.abo, 3
  %i.abq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abp) #27
          to label %.noexc540 unwind label %.loopexit827 ; 5 uses

.noexc540:                                        ; preds = %_ZNKSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.abi ; 2 uses
  %i.abs = load i32, ptr %8, align 4, !tbaa !130
  store i32 %i.abs, ptr %i.abr, align 4, !tbaa !130
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 4
  store i32 %i.aaq, ptr %i.abt, align 4, !tbaa !357
  %.not10.i.i.i.i.i533 = icmp eq ptr %i.abf, %i.aaz
  br i1 %.not10.i.i.i.i.i533, label %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i534

.lr.ph.i.i.i.i.i534:                              ; preds = %.noexc540, %.lr.ph.i.i.i.i.i534
  %.012.i.i.i.i.i535 = phi ptr [ %i.abw, %.lr.ph.i.i.i.i.i534 ], [ %i.abq, %.noexc540 ] ; 2 uses
  %.0911.i.i.i.i.i536 = phi ptr [ %i.abv, %.lr.ph.i.i.i.i.i534 ], [ %i.abf, %.noexc540 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.abu = load i64, ptr %.0911.i.i.i.i.i536, align 4, !alias.scope !383, !noalias !382
  store i64 %i.abu, ptr %.012.i.i.i.i.i535, align 4, !alias.scope !382, !noalias !383
  %i.abv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i536, i64 8 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i535, i64 8 ; 2 uses
  %.not.i.i.i.i.i537 = icmp eq ptr %i.abv, %i.aaz
  br i1 %.not.i.i.i.i.i537, label %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i534, !llvm.loop !294

_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i534, %.noexc540
  %.0.lcssa.i.i.i.i.i538 = phi ptr [ %i.abq, %.noexc540 ], [ %i.abw, %.lr.ph.i.i.i.i.i534 ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i538, i64 8
  %.not.i34.i.i = icmp eq ptr %i.abf, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE17_M_realloc_insertIJRS2_iEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  %19 = load ptr, ptr %i.aba, align 8, !tbaa !380
  %20 = ptrtoint ptr %19 to i64
  %21 = sub i64 %20, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef %21) #29
  br label %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE17_M_realloc_insertIJRS2_iEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE17_M_realloc_insertIJRS2_iEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.de, %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.abq, ptr %i.aax, align 8, !tbaa !381
  store ptr %i.abx, ptr %i.aay, align 8, !tbaa !359
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %i.abo
  store ptr %i.aby, ptr %i.aba, align 8, !tbaa !380
  br label %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit

bb.df:                                            ; preds = %bb.cy
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

.loopexit827:                                     ; preds = %_ZNKSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit829 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

.loopexit.split-lp828:                            ; preds = %bb.dd
  %lpad.loopexit.split-lp830 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit: ; preds = %bb.db, %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE17_M_realloc_insertIJRS2_iEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1 ; 2 uses
  %i.aca = icmp samesign ult i64 %indvars.iv.next981, %i.ik
  br i1 %i.aca, label %bb.cy, label %.loopexit811, !llvm.loop !295

bb.dg:                                            ; preds = %.loopexit827, %.loopexit.split-lp828, %bb.df
  %.pn372 = phi { ptr, i32 } [ %i.abz, %bb.df ], [ %lpad.loopexit829, %.loopexit827 ], [ %lpad.loopexit.split-lp830, %.loopexit.split-lp828 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body

bb.dh:                                            ; preds = %bb.cx
  br i1 %brmerge11701185, label %bb.di, label %.loopexit811

bb.di:                                            ; preds = %bb.dh
  br i1 %i.lg, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di
  %i.acb = load ptr, ptr %i.gs, align 8, !tbaa !105 ; 3 uses
  %.not369 = icmp eq ptr %i.acb, null
  br i1 %.not369, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !21
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  %i.ace = load ptr, ptr %i.acd, align 8
  %i.acf = invoke i64 %i.ace(ptr noundef nonnull align 8 dereferenceable(8) %i.acb, ptr noundef nonnull @.str.30)
          to label %bb.dl unwind label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %.sroa.037.0.extract.trunc = trunc i64 %i.acf to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dj, %bb.dl
  %i.acg = phi i32 [ %.sroa.037.0.extract.trunc, %bb.dl ], [ 0, %bb.dj ]
  store i8 1, ptr %i.if, align 1, !tbaa !169
  br label %bb.do

bb.dn:                                            ; preds = %bb.dk
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.do:                                            ; preds = %bb.dm, %bb.di
  %.0308 = phi i32 [ %i.acg, %bb.dm ], [ 0, %bb.di ]
  br i1 %i.gm, label %.loopexit811, label %.lr.ph917.preheader

.lr.ph917.preheader:                              ; preds = %bb.do
  %i.aci = trunc nuw nsw i64 %i.ls to i32
  %i.acj = trunc nuw nsw i64 %i.ls to i32
  br label %.lr.ph917

.lr.ph917:                                        ; preds = %.lr.ph917.preheader, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556
  %indvars.iv = phi i64 [ 0, %.lr.ph917.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556 ] ; 3 uses
  %.sroa.38.2914 = phi i32 [ 0, %.lr.ph917.preheader ], [ %.sroa.38.3, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556 ]
  %i.ack = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv ; 8 uses
  %i.acl = mul nuw nsw i64 %indvars.iv, %i.ij
  %i.acm = load ptr, ptr %3, align 8, !tbaa !155
  %i.acn = getelementptr [32 x i8], ptr %i.acm, i64 %i.acl
  %i.aco = getelementptr [32 x i8], ptr %i.acn, i64 %indvars.iv998
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !141
  %i.acq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.acp, ptr noundef null, i32 noundef 10) #28, !inline_history !8
  %i.acr = trunc i64 %i.acq to i32
  %i.acs = call i32 @llvm.smax.i32(i32 %i.acr, i32 0) ; 2 uses
  br i1 %i.lg, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.lr.ph917
  %i.act = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  store i32 %i.acs, ptr %i.act, align 4, !tbaa !384
  br label %bb.dq

.loopexit833:                                     ; preds = %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i542
  %lpad.loopexit835 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp834:                            ; preds = %bb.dv
  %lpad.loopexit.split-lp836 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dq:                                            ; preds = %bb.dp, %.lr.ph917
  %i.acu = load i32, ptr %i.ack, align 8, !tbaa !370
  %i.acv = add nsw i32 %i.acu, %.1330.lcssa1116   ; 3 uses
  %i.acw = mul nsw i32 %i.acs, %.1323.lcssa1146
  %i.acx = add nsw i32 %i.acv, %i.acw             ; 3 uses
  %i.acy = add nsw i32 %i.acx, %.0308             ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ack, i64 48
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !355
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ack, i64 56
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !355 ; 2 uses
  %i.add = icmp ne ptr %i.ada, %i.adc             ; 2 uses
  %i.ade = zext i1 %i.add to i8                   ; 2 uses
  br i1 %i.add, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.adf = getelementptr inbounds i8, ptr %i.adc, i64 -8
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !130
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.sroa.38.3 = phi i32 [ %.sroa.38.2914, %bb.dq ], [ %i.adg, %bb.dr ] ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ack, i64 24 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ack, i64 32 ; 3 uses
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !371 ; 14 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ack, i64 40 ; 3 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !372
  %.not.i541 = icmp eq ptr %i.adj, %i.adl
  br i1 %.not.i541, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.acv, ptr %i.adj, align 4, !tbaa !130
  %.sroa.18.0..sroa_idx631 = getelementptr inbounds nuw i8, ptr %i.adj, i64 4
  store i32 %i.acy, ptr %.sroa.18.0..sroa_idx631, align 4, !tbaa !130
  %.sroa.24.0..sroa_idx643 = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  store i32 %i.acx, ptr %.sroa.24.0..sroa_idx643, align 4, !tbaa !130
  %.sroa.33.0..sroa_idx653 = getelementptr inbounds nuw i8, ptr %i.adj, i64 12
  store i32 %.033211691186, ptr %.sroa.33.0..sroa_idx653, align 4, !tbaa !373
  %.sroa.34.0..sroa_idx663 = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  store i32 0, ptr %.sroa.34.0..sroa_idx663, align 4, !tbaa !130
  %.sroa.37.0..sroa_idx673 = getelementptr inbounds nuw i8, ptr %i.adj, i64 20
  store i32 %.0327.lcssa1126, ptr %.sroa.37.0..sroa_idx673, align 4, !tbaa !130
  %.sroa.38.0..sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.adj, i64 24
  store i32 %.sroa.38.3, ptr %.sroa.38.0..sroa_idx683, align 4, !tbaa !130
  %.sroa.41.0..sroa_idx693 = getelementptr inbounds nuw i8, ptr %i.adj, i64 28
  store i8 %i.ade, ptr %.sroa.41.0..sroa_idx693, align 4, !tbaa !134
  %.sroa.43702.0..sroa_idx709 = getelementptr inbounds nuw i8, ptr %i.adj, i64 32
  store i32 %i.aci, ptr %.sroa.43702.0..sroa_idx709, align 4, !tbaa !130
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adj, i64 40
  store ptr %i.adm, ptr %i.adi, align 8, !tbaa !371
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556

bb.du:                                            ; preds = %bb.ds
  %i.adn = load ptr, ptr %i.adh, align 8, !tbaa !374 ; 5 uses
  %i.ado = ptrtoint ptr %i.adj to i64
  %i.adp = ptrtoint ptr %i.adn to i64             ; 2 uses
  %i.adq = sub i64 %i.ado, %i.adp                 ; 3 uses
  %i.adr = icmp eq i64 %i.adq, 9223372036854775800
  br i1 %i.adr, label %bb.dv, label %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i542

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #31
          to label %.noexc554 unwind label %.loopexit.split-lp834

.noexc554:                                        ; preds = %bb.dv
  unreachable

_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i542: ; preds = %bb.du
  %i.ads = sdiv exact i64 %i.adq, 40              ; 3 uses
  %.sroa.speculated.i.i.i543 = call i64 @llvm.umax.i64(i64 %i.ads, i64 1)
  %i.adt = add nsw i64 %.sroa.speculated.i.i.i543, %i.ads ; 2 uses
  %i.adu = icmp ult i64 %i.adt, %i.ads
  %i.adv = call i64 @llvm.umin.i64(i64 %i.adt, i64 230584300921369395)
  %i.adw = select i1 %i.adu, i64 230584300921369395, i64 %i.adv ; 3 uses
  %.not.i.i.i544 = icmp ne i64 %i.adw, 0
  call void @llvm.assume(i1 %.not.i.i.i544)
  %i.adx = mul nuw nsw i64 %i.adw, 40
  %i.ady = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adx) #27
          to label %.noexc555 unwind label %.loopexit833 ; 5 uses

.noexc555:                                        ; preds = %_ZNKSt6vectorIN8GUITable4CellESaIS1_EE12_M_check_lenEmPKc.exit.i.i542
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adq ; 9 uses
  store i32 %i.acv, ptr %i.adz, align 4, !tbaa !130
  %.sroa.18.0..sroa_idx633 = getelementptr inbounds nuw i8, ptr %i.adz, i64 4
  store i32 %i.acy, ptr %.sroa.18.0..sroa_idx633, align 4, !tbaa !130
  %.sroa.24.0..sroa_idx645 = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store i32 %i.acx, ptr %.sroa.24.0..sroa_idx645, align 4, !tbaa !130
  %.sroa.33.0..sroa_idx655 = getelementptr inbounds nuw i8, ptr %i.adz, i64 12
  store i32 %.033211691186, ptr %.sroa.33.0..sroa_idx655, align 4, !tbaa !373
  %.sroa.34.0..sroa_idx665 = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  store i32 0, ptr %.sroa.34.0..sroa_idx665, align 4, !tbaa !130
  %.sroa.37.0..sroa_idx675 = getelementptr inbounds nuw i8, ptr %i.adz, i64 20
  store i32 %.0327.lcssa1126, ptr %.sroa.37.0..sroa_idx675, align 4, !tbaa !130
  %.sroa.38.0..sroa_idx685 = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  store i32 %.sroa.38.3, ptr %.sroa.38.0..sroa_idx685, align 4, !tbaa !130
  %.sroa.41.0..sroa_idx695 = getelementptr inbounds nuw i8, ptr %i.adz, i64 28
  store i8 %i.ade, ptr %.sroa.41.0..sroa_idx695, align 4, !tbaa !134
  %.sroa.43702.0..sroa_idx711 = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  store i32 %i.acj, ptr %.sroa.43702.0..sroa_idx711, align 4, !tbaa !130
  %.not10.i.i.i.i.i545 = icmp eq ptr %i.adn, %i.adj
  br i1 %.not10.i.i.i.i.i545, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i550, label %.lr.ph.i.i.i.i.i546

.lr.ph.i.i.i.i.i546:                              ; preds = %.noexc555, %.lr.ph.i.i.i.i.i546
  %.012.i.i.i.i.i547 = phi ptr [ %i.aeb, %.lr.ph.i.i.i.i.i546 ], [ %i.ady, %.noexc555 ] ; 2 uses
  %.0911.i.i.i.i.i548 = phi ptr [ %i.aea, %.lr.ph.i.i.i.i.i546 ], [ %i.adn, %.noexc555 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i547, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i548, i64 40, i1 false), !tbaa.struct !376, !alias.scope !385
  %i.aea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i548, i64 40 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i547, i64 40 ; 2 uses
  %.not.i.i.i.i.i549 = icmp eq ptr %i.aea, %i.adj
  br i1 %.not.i.i.i.i.i549, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i550, label %.lr.ph.i.i.i.i.i546, !llvm.loop !284

_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i550: ; preds = %.lr.ph.i.i.i.i.i546, %.noexc555
  %.0.lcssa.i.i.i.i.i551 = phi ptr [ %i.ady, %.noexc555 ], [ %i.aeb, %.lr.ph.i.i.i.i.i546 ]
  %i.aec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i551, i64 40
  %.not.i23.i.i552 = icmp eq ptr %i.adn, null
  br i1 %.not.i23.i.i552, label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i553, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i550
  %22 = load ptr, ptr %i.adk, align 8, !tbaa !372
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %i.adp
  call void @_ZdlPvm(ptr noundef nonnull %i.adn, i64 noundef %24) #29
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i553

_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i553: ; preds = %bb.dw, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i550
  store ptr %i.ady, ptr %i.adh, align 8, !tbaa !374
  store ptr %i.aec, ptr %i.adi, align 8, !tbaa !371
  %i.aed = getelementptr inbounds nuw [40 x i8], ptr %i.ady, i64 %i.adw
  store ptr %i.aed, ptr %i.adk, align 8, !tbaa !372
  br label %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556

_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556: ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i553, %bb.dt
  store i32 %i.acy, ptr %i.ack, align 8, !tbaa !370
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aee = icmp samesign ult i64 %indvars.iv.next, %i.ik
  br i1 %i.aee, label %.lr.ph917, label %.loopexit811, !llvm.loop !299

.loopexit811:                                     ; preds = %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556, %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit, %._crit_edge932, %._crit_edge932.thread, %.preheader810.jt0, %.preheader810.jt1, %.preheader810.jt2, %.preheader810.jt3, %bb.do, %.preheader825, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit, %bb.dh
  %indvars.iv.next999.pre-phi = phi i64 [ %i.ls, %_ZNSt6vectorISt4pairIN5video6SColorEiESaIS3_EE12emplace_backIJRS2_iEEERS3_DpOT_.exit ], [ %i.lr, %._crit_edge932.thread ], [ %i.uf, %._crit_edge932 ], [ %i.ls, %bb.do ], [ %i.ls, %.preheader825 ], [ %i.uf, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit ], [ %i.ls, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE5clearEv.exit ], [ %i.ls, %bb.dh ], [ %i.ul, %.preheader810.jt0 ], [ %i.uk, %.preheader810.jt1 ], [ %i.uj, %.preheader810.jt2 ], [ %i.ui, %.preheader810.jt3 ], [ %i.ls, %_ZNSt6vectorIN8GUITable4CellESaIS1_EE9push_backERKS1_.exit556 ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next999.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge943, label %bb.ah, !llvm.loop !300

bb.dx:                                            ; preds = %._crit_edge943
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !156 ; 2 uses
  %i.aei = load ptr, ptr %i.aef, align 8, !tbaa !126 ; 2 uses
  %i.aej = ptrtoint ptr %i.aeh to i64
  %i.aek = ptrtoint ptr %i.aei to i64
  %i.ael = sub i64 %i.aej, %i.aek
  %i.aem = sdiv exact i64 %i.ael, 24              ; 3 uses
  %i.aen = icmp ult i64 %i.aem, %i.gi
  br i1 %i.aen, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aeo = sub nuw nsw i64 %i.gi, %i.aem
  invoke void @_ZNSt6vectorIN8GUITable3RowESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aef, i64 noundef %i.aeo)
          to label %.lr.ph945 unwind label %bb.eb

bb.dz:                                            ; preds = %bb.dx
  %i.aep = icmp ugt i64 %i.aem, %i.gi
  br i1 %i.aep, label %bb.ea, label %.lr.ph945

bb.ea:                                            ; preds = %bb.dz
  %i.aeq = getelementptr inbounds nuw [24 x i8], ptr %i.aei, i64 %i.gi ; 2 uses
  %.not.i.i = icmp eq ptr %i.aeh, %i.aeq
  br i1 %.not.i.i, label %.lr.ph945, label %_ZSt8_DestroyIPN8GUITable3RowES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8GUITable3RowES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.ea
  store ptr %i.aeq, ptr %i.aeg, align 8, !tbaa !156
  br label %.lr.ph945

.lr.ph945:                                        ; preds = %bb.dy, %bb.dz, %bb.ea, %_ZSt8_DestroyIPN8GUITable3RowES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  br label %bb.ec

bb.eb:                                            ; preds = %.noexc570, %.noexc569, %.noexc568, %_ZN8GUITable18allocationCompleteEv.exit, %bb.dy
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ec:                                            ; preds = %.lr.ph945, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv1000 = phi i64 [ 0, %.lr.ph945 ], [ %indvars.iv.next1001, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.aev = load ptr, ptr %i.aef, align 8, !tbaa !126
  %i.aew = getelementptr inbounds nuw [24 x i8], ptr %i.aev, i64 %indvars.iv1000 ; 4 uses
  %i.aex = getelementptr inbounds nuw [72 x i8], ptr %.ptr362, i64 %indvars.iv1000 ; 3 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 24 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 32
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !371
  %i.afb = load ptr, ptr %i.aey, align 8, !tbaa !374
  %i.afc = ptrtoint ptr %i.afa to i64
  %i.afd = ptrtoint ptr %i.afb to i64
  %i.afe = sub i64 %i.afc, %i.afd
  %i.aff = sdiv exact i64 %i.afe, 40              ; 2 uses
  %i.afg = trunc i64 %i.aff to i32
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 2 uses
  store i32 %i.afg, ptr %i.afh, align 8, !tbaa !160
  %sext = shl i64 %i.aff, 32                      ; 2 uses
  %i.afi = ashr exact i64 %sext, 32               ; 2 uses
  %i.afj = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.afi, i64 40) ; 2 uses
  %i.afk = extractvalue { i64, i1 } %i.afj, 1
  %i.afl = extractvalue { i64, i1 } %i.afj, 0
  %i.afm = select i1 %i.afk, i64 -1, i64 %i.afl
  %i.afn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afm) #27
          to label %bb.ed unwind label %.loopexit809 ; 4 uses

bb.ed:                                            ; preds = %bb.ec
  %i.afo = icmp eq i64 %sext, 0
  br i1 %i.afo, label %.loopexit807, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.afp = getelementptr inbounds [40 x i8], ptr %i.afn, i64 %i.afi
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ef
  %i.afq = phi ptr [ %i.afn, %bb.ee ], [ %i.afs, %bb.ef ] ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 24
  store i32 0, ptr %i.afr, align 4, !tbaa !97
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 40 ; 2 uses
  %i.aft = icmp eq ptr %i.afs, %i.afp
  br i1 %i.aft, label %.loopexit807, label %bb.ef

.loopexit807:                                     ; preds = %bb.ef, %bb.ed
  store ptr %i.afn, ptr %i.aew, align 8, !tbaa !148
  %25 = load ptr, ptr %i.aey, align 8, !tbaa !374
  %i.afu = load i32, ptr %i.afh, align 8, !tbaa !160
  %i.afv = sext i32 %i.afu to i64
  %i.afw = mul nsw i64 %i.afv, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afn, ptr nonnull align 4 %25, i64 %i.afw, i1 false)
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aex, i64 4
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !384
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aew, i64 12
  store i32 %i.afy, ptr %i.afz, align 4, !tbaa !161
  %i.aga = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.agb = trunc nuw nsw i64 %indvars.iv1000 to i32 ; 3 uses
  store i32 %i.agb, ptr %i.aga, align 8, !tbaa !162
  %i.agc = load ptr, ptr %i.aes, align 8, !tbaa !157 ; 4 uses
  %i.agd = load ptr, ptr %i.aet, align 8, !tbaa !125
  %.not.i558 = icmp eq ptr %i.agc, %i.agd
  br i1 %.not.i558, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.loopexit807
  store i32 %i.agb, ptr %i.agc, align 4, !tbaa !130
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  store ptr %i.age, ptr %i.aes, align 8, !tbaa !157
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.eh:                                            ; preds = %.loopexit807
  %i.agf = load ptr, ptr %i.aer, align 8, !tbaa !124 ; 4 uses
  %i.agg = ptrtoint ptr %i.agc to i64
  %i.agh = ptrtoint ptr %i.agf to i64             ; 2 uses
  %i.agi = sub i64 %i.agg, %i.agh                 ; 5 uses
  %i.agj = icmp eq i64 %i.agi, 9223372036854775804
  br i1 %i.agj, label %bb.ei, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #31
          to label %.noexc561 unwind label %.loopexit.split-lp

.noexc561:                                        ; preds = %bb.ei
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.eh
  %i.agk = ashr exact i64 %i.agi, 2               ; 3 uses
  %.sroa.speculated.i.i.i559 = call i64 @llvm.umax.i64(i64 %i.agk, i64 1)
  %i.agl = add nsw i64 %.sroa.speculated.i.i.i559, %i.agk ; 2 uses
  %i.agm = icmp ult i64 %i.agl, %i.agk
  %i.agn = call i64 @llvm.umin.i64(i64 %i.agl, i64 2305843009213693951)
  %i.ago = select i1 %i.agm, i64 2305843009213693951, i64 %i.agn ; 3 uses
  %.not.i.i.i560 = icmp ne i64 %i.ago, 0
  call void @llvm.assume(i1 %.not.i.i.i560)
  %i.agp = shl nuw nsw i64 %i.ago, 2
  %i.agq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agp) #27
          to label %.noexc562 unwind label %.loopexit809 ; 4 uses

.noexc562:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.agr = getelementptr inbounds i8, ptr %i.agq, i64 %i.agi ; 2 uses
  store i32 %i.agb, ptr %i.agr, align 4, !tbaa !130
  %i.ags = icmp sgt i64 %i.agi, 0
  br i1 %i.ags, label %bb.ej, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ej:                                            ; preds = %.noexc562
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agq, ptr align 4 %i.agf, i64 %i.agi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ej, %.noexc562
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  %.not.i17.i.i = icmp eq ptr %i.agf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.agu = load ptr, ptr %i.aet, align 8, !tbaa !125
  %i.agv = ptrtoint ptr %i.agu to i64
  %i.agw = sub i64 %i.agv, %i.agh
  call void @_ZdlPvm(ptr noundef nonnull %i.agf, i64 noundef %i.agw) #29
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ek, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.agq, ptr %i.aer, align 8, !tbaa !124
  store ptr %i.agt, ptr %i.aes, align 8, !tbaa !157
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.ago
  store ptr %i.agx, ptr %i.aet, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.eg
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 1 ; 2 uses
  %i.agy = icmp samesign ult i64 %indvars.iv.next1001, %i.gi
  br i1 %i.agy, label %bb.ec, label %.loopexit808, !llvm.loop !301

.loopexit809:                                     ; preds = %bb.ec, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ei
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit808:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !169, !range !116, !noundef !117
  %i.ahb = trunc nuw i8 %i.aha to i1
  br i1 %i.ahb, label %.lr.ph950, label %bb.fe

.loopexit808.thread:                              ; preds = %._crit_edge943
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !169, !range !116, !noundef !117
  %i.ahe = trunc nuw i8 %i.ahd to i1
  br i1 %i.ahe, label %._crit_edge951.thread, label %bb.fe

.lr.ph950:                                        ; preds = %.loopexit808
  %i.ahf = add nsw i32 %.sroa.speculated739, -1
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ahh = zext i32 %i.ahf to i64
  %.pre1031.pre = load ptr, ptr %i.ahg, align 8, !tbaa !126 ; 2 uses
  br label %bb.el

._crit_edge951.thread:                            ; preds = %.loopexit808.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ahi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.ahi, align 8, !tbaa !99
  %i.ahj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.ahj, align 8, !tbaa !100
  %i.ahk = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.ahi, ptr %i.ahk, align 8, !tbaa !101
  %i.ahl = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.ahi, ptr %i.ahl, align 8, !tbaa !102
  %i.ahm = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.ahm, align 8, !tbaa !103
  br label %._crit_edge956

._crit_edge951:                                   ; preds = %.loopexit805
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ahn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i32 0, ptr %i.ahn, align 8, !tbaa !99
  %i.aho = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.aho, align 8, !tbaa !100
  %i.ahp = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.ahn, ptr %i.ahp, align 8, !tbaa !101
  %i.ahq = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.ahn, ptr %i.ahq, align 8, !tbaa !102
  %i.ahr = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.ahr, align 8, !tbaa !103
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.eu

bb.el:                                            ; preds = %.lr.ph950, %.loopexit805
  %indvars.iv1008 = phi i64 [ 0, %.lr.ph950 ], [ %indvars.iv.next1009, %.loopexit805 ] ; 4 uses
  %i.aht = icmp eq i64 %indvars.iv1008, %i.ahh
  br i1 %i.aht, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ahu = getelementptr inbounds nuw [24 x i8], ptr %.pre1031.pre, i64 %indvars.iv1008 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 12
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !161
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 36
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !161
  %.not366 = icmp slt i32 %i.ahw, %i.ahy
  br i1 %.not366, label %.loopexit805, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.ahz = getelementptr inbounds nuw [24 x i8], ptr %.pre1031.pre, i64 %indvars.iv1008 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aib = load i32, ptr %i.aia, align 8, !tbaa !160 ; 4 uses
  %i.aic = icmp sgt i32 %i.aib, 0
  br i1 %i.aic, label %.lr.ph948, label %.loopexit805

.lr.ph948:                                        ; preds = %bb.en
  %i.aid = load ptr, ptr %i.ahz, align 8, !tbaa !148 ; 3 uses
  %wide.trip.count1006 = zext nneg i32 %i.aib to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count1006, 1
  %i.aie = icmp eq i32 %i.aib, 1
  br i1 %i.aie, label %.epil.preheader, label %.lr.ph948.new

.lr.ph948.new:                                    ; preds = %.lr.ph948
  %unroll_iter = and i64 %wide.trip.count1006, 2147483646
  br label %bb.eo

bb.eo:                                            ; preds = %bb.es, %.lr.ph948.new
  %indvars.iv1003 = phi i64 [ 0, %.lr.ph948.new ], [ %indvars.iv.next1004.1, %bb.es ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph948.new ], [ %niter.next.1, %bb.es ]
  %i.aif = getelementptr inbounds nuw [40 x i8], ptr %i.aid, i64 %indvars.iv1003
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 12 ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !205
  %i.aii = icmp eq i32 %i.aih, 4
  br i1 %i.aii, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 3, ptr %i.aig, align 4, !tbaa !205
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.aij = getelementptr inbounds nuw [40 x i8], ptr %i.aid, i64 %indvars.iv1003
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 52 ; 2 uses
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !205
  %i.aim = icmp eq i32 %i.ail, 4
  br i1 %i.aim, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 3, ptr %i.aik, align 4, !tbaa !205
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %indvars.iv.next1004.1 = add nuw nsw i64 %indvars.iv1003, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit805.loopexit.unr-lcssa, label %bb.eo, !llvm.loop !302

end_hunk_0
