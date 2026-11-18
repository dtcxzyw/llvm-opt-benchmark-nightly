Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/grompp?download=true
inline.NumInlined: 3296
inline.NumDeleted: 1547
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_Z10gmx_gromppiPPc:bb.a
bb.vj:                                            ; preds = %bb.vi
  %i.dlq = load ptr, ptr %35, align 8, !tbaa !27
  %i.dlr = load i64, ptr %i.det, align 8, !tbaa !29
  invoke void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %93, i64 %i.dlr, ptr %i.dlq)
          to label %bb.vk unwind label %bb.vm

bb.vk:                                            ; preds = %bb.vj
  %i.dls = load ptr, ptr %35, align 8, !tbaa !27  ; 2 uses
  %i.dlt = icmp eq ptr %i.dls, %i.deu
  br i1 %i.dlt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i820, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i819

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i819: ; preds = %bb.vk
  %i.dlu = load i64, ptr %i.deu, align 8, !tbaa !28
  %i.dlv = add i64 %i.dlu, 1
  call void @_ZdlPvm(ptr noundef %i.dls, i64 noundef %i.dlv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i820

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i820: ; preds = %bb.vk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i819
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %._crit_edge100.thread.i.i

bb.vl:                                            ; preds = %bb.vi
  %i.dlw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i

bb.vm:                                            ; preds = %bb.vj
  %i.dlx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dly = load ptr, ptr %35, align 8, !tbaa !27  ; 2 uses
  %i.dlz = icmp eq ptr %i.dly, %i.deu
  br i1 %i.dlz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i: ; preds = %bb.vm
  %i.dma = load i64, ptr %i.deu, align 8, !tbaa !28
  %i.dmb = add i64 %i.dma, 1
  call void @_ZdlPvm(ptr noundef %i.dly, i64 noundef %i.dmb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i: ; preds = %bb.vm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i, %bb.vl
  %.pn.i.i818 = phi { ptr, i32 } [ %i.dlw, %bb.vl ], [ %i.dlx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i ], [ %i.dlx, %bb.vm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %.not.i.i.i73.i.i = icmp eq ptr %.sroa.081.0.i.i, null
  br i1 %.not.i.i.i73.i.i, label %.body633, label %bb.vo

._crit_edge100.thread.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i820, %._crit_edge100.i.i, %.preheader.i.i810
  %.not.i.i.i.i.i811 = icmp eq ptr %.sroa.081.0.i.i, null
  br i1 %.not.i.i.i.i.i811, label %_ZL20checkForUnboundAtomsPK13gmx_moltype_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit.i, label %bb.vn

bb.vn:                                            ; preds = %._crit_edge100.thread.i.i
  %i.dmc = ptrtoint ptr %.sroa.081.0.i.i to i64
  %i.dmd = sub i64 %.sroa.11.0.i.i, %i.dmc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.081.0.i.i, i64 noundef %i.dmd) #31
  br label %_ZL20checkForUnboundAtomsPK13gmx_moltype_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit.i

bb.vo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i, %.thread.i.i
  %.pn59.pn.pn88.i.i = phi { ptr, i32 } [ %i.dgn, %.thread.i.i ], [ %.pn.i.i818, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i ]
  %i.dme = ptrtoint ptr %.sroa.081.0.i.i to i64
  %i.dmf = sub i64 %.sroa.11.0.i.i, %i.dme
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.081.0.i.i, i64 noundef %i.dmf) #31
  br label %.body633

_ZL20checkForUnboundAtomsPK13gmx_moltype_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit.i: ; preds = %bb.vn, %._crit_edge100.thread.i.i, %bb.ut
  %i.dmg = getelementptr inbounds nuw i8, ptr %.sroa.01.020.i, i64 2408 ; 2 uses
  %.not.i812 = icmp eq ptr %i.dmg, %.val547
  br i1 %.not.i812, label %_ZL20checkForUnboundAtomsPK10gmx_mtop_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit, label %bb.ut

_ZL20checkForUnboundAtomsPK10gmx_mtop_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit: ; preds = %_ZL20checkForUnboundAtomsPK13gmx_moltype_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit.i, %bb.us
  %i.dmh = getelementptr inbounds nuw i8, ptr %88, i64 128
  %i.dmi = load float, ptr %i.dmh, align 8, !tbaa !603 ; 3 uses
  %i.dmj = fcmp ogt float %i.dmi, 1.000000e+00
  br i1 %i.dmj, label %bb.vp, label %bb.vq

bb.vp:                                            ; preds = %_ZL20checkForUnboundAtomsPK10gmx_mtop_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit
  %i.dmk = getelementptr inbounds nuw i8, ptr %88, i64 420
  %i.dml = load i32, ptr %i.dmk, align 4, !tbaa !604
  %i.dmm = icmp ne i32 %i.dml, 0
  invoke void @_ZN3gmx21repartitionAtomMassesEP10gmx_mtop_tbfP14WarningHandler(ptr noundef nonnull %102, i1 noundef zeroext %i.dmm, float noundef %i.dmi, ptr noundef nonnull %93)
          to label %bb.vs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vq:                                            ; preds = %_ZL20checkForUnboundAtomsPK10gmx_mtop_tbP14WarningHandlerRKN3gmx8MDLoggerE.exit
  %i.dmn = fcmp olt float %i.dmi, 1.000000e+00
  br i1 %i.dmn, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %93, i64 45, ptr nonnull @.str.161)
          to label %bb.vs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vs:                                            ; preds = %bb.vp, %bb.vq, %bb.vr
  %i.dmo = load i32, ptr %i.lw, align 4, !tbaa !561 ; 2 uses
  switch i32 %i.dmo, label %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exit [
    i32 3, label %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exitthread-pre-split
    i32 0, label %bb.vt
    i32 9, label %bb.vt
    i32 10, label %bb.vt
    i32 11, label %bb.vt
    i32 12, label %bb.vt
  ]

