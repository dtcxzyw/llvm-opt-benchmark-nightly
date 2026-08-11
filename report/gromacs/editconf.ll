inline.NumInlined: 264
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z12gmx_editconfiPPc:bb.a
.lr.ph.preheader.i485.new:                        ; preds = %.lr.ph.preheader.i485
  %unroll_iter1233 = and i64 %wide.trip.count.i486, 2147483646
  br label %.lr.ph.i487

.lr.ph.i487:                                      ; preds = %.lr.ph.i487, %.lr.ph.preheader.i485.new
  %indvars.iv.i488 = phi i64 [ 0, %.lr.ph.preheader.i485.new ], [ %indvars.iv.next.i489.1, %.lr.ph.i487 ] ; 4 uses
  %.02433.i = phi float [ 1.000000e+10, %.lr.ph.preheader.i485.new ], [ %.sroa.speculated.i.1, %.lr.ph.i487 ] ; 2 uses
  %.02730.i = phi float [ -1.000000e+10, %.lr.ph.preheader.i485.new ], [ %.sroa.speculated15.i.1, %.lr.ph.i487 ] ; 2 uses
  %.02829.i = phi float [ 1.000000e+10, %.lr.ph.preheader.i485.new ], [ %.sroa.speculated21.i.1, %.lr.ph.i487 ] ; 2 uses
  %i.bzt = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i485.new ], [ %i.caj, %.lr.ph.i487 ] ; 2 uses
  %niter1234 = phi i64 [ 0, %.lr.ph.preheader.i485.new ], [ %niter1234.next.1, %.lr.ph.i487 ]
  %i.bzu = getelementptr inbounds nuw [12 x i8], ptr %i.bzq, i64 %indvars.iv.i488 ; 2 uses
  %i.bzv = load <2 x float>, ptr %i.bzu, align 4, !tbaa !53 ; 2 uses
  %i.bzw = fcmp olt <2 x float> %i.bzv, %i.bzt
  %i.bzx = select <2 x i1> %i.bzw, <2 x float> %i.bzv, <2 x float> %i.bzt ; 2 uses
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzu, i64 8
  %i.bzz = load float, ptr %i.bzy, align 4, !tbaa !53 ; 2 uses
  %i.caa = fcmp olt float %i.bzz, %.02433.i
  %.sroa.speculated.i = select i1 %i.caa, float %i.bzz, float %.02433.i ; 2 uses
  %i.cab = getelementptr inbounds nuw [52 x i8], ptr %.val388, i64 %indvars.iv.i488
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 20
  %i.cad = load float, ptr %i.cac, align 4, !tbaa !53 ; 4 uses
  %i.cae = fcmp olt float %i.cad, %.02829.i
  %.sroa.speculated21.i = select i1 %i.cae, float %i.cad, float %.02829.i ; 2 uses
  %i.caf = fcmp olt float %.02730.i, %i.cad
  %.sroa.speculated15.i = select i1 %i.caf, float %i.cad, float %.02730.i ; 2 uses
  %indvars.iv.next.i489 = or disjoint i64 %indvars.iv.i488, 1 ; 2 uses
  %i.cag = getelementptr inbounds nuw [12 x i8], ptr %i.bzq, i64 %indvars.iv.next.i489 ; 2 uses
  %i.cah = load <2 x float>, ptr %i.cag, align 4, !tbaa !53 ; 2 uses
  %i.cai = fcmp olt <2 x float> %i.cah, %i.bzx
  %i.caj = select <2 x i1> %i.cai, <2 x float> %i.cah, <2 x float> %i.bzx ; 3 uses
  %i.cak = getelementptr inbounds nuw i8, ptr %i.cag, i64 8
  %i.cal = load float, ptr %i.cak, align 4, !tbaa !53 ; 2 uses
  %i.cam = fcmp olt float %i.cal, %.sroa.speculated.i
  %.sroa.speculated.i.1 = select i1 %i.cam, float %i.cal, float %.sroa.speculated.i ; 3 uses
  %i.can = getelementptr inbounds nuw [52 x i8], ptr %.val388, i64 %indvars.iv.next.i489
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 20
  %i.cap = load float, ptr %i.cao, align 4, !tbaa !53 ; 4 uses
  %i.caq = fcmp olt float %i.cap, %.sroa.speculated21.i
  %.sroa.speculated21.i.1 = select i1 %i.caq, float %i.cap, float %.sroa.speculated21.i ; 3 uses
  %i.car = fcmp olt float %.sroa.speculated15.i, %i.cap
  %.sroa.speculated15.i.1 = select i1 %i.car, float %i.cap, float %.sroa.speculated15.i ; 3 uses
  %indvars.iv.next.i489.1 = add nuw nsw i64 %indvars.iv.i488, 2 ; 2 uses
  %niter1234.next.1 = add i64 %niter1234, 2       ; 2 uses
  %niter1234.ncmp.1 = icmp eq i64 %niter1234.next.1, %unroll_iter1233
  br i1 %niter1234.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i487, !llvm.loop !158

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i487
  %lcmp.mod1227.not = icmp eq i64 %xtraiter1225, 0
  br i1 %lcmp.mod1227.not, label %._crit_edge.loopexit.i, label %.lr.ph.i487.epil.preheader

.lr.ph.i487.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i485
  %indvars.iv.i488.epil.init = phi i64 [ 0, %.lr.ph.preheader.i485 ], [ %indvars.iv.next.i489.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.02433.i.epil.init = phi float [ 1.000000e+10, %.lr.ph.preheader.i485 ], [ %.sroa.speculated.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.02730.i.epil.init = phi float [ -1.000000e+10, %.lr.ph.preheader.i485 ], [ %.sroa.speculated15.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.02829.i.epil.init = phi float [ 1.000000e+10, %.lr.ph.preheader.i485 ], [ %.sroa.speculated21.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i485 ], [ %i.caj, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1232 = trunc i32 %i.bzn to i1
  call void @llvm.assume(i1 %lcmp.mod1232)
  %i.cas = getelementptr inbounds nuw [12 x i8], ptr %i.bzq, i64 %indvars.iv.i488.epil.init ; 2 uses
  %i.cat = load <2 x float>, ptr %i.cas, align 4, !tbaa !53 ; 2 uses
  %i.cau = fcmp olt <2 x float> %i.cat, %.epil.init
  %i.cav = select <2 x i1> %i.cau, <2 x float> %i.cat, <2 x float> %.epil.init
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cas, i64 8
  %i.cax = load float, ptr %i.caw, align 4, !tbaa !53 ; 2 uses
  %i.cay = fcmp olt float %i.cax, %.02433.i.epil.init
  %.sroa.speculated.i.epil = select i1 %i.cay, float %i.cax, float %.02433.i.epil.init
  %i.caz = getelementptr inbounds nuw [52 x i8], ptr %.val388, i64 %indvars.iv.i488.epil.init
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 20
  %i.cbb = load float, ptr %i.cba, align 4, !tbaa !53 ; 4 uses
  %i.cbc = fcmp olt float %i.cbb, %.02829.i.epil.init
  %.sroa.speculated21.i.epil = select i1 %i.cbc, float %i.cbb, float %.02829.i.epil.init
  %i.cbd = fcmp olt float %.02730.i.epil.init, %i.cbb
  %.sroa.speculated15.i.epil = select i1 %i.cbd, float %i.cbb, float %.02730.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i487.epil.preheader
  %.lcssa1155 = phi <2 x float> [ %i.caj, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.cav, %.lr.ph.i487.epil.preheader ]
  %.sroa.speculated.i.lcssa = phi float [ %.sroa.speculated.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i487.epil.preheader ]
  %.sroa.speculated21.i.lcssa = phi float [ %.sroa.speculated21.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.speculated21.i.epil, %.lr.ph.i487.epil.preheader ]
  %.sroa.speculated15.i.lcssa = phi float [ %.sroa.speculated15.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.speculated15.i.epil, %.lr.ph.i487.epil.preheader ]
  %i.cbe = fmul <2 x float> %.lcssa1155, <float 1.000000e+00, float 1.000000e+01>
  %i.cbf = fpext <2 x float> %i.cbe to <2 x double>
  %i.cbg = fmul float %.sroa.speculated.i.lcssa, 1.000000e+01
  %i.cbh = fpext float %i.cbg to double
  br label %_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit

_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit:   ; preds = %bb.ky, %._crit_edge.loopexit.i
  %.028.lcssa.i = phi float [ 1.000000e+10, %bb.ky ], [ %.sroa.speculated21.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %.027.lcssa.i = phi float [ -1.000000e+10, %bb.ky ], [ %.sroa.speculated15.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %.024.lcssa.i = phi double [ f0x42374876E0000000, %bb.ky ], [ %i.cbh, %._crit_edge.loopexit.i ] ; 11 uses
  %i.cbi = phi <2 x double> [ <double 1.000000e+10, double f0x42374876E0000000>, %bb.ky ], [ %i.cbf, %._crit_edge.loopexit.i ] ; 3 uses
  %i.cbj = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cbk = fpext float %.028.lcssa.i to double    ; 5 uses
  %i.cbl = fpext float %.027.lcssa.i to double
  %i.cbm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cbj, ptr noundef nonnull @.str.216, double noundef %i.cbk, double noundef %i.cbl) #25 ; 0 uses
  %i.cbn = add nsw i32 %i.bzp, 1                  ; 11 uses
  %i.cbo = fsub float %.027.lcssa.i, %.028.lcssa.i
  %i.cbp = add nsw i32 %i.bzn, 2
  %i.cbq = extractelement <2 x double> %i.cbi, i64 0 ; 3 uses
  %i.cbr = extractelement <2 x double> %i.cbi, i64 1 ; 11 uses
  %i.cbs = add nsw i32 %i.bzn, 3
  %i.cbt = add nsw i32 %i.bzn, 4
  %i.cbu = add nsw i32 %i.bzn, 5
  %i.cbv = shufflevector <2 x double> %i.cbi, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbw = fadd <4 x double> %i.cbv, <double 1.200000e-01, double 2.400000e-01, double 3.600000e-01, double 4.800000e-01>
  %i.cbx = fmul <4 x double> %i.cbw, splat (double 1.000000e+01) ; 4 uses
  %i.cby = add nsw i32 %i.bzn, 6
  %i.cbz = add nsw i32 %i.bzn, 7
  %i.cca = add nsw i32 %i.bzn, 8
  %i.ccb = add nsw i32 %i.bzn, 9
  %i.ccc = fadd <4 x double> %i.cbv, <double 6.000000e-01, double f0x3FE70A3D70A3D70A, double 8.400000e-01, double f0x3FEEB851EB851EB8>
  %i.ccd = fmul <4 x double> %i.ccc, splat (double 1.000000e+01) ; 4 uses
  %i.cce = fpext float %i.cbo to double           ; 3 uses
  %i.ccf = insertelement <8 x double> poison, double %i.cce, i64 0
  %i.ccg = shufflevector <8 x double> %i.ccf, <8 x double> poison, <8 x i32> zeroinitializer
  %i.cch = fmul <8 x double> %i.ccg, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00>
  %i.cci = fdiv <8 x double> %i.cch, splat (double 1.000000e+01) ; 2 uses
  %i.ccj = shufflevector <8 x double> %i.cci, <8 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cck = insertelement <4 x double> poison, double %i.cbk, i64 0
  %i.ccl = shufflevector <4 x double> %i.cck, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccm = fadd <4 x double> %i.ccj, %i.ccl       ; 4 uses
  %i.ccn = extractelement <4 x double> %i.ccm, i64 0
  %i.cco = extractelement <4 x double> %i.cbx, i64 0
  %i.ccp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbp, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cco, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccn) #20 ; 0 uses
  %i.ccq = extractelement <4 x double> %i.ccm, i64 1
  %i.ccr = extractelement <4 x double> %i.cbx, i64 1
  %i.ccs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbs, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.ccr, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccq) #20 ; 0 uses
  %i.cct = extractelement <4 x double> %i.ccm, i64 2
  %i.ccu = extractelement <4 x double> %i.cbx, i64 2
  %i.ccv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbt, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.ccu, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cct) #20 ; 0 uses
  %i.ccw = extractelement <4 x double> %i.ccm, i64 3
  %i.ccx = extractelement <4 x double> %i.cbx, i64 3
  %i.ccy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbu, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.ccx, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccw) #20 ; 0 uses
  %i.ccz = shufflevector <8 x double> %i.cci, <8 x double> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cda = fadd <4 x double> %i.ccz, %i.ccl       ; 4 uses
  %i.cdb = extractelement <4 x double> %i.cda, i64 0
  %i.cdc = extractelement <4 x double> %i.ccd, i64 0
  %i.cdd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cby, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cdc, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdb) #20 ; 0 uses
  %i.cde = extractelement <4 x double> %i.cda, i64 1
  %i.cdf = extractelement <4 x double> %i.ccd, i64 1
  %i.cdg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbz, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cdf, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cde) #20 ; 0 uses
  %i.cdh = extractelement <4 x double> %i.cda, i64 2
  %i.cdi = extractelement <4 x double> %i.ccd, i64 2
  %i.cdj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cca, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cdi, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdh) #20 ; 0 uses
  %i.cdk = extractelement <4 x double> %i.cda, i64 3
  %i.cdl = extractelement <4 x double> %i.ccd, i64 3
  %i.cdm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.ccb, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cdl, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdk) #20 ; 0 uses
  %i.cdn = add nsw i32 %i.bzn, 10
  %i.cdo = fadd double %i.cbq, 1.080000e+00
  %i.cdp = fmul double %i.cdo, 1.000000e+01
  %i.cdq = fmul double %i.cce, 8.000000e+00
  %i.cdr = fdiv double %i.cdq, 1.000000e+01
  %i.cds = fadd double %i.cdr, %i.cbk
  %i.cdt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdn, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cdp, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cds) #20 ; 0 uses
  %i.cdu = add nsw i32 %i.bzn, 11
  %i.cdv = fadd double %i.cbq, 1.200000e+00
  %i.cdw = fmul double %i.cdv, 1.000000e+01
  %i.cdx = add nsw i32 %i.bzn, 12
  %i.cdy = fadd double %i.cbq, f0x3FF51EB851EB851E
  %i.cdz = fmul double %i.cdy, 1.000000e+01
  %i.cea = insertelement <2 x double> poison, double %i.cce, i64 0
  %i.ceb = shufflevector <2 x double> %i.cea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cec = fmul <2 x double> %i.ceb, <double 9.000000e+00, double 1.000000e+01>
  %i.ced = fdiv <2 x double> %i.cec, splat (double 1.000000e+01) ; 2 uses
  %i.cee = extractelement <2 x double> %i.ced, i64 0
  %i.cef = fadd double %i.cee, %i.cbk
  %i.ceg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdu, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cdw, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cef) #20 ; 0 uses
  %i.ceh = extractelement <2 x double> %i.ced, i64 1
  %i.cei = fadd double %i.ceh, %i.cbk
  %i.cej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdx, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbn, i32 noundef 32, double noundef %i.cdz, double noundef %i.cbr, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cei) #20 ; 0 uses
  br label %bb.kz

bb.kz:                                            ; preds = %_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit483
  %i.cek = load float, ptr @_ZZ12gmx_editconfiPPcE6visbox, align 4, !tbaa !53 ; 2 uses
  %i.cel = fcmp ogt float %i.cek, 0.000000e+00
  br i1 %i.cel, label %bb.la, label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit

bb.la:                                            ; preds = %bb.kz
  %i.cem = load i8, ptr @_ZZ12gmx_editconfiPPcE7bLegend, align 1, !tbaa !30, !range !29, !noundef !32
  %i.cen = trunc nuw i8 %i.cem to i1              ; 2 uses
  %i.ceo = load i32, ptr %12, align 8             ; 2 uses
  %i.cep = add nsw i32 %i.ceo, 12
  %i.ceq = select i1 %i.cen, i32 %i.cep, i32 %i.ceo ; 8 uses
  %i.cer = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  br i1 %i.cen, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  store i32 12, ptr %i.cer, align 8, !tbaa !132
  br label %bb.ld

bb.lc:                                            ; preds = %bb.la
  %i.ces = load i32, ptr %i.cer, align 8, !tbaa !132
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %i.cet = phi i32 [ 12, %bb.lb ], [ %i.ces, %bb.lc ] ; 8 uses
  %i.ceu = add nsw i32 %i.ceq, 1                  ; 6 uses
  %i.cev = add nsw i32 %i.cet, 1                  ; 2 uses
  %i.cew = call float @llvm.rint.f32(float %i.cek)
  %i.cex = fptosi float %i.cew to i32             ; 3 uses
  %i.cey = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 4), align 4, !tbaa !53
  %i.cez = call float @llvm.rint.f32(float %i.cey)
  %i.cfa = fptosi float %i.cez to i32             ; 3 uses
  %i.cfb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 8), align 4, !tbaa !53
  %i.cfc = call float @llvm.rint.f32(float %i.cfb)
  %i.cfd = fptosi float %i.cfc to i32             ; 3 uses
  %i.cfe = mul i32 %i.cfa, %i.cex
  %i.cff = mul i32 %i.cfe, %i.cfd                 ; 3 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.cfh = load float, ptr %i.cfg, align 4, !tbaa !53
  %i.cfi = fcmp une float %i.cfh, 0.000000e+00
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.cfk = load float, ptr %i.cfj, align 8
  %i.cfl = fcmp une float %i.cfk, 0.000000e+00
  %or.cond544 = select i1 %i.cfi, i1 true, i1 %i.cfl
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.cfn = load float, ptr %i.cfm, align 4
  %i.cfo = fcmp une float %i.cfn, 0.000000e+00
  %or.cond547 = select i1 %or.cond544, i1 true, i1 %i.cfo
  br i1 %or.cond547, label %bb.le, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.ld
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 8 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 8 uses
  %i.cfr = load float, ptr %i.ad, align 16, !tbaa !53
  %i.cfs = fmul float %i.cfr, 0.000000e+00
  %i.cft = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.cfu = fmul float %i.cft, 0.000000e+00
  %i.cfv = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.cfw = fmul float %i.cfv, 0.000000e+00
  %i.cfx = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.ceu, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cev, i8 noundef signext 32, float noundef %i.cfs, float noundef %i.cfu, float noundef %i.cfw, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc500 unwind label %.loopexit.split-lp ; 0 uses

.noexc500:                                        ; preds = %.preheader12.i
  %i.cfy = add nsw i32 %i.ceq, 2                  ; 4 uses
  %i.cfz = add nsw i32 %i.cet, 2
  %i.cga = load float, ptr %i.ad, align 16, !tbaa !53
  %i.cgb = fmul float %i.cga, 1.000000e+01
  %i.cgc = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.cgd = fmul float %i.cgc, 0.000000e+00
  %i.cge = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.cgf = fmul float %i.cge, 0.000000e+00
  %i.cgg = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.cfy, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cfz, i8 noundef signext 32, float noundef %i.cgb, float noundef %i.cgd, float noundef %i.cgf, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc501 unwind label %.loopexit.split-lp ; 0 uses