bb.vt:                                            ; preds = %bb.vs, %bb.vs, %bb.vs, %bb.vs, %bb.vs
  %i.dmp = load double, ptr %i.akb, align 8, !tbaa !605 ; 3 uses
  %i.dmq = getelementptr inbounds nuw i8, ptr %102, i64 40
  %i.dmr = load ptr, ptr %i.dmq, align 8, !tbaa !606
  %i.dms = fmul double %i.dmp, 1.000000e+01       ; 2 uses
  %i.dmt = fmul double %i.dms, %i.dms
  %i.dmu = fptrunc double %i.dmt to float
  %i.dmv = load ptr, ptr %i.aiu, align 8, !tbaa !600 ; 2 uses
  %i.dmw = load ptr, ptr %i.aiy, align 8, !tbaa !600 ; 2 uses
  %.not173200.i = icmp eq ptr %i.dmv, %i.dmw
  br i1 %.not173200.i, label %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exitthread-pre-split, label %.lr.ph207.i

._crit_edge208.i:                                 ; preds = %bb.vu
  %.not.i834 = icmp eq ptr %.4141.i, null
  br i1 %.not.i834, label %_ZL20check_bonds_timestepPK10gmx_mtop_tdP14WarningHandler.exitthread-pre-split, label %bb.wq

.lr.ph207.i:                                      ; preds = %bb.vt, %bb.vu
  %.0129205.i = phi i32 [ %.4.i, %bb.vu ], [ -1, %bb.vt ]
  %.0130204.i = phi i32 [ %.4134.i, %bb.vu ], [ -1, %bb.vt ]
  %.0137203.i = phi ptr [ %.4141.i, %bb.vu ], [ null, %bb.vt ]
  %.0146202.i = phi float [ %.4150.i, %bb.vu ], [ -1.000000e+00, %bb.vt ]
  %.sroa.0168.0201.i = phi ptr [ %i.dne, %bb.vu ], [ %i.dmv, %bb.vt ] ; 8 uses
  %i.dmx = getelementptr inbounds nuw i8, ptr %.sroa.0168.0201.i, i64 16
  %i.dmy = load ptr, ptr %i.dmx, align 8, !tbaa !607 ; 2 uses
  %i.dmz = getelementptr inbounds nuw i8, ptr %.sroa.0168.0201.i, i64 80
  %i.dna = getelementptr inbounds nuw i8, ptr %.sroa.0168.0201.i, i64 1568
  %i.dnb = getelementptr inbounds nuw i8, ptr %.sroa.0168.0201.i, i64 1616
  %i.dnc = getelementptr inbounds nuw i8, ptr %.sroa.0168.0201.i, i64 1576
  %i.dnd = getelementptr inbounds nuw i8, ptr %.sroa.0168.0201.i, i64 1624
  br label %bb.vv