.noexc501:                                        ; preds = %.noexc500
  %i.cgh = add nsw i32 %i.ceq, 3                  ; 4 uses
  %i.cgi = add nsw i32 %i.cet, 3
  %i.cgj = load float, ptr %i.ad, align 16, !tbaa !53
  %i.cgk = fmul float %i.cgj, 0.000000e+00
  %i.cgl = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.cgm = fmul float %i.cgl, 1.000000e+01
  %i.cgn = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.cgo = fmul float %i.cgn, 0.000000e+00
  %i.cgp = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.cgh, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgi, i8 noundef signext 32, float noundef %i.cgk, float noundef %i.cgm, float noundef %i.cgo, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc502 unwind label %.loopexit.split-lp ; 0 uses

.noexc502:                                        ; preds = %.noexc501
  %i.cgq = add nsw i32 %i.ceq, 4                  ; 4 uses
  %i.cgr = add nsw i32 %i.cet, 4
  %i.cgs = load float, ptr %i.ad, align 16, !tbaa !53
  %i.cgt = fmul float %i.cgs, 1.000000e+01
  %i.cgu = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.cgv = fmul float %i.cgu, 1.000000e+01
  %i.cgw = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.cgx = fmul float %i.cgw, 0.000000e+00
  %i.cgy = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.cgq, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgr, i8 noundef signext 32, float noundef %i.cgt, float noundef %i.cgv, float noundef %i.cgx, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc503 unwind label %.loopexit.split-lp ; 0 uses

.noexc503:                                        ; preds = %.noexc502
  %i.cgz = add nsw i32 %i.ceq, 5                  ; 4 uses
  %i.cha = add nsw i32 %i.cet, 5
  %i.chb = load float, ptr %i.ad, align 16, !tbaa !53
  %i.chc = fmul float %i.chb, 0.000000e+00
  %i.chd = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.che = fmul float %i.chd, 0.000000e+00
  %i.chf = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.chg = fmul float %i.chf, 1.000000e+01
  %i.chh = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.cgz, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cha, i8 noundef signext 32, float noundef %i.chc, float noundef %i.che, float noundef %i.chg, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc504 unwind label %.loopexit.split-lp ; 0 uses

.noexc504:                                        ; preds = %.noexc503
  %i.chi = add nsw i32 %i.ceq, 6                  ; 4 uses
  %i.chj = add nsw i32 %i.cet, 6
  %i.chk = load float, ptr %i.ad, align 16, !tbaa !53
  %i.chl = fmul float %i.chk, 1.000000e+01
  %i.chm = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.chn = fmul float %i.chm, 0.000000e+00
  %i.cho = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.chp = fmul float %i.cho, 1.000000e+01
  %i.chq = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.chi, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.chj, i8 noundef signext 32, float noundef %i.chl, float noundef %i.chn, float noundef %i.chp, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc505 unwind label %.loopexit.split-lp ; 0 uses

.noexc505:                                        ; preds = %.noexc504
  %i.chr = add nsw i32 %i.ceq, 7                  ; 4 uses
  %i.chs = add nsw i32 %i.cet, 7
  %i.cht = load float, ptr %i.ad, align 16, !tbaa !53
  %i.chu = fmul float %i.cht, 0.000000e+00
  %i.chv = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.chw = fmul float %i.chv, 1.000000e+01
  %i.chx = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.chy = fmul float %i.chx, 1.000000e+01
  %i.chz = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.chr, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.chs, i8 noundef signext 32, float noundef %i.chu, float noundef %i.chw, float noundef %i.chy, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc506 unwind label %.loopexit.split-lp ; 0 uses

.noexc506:                                        ; preds = %.noexc505
  %i.cia = add nsw i32 %i.ceq, 8                  ; 4 uses
  %i.cib = add nsw i32 %i.cet, 8
  %i.cic = load float, ptr %i.ad, align 16, !tbaa !53
  %i.cid = fmul float %i.cic, 1.000000e+01
  %i.cie = load float, ptr %i.cfp, align 16, !tbaa !53
  %i.cif = fmul float %i.cie, 1.000000e+01
  %i.cig = load float, ptr %i.cfq, align 16, !tbaa !53
  %i.cih = fmul float %i.cig, 1.000000e+01
  %i.cii = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.cia, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cib, i8 noundef signext 32, float noundef %i.cid, float noundef %i.cif, float noundef %i.cih, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc507 unwind label %.loopexit.split-lp ; 0 uses

.noexc507:                                        ; preds = %.noexc506
  %i.cij = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.ceu, i32 noundef %i.cfy) #20 ; 0 uses
  %i.cik = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cfy, i32 noundef %i.cgq) #20 ; 0 uses
  %i.cil = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cgq, i32 noundef %i.cgh) #20 ; 0 uses
  %i.cim = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.ceu, i32 noundef %i.cgh) #20 ; 0 uses
  %i.cin = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.ceu, i32 noundef %i.cgz) #20 ; 0 uses
  %i.cio = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cfy, i32 noundef %i.chi) #20 ; 0 uses
  %i.cip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cgq, i32 noundef %i.cia) #20 ; 0 uses
  %i.ciq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cgh, i32 noundef %i.chr) #20 ; 0 uses
  %i.cir = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cgz, i32 noundef %i.chi) #20 ; 0 uses
  %i.cis = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.chi, i32 noundef %i.cia) #20 ; 0 uses
  %i.cit = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cia, i32 noundef %i.chr) #20 ; 0 uses
  %i.ciu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.chr, i32 noundef %i.cgz) #20 ; 0 uses
  br label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit

bb.le:                                            ; preds = %bb.ld
  %i.civ = mul nsw i32 %i.cff, 24                 ; 2 uses
  %i.ciw = sext i32 %i.civ to i64
  %i.cix = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.142, i32 noundef 408, i64 noundef range(i64 -2147483648, 2147483648) %i.ciw, i64 noundef 12)
          to label %.noexc508 unwind label %.loopexit.split-lp ; 90 uses

.noexc508:                                        ; preds = %bb.le
  invoke void @_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f(i32 noundef 0, ptr noundef nonnull %i.ad, ptr noundef %i.cix)
          to label %.noexc509 unwind label %.loopexit.split-lp

.noexc509:                                        ; preds = %.noexc508
  %i.ciy = icmp sgt i32 %i.cfd, 0
  br i1 %i.ciy, label %.preheader8.lr.ph.i, label %.preheader4.i

.preheader8.lr.ph.i:                              ; preds = %.noexc509
  %i.ciz = icmp sgt i32 %i.cfa, 0
  %i.cja = icmp sgt i32 %i.cex, 0
  %or.cond.i496 = select i1 %i.ciz, i1 %i.cja, i1 false
  br i1 %or.cond.i496, label %.preheader8.us.preheader.i, label %.preheader4.i

.preheader8.us.preheader.i:                       ; preds = %.preheader8.lr.ph.i
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %scevgep1078 = getelementptr i8, ptr %i.cix, i64 280 ; 4 uses
  %scevgep1080 = getelementptr i8, ptr %i.cix, i64 4 ; 4 uses
  %scevgep1082 = getelementptr i8, ptr %i.cix, i64 284 ; 4 uses
  %scevgep1084 = getelementptr i8, ptr %i.cix, i64 8 ; 4 uses
  %scevgep1086 = getelementptr i8, ptr %i.cix, i64 288 ; 4 uses
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cix, i64 96
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cix, i64 192
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cix, i64 8
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cix, i64 12
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cix, i64 20
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cix, i64 24
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cix, i64 32
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cix, i64 36
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cix, i64 44
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cix, i64 48
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cix, i64 56
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cix, i64 60
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cix, i64 68
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cix, i64 72
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cix, i64 80
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cix, i64 84
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cix, i64 92
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cix, i64 96
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cix, i64 104
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cix, i64 108
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cix, i64 116
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cix, i64 120
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cix, i64 128
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cix, i64 132
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cix, i64 140
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cix, i64 144
  %i.cke = getelementptr inbounds nuw i8, ptr %i.cix, i64 152
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cix, i64 156
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cix, i64 164
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.cix, i64 168
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cix, i64 176
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.cix, i64 180
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.cix, i64 188
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.cix, i64 192
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.cix, i64 200
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.cix, i64 204
  %i.cko = getelementptr inbounds nuw i8, ptr %i.cix, i64 212
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cix, i64 216
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.cix, i64 224
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cix, i64 228
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cix, i64 236
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.cix, i64 240
  %i.cku = getelementptr inbounds nuw i8, ptr %i.cix, i64 248
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cix, i64 252
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.cix, i64 260
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.cix, i64 264
  %i.cky = getelementptr inbounds nuw i8, ptr %i.cix, i64 272
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cix, i64 276
  %i.cla = getelementptr inbounds nuw i8, ptr %i.cix, i64 284
  br label %.preheader8.us.i

.preheader8.us.i:                                 ; preds = %._crit_edge27.split.us.us.i, %.preheader8.us.preheader.i
  %.030.us.i = phi i32 [ %i.ctf, %._crit_edge27.split.us.us.i ], [ 0, %.preheader8.us.preheader.i ] ; 2 uses
  %.09529.us.i = phi i64 [ %indvars.iv.next.i498.lcssa, %._crit_edge27.split.us.us.i ], [ 0, %.preheader8.us.preheader.i ]
  %i.clb = uitofp nneg i32 %.030.us.i to float    ; 2 uses
  %i.clc = insertelement <2 x float> poison, float %i.clb, i64 0
  %i.cld = shufflevector <2 x float> %i.clc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader7.us.us.i

.preheader7.us.us.i:                              ; preds = %._crit_edge.us.us.i, %.preheader8.us.i
  %.09126.us.us.i = phi i32 [ 0, %.preheader8.us.i ], [ %i.cte, %._crit_edge.us.us.i ] ; 2 uses
  %.19625.us.us.i = phi i64 [ %.09529.us.i, %.preheader8.us.i ], [ %indvars.iv.next.i498.lcssa, %._crit_edge.us.us.i ]
  %i.cle = uitofp nneg i32 %.09126.us.us.i to float ; 2 uses
  %i.clf = insertelement <2 x float> poison, float %i.cle, i64 0
  %i.clg = shufflevector <2 x float> %i.clf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader6.us.us.i

.loopexit1151:                                    ; preds = %vector.body1142, %scalar.ph1134.preheader
  %indvars.iv.next.i498.lcssa = add i64 %.223.us.us.i, 24 ; 3 uses
  %i.clh = add nuw nsw i32 %.09324.us.us.i, 1     ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.clh, %i.cex
  br i1 %exitcond50.not.i, label %._crit_edge.us.us.i, label %.preheader6.us.us.i, !llvm.loop !159

.preheader6.us.us.i:                              ; preds = %.loopexit1151, %.preheader7.us.us.i
  %.09324.us.us.i = phi i32 [ 0, %.preheader7.us.us.i ], [ %i.clh, %.loopexit1151 ] ; 2 uses
  %.223.us.us.i = phi i64 [ %.19625.us.us.i, %.preheader7.us.us.i ], [ %indvars.iv.next.i498.lcssa, %.loopexit1151 ] ; 29 uses
  %i.cli = uitofp nneg i32 %.09324.us.us.i to float ; 2 uses
  %i.clj = load <2 x float>, ptr %i.ad, align 16, !tbaa !53
  %i.clk = load <2 x float>, ptr %i.cfg, align 4, !tbaa !53
  %i.cll = fmul <2 x float> %i.clk, %i.clg
  %i.clm = insertelement <2 x float> poison, float %i.cli, i64 0
  %i.cln = shufflevector <2 x float> %i.clm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cln, <2 x float> %i.clj, <2 x float> %i.cll)
  %i.clp = load <2 x float>, ptr %i.cfj, align 8, !tbaa !53
  %i.clq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cld, <2 x float> %i.clp, <2 x float> %i.clo) ; 26 uses
  %i.clr = load float, ptr %i.cjb, align 8, !tbaa !53
  %i.cls = load float, ptr %i.cjc, align 4, !tbaa !53
  %i.clt = fmul float %i.cls, %i.cle
  %i.clu = call float @llvm.fmuladd.f32(float %i.cli, float %i.clr, float %i.clt)
  %i.clv = load float, ptr %i.cjd, align 16, !tbaa !53
  %i.clw = call float @llvm.fmuladd.f32(float %i.clb, float %i.clv, float %i.clu) ; 25 uses
  %i.clx = mul i64 %.223.us.us.i, 12              ; 6 uses
  %scevgep1077.a = getelementptr i8, ptr %i.cix, i64 %i.clx ; 5 uses
  %scevgep1079.a = getelementptr i8, ptr %scevgep1078, i64 %i.clx ; 5 uses
  %scevgep1081.a = getelementptr i8, ptr %scevgep1080, i64 %i.clx ; 5 uses
  %scevgep1083 = getelementptr i8, ptr %scevgep1082, i64 %i.clx ; 5 uses
  %scevgep1085 = getelementptr i8, ptr %scevgep1084, i64 %i.clx ; 5 uses
  %scevgep1087 = getelementptr i8, ptr %scevgep1086, i64 %i.clx ; 5 uses
  %bound01088 = icmp ult ptr %scevgep1077.a, %scevgep1083
  %bound11089 = icmp ult ptr %scevgep1081.a, %scevgep1079.a
  %found.conflict1090 = and i1 %bound01088, %bound11089
  %bound01091 = icmp ult ptr %scevgep1077.a, %scevgep1087
  %bound11092 = icmp ult ptr %scevgep1085, %scevgep1079.a
  %found.conflict1093 = and i1 %bound01091, %bound11092
  %conflict.rdx = or i1 %found.conflict1090, %found.conflict1093
  %bound01094 = icmp ult ptr %scevgep1077.a, %scevgep1078
  %bound11095 = icmp ult ptr %i.cix, %scevgep1079.a
  %found.conflict1096 = and i1 %bound01094, %bound11095
  %conflict.rdx1097 = or i1 %conflict.rdx, %found.conflict1096
  %bound01098 = icmp ult ptr %scevgep1077.a, %scevgep1082
  %bound11099 = icmp ult ptr %scevgep1080, %scevgep1079.a
  %found.conflict1100 = and i1 %bound01098, %bound11099
  %conflict.rdx1101 = or i1 %conflict.rdx1097, %found.conflict1100
  %bound01102 = icmp ult ptr %scevgep1077.a, %scevgep1086
  %bound11103 = icmp ult ptr %scevgep1084, %scevgep1079.a
  %found.conflict1104 = and i1 %bound01102, %bound11103
  %conflict.rdx1105 = or i1 %conflict.rdx1101, %found.conflict1104
  %bound01106 = icmp ult ptr %scevgep1081.a, %scevgep1087
  %bound11107 = icmp ult ptr %scevgep1085, %scevgep1083
  %found.conflict1108 = and i1 %bound01106, %bound11107
  %conflict.rdx1109 = or i1 %conflict.rdx1105, %found.conflict1108
  %bound01110 = icmp ult ptr %scevgep1081.a, %scevgep1078
  %bound11111 = icmp ult ptr %i.cix, %scevgep1083
  %found.conflict1112 = and i1 %bound01110, %bound11111
  %conflict.rdx1113 = or i1 %conflict.rdx1109, %found.conflict1112
  %bound01114 = icmp ult ptr %scevgep1081.a, %scevgep1082
  %bound11115 = icmp ult ptr %scevgep1080, %scevgep1083
  %found.conflict1116 = and i1 %bound01114, %bound11115
  %conflict.rdx1117 = or i1 %conflict.rdx1113, %found.conflict1116
  %bound01118 = icmp ult ptr %scevgep1081.a, %scevgep1086
  %bound11119 = icmp ult ptr %scevgep1084, %scevgep1083
  %found.conflict1120 = and i1 %bound01118, %bound11119
  %conflict.rdx1121 = or i1 %conflict.rdx1117, %found.conflict1120
  %bound01122 = icmp ult ptr %scevgep1085, %scevgep1078
  %bound11123 = icmp ult ptr %i.cix, %scevgep1087
  %found.conflict1124 = and i1 %bound01122, %bound11123
  %conflict.rdx1125 = or i1 %conflict.rdx1121, %found.conflict1124
  %bound01126 = icmp ult ptr %scevgep1085, %scevgep1082
  %bound11127 = icmp ult ptr %scevgep1080, %scevgep1087
  %found.conflict1128 = and i1 %bound01126, %bound11127
  %conflict.rdx1129 = or i1 %conflict.rdx1125, %found.conflict1128
  %bound01130 = icmp ult ptr %scevgep1085, %scevgep1086
  %bound11131 = icmp ult ptr %scevgep1084, %scevgep1087
  %found.conflict1132 = and i1 %bound01130, %bound11131
  %conflict.rdx1133 = or i1 %conflict.rdx1129, %found.conflict1132
  br i1 %conflict.rdx1133, label %scalar.ph1134.preheader, label %vector.body1142