bb.vu:                                            ; preds = %.loopexit.i833
  %i.dne = getelementptr inbounds nuw i8, ptr %.sroa.0168.0201.i, i64 2408 ; 2 uses
  %.not173.i = icmp eq ptr %i.dne, %i.dmw
  br i1 %.not173.i, label %._crit_edge208.i, label %.lr.ph207.i

bb.vv:                                            ; preds = %.loopexit.i833, %.lr.ph207.i
  %indvars.iv218.i = phi i64 [ 0, %.lr.ph207.i ], [ %indvars.iv.next219.i, %.loopexit.i833 ] ; 4 uses
  %.1199.i = phi i32 [ %.0129205.i, %.lr.ph207.i ], [ %.4.i, %.loopexit.i833 ] ; 3 uses
  %.1131198.i = phi i32 [ %.0130204.i, %.lr.ph207.i ], [ %.4134.i, %.loopexit.i833 ] ; 3 uses
  %.1138197.i = phi ptr [ %.0137203.i, %.lr.ph207.i ], [ %.4141.i, %.loopexit.i833 ] ; 3 uses
  %.1147196.i = phi float [ %.0146202.i, %.lr.ph207.i ], [ %.4150.i, %.loopexit.i833 ] ; 3 uses
  %i.dnf = icmp eq i64 %indvars.iv218.i, 1
  %i.dng = trunc nuw nsw i64 %indvars.iv218.i to i32
  switch i32 %i.dng, label %.loopexit.i833 [
    i32 5, label %bb.vw
    i32 1, label %bb.vw
    i32 0, label %bb.vw
  ]

bb.vw:                                            ; preds = %bb.vv, %bb.vv, %bb.vv
  %i.dnh = getelementptr inbounds nuw [24 x i8], ptr %i.dmz, i64 %indvars.iv218.i ; 3 uses
  %i.dni = getelementptr inbounds nuw i8, ptr %i.dnh, i64 8 ; 2 uses
  %i.dnj = load ptr, ptr %i.dni, align 8, !tbaa !35
  %i.dnk = load ptr, ptr %i.dnh, align 8, !tbaa !33 ; 2 uses
  %i.dnl = ptrtoint ptr %i.dnj to i64
  %i.dnm = ptrtoint ptr %i.dnk to i64
  %i.dnn = sub i64 %i.dnl, %i.dnm
  %i.dno = lshr exact i64 %i.dnn, 2
  %i.dnp = trunc i64 %i.dno to i32
  %i.dnq = icmp sgt i32 %i.dnp, 0
  br i1 %i.dnq, label %.lr.ph190.i, label %.loopexit.i833