scalar.ph1134.preheader:                          ; preds = %.preheader6.us.us.i
  %i.cly = getelementptr inbounds [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.clz = load float, ptr %i.cjg, align 4, !tbaa !53
  %i.cma = fadd float %i.clw, %i.clz
  %i.cmb = load <2 x float>, ptr %i.cix, align 4, !tbaa !53
  %i.cmc = fadd <2 x float> %i.clq, %i.cmb
  store <2 x float> %i.cmc, ptr %i.cly, align 4, !tbaa !53
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cly, i64 8
  store float %i.cma, ptr %i.cmd, align 4, !tbaa !53
  %i.cme = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cmf = getelementptr i8, ptr %i.cme, i64 12
  %i.cmg = load float, ptr %i.cji, align 4, !tbaa !53
  %i.cmh = fadd float %i.clw, %i.cmg
  %i.cmi = load <2 x float>, ptr %i.cjh, align 4, !tbaa !53
  %i.cmj = fadd <2 x float> %i.clq, %i.cmi
  store <2 x float> %i.cmj, ptr %i.cmf, align 4, !tbaa !53
  %i.cmk = getelementptr i8, ptr %i.cme, i64 20
  store float %i.cmh, ptr %i.cmk, align 4, !tbaa !53
  %i.cml = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cmm = getelementptr i8, ptr %i.cml, i64 24
  %i.cmn = load float, ptr %i.cjk, align 4, !tbaa !53
  %i.cmo = fadd float %i.clw, %i.cmn
  %i.cmp = load <2 x float>, ptr %i.cjj, align 4, !tbaa !53
  %i.cmq = fadd <2 x float> %i.clq, %i.cmp
  store <2 x float> %i.cmq, ptr %i.cmm, align 4, !tbaa !53
  %i.cmr = getelementptr i8, ptr %i.cml, i64 32
  store float %i.cmo, ptr %i.cmr, align 4, !tbaa !53
  %i.cms = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cmt = getelementptr i8, ptr %i.cms, i64 36
  %i.cmu = load float, ptr %i.cjm, align 4, !tbaa !53
  %i.cmv = fadd float %i.clw, %i.cmu
  %i.cmw = load <2 x float>, ptr %i.cjl, align 4, !tbaa !53
  %i.cmx = fadd <2 x float> %i.clq, %i.cmw
  store <2 x float> %i.cmx, ptr %i.cmt, align 4, !tbaa !53
  %i.cmy = getelementptr i8, ptr %i.cms, i64 44
  store float %i.cmv, ptr %i.cmy, align 4, !tbaa !53
  %i.cmz = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cna = getelementptr i8, ptr %i.cmz, i64 48
  %i.cnb = load float, ptr %i.cjo, align 4, !tbaa !53
  %i.cnc = fadd float %i.clw, %i.cnb
  %i.cnd = load <2 x float>, ptr %i.cjn, align 4, !tbaa !53
  %i.cne = fadd <2 x float> %i.clq, %i.cnd
  store <2 x float> %i.cne, ptr %i.cna, align 4, !tbaa !53
  %i.cnf = getelementptr i8, ptr %i.cmz, i64 56
  store float %i.cnc, ptr %i.cnf, align 4, !tbaa !53
  %i.cng = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cnh = getelementptr i8, ptr %i.cng, i64 60
  %i.cni = load float, ptr %i.cjq, align 4, !tbaa !53
  %i.cnj = fadd float %i.clw, %i.cni
  %i.cnk = load <2 x float>, ptr %i.cjp, align 4, !tbaa !53
  %i.cnl = fadd <2 x float> %i.clq, %i.cnk
  store <2 x float> %i.cnl, ptr %i.cnh, align 4, !tbaa !53
  %i.cnm = getelementptr i8, ptr %i.cng, i64 68
  store float %i.cnj, ptr %i.cnm, align 4, !tbaa !53
  %i.cnn = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cno = getelementptr i8, ptr %i.cnn, i64 72
  %i.cnp = load float, ptr %i.cjs, align 4, !tbaa !53
  %i.cnq = fadd float %i.clw, %i.cnp
  %i.cnr = load <2 x float>, ptr %i.cjr, align 4, !tbaa !53
  %i.cns = fadd <2 x float> %i.clq, %i.cnr
  store <2 x float> %i.cns, ptr %i.cno, align 4, !tbaa !53
  %i.cnt = getelementptr i8, ptr %i.cnn, i64 80
  store float %i.cnq, ptr %i.cnt, align 4, !tbaa !53
  %i.cnu = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cnv = getelementptr i8, ptr %i.cnu, i64 84
  %i.cnw = load float, ptr %i.cju, align 4, !tbaa !53
  %i.cnx = fadd float %i.clw, %i.cnw
  %i.cny = load <2 x float>, ptr %i.cjt, align 4, !tbaa !53
  %i.cnz = fadd <2 x float> %i.clq, %i.cny
  store <2 x float> %i.cnz, ptr %i.cnv, align 4, !tbaa !53
  %i.coa = getelementptr i8, ptr %i.cnu, i64 92
  store float %i.cnx, ptr %i.coa, align 4, !tbaa !53
  %i.cob = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.coc = getelementptr i8, ptr %i.cob, i64 96
  %i.cod = load float, ptr %i.cjw, align 4, !tbaa !53
  %i.coe = fadd float %i.clw, %i.cod
  %i.cof = load <2 x float>, ptr %i.cjv, align 4, !tbaa !53
  %i.cog = fadd <2 x float> %i.clq, %i.cof
  store <2 x float> %i.cog, ptr %i.coc, align 4, !tbaa !53
  %i.coh = getelementptr i8, ptr %i.cob, i64 104
  store float %i.coe, ptr %i.coh, align 4, !tbaa !53
  %i.coi = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.coj = getelementptr i8, ptr %i.coi, i64 108
  %i.cok = load float, ptr %i.cjy, align 4, !tbaa !53
  %i.col = fadd float %i.clw, %i.cok
  %i.com = load <2 x float>, ptr %i.cjx, align 4, !tbaa !53
  %i.con = fadd <2 x float> %i.clq, %i.com
  store <2 x float> %i.con, ptr %i.coj, align 4, !tbaa !53
  %i.coo = getelementptr i8, ptr %i.coi, i64 116
  store float %i.col, ptr %i.coo, align 4, !tbaa !53
  %i.cop = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.coq = getelementptr i8, ptr %i.cop, i64 120
  %i.cor = load float, ptr %i.cka, align 4, !tbaa !53
  %i.cos = fadd float %i.clw, %i.cor
  %i.cot = load <2 x float>, ptr %i.cjz, align 4, !tbaa !53
  %i.cou = fadd <2 x float> %i.clq, %i.cot
  store <2 x float> %i.cou, ptr %i.coq, align 4, !tbaa !53
  %i.cov = getelementptr i8, ptr %i.cop, i64 128
  store float %i.cos, ptr %i.cov, align 4, !tbaa !53
  %i.cow = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cox = getelementptr i8, ptr %i.cow, i64 132
  %i.coy = load float, ptr %i.ckc, align 4, !tbaa !53
  %i.coz = fadd float %i.clw, %i.coy
  %i.cpa = load <2 x float>, ptr %i.ckb, align 4, !tbaa !53
  %i.cpb = fadd <2 x float> %i.clq, %i.cpa
  store <2 x float> %i.cpb, ptr %i.cox, align 4, !tbaa !53
  %i.cpc = getelementptr i8, ptr %i.cow, i64 140
  store float %i.coz, ptr %i.cpc, align 4, !tbaa !53
  %i.cpd = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cpe = getelementptr i8, ptr %i.cpd, i64 144
  %i.cpf = load float, ptr %i.cke, align 4, !tbaa !53
  %i.cpg = fadd float %i.clw, %i.cpf
  %i.cph = load <2 x float>, ptr %i.ckd, align 4, !tbaa !53
  %i.cpi = fadd <2 x float> %i.clq, %i.cph
  store <2 x float> %i.cpi, ptr %i.cpe, align 4, !tbaa !53
  %i.cpj = getelementptr i8, ptr %i.cpd, i64 152
  store float %i.cpg, ptr %i.cpj, align 4, !tbaa !53
  %i.cpk = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cpl = getelementptr i8, ptr %i.cpk, i64 156
  %i.cpm = load float, ptr %i.ckg, align 4, !tbaa !53
  %i.cpn = fadd float %i.clw, %i.cpm
  %i.cpo = load <2 x float>, ptr %i.ckf, align 4, !tbaa !53
  %i.cpp = fadd <2 x float> %i.clq, %i.cpo
  store <2 x float> %i.cpp, ptr %i.cpl, align 4, !tbaa !53
  %i.cpq = getelementptr i8, ptr %i.cpk, i64 164
  store float %i.cpn, ptr %i.cpq, align 4, !tbaa !53
  %i.cpr = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cps = getelementptr i8, ptr %i.cpr, i64 168
  %i.cpt = load float, ptr %i.cki, align 4, !tbaa !53
  %i.cpu = fadd float %i.clw, %i.cpt
  %i.cpv = load <2 x float>, ptr %i.ckh, align 4, !tbaa !53
  %i.cpw = fadd <2 x float> %i.clq, %i.cpv
  store <2 x float> %i.cpw, ptr %i.cps, align 4, !tbaa !53
  %i.cpx = getelementptr i8, ptr %i.cpr, i64 176
  store float %i.cpu, ptr %i.cpx, align 4, !tbaa !53
  %i.cpy = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cpz = getelementptr i8, ptr %i.cpy, i64 180
  %i.cqa = load float, ptr %i.ckk, align 4, !tbaa !53
  %i.cqb = fadd float %i.clw, %i.cqa
  %i.cqc = load <2 x float>, ptr %i.ckj, align 4, !tbaa !53
  %i.cqd = fadd <2 x float> %i.clq, %i.cqc
  store <2 x float> %i.cqd, ptr %i.cpz, align 4, !tbaa !53
  %i.cqe = getelementptr i8, ptr %i.cpy, i64 188
  store float %i.cqb, ptr %i.cqe, align 4, !tbaa !53
  %i.cqf = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cqg = getelementptr i8, ptr %i.cqf, i64 192
  %i.cqh = load float, ptr %i.ckm, align 4, !tbaa !53
  %i.cqi = fadd float %i.clw, %i.cqh
  %i.cqj = load <2 x float>, ptr %i.ckl, align 4, !tbaa !53
  %i.cqk = fadd <2 x float> %i.clq, %i.cqj
  store <2 x float> %i.cqk, ptr %i.cqg, align 4, !tbaa !53
  %i.cql = getelementptr i8, ptr %i.cqf, i64 200
  store float %i.cqi, ptr %i.cql, align 4, !tbaa !53
  %i.cqm = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cqn = getelementptr i8, ptr %i.cqm, i64 204
  %i.cqo = load float, ptr %i.cko, align 4, !tbaa !53
  %i.cqp = fadd float %i.clw, %i.cqo
  %i.cqq = load <2 x float>, ptr %i.ckn, align 4, !tbaa !53
  %i.cqr = fadd <2 x float> %i.clq, %i.cqq
  store <2 x float> %i.cqr, ptr %i.cqn, align 4, !tbaa !53
  %i.cqs = getelementptr i8, ptr %i.cqm, i64 212
  store float %i.cqp, ptr %i.cqs, align 4, !tbaa !53
  %i.cqt = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cqu = getelementptr i8, ptr %i.cqt, i64 216
  %i.cqv = load float, ptr %i.ckq, align 4, !tbaa !53
  %i.cqw = fadd float %i.clw, %i.cqv
  %i.cqx = load <2 x float>, ptr %i.ckp, align 4, !tbaa !53
  %i.cqy = fadd <2 x float> %i.clq, %i.cqx
  store <2 x float> %i.cqy, ptr %i.cqu, align 4, !tbaa !53
  %i.cqz = getelementptr i8, ptr %i.cqt, i64 224
  store float %i.cqw, ptr %i.cqz, align 4, !tbaa !53
  %i.cra = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.crb = getelementptr i8, ptr %i.cra, i64 228
  %i.crc = load float, ptr %i.cks, align 4, !tbaa !53
  %i.crd = fadd float %i.clw, %i.crc
  %i.cre = load <2 x float>, ptr %i.ckr, align 4, !tbaa !53
  %i.crf = fadd <2 x float> %i.clq, %i.cre
  store <2 x float> %i.crf, ptr %i.crb, align 4, !tbaa !53
  %i.crg = getelementptr i8, ptr %i.cra, i64 236
  store float %i.crd, ptr %i.crg, align 4, !tbaa !53
  %i.crh = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.cri = getelementptr i8, ptr %i.crh, i64 240
  %i.crj = load float, ptr %i.cku, align 4, !tbaa !53
  %i.crk = fadd float %i.clw, %i.crj
  %i.crl = load <2 x float>, ptr %i.ckt, align 4, !tbaa !53
  %i.crm = fadd <2 x float> %i.clq, %i.crl
  store <2 x float> %i.crm, ptr %i.cri, align 4, !tbaa !53
  %i.crn = getelementptr i8, ptr %i.crh, i64 248
  store float %i.crk, ptr %i.crn, align 4, !tbaa !53
  %i.cro = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.crp = getelementptr i8, ptr %i.cro, i64 252
  %i.crq = load float, ptr %i.ckw, align 4, !tbaa !53
  %i.crr = fadd float %i.clw, %i.crq
  %i.crs = load <2 x float>, ptr %i.ckv, align 4, !tbaa !53
  %i.crt = fadd <2 x float> %i.clq, %i.crs
  store <2 x float> %i.crt, ptr %i.crp, align 4, !tbaa !53
  %i.cru = getelementptr i8, ptr %i.cro, i64 260
  store float %i.crr, ptr %i.cru, align 4, !tbaa !53
  %i.crv = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.crw = getelementptr i8, ptr %i.crv, i64 264
  %i.crx = load float, ptr %i.cky, align 4, !tbaa !53
  %i.cry = fadd float %i.clw, %i.crx
  %i.crz = load <2 x float>, ptr %i.ckx, align 4, !tbaa !53
  %i.csa = fadd <2 x float> %i.clq, %i.crz
  store <2 x float> %i.csa, ptr %i.crw, align 4, !tbaa !53
  %i.csb = getelementptr i8, ptr %i.crv, i64 272
  store float %i.cry, ptr %i.csb, align 4, !tbaa !53
  %i.csc = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i ; 2 uses
  %i.csd = getelementptr i8, ptr %i.csc, i64 276
  %i.cse = load float, ptr %i.cla, align 4, !tbaa !53
  %i.csf = fadd float %i.clw, %i.cse
  %i.csg = load <2 x float>, ptr %i.ckz, align 4, !tbaa !53
  %i.csh = fadd <2 x float> %i.clq, %i.csg
  store <2 x float> %i.csh, ptr %i.csd, align 4, !tbaa !53
  %i.csi = getelementptr i8, ptr %i.csc, i64 284
  store float %i.csf, ptr %i.csi, align 4, !tbaa !53
  br label %.loopexit1151

vector.body1142:                                  ; preds = %.preheader6.us.us.i
  %broadcast.splatinsert1140 = insertelement <8 x float> poison, float %i.clw, i64 0 ; 3 uses
  %broadcast.splat1139 = shufflevector <2 x float> %i.clq, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %broadcast.splat1137 = shufflevector <2 x float> %i.clq, <2 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.csj = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i
  %wide.vec1144 = load <24 x float>, ptr %i.cix, align 4, !tbaa !53 ; 3 uses
  %strided.vec1145 = shufflevector <24 x float> %wide.vec1144, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1146 = shufflevector <24 x float> %wide.vec1144, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.csk = fadd <8 x float> %broadcast.splat1137, %strided.vec1145
  %i.csl = fadd <8 x float> %broadcast.splat1139, %strided.vec1146
  %i.csm = shufflevector <8 x float> %i.csk, <8 x float> %i.csl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.csn = shufflevector <8 x float> %broadcast.splatinsert1140, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cso = shufflevector <24 x float> %wide.vec1144, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csp = fadd <16 x float> %i.csn, %i.cso
  %interleaved.vec1148 = shufflevector <16 x float> %i.csm, <16 x float> %i.csp, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1148, ptr %i.csj, align 4, !tbaa !53
  %i.csq = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i
  %32 = getelementptr i8, ptr %i.csq, i64 96
  %wide.vec1144.1 = load <24 x float>, ptr %i.cje, align 4, !tbaa !53 ; 3 uses
  %strided.vec1145.1 = shufflevector <24 x float> %wide.vec1144.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1146.1 = shufflevector <24 x float> %wide.vec1144.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.csr = fadd <8 x float> %broadcast.splat1137, %strided.vec1145.1
  %i.css = fadd <8 x float> %broadcast.splat1139, %strided.vec1146.1
  %i.cst = shufflevector <8 x float> %i.csr, <8 x float> %i.css, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.csu = shufflevector <8 x float> %broadcast.splatinsert1140, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csv = shufflevector <24 x float> %wide.vec1144.1, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.csw = fadd <16 x float> %i.csu, %i.csv
  %interleaved.vec1148.1 = shufflevector <16 x float> %i.cst, <16 x float> %i.csw, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1148.1, ptr %32, align 4, !tbaa !53
  %i.csx = getelementptr [12 x i8], ptr %i.cix, i64 %.223.us.us.i
  %33 = getelementptr i8, ptr %i.csx, i64 192
  %wide.vec1144.2 = load <24 x float>, ptr %i.cjf, align 4, !tbaa !53 ; 3 uses
  %strided.vec1145.2 = shufflevector <24 x float> %wide.vec1144.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1146.2 = shufflevector <24 x float> %wide.vec1144.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.csy = fadd <8 x float> %broadcast.splat1137, %strided.vec1145.2
  %i.csz = fadd <8 x float> %broadcast.splat1139, %strided.vec1146.2
  %i.cta = shufflevector <8 x float> %i.csy, <8 x float> %i.csz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ctb = shufflevector <8 x float> %broadcast.splatinsert1140, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctc = shufflevector <24 x float> %wide.vec1144.2, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctd = fadd <16 x float> %i.ctb, %i.ctc
  %interleaved.vec1148.2 = shufflevector <16 x float> %i.cta, <16 x float> %i.ctd, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1148.2, ptr %33, align 4, !tbaa !53
  br label %.loopexit1151

._crit_edge.us.us.i:                              ; preds = %.loopexit1151
  %i.cte = add nuw nsw i32 %.09126.us.us.i, 1     ; 2 uses
  %exitcond51.not.i = icmp eq i32 %i.cte, %i.cfa
  br i1 %exitcond51.not.i, label %._crit_edge27.split.us.us.i, label %.preheader7.us.us.i, !llvm.loop !160

._crit_edge27.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %i.ctf = add nuw nsw i32 %.030.us.i, 1          ; 2 uses
  %exitcond52.not.i = icmp eq i32 %i.ctf, %i.cfd
  br i1 %exitcond52.not.i, label %.preheader4.i, label %.preheader8.us.i, !llvm.loop !161

.preheader4.i:                                    ; preds = %._crit_edge27.split.us.us.i, %.preheader8.lr.ph.i, %.noexc509
  %i.ctg = icmp sgt i32 %i.cff, 0
  br i1 %i.ctg, label %.lr.ph.preheader.i492, label %._crit_edge.i491

.lr.ph.preheader.i492:                            ; preds = %.preheader4.i
  %wide.trip.count.i493 = zext nneg i32 %i.civ to i64
  br label %.lr.ph.i494

.lr.ph.i494:                                      ; preds = %.noexc510, %.lr.ph.preheader.i492
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.preheader.i492 ], [ %indvars.iv.next54.i, %.noexc510 ] ; 3 uses
  %indvars55.i = trunc i64 %indvars.iv53.i to i32 ; 3 uses
  %i.cth = udiv i32 %indvars55.i, 24
  %i.cti = trunc i32 %i.cth to i8
  %i.ctj = add i8 %i.cti, 75
  %i.ctk = add nsw i32 %i.cev, %indvars55.i
  %i.ctl = getelementptr inbounds nuw [12 x i8], ptr %i.cix, i64 %indvars.iv53.i ; 2 uses
  %i.ctm = load float, ptr %i.ctl, align 4, !tbaa !53
  %i.ctn = fmul float %i.ctm, 1.000000e+01
  %i.cto = getelementptr inbounds nuw i8, ptr %i.ctl, i64 4
  %i.ctp = load <2 x float>, ptr %i.cto, align 4, !tbaa !53
  %i.ctq = fmul <2 x float> %i.ctp, splat (float 1.000000e+01) ; 2 uses
  %i.ctr = add i32 %i.ceu, %indvars55.i
  %i.cts = extractelement <2 x float> %i.ctq, i64 0
  %i.ctt = extractelement <2 x float> %i.ctq, i64 1
  %i.ctu = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.box, i32 noundef 0, i32 noundef %i.ctr, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext %i.ctj, i32 noundef %i.ctk, i8 noundef signext 32, float noundef %i.ctn, float noundef %i.cts, float noundef %i.ctt, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc510 unwind label %.loopexit548 ; 0 uses

.noexc510:                                        ; preds = %.lr.ph.i494
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i493
  br i1 %exitcond56.not.i, label %.preheader.preheader.i, label %.lr.ph.i494, !llvm.loop !162

._crit_edge.i491:                                 ; preds = %.preheader4.i
  %i.ctv = invoke noundef ptr @_Z22compact_unitcell_edgesv()
          to label %._crit_edge36.i unwind label %.loopexit.split-lp ; 0 uses

.preheader.preheader.i:                           ; preds = %.noexc510
  %i.ctw = invoke noundef ptr @_Z22compact_unitcell_edgesv()
          to label %.preheader.i495 unwind label %.loopexit.split-lp

.preheader.i495:                                  ; preds = %.preheader.preheader.i, %bb.lg
  %.435.i = phi i32 [ %i.cug, %bb.lg ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.ctx = mul nuw nsw i32 %.435.i, 24
  %i.cty = add nsw i32 %i.ctx, %i.ceu             ; 2 uses
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lf, %.preheader.i495
  %indvars.iv57.i = phi i64 [ 0, %.preheader.i495 ], [ %indvars.iv.next58.i, %bb.lf ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv57.i, 3
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctw, i64 %.idx.i ; 2 uses
  %i.cua = load i32, ptr %i.ctz, align 4, !tbaa !9
  %i.cub = add nsw i32 %i.cua, %i.cty
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.ctz, i64 4
  %i.cud = load i32, ptr %i.cuc, align 4, !tbaa !9
  %i.cue = add nsw i32 %i.cud, %i.cty
  %i.cuf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.box, ptr noundef nonnull @.str.223, i32 noundef %i.cub, i32 noundef %i.cue) #20 ; 0 uses
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 36
  br i1 %exitcond60.not.i, label %bb.lg, label %bb.lf, !llvm.loop !163

bb.lg:                                            ; preds = %bb.lf
  %i.cug = add nuw nsw i32 %.435.i, 1             ; 2 uses
  %exitcond61.not.i = icmp eq i32 %i.cug, %i.cff
  br i1 %exitcond61.not.i, label %._crit_edge36.i, label %.preheader.i495, !llvm.loop !164

._crit_edge36.i:                                  ; preds = %bb.lg, %._crit_edge.i491
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.142, i32 noundef 461, ptr noundef %i.cix)
          to label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit unwind label %.loopexit.split-lp