.lr.ph190.i:                                      ; preds = %bb.vw, %bb.wp
  %indvars.iv215.i = phi i64 [ %indvars.iv.next216.i, %bb.wp ], [ 0, %bb.vw ] ; 2 uses
  %i.dnr = phi ptr [ %i.dra, %bb.wp ], [ %i.dnk, %bb.vw ]
  %.2187.i = phi i32 [ %.3.i, %bb.wp ], [ %.1199.i, %bb.vw ] ; 3 uses
  %.2132186.i = phi i32 [ %.3133.i, %bb.wp ], [ %.1131198.i, %bb.vw ] ; 3 uses
  %.2139185.i = phi ptr [ %.3140.i, %bb.wp ], [ %.1138197.i, %bb.vw ] ; 4 uses
  %.2148184.i = phi float [ %.3149.i, %bb.wp ], [ %.1147196.i, %bb.vw ] ; 4 uses
  %i.dns = getelementptr inbounds nuw [4 x i8], ptr %i.dnr, i64 %indvars.iv215.i ; 3 uses
  %i.dnt = load i32, ptr %i.dns, align 4, !tbaa !34
  %i.dnu = sext i32 %i.dnt to i64
  %i.dnv = getelementptr inbounds [48 x i8], ptr %i.dmr, i64 %i.dnu ; 2 uses
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.dnv, i64 4
  %i.dnx = load float, ptr %i.dnw, align 4, !tbaa !28 ; 2 uses
  %i.dny = load float, ptr %i.dnv, align 4
  %i.dnz = fmul float %i.dnx, 2.000000e+00
  %i.doa = fmul float %i.dnz, %i.dny
  %.0152.i = select i1 %i.dnf, float %i.doa, float %i.dnx ; 3 uses
  %i.dob = getelementptr inbounds nuw i8, ptr %i.dns, i64 4
  %i.doc = load i32, ptr %i.dob, align 4, !tbaa !34 ; 7 uses
  %i.dod = getelementptr inbounds nuw i8, ptr %i.dns, i64 8
  %i.doe = load i32, ptr %i.dod, align 4, !tbaa !34 ; 7 uses
  %i.dof = sext i32 %i.doc to i64
  %i.dog = getelementptr inbounds [36 x i8], ptr %i.dmy, i64 %i.dof
  %i.doh = load float, ptr %i.dog, align 4, !tbaa !348 ; 4 uses
  %i.doi = sext i32 %i.doe to i64
  %i.doj = getelementptr inbounds [36 x i8], ptr %i.dmy, i64 %i.doi
  %i.dok = load float, ptr %i.doj, align 4, !tbaa !348 ; 4 uses
  %i.dol = fcmp ogt float %.0152.i, 0.000000e+00
  %i.dom = fcmp ogt float %i.doh, 0.000000e+00
  %or.cond5.i = select i1 %i.dol, i1 %i.dom, i1 false
  %i.don = fcmp ogt float %i.dok, 0.000000e+00
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.don, i1 false
  br i1 %or.cond7.i, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %.lr.ph190.i
  %i.doo = fmul nnan float %i.doh, f0x421DE9E6
  %i.dop = fmul float %i.doo, %i.dok
  %i.doq = fadd nnan float %i.doh, %i.dok
  %i.dor = fmul float %.0152.i, %i.doq
  %i.dos = fdiv float %i.dop, %i.dor
  br label %bb.vy

bb.vy:                                            ; preds = %bb.vx, %.lr.ph190.i
  %.0151.i = phi float [ %i.dos, %bb.vx ], [ f0x7F7FFFFF, %.lr.ph190.i ] ; 4 uses
  %i.dot = load ptr, ptr @debug, align 8, !tbaa !563 ; 2 uses
  %.not158.i = icmp eq ptr %i.dot, null
  br i1 %.not158.i, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.dou = fpext float %.0152.i to double
  %i.dov = fpext float %i.doh to double
  %i.dow = fpext float %i.dok to double
  %i.dox = call noundef float @sqrtf(float noundef %.0151.i) #30
  %i.doy = fpext float %i.dox to double
  %i.doz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dot, ptr noundef nonnull @.str.224, double noundef %i.dou, double noundef %i.dov, double noundef %i.dow, double noundef %i.doy) #30 ; 0 uses
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vy
  %i.dpa = fcmp olt float %.0151.i, %i.dmu
  br i1 %i.dpa, label %.preheader175.i, label %bb.wp

.preheader175.i:                                  ; preds = %bb.wa
  %i.dpb = load ptr, ptr %i.dnc, align 8, !tbaa !35
  %i.dpc = load ptr, ptr %i.dna, align 8, !tbaa !33 ; 2 uses
  %i.dpd = ptrtoint ptr %i.dpb to i64
  %i.dpe = ptrtoint ptr %i.dpc to i64
  %i.dpf = sub i64 %i.dpd, %i.dpe
  %i.dpg = lshr exact i64 %i.dpf, 2               ; 2 uses
  %i.dph = trunc i64 %i.dpg to i32
  %i.dpi = icmp sgt i32 %i.dph, 0
  br i1 %i.dpi, label %.lr.ph.preheader.i, label %.preheader.i838

.lr.ph.preheader.i:                               ; preds = %.preheader175.i
  %i.dpj = and i64 %i.dpg, 2147483647
  br label %.lr.ph.i841

.preheader.i838:                                  ; preds = %bb.wf, %.preheader175.i
  %.0142.lcssa.i = phi i1 [ false, %.preheader175.i ], [ %.1143.i, %bb.wf ] ; 2 uses
  %i.dpk = load ptr, ptr %i.dnd, align 8, !tbaa !35
  %i.dpl = load ptr, ptr %i.dnb, align 8, !tbaa !33 ; 2 uses
  %i.dpm = ptrtoint ptr %i.dpk to i64
  %i.dpn = ptrtoint ptr %i.dpl to i64
  %i.dpo = sub i64 %i.dpm, %i.dpn
  %i.dpp = lshr exact i64 %i.dpo, 2               ; 2 uses
  %i.dpq = trunc i64 %i.dpp to i32
  %i.dpr = icmp sgt i32 %i.dpq, 0
  br i1 %i.dpr, label %.lr.ph182.preheader.i, label %._crit_edge.i839

.lr.ph182.preheader.i:                            ; preds = %.preheader.i838
  %i.dps = and i64 %i.dpp, 2147483647
  br label %.lr.ph182.i

.lr.ph.i841:                                      ; preds = %bb.wf, %.lr.ph.preheader.i
  %indvars.iv.i842 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i843, %bb.wf ] ; 2 uses
  %.0142176.i = phi i1 [ false, %.lr.ph.preheader.i ], [ %.1143.i, %bb.wf ] ; 2 uses
  %i.dpt = getelementptr inbounds nuw [4 x i8], ptr %i.dpc, i64 %indvars.iv.i842 ; 3 uses
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dpt, i64 4
  %i.dpv = load i32, ptr %i.dpu, align 4, !tbaa !34 ; 2 uses
  %i.dpw = icmp eq i32 %i.dpv, %i.doc
  br i1 %i.dpw, label %bb.wb, label %bb.wc

bb.wb:                                            ; preds = %.lr.ph.i841
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dpt, i64 8
  %i.dpy = load i32, ptr %i.dpx, align 4, !tbaa !34
  %i.dpz = icmp eq i32 %i.dpy, %i.doe
  br i1 %i.dpz, label %bb.we, label %bb.wc

bb.wc:                                            ; preds = %bb.wb, %.lr.ph.i841
  %i.dqa = icmp eq i32 %i.dpv, %i.doe
  br i1 %i.dqa, label %bb.wd, label %bb.wf

bb.wd:                                            ; preds = %bb.wc
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dpt, i64 8
  %i.dqc = load i32, ptr %i.dqb, align 4, !tbaa !34
  %i.dqd = icmp eq i32 %i.dqc, %i.doc
  br i1 %i.dqd, label %bb.we, label %bb.wf

bb.we:                                            ; preds = %bb.wd, %bb.wb
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd, %bb.wc
  %.1143.i = phi i1 [ true, %bb.we ], [ %.0142176.i, %bb.wd ], [ %.0142176.i, %bb.wc ] ; 2 uses
  %indvars.iv.next.i843 = add nuw nsw i64 %indvars.iv.i842, 3 ; 2 uses
  %i.dqe = icmp samesign ult i64 %indvars.iv.next.i843, %i.dpj
  br i1 %i.dqe, label %.lr.ph.i841, label %.preheader.i838, !llvm.loop !466