_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit:      ; preds = %.noexc507, %._crit_edge36.i, %bb.kz
  %i.cuh = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.box)
          to label %bb.lo unwind label %.loopexit.split-lp ; 0 uses

bb.lh:                                            ; preds = %_ZL11renum_resnrP7t_atomsiPKii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext 2)
          to label %bb.li unwind label %bb.ll

bb.li:                                            ; preds = %bb.lh
  %i.cui = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.cuj = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.cuk = load ptr, ptr %i.y, align 8
  %i.cul = select i1 %.lcssa598860, ptr %i.cuk, ptr null
  %i.cum = load i32, ptr %i.ac, align 4, !tbaa !51
  invoke void @_Z14write_sto_confRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef %i.cui, ptr noundef nonnull %12, ptr noundef %i.cuj, ptr noundef %i.cul, i32 noundef %i.cum, ptr noundef nonnull %i.ad)
          to label %bb.lj unwind label %bb.lm

bb.lj:                                            ; preds = %bb.li
  %i.cun = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  %i.cuo = load ptr, ptr %i.cun, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i514 = icmp eq ptr %i.cuo, null
  br i1 %.not.i.i.i514, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i515, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cun, ptr noundef nonnull %i.cuo) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i515

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i515: ; preds = %bb.lk, %bb.lj
  %i.cup = load ptr, ptr %31, align 8, !tbaa !37  ; 2 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.cur = icmp eq ptr %i.cup, %i.cuq
  br i1 %i.cur, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit518, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i515
  %i.cus = load i64, ptr %i.cuq, align 8, !tbaa !34
  %i.cut = add i64 %i.cus, 1
  call void @_ZdlPvm(ptr noundef %i.cup, i64 noundef %i.cut) #23
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit518

_ZNSt10filesystem7__cxx114pathD2Ev.exit518:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i515, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.lo

bb.ll:                                            ; preds = %bb.lh
  %i.cuu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.lm:                                            ; preds = %bb.li
  %i.cuv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %31) #20
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %.pn348 = phi { ptr, i32 } [ %i.cuv, %bb.lm ], [ %i.cuu, %bb.ll ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %.body

bb.lo:                                            ; preds = %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit, %_ZNSt10filesystem7__cxx114pathD2Ev.exit518, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit464
  invoke void @_Z9done_atomP7t_atoms(ptr noundef nonnull %12)
          to label %bb.lp unwind label %.loopexit.split-lp552.loopexit.split-lp

bb.lp:                                            ; preds = %bb.lo
  invoke void @_Z11done_symtabP8t_symtab(ptr noundef nonnull %11)
          to label %bb.lq unwind label %.loopexit.split-lp552.loopexit.split-lp

bb.lq:                                            ; preds = %bb.lp
  %i.cuw = load ptr, ptr %i.ai, align 8, !tbaa !33
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.142, i32 noundef 1406, ptr noundef %i.cuw)
          to label %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit520 unwind label %.loopexit.split-lp552.loopexit.split-lp

_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit520:        ; preds = %bb.lq
  %i.cux = load ptr, ptr %i.x, align 8, !tbaa !87 ; 2 uses
  %.not358 = icmp eq ptr %i.cux, null
  br i1 %.not358, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit, label %bb.lr

bb.lr:                                            ; preds = %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit520
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.142, i32 noundef 1409, ptr noundef nonnull %i.cux)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit unwind label %.loopexit.split-lp552.loopexit.split-lp

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit:        ; preds = %bb.lr, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit520
  %i.cuy = load ptr, ptr %i.y, align 8, !tbaa !87 ; 2 uses
  %.not359 = icmp eq ptr %i.cuy, null
  br i1 %.not359, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit523, label %bb.ls

bb.ls:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.142, i32 noundef 1413, ptr noundef nonnull %i.cuy)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit523 unwind label %.loopexit.split-lp552.loopexit.split-lp

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit523:     ; preds = %bb.ls, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  %i.cuz = load ptr, ptr %i.ah, align 8, !tbaa !165
  %i.cva = load ptr, ptr %i.l, align 8, !tbaa !33
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.cuz, ptr noundef %i.cva, ptr noundef null)
          to label %bb.lt unwind label %.loopexit.split-lp552.loopexit.split-lp

bb.lt:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit523
  %i.cvb = load ptr, ptr %i.ah, align 8, !tbaa !165
  invoke void @_Z15output_env_doneP16gmx_output_env_t(ptr noundef %i.cvb)
          to label %bb.lu unwind label %.loopexit.split-lp552.loopexit.split-lp

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN14AtomPropertiesD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.lx