.lr.ph182.i:                                      ; preds = %bb.wm, %.lr.ph182.preheader.i
  %indvars.iv213.i = phi i64 [ 0, %.lr.ph182.preheader.i ], [ %indvars.iv.next214.i, %bb.wm ] ; 2 uses
  %.2144179.i = phi i1 [ %.0142.lcssa.i, %.lr.ph182.preheader.i ], [ %.3145.i, %bb.wm ] ; 2 uses
  %i.dqf = getelementptr inbounds nuw [4 x i8], ptr %i.dpl, i64 %indvars.iv213.i ; 5 uses
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dqf, i64 4
  %i.dqh = load i32, ptr %i.dqg, align 4, !tbaa !34 ; 2 uses
  %i.dqi = icmp eq i32 %i.doc, %i.dqh
  br i1 %i.dqi, label %bb.wi, label %bb.wg

bb.wg:                                            ; preds = %.lr.ph182.i
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dqf, i64 8
  %i.dqk = load i32, ptr %i.dqj, align 4, !tbaa !34
  %i.dql = icmp eq i32 %i.doc, %i.dqk
  br i1 %i.dql, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dqf, i64 12
  %i.dqn = load i32, ptr %i.dqm, align 4, !tbaa !34
  %i.dqo = icmp eq i32 %i.doc, %i.dqn
  br i1 %i.dqo, label %bb.wi, label %bb.wm

bb.wi:                                            ; preds = %bb.wh, %bb.wg, %.lr.ph182.i
  %i.dqp = icmp eq i32 %i.doe, %i.dqh
  br i1 %i.dqp, label %bb.wl, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %i.dqq = getelementptr inbounds nuw i8, ptr %i.dqf, i64 8
  %i.dqr = load i32, ptr %i.dqq, align 4, !tbaa !34
  %i.dqs = icmp eq i32 %i.doe, %i.dqr
  br i1 %i.dqs, label %bb.wl, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dqf, i64 12
  %i.dqu = load i32, ptr %i.dqt, align 4, !tbaa !34
  %i.dqv = icmp eq i32 %i.doe, %i.dqu
  br i1 %i.dqv, label %bb.wl, label %bb.wm

bb.wl:                                            ; preds = %bb.wk, %bb.wj, %bb.wi
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wl, %bb.wk, %bb.wh
  %.3145.i = phi i1 [ true, %bb.wl ], [ %.2144179.i, %bb.wk ], [ %.2144179.i, %bb.wh ] ; 2 uses
  %indvars.iv.next214.i = add nuw nsw i64 %indvars.iv213.i, 4 ; 2 uses
  %i.dqw = icmp samesign ult i64 %indvars.iv.next214.i, %i.dps
  br i1 %i.dqw, label %.lr.ph182.i, label %._crit_edge.i839, !llvm.loop !467

._crit_edge.i839:                                 ; preds = %bb.wm, %.preheader.i838
  %.2144.lcssa.i = phi i1 [ %.0142.lcssa.i, %.preheader.i838 ], [ %.3145.i, %bb.wm ]
  br i1 %.2144.lcssa.i, label %bb.wp, label %bb.wn

bb.wn:                                            ; preds = %._crit_edge.i839
  %i.dqx = icmp eq ptr %.2139185.i, null
  %i.dqy = fcmp olt float %.0151.i, %.2148184.i
  %or.cond.i840 = select i1 %i.dqx, i1 true, i1 %i.dqy
  br i1 %or.cond.i840, label %bb.wo, label %bb.wp

bb.wo:                                            ; preds = %bb.wn
  br label %bb.wp

bb.wp:                                            ; preds = %bb.wo, %bb.wn, %._crit_edge.i839, %bb.wa
  %.3149.i = phi float [ %.2148184.i, %._crit_edge.i839 ], [ %.0151.i, %bb.wo ], [ %.2148184.i, %bb.wn ], [ %.2148184.i, %bb.wa ] ; 2 uses
  %.3140.i = phi ptr [ %.2139185.i, %._crit_edge.i839 ], [ %.sroa.0168.0201.i, %bb.wo ], [ %.2139185.i, %bb.wn ], [ %.2139185.i, %bb.wa ] ; 2 uses
  %.3133.i = phi i32 [ %.2132186.i, %._crit_edge.i839 ], [ %i.doe, %bb.wo ], [ %.2132186.i, %bb.wn ], [ %.2132186.i, %bb.wa ] ; 2 uses
  %.3.i = phi i32 [ %.2187.i, %._crit_edge.i839 ], [ %i.doc, %bb.wo ], [ %.2187.i, %bb.wn ], [ %.2187.i, %bb.wa ] ; 2 uses
  %indvars.iv.next216.i = add nuw nsw i64 %indvars.iv215.i, 3 ; 2 uses
  %i.dqz = load ptr, ptr %i.dni, align 8, !tbaa !35
  %i.dra = load ptr, ptr %i.dnh, align 8, !tbaa !33 ; 2 uses
  %i.drb = ptrtoint ptr %i.dqz to i64
  %i.drc = ptrtoint ptr %i.dra to i64
  %i.drd = sub i64 %i.drb, %i.drc
  %i.dre = lshr exact i64 %i.drd, 2
  %i.drf = trunc i64 %i.dre to i32
  %i.drg = trunc nuw i64 %indvars.iv.next216.i to i32
  %i.drh = icmp slt i32 %i.drg, %i.drf
  br i1 %i.drh, label %.lr.ph190.i, label %.loopexit.i833, !llvm.loop !468

.loopexit.i833:                                   ; preds = %bb.wp, %bb.vw, %bb.vv
  %.4150.i = phi float [ %.1147196.i, %bb.vv ], [ %.1147196.i, %bb.vw ], [ %.3149.i, %bb.wp ] ; 4 uses
  %.4141.i = phi ptr [ %.1138197.i, %bb.vv ], [ %.1138197.i, %bb.vw ], [ %.3140.i, %bb.wp ] ; 6 uses
  %.4134.i = phi i32 [ %.1131198.i, %bb.vv ], [ %.1131198.i, %bb.vw ], [ %.3133.i, %bb.wp ] ; 4 uses
  %.4.i = phi i32 [ %.1199.i, %bb.vv ], [ %.1199.i, %bb.vw ], [ %.3.i, %bb.wp ] ; 4 uses
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %.not174.i = icmp eq i64 %indvars.iv.next219.i, 95
  br i1 %.not174.i, label %bb.vu, label %bb.vv

bb.wq:                                            ; preds = %._crit_edge208.i
  %i.dri = fpext float %.4150.i to double
  %i.drj = fmul double %i.dmp, 5.000000e+00       ; 2 uses
  %i.drk = fmul double %i.drj, %i.drj
  %i.drl = fcmp ogt double %i.drk, %i.dri         ; 2 uses
  %i.drm = getelementptr inbounds nuw i8, ptr %.4141.i, i64 24 ; 2 uses
  %i.drn = load ptr, ptr %i.drm, align 8, !tbaa !608
  %i.dro = load ptr, ptr %i.drn, align 8, !tbaa !344
  %i.drp = load ptr, ptr %i.dro, align 8, !tbaa !54
  %i.drq = load i8, ptr %i.drp, align 1, !tbaa !28
  %i.drr = icmp eq i8 %i.drq, 79
  br i1 %i.drr, label %bb.wr, label %bb.ws

bb.wr:                                            ; preds = %bb.wq
  %i.drs = getelementptr inbounds nuw i8, ptr %.4141.i, i64 8
  %i.drt = load i32, ptr %i.drs, align 8, !tbaa !352
  %i.dru = icmp slt i32 %i.drt, 6
  %i.drv = select i1 %i.dru, ptr @.str.226, ptr @.str.227
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %bb.wq
  %i.drw = phi ptr [ @.str.227, %bb.wq ], [ %i.drv, %bb.wr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.drx = load ptr, ptr %.4141.i, align 8, !tbaa !567
  %i.dry = load ptr, ptr %i.drx, align 8, !tbaa !54
  %i.drz = add nsw i32 %.4.i, 1
  %i.dsa = load ptr, ptr %i.drm, align 8, !tbaa !608 ; 2 uses
  %i.dsb = sext i32 %.4.i to i64
end_hunk_0