.body:                                            ; preds = %.loopexit548, %.loopexit.split-lp, %.loopexit551, %.loopexit.split-lp552.loopexit.split-lp, %.loopexit.split-lp552.loopexit, %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %bb.ln, %bb.kg, %bb.jp, %bb.gr, %bb.gc, %bb.fs, %bb.fk, %bb.ez, %bb.ea, %bb.dl, %bb.de, %bb.bw, %bb.bp, %bb.az
  %.pn375.pn = phi { ptr, i32 } [ %.pn375, %bb.bw ], [ %.pn, %bb.az ], [ %.pn367, %bb.de ], [ %.pn365, %bb.dl ], [ %.pn363, %bb.fs ], [ %.pn360.pn, %bb.jp ], [ %i.pq, %bb.dq ], [ %lpad.loopexit.split-lp558, %.loopexit.split-lp552.loopexit.split-lp ], [ %.pn350, %bb.kg ], [ %.pn348, %bb.ln ], [ %.pn371.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ], [ %.pn342, %bb.gr ], [ %.pn340, %bb.gc ], [ %.pn338, %bb.fk ], [ %.pn334, %bb.ez ], [ %.pn332, %bb.ea ], [ %.pn327, %bb.bp ], [ %lpad.loopexit553, %.loopexit551 ], [ %lpad.loopexit557, %.loopexit.split-lp552.loopexit ], [ %lpad.loopexit, %.loopexit548 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.lv

bb.lv:                                            ; preds = %.body, %bb.aq, %bb.aj
  %.pn380.pn = phi { ptr, i32 } [ %.pn380, %bb.aj ], [ %.pn378, %bb.aq ], [ %.pn375.pn, %.body ]
  call void @_ZN14AtomPropertiesD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %bb.lw

end_hunk_0
begin_hunk_1_@_Z14matrix_convertPA3_fPKfS2_

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

declare void @_Z15calc_box_centeriPA3_KfPf(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z19gmx_conect_generatePK10t_topology(ptr noundef) local_unnamed_addr #3

declare void @_Z17opt2path_optionalB5cxx11PKciPK8t_filenm(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL11renum_resnrP7t_atomsiPKii(ptr nofree readonly captures(none) %.8.val, ptr nofree writeonly captures(none) %.48.val, i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  %wide.trip.count9 = zext nneg i32 %0 to i64     ; 4 uses
  br i1 %i.b, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count9, 3        ; 3 uses
  %i.c = icmp ult i32 %0, 4
  br i1 %i.c, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count9, 2147483644
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter18 = and i64 %wide.trip.count9, 3      ; 3 uses
  %i.d = icmp ult i32 %0, 4
  br i1 %i.d, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter22 = and i64 %wide.trip.count9, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.f, %.lr.ph.split.us.preheader.new
  %indvars.iv6 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next7.3, %bb.f ] ; 5 uses
  %.03.us = phi i32 [ %2, %.lr.ph.split.us.preheader.new ], [ %.1.us.3, %bb.f ] ; 3 uses
  %.0142.us = phi i32 [ -1, %.lr.ph.split.us.preheader.new ], [ %i.ab, %bb.f ]
  %niter23 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter23.next.3, %bb.f ]
  %i.e = getelementptr inbounds nuw [36 x i8], ptr %.8.val, i64 %indvars.iv6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !67   ; 3 uses
  %.not.us = icmp eq i32 %i.g, %.0142.us
  br i1 %.not.us, label %.lr.ph.split.us.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %.03.us, ptr %i.j, align 8, !tbaa !93
  %i.k = add nuw nsw i32 %.03.us, 1
  br label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %bb.b, %.lr.ph.split.us
  %.1.us = phi i32 [ %i.k, %bb.b ], [ %.03.us, %.lr.ph.split.us ] ; 3 uses
  %i.l = getelementptr inbounds nuw [36 x i8], ptr %.8.val, i64 %indvars.iv6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !67   ; 3 uses
  %.not.us.1 = icmp eq i32 %i.n, %i.g
  br i1 %.not.us.1, label %.lr.ph.split.us.2, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %.1.us, ptr %i.q, align 8, !tbaa !93
  %i.r = add nuw nsw i32 %.1.us, 1
  br label %.lr.ph.split.us.2

.lr.ph.split.us.2:                                ; preds = %bb.c, %.lr.ph.split.us.1
  %.1.us.1 = phi i32 [ %i.r, %bb.c ], [ %.1.us, %.lr.ph.split.us.1 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [36 x i8], ptr %.8.val, i64 %indvars.iv6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67   ; 3 uses
  %.not.us.2 = icmp eq i32 %i.u, %i.n
  br i1 %.not.us.2, label %.lr.ph.split.us.3, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.2
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %.1.us.1, ptr %i.x, align 8, !tbaa !93
  %i.y = add nuw nsw i32 %.1.us.1, 1
  br label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %bb.d, %.lr.ph.split.us.2
  %.1.us.2 = phi i32 [ %i.y, %bb.d ], [ %.1.us.1, %.lr.ph.split.us.2 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [36 x i8], ptr %.8.val, i64 %indvars.iv6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 132
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !67 ; 4 uses
  %.not.us.3 = icmp eq i32 %i.ab, %i.u
  br i1 %.not.us.3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %.1.us.2, ptr %i.ae, align 8, !tbaa !93
  %i.af = add nuw nsw i32 %.1.us.2, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us.3
  %.1.us.3 = phi i32 [ %i.af, %bb.e ], [ %.1.us.2, %.lr.ph.split.us.3 ] ; 2 uses
  %indvars.iv.next7.3 = add nuw nsw i64 %indvars.iv6, 4 ; 2 uses
  %niter23.next.3 = add i64 %niter23, 4           ; 2 uses
  %niter23.ncmp.3 = icmp eq i64 %niter23.next.3, %unroll_iter22
  br i1 %niter23.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !130

.lr.ph.split:                                     ; preds = %bb.k, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.3, %bb.k ] ; 5 uses
  %.03 = phi i32 [ %2, %.lr.ph.split.preheader.new ], [ %.1.3, %bb.k ] ; 3 uses
  %.0142 = phi i32 [ -1, %.lr.ph.split.preheader.new ], [ %i.bs, %bb.k ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %bb.k ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [36 x i8], ptr %.8.val, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !67 ; 3 uses
  %.not = icmp eq i32 %i.al, %.0142
  br i1 %.not, label %.lr.ph.split.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %.03, ptr %i.ao, align 8, !tbaa !93
  %i.ap = add nuw nsw i32 %.03, 1
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.g, %.lr.ph.split
  %.1 = phi i32 [ %i.ap, %bb.g ], [ %.03, %.lr.ph.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [36 x i8], ptr %.8.val, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !67 ; 3 uses
  %.not.1 = icmp eq i32 %i.aw, %i.al
  br i1 %.not.1, label %.lr.ph.split.2, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %.1, ptr %i.az, align 8, !tbaa !93
  %i.ba = add nuw nsw i32 %.1, 1
  br label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %bb.h, %.lr.ph.split.1
  %.1.1 = phi i32 [ %i.ba, %bb.h ], [ %.1, %.lr.ph.split.1 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [36 x i8], ptr %.8.val, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !67 ; 3 uses
  %.not.2 = icmp eq i32 %i.bh, %i.aw
  br i1 %.not.2, label %.lr.ph.split.3, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.2
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %.1.1, ptr %i.bk, align 8, !tbaa !93
  %i.bl = add nuw nsw i32 %.1.1, 1
  br label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %bb.i, %.lr.ph.split.2
  %.1.2 = phi i32 [ %i.bl, %bb.i ], [ %.1.1, %.lr.ph.split.2 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [36 x i8], ptr %.8.val, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !67 ; 4 uses
  %.not.3 = icmp eq i32 %i.bs, %i.bh
  br i1 %.not.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.3
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %.1.2, ptr %i.bv, align 8, !tbaa !93
  %i.bw = add nuw nsw i32 %.1.2, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.3
  %.1.3 = phi i32 [ %i.bw, %bb.j ], [ %.1.2, %.lr.ph.split.3 ] ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit16.unr-lcssa, label %.lr.ph.split, !llvm.loop !130

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod20.not = icmp eq i64 %xtraiter18, 0
  br i1 %lcmp.mod20.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv6.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next7.3, %._crit_edge.loopexit.unr-lcssa ]
  %.03.us.epil.init = phi i32 [ %2, %.lr.ph.split.us.preheader ], [ %.1.us.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0142.us.epil.init = phi i32 [ -1, %.lr.ph.split.us.preheader ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter18, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %bb.m, %.lr.ph.split.us.epil.preheader
  %indvars.iv6.epil = phi i64 [ %indvars.iv.next7.epil, %bb.m ], [ %indvars.iv6.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %.03.us.epil = phi i32 [ %.1.us.epil, %bb.m ], [ %.03.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %.0142.us.epil = phi i32 [ %i.bz, %bb.m ], [ %.0142.us.epil.init, %.lr.ph.split.us.epil.preheader ]
  %epil.iter19 = phi i64 [ %epil.iter19.next, %bb.m ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [36 x i8], ptr %.8.val, i64 %indvars.iv6.epil
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !67 ; 3 uses
  %.not.us.epil = icmp eq i32 %i.bz, %.0142.us.epil
  br i1 %.not.us.epil, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.epil
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %.03.us.epil, ptr %i.cc, align 8, !tbaa !93
  %i.cd = add nuw nsw i32 %.03.us.epil, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.epil
  %.1.us.epil = phi i32 [ %i.cd, %bb.l ], [ %.03.us.epil, %.lr.ph.split.us.epil ]
  %indvars.iv.next7.epil = add nuw nsw i64 %indvars.iv6.epil, 1
  %epil.iter19.next = add i64 %epil.iter19, 1     ; 2 uses
  %epil.iter19.cmp.not = icmp eq i64 %epil.iter19.next, %xtraiter18
  br i1 %epil.iter19.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !174

._crit_edge.loopexit16.unr-lcssa:                 ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit16.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit16.unr-lcssa ]
  %.03.epil.init = phi i32 [ %2, %.lr.ph.split.preheader ], [ %.1.3, %._crit_edge.loopexit16.unr-lcssa ]
  %.0142.epil.init = phi i32 [ -1, %.lr.ph.split.preheader ], [ %i.bs, %._crit_edge.loopexit16.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %bb.o, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.o ], [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ] ; 2 uses
  %.03.epil = phi i32 [ %.1.epil, %bb.o ], [ %.03.epil.init, %.lr.ph.split.epil.preheader ] ; 3 uses
  %.0142.epil = phi i32 [ %i.cj, %bb.o ], [ %.0142.epil.init, %.lr.ph.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.o ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [36 x i8], ptr %.8.val, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !67 ; 3 uses
  %.not.epil = icmp eq i32 %i.cj, %.0142.epil
  br i1 %.not.epil, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.epil
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [32 x i8], ptr %.48.val, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %.03.epil, ptr %i.cm, align 8, !tbaa !93
  %i.cn = add nuw nsw i32 %.03.epil, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.epil
  %.1.epil = phi i32 [ %i.cn, %bb.n ], [ %.03.epil, %.lr.ph.split.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.epil, !llvm.loop !175

._crit_edge:                                      ; preds = %._crit_edge.loopexit16.unr-lcssa, %bb.o, %._crit_edge.loopexit.unr-lcssa, %bb.m, %bb.a
  ret void
}

declare noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_Z21write_pdbfile_indexedP8_IO_FILEPKcPK7t_atomsPA3_Kf7PbcTypeS8_ciiPKiP12gmx_conect_tbb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z22write_sto_conf_indexedRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_iPi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL9read_bfacPKcPiPPdPS1_(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call noundef i32 @_Z9get_linesPKcPPPc(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !9
  %i.c = sext i32 %i.b to i64
  %i.d = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.142, i32 noundef 221, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8)
  store ptr %i.d, ptr %2, align 8, !tbaa !10
  %i.e = load i32, ptr %1, align 4, !tbaa !9
  %i.f = sext i32 %i.e to i64
  %i.g = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.142, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef 4)
  store ptr %i.g, ptr %3, align 8, !tbaa !13
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.i = load i32, ptr %1, align 4, !tbaa !9
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.209, i32 noundef %i.i, ptr noundef %0) #25 ; 0 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !9
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = load ptr, ptr %3, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %2, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.o, ptr noundef nonnull @.str.210, ptr noundef %i.q, ptr noundef %i.s) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !9
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !176

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14write_sto_confRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9done_atomP7t_atoms(ptr noundef) local_unnamed_addr #3

declare void @_Z11done_symtabP8t_symtab(ptr noundef) local_unnamed_addr #3

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z15output_env_doneP16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN14AtomPropertiesD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !34
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !169

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !170
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}
end_hunk_1
