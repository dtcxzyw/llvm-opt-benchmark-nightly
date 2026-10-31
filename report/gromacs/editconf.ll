Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/editconf?download=true
inline.NumInlined: 264
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z12gmx_editconfiPPc:bb.a
  %i.ccq = extractelement <4 x double> %i.cbr, i64 0
  %i.ccr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbm, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbb, i32 noundef 32, double noundef %i.ccq, double noundef %i.cbf, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccp) #20 ; 0 uses
  %i.ccs = extractelement <4 x double> %i.cco, i64 1
  %i.cct = extractelement <4 x double> %i.cbr, i64 1
  %i.ccu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbn, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbb, i32 noundef 32, double noundef %i.cct, double noundef %i.cbf, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccs) #20 ; 0 uses
  %i.ccv = extractelement <4 x double> %i.cco, i64 2
  %i.ccw = extractelement <4 x double> %i.cbr, i64 2
  %i.ccx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbo, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbb, i32 noundef 32, double noundef %i.ccw, double noundef %i.cbf, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccv) #20 ; 0 uses
  %i.ccy = extractelement <4 x double> %i.cco, i64 3
  %i.ccz = extractelement <4 x double> %i.cbr, i64 3
  %i.cda = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbp, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbb, i32 noundef 32, double noundef %i.ccz, double noundef %i.cbf, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccy) #20 ; 0 uses
  %i.cdb = add nsw i32 %i.bzb, 10
  %i.cdc = fadd double %i.cbe, 1.080000e+00
  %i.cdd = fmul double %i.cdc, 1.000000e+01
  %i.cde = fmul double %i.cbs, 8.000000e+00
  %i.cdf = fdiv double %i.cde, 1.000000e+01
  %i.cdg = fadd double %i.cdf, %i.cay
  %i.cdh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdb, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbb, i32 noundef 32, double noundef %i.cdd, double noundef %i.cbf, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdg) #20 ; 0 uses
  %i.cdi = add nsw i32 %i.bzb, 11
  %i.cdj = fadd double %i.cbe, 1.200000e+00
  %i.cdk = fmul double %i.cdj, 1.000000e+01
  %i.cdl = add nsw i32 %i.bzb, 12
  %i.cdm = fadd double %i.cbe, f0x3FF51EB851EB851E
  %i.cdn = fmul double %i.cdm, 1.000000e+01
  %i.cdo = insertelement <2 x double> poison, double %i.cbs, i64 0
  %i.cdp = shufflevector <2 x double> %i.cdo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cdq = fmul <2 x double> %i.cdp, <double 9.000000e+00, double 1.000000e+01>
  %i.cdr = fdiv <2 x double> %i.cdq, splat (double 1.000000e+01) ; 2 uses
  %i.cds = extractelement <2 x double> %i.cdr, i64 0
  %i.cdt = fadd double %i.cds, %i.cay
  %i.cdu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdi, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbb, i32 noundef 32, double noundef %i.cdk, double noundef %i.cbf, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdt) #20 ; 0 uses
  %i.cdv = extractelement <2 x double> %i.cdr, i64 1
  %i.cdw = fadd double %i.cdv, %i.cay
  %i.cdx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdl, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbb, i32 noundef 32, double noundef %i.cdn, double noundef %i.cbf, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdw) #20 ; 0 uses
  br label %bb.ky

bb.ky:                                            ; preds = %_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit494
  %i.cdy = load float, ptr @_ZZ12gmx_editconfiPPcE6visbox, align 4, !tbaa !35 ; 2 uses
  %i.cdz = fcmp ogt float %i.cdy, 0.000000e+00
  br i1 %i.cdz, label %bb.kz, label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit

bb.kz:                                            ; preds = %bb.ky
  %i.cea = load i8, ptr @_ZZ12gmx_editconfiPPcE7bLegend, align 1, !tbaa !118, !range !23, !noundef !25
  %i.ceb = trunc nuw i8 %i.cea to i1              ; 2 uses
  %i.cec = load i32, ptr %12, align 8             ; 2 uses
  %i.ced = add nsw i32 %i.cec, 12
  %i.cee = select i1 %i.ceb, i32 %i.ced, i32 %i.cec ; 8 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  br i1 %i.ceb, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  store i32 12, ptr %i.cef, align 8, !tbaa !164
  br label %bb.lc

bb.lb:                                            ; preds = %bb.kz
  %i.ceg = load i32, ptr %i.cef, align 8, !tbaa !164
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  %i.ceh = phi i32 [ 12, %bb.la ], [ %i.ceg, %bb.lb ] ; 8 uses
  %i.cei = add nsw i32 %i.cee, 1                  ; 6 uses
  %i.cej = add nsw i32 %i.ceh, 1                  ; 2 uses
  %i.cek = call float @llvm.rint.f32(float %i.cdy)
  %i.cel = fptosi float %i.cek to i32             ; 3 uses
  %i.cem = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 4), align 4, !tbaa !35
  %i.cen = call float @llvm.rint.f32(float %i.cem)
  %i.ceo = fptosi float %i.cen to i32             ; 3 uses
  %i.cep = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 8), align 4, !tbaa !35
  %i.ceq = call float @llvm.rint.f32(float %i.cep)
  %i.cer = fptosi float %i.ceq to i32             ; 3 uses
  %i.ces = mul i32 %i.ceo, %i.cel
  %i.cet = mul i32 %i.ces, %i.cer                 ; 3 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.cev = load float, ptr %i.ceu, align 4, !tbaa !35
  %i.cew = fcmp une float %i.cev, 0.000000e+00
  %i.cex = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.cey = load float, ptr %i.cex, align 8
  %i.cez = fcmp une float %i.cey, 0.000000e+00
  %or.cond555 = select i1 %i.cew, i1 true, i1 %i.cez
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.cfb = load float, ptr %i.cfa, align 4
  %i.cfc = fcmp une float %i.cfb, 0.000000e+00
  %or.cond558 = select i1 %or.cond555, i1 true, i1 %i.cfc
  br i1 %or.cond558, label %bb.ld, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.lc
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 8 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 8 uses
  %i.cff = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfg = fmul float %i.cff, 0.000000e+00
  %i.cfh = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cfi = fmul float %i.cfh, 0.000000e+00
  %i.cfj = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cfk = fmul float %i.cfj, 0.000000e+00
  %i.cfl = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.cei, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cej, i8 noundef signext 32, float noundef %i.cfg, float noundef %i.cfi, float noundef %i.cfk, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc511 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc511:                                        ; preds = %.preheader12.i
  %i.cfm = add nsw i32 %i.cee, 2                  ; 4 uses
  %i.cfn = add nsw i32 %i.ceh, 2
  %i.cfo = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfp = fmul float %i.cfo, 1.000000e+01
  %i.cfq = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cfr = fmul float %i.cfq, 0.000000e+00
  %i.cfs = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cft = fmul float %i.cfs, 0.000000e+00
  %i.cfu = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.cfm, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cfn, i8 noundef signext 32, float noundef %i.cfp, float noundef %i.cfr, float noundef %i.cft, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc512 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc512:                                        ; preds = %.noexc511
  %i.cfv = add nsw i32 %i.cee, 3                  ; 4 uses
  %i.cfw = add nsw i32 %i.ceh, 3
  %i.cfx = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfy = fmul float %i.cfx, 0.000000e+00
  %i.cfz = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cga = fmul float %i.cfz, 1.000000e+01
  %i.cgb = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cgc = fmul float %i.cgb, 0.000000e+00
  %i.cgd = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.cfv, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cfw, i8 noundef signext 32, float noundef %i.cfy, float noundef %i.cga, float noundef %i.cgc, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc513 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc513:                                        ; preds = %.noexc512
  %i.cge = add nsw i32 %i.cee, 4                  ; 4 uses
  %i.cgf = add nsw i32 %i.ceh, 4
  %i.cgg = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cgh = fmul float %i.cgg, 1.000000e+01
  %i.cgi = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cgj = fmul float %i.cgi, 1.000000e+01
  %i.cgk = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cgl = fmul float %i.cgk, 0.000000e+00
  %i.cgm = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.cge, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgf, i8 noundef signext 32, float noundef %i.cgh, float noundef %i.cgj, float noundef %i.cgl, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc514 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc514:                                        ; preds = %.noexc513
  %i.cgn = add nsw i32 %i.cee, 5                  ; 4 uses
  %i.cgo = add nsw i32 %i.ceh, 5
  %i.cgp = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cgq = fmul float %i.cgp, 0.000000e+00
  %i.cgr = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cgs = fmul float %i.cgr, 0.000000e+00
  %i.cgt = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cgu = fmul float %i.cgt, 1.000000e+01
  %i.cgv = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.cgn, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgo, i8 noundef signext 32, float noundef %i.cgq, float noundef %i.cgs, float noundef %i.cgu, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc515 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc515:                                        ; preds = %.noexc514
  %i.cgw = add nsw i32 %i.cee, 6                  ; 4 uses
  %i.cgx = add nsw i32 %i.ceh, 6
  %i.cgy = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cgz = fmul float %i.cgy, 1.000000e+01
  %i.cha = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.chb = fmul float %i.cha, 0.000000e+00
  %i.chc = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.chd = fmul float %i.chc, 1.000000e+01
  %i.che = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.cgw, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgx, i8 noundef signext 32, float noundef %i.cgz, float noundef %i.chb, float noundef %i.chd, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc516 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc516:                                        ; preds = %.noexc515
  %i.chf = add nsw i32 %i.cee, 7                  ; 4 uses
  %i.chg = add nsw i32 %i.ceh, 7
  %i.chh = load float, ptr %i.ad, align 16, !tbaa !35
  %i.chi = fmul float %i.chh, 0.000000e+00
  %i.chj = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.chk = fmul float %i.chj, 1.000000e+01
  %i.chl = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.chm = fmul float %i.chl, 1.000000e+01
  %i.chn = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.chf, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.chg, i8 noundef signext 32, float noundef %i.chi, float noundef %i.chk, float noundef %i.chm, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc517 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc517:                                        ; preds = %.noexc516
  %i.cho = add nsw i32 %i.cee, 8                  ; 4 uses
  %i.chp = add nsw i32 %i.ceh, 8
  %i.chq = load float, ptr %i.ad, align 16, !tbaa !35
  %i.chr = fmul float %i.chq, 1.000000e+01
  %i.chs = load float, ptr %i.cfd, align 16, !tbaa !35
  %i.cht = fmul float %i.chs, 1.000000e+01
  %i.chu = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.chv = fmul float %i.chu, 1.000000e+01
  %i.chw = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.boq, i32 noundef 0, i32 noundef %i.cho, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.chp, i8 noundef signext 32, float noundef %i.chr, float noundef %i.cht, float noundef %i.chv, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc518 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc518:                                        ; preds = %.noexc517
  %i.chx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cei, i32 noundef %i.cfm) #20 ; 0 uses
  %i.chy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cfm, i32 noundef %i.cge) #20 ; 0 uses
  %i.chz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cge, i32 noundef %i.cfv) #20 ; 0 uses
  %i.cia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cei, i32 noundef %i.cfv) #20 ; 0 uses
  %i.cib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cei, i32 noundef %i.cgn) #20 ; 0 uses
  %i.cic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cfm, i32 noundef %i.cgw) #20 ; 0 uses
  %i.cid = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cge, i32 noundef %i.cho) #20 ; 0 uses
  %i.cie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cfv, i32 noundef %i.chf) #20 ; 0 uses
  %i.cif = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cgn, i32 noundef %i.cgw) #20 ; 0 uses
  %i.cig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cgw, i32 noundef %i.cho) #20 ; 0 uses
  %i.cih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.cho, i32 noundef %i.chf) #20 ; 0 uses
  %i.cii = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.boq, ptr noundef nonnull @.str.223, i32 noundef %i.chf, i32 noundef %i.cgn) #20 ; 0 uses
  br label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit

bb.ld:                                            ; preds = %bb.lc
  %i.cij = mul nsw i32 %i.cet, 24                 ; 2 uses
  %i.cik = sext i32 %i.cij to i64
  %i.cil = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.142, i32 noundef 408, i64 noundef range(i64 -2147483648, 2147483648) %i.cik, i64 noundef 12)
          to label %.noexc519 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 91 uses

.noexc519:                                        ; preds = %bb.ld
  invoke void @_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f(i32 noundef 0, ptr noundef nonnull %i.ad, ptr noundef %i.cil)
          to label %.noexc520 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc520:                                        ; preds = %.noexc519
  %i.cim = icmp sgt i32 %i.cer, 0
  br i1 %i.cim, label %.preheader8.lr.ph.i, label %.preheader4.i

.preheader8.lr.ph.i:                              ; preds = %.noexc520
  %i.cin = icmp sgt i32 %i.ceo, 0
  %i.cio = icmp sgt i32 %i.cel, 0
  %or.cond.i507 = select i1 %i.cin, i1 %i.cio, i1 false
  br i1 %or.cond.i507, label %.preheader8.us.preheader.i, label %.preheader4.i

.preheader8.us.preheader.i:                       ; preds = %.preheader8.lr.ph.i
  %i.cip = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %scevgep1125 = getelementptr i8, ptr %i.cil, i64 280
  %32 = getelementptr i8, ptr %i.cil, <4 x i64> <i64 0, i64 4, i64 8, i64 0>
  %33 = getelementptr i8, ptr %i.cil, <2 x i64> <i64 0, i64 4>
  %scevgep1127 = getelementptr i8, ptr %i.cil, i64 4 ; 2 uses
  %34 = getelementptr i8, ptr %i.cil, <2 x i64> <i64 280, i64 284>
  %scevgep1129 = getelementptr i8, ptr %i.cil, i64 284 ; 2 uses
  %scevgep1131 = getelementptr i8, ptr %i.cil, i64 8 ; 3 uses
  %i.cis = getelementptr i8, ptr %i.cil, <4 x i64> <i64 280, i64 284, i64 288, i64 280>
  %scevgep1133 = getelementptr i8, ptr %i.cil, i64 288 ; 3 uses
  %i.cit = shufflevector <2 x ptr> %33, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ciu = shufflevector <2 x ptr> %34, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.civ = insertelement <4 x ptr> %i.ciu, ptr %scevgep1133, i64 3
  %i.ciw = insertelement <4 x ptr> %i.cit, ptr %scevgep1131, i64 3
  %i.cix = getelementptr inbounds nuw i8, ptr %i.cil, i64 96
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cil, i64 192
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cil, i64 8
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cil, i64 12
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cil, i64 20
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cil, i64 24
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cil, i64 32
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cil, i64 36
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cil, i64 44
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cil, i64 48
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cil, i64 56
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cil, i64 60
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cil, i64 68
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cil, i64 72
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cil, i64 80
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cil, i64 84
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cil, i64 92
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cil, i64 96
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cil, i64 104
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cil, i64 108
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cil, i64 116
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cil, i64 120
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cil, i64 128
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cil, i64 132
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cil, i64 140
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cil, i64 144
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cil, i64 152
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cil, i64 156
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cil, i64 164
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cil, i64 168
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cil, i64 176
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cil, i64 180
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cil, i64 188
  %i.cke = getelementptr inbounds nuw i8, ptr %i.cil, i64 192
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cil, i64 200
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cil, i64 204
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.cil, i64 212
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cil, i64 216
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.cil, i64 224
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.cil, i64 228
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.cil, i64 236
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.cil, i64 240
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.cil, i64 248
  %i.cko = getelementptr inbounds nuw i8, ptr %i.cil, i64 252
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cil, i64 260
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.cil, i64 264
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cil, i64 272
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cil, i64 276
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.cil, i64 284
  br label %.preheader8.us.i

.preheader8.us.i:                                 ; preds = %._crit_edge27.split.us.us.i, %.preheader8.us.preheader.i
  %.030.us.i = phi i32 [ %i.cub, %._crit_edge27.split.us.us.i ], [ 0, %.preheader8.us.preheader.i ] ; 2 uses
  %.09529.us.i = phi i64 [ %indvars.iv.next.i509.lcssa, %._crit_edge27.split.us.us.i ], [ 0, %.preheader8.us.preheader.i ]
  %i.cku = uitofp nneg i32 %.030.us.i to float    ; 2 uses
  %i.ckv = insertelement <2 x float> poison, float %i.cku, i64 0
  %i.ckw = shufflevector <2 x float> %i.ckv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader7.us.us.i

.preheader7.us.us.i:                              ; preds = %._crit_edge.us.us.i, %.preheader8.us.i
  %.09126.us.us.i = phi i32 [ 0, %.preheader8.us.i ], [ %i.cua, %._crit_edge.us.us.i ] ; 2 uses
  %.19625.us.us.i = phi i64 [ %.09529.us.i, %.preheader8.us.i ], [ %indvars.iv.next.i509.lcssa, %._crit_edge.us.us.i ]
  %i.ckx = uitofp nneg i32 %.09126.us.us.i to float ; 2 uses
  %i.cky = insertelement <2 x float> poison, float %i.ckx, i64 0
  %i.ckz = shufflevector <2 x float> %i.cky, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader6.us.us.i

.preheader6.us.us.i:                              ; preds = %middle.block1197, %.preheader7.us.us.i
  %.09324.us.us.i = phi i32 [ 0, %.preheader7.us.us.i ], [ %i.ctz, %middle.block1197 ] ; 2 uses
  %.223.us.us.i = phi i64 [ %.19625.us.us.i, %.preheader7.us.us.i ], [ %indvars.iv.next.i509.lcssa, %middle.block1197 ] ; 29 uses
  %i.cla = uitofp nneg i32 %.09324.us.us.i to float ; 2 uses
  %i.clb = load <2 x float>, ptr %i.ad, align 16, !tbaa !35
  %i.clc = load <2 x float>, ptr %i.ceu, align 4, !tbaa !35
  %i.cld = fmul <2 x float> %i.clc, %i.ckz
  %i.cle = insertelement <2 x float> poison, float %i.cla, i64 0
  %i.clf = shufflevector <2 x float> %i.cle, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clf, <2 x float> %i.clb, <2 x float> %i.cld)
  %i.clh = load <2 x float>, ptr %i.cex, align 8, !tbaa !35
  %i.cli = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ckw, <2 x float> %i.clh, <2 x float> %i.clg) ; 26 uses
  %i.clj = load float, ptr %i.cip, align 8, !tbaa !35
  %i.clk = load float, ptr %i.ciq, align 4, !tbaa !35
  %i.cll = fmul float %i.clk, %i.ckx
  %i.clm = call float @llvm.fmuladd.f32(float %i.cla, float %i.clj, float %i.cll)
  %i.cln = load float, ptr %i.cir, align 16, !tbaa !35
  %i.clo = call float @llvm.fmuladd.f32(float %i.cku, float %i.cln, float %i.clm) ; 25 uses
  %i.clp = mul i64 %.223.us.us.i, 12              ; 6 uses
  %scevgep = getelementptr i8, ptr %i.cil, i64 %i.clp ; 2 uses
  %scevgep1126 = getelementptr i8, ptr %scevgep1125, i64 %i.clp ; 2 uses
  %scevgep1128 = getelementptr i8, ptr %scevgep1127, i64 %i.clp ; 3 uses
  %scevgep1130 = getelementptr i8, ptr %scevgep1129, i64 %i.clp ; 3 uses
  %scevgep1132 = getelementptr i8, ptr %scevgep1131, i64 %i.clp ; 5 uses
  %scevgep1134 = getelementptr i8, ptr %scevgep1133, i64 %i.clp ; 5 uses
  %bound01135 = icmp ult ptr %scevgep, %scevgep1130
  %bound11136 = icmp ult ptr %scevgep1128, %scevgep1126
  %found.conflict1137 = and i1 %bound01135, %bound11136
  %bound01153 = icmp ult ptr %scevgep1128, %scevgep1134
  %bound11154 = icmp ult ptr %scevgep1132, %scevgep1130
  %35 = insertelement <4 x ptr> poison, ptr %scevgep1128, i64 0
  %36 = insertelement <4 x ptr> %35, ptr %scevgep1132, i64 1
  %i.clq = shufflevector <4 x ptr> %36, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %37 = icmp ult <4 x ptr> %i.clq, %i.cis
  %38 = insertelement <4 x ptr> poison, ptr %scevgep1130, i64 0
  %39 = insertelement <4 x ptr> %38, ptr %scevgep1134, i64 1
  %40 = shufflevector <4 x ptr> %39, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.clr = icmp ult <4 x ptr> %32, %40
  %i.cls = and <4 x i1> %37, %i.clr
  %bound01173 = icmp ult ptr %scevgep1132, %scevgep1129
  %bound11174 = icmp ult ptr %scevgep1127, %scevgep1134
  %bound01177 = icmp ult ptr %scevgep1132, %scevgep1133
  %bound11178 = icmp ult ptr %scevgep1131, %scevgep1134
  %i.clt = bitcast <4 x i1> %i.cls to i4
  %i.clu = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.clv = shufflevector <4 x ptr> %i.clu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.clw = insertelement <4 x ptr> %i.civ, ptr %scevgep1134, i64 0
  %i.clx = icmp ult <4 x ptr> %i.clv, %i.clw
  %i.cly = insertelement <4 x ptr> %i.ciw, ptr %scevgep1132, i64 0
  %i.clz = insertelement <4 x ptr> poison, ptr %scevgep1126, i64 0
  %i.cma = shufflevector <4 x ptr> %i.clz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cmb = icmp ult <4 x ptr> %i.cly, %i.cma
  %i.cmc = icmp ne i4 %i.clt, 0
  %i.cmd = insertelement <8 x i1> poison, i1 %bound01153, i64 4
  %i.cme = insertelement <8 x i1> %i.cmd, i1 %bound01173, i64 5
  %i.cmf = insertelement <8 x i1> %i.cme, i1 %bound01177, i64 6
  %i.cmg = insertelement <8 x i1> %i.cmf, i1 %i.cmc, i64 7
  %i.cmh = shufflevector <4 x i1> %i.clx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cmi = shufflevector <8 x i1> %i.cmh, <8 x i1> %i.cmg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cmj = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound11154, i64 4
  %i.cmk = insertelement <8 x i1> %i.cmj, i1 %bound11174, i64 5
  %i.cml = insertelement <8 x i1> %i.cmk, i1 %bound11178, i64 6
  %i.cmm = shufflevector <4 x i1> %i.cmb, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cmn = shufflevector <8 x i1> %i.cmm, <8 x i1> %i.cml, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cmo = and <8 x i1> %i.cmi, %i.cmn
  %i.cmp = bitcast <8 x i1> %i.cmo to i8
  %i.cmq = icmp ne i8 %i.cmp, 0
  %op.rdx1207 = or i1 %i.cmq, %found.conflict1137
  br i1 %op.rdx1207, label %scalar.ph1181, label %vector.body1189

vector.body1189:                                  ; preds = %.preheader6.us.us.i
  %broadcast.splatinsert1187 = insertelement <8 x float> poison, float %i.clo, i64 0 ; 3 uses
  %broadcast.splat1186 = shufflevector <2 x float> %i.cli, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %broadcast.splat1184 = shufflevector <2 x float> %i.cli, <2 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.cmr = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i
  %wide.vec1191 = load <24 x float>, ptr %i.cil, align 4, !tbaa !35 ; 3 uses
  %strided.vec1192 = shufflevector <24 x float> %wide.vec1191, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1193 = shufflevector <24 x float> %wide.vec1191, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cms = fadd <8 x float> %broadcast.splat1184, %strided.vec1192
  %i.cmt = fadd <8 x float> %broadcast.splat1186, %strided.vec1193
  %i.cmu = shufflevector <8 x float> %i.cms, <8 x float> %i.cmt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cmv = shufflevector <8 x float> %broadcast.splatinsert1187, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cmw = shufflevector <24 x float> %wide.vec1191, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cmx = fadd <16 x float> %i.cmv, %i.cmw
  %interleaved.vec1195 = shufflevector <16 x float> %i.cmu, <16 x float> %i.cmx, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1195, ptr %i.cmr, align 4, !tbaa !35
  %i.cmy = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i
  %i.cmz = getelementptr i8, ptr %i.cmy, i64 96
  %wide.vec1191.1 = load <24 x float>, ptr %i.cix, align 4, !tbaa !35 ; 3 uses
  %strided.vec1192.1 = shufflevector <24 x float> %wide.vec1191.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1193.1 = shufflevector <24 x float> %wide.vec1191.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cna = fadd <8 x float> %broadcast.splat1184, %strided.vec1192.1
  %i.cnb = fadd <8 x float> %broadcast.splat1186, %strided.vec1193.1
  %i.cnc = shufflevector <8 x float> %i.cna, <8 x float> %i.cnb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cnd = shufflevector <8 x float> %broadcast.splatinsert1187, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cne = shufflevector <24 x float> %wide.vec1191.1, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnf = fadd <16 x float> %i.cnd, %i.cne
  %interleaved.vec1195.1 = shufflevector <16 x float> %i.cnc, <16 x float> %i.cnf, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1195.1, ptr %i.cmz, align 4, !tbaa !35
  %i.cng = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i
  %i.cnh = getelementptr i8, ptr %i.cng, i64 192
  %wide.vec1191.2 = load <24 x float>, ptr %i.ciy, align 4, !tbaa !35 ; 3 uses
  %strided.vec1192.2 = shufflevector <24 x float> %wide.vec1191.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1193.2 = shufflevector <24 x float> %wide.vec1191.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cni = fadd <8 x float> %broadcast.splat1184, %strided.vec1192.2
  %i.cnj = fadd <8 x float> %broadcast.splat1186, %strided.vec1193.2
  %i.cnk = shufflevector <8 x float> %i.cni, <8 x float> %i.cnj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cnl = shufflevector <8 x float> %broadcast.splatinsert1187, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnm = shufflevector <24 x float> %wide.vec1191.2, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnn = fadd <16 x float> %i.cnl, %i.cnm
  %interleaved.vec1195.2 = shufflevector <16 x float> %i.cnk, <16 x float> %i.cnn, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1195.2, ptr %i.cnh, align 4, !tbaa !35
  br label %middle.block1197

scalar.ph1181:                                    ; preds = %.preheader6.us.us.i
  %i.cno = getelementptr inbounds [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cnp = load float, ptr %i.ciz, align 4, !tbaa !35
  %i.cnq = fadd float %i.clo, %i.cnp
  %i.cnr = load <2 x float>, ptr %i.cil, align 4, !tbaa !35
  %i.cns = fadd <2 x float> %i.cli, %i.cnr
  store <2 x float> %i.cns, ptr %i.cno, align 4, !tbaa !35
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cno, i64 8
  store float %i.cnq, ptr %i.cnt, align 4, !tbaa !35
  %i.cnu = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cnv = getelementptr i8, ptr %i.cnu, i64 12
  %i.cnw = load float, ptr %i.cjb, align 4, !tbaa !35
  %i.cnx = fadd float %i.clo, %i.cnw
  %i.cny = load <2 x float>, ptr %i.cja, align 4, !tbaa !35
  %i.cnz = fadd <2 x float> %i.cli, %i.cny
  store <2 x float> %i.cnz, ptr %i.cnv, align 4, !tbaa !35
  %i.coa = getelementptr i8, ptr %i.cnu, i64 20
  store float %i.cnx, ptr %i.coa, align 4, !tbaa !35
  %i.cob = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.coc = getelementptr i8, ptr %i.cob, i64 24
  %i.cod = load float, ptr %i.cjd, align 4, !tbaa !35
  %i.coe = fadd float %i.clo, %i.cod
  %i.cof = load <2 x float>, ptr %i.cjc, align 4, !tbaa !35
  %i.cog = fadd <2 x float> %i.cli, %i.cof
  store <2 x float> %i.cog, ptr %i.coc, align 4, !tbaa !35
  %i.coh = getelementptr i8, ptr %i.cob, i64 32
  store float %i.coe, ptr %i.coh, align 4, !tbaa !35
  %i.coi = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.coj = getelementptr i8, ptr %i.coi, i64 36
  %i.cok = load float, ptr %i.cjf, align 4, !tbaa !35
  %i.col = fadd float %i.clo, %i.cok
  %i.com = load <2 x float>, ptr %i.cje, align 4, !tbaa !35
  %i.con = fadd <2 x float> %i.cli, %i.com
  store <2 x float> %i.con, ptr %i.coj, align 4, !tbaa !35
  %i.coo = getelementptr i8, ptr %i.coi, i64 44
  store float %i.col, ptr %i.coo, align 4, !tbaa !35
  %i.cop = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.coq = getelementptr i8, ptr %i.cop, i64 48
  %i.cor = load float, ptr %i.cjh, align 4, !tbaa !35
  %i.cos = fadd float %i.clo, %i.cor
  %i.cot = load <2 x float>, ptr %i.cjg, align 4, !tbaa !35
  %i.cou = fadd <2 x float> %i.cli, %i.cot
  store <2 x float> %i.cou, ptr %i.coq, align 4, !tbaa !35
  %i.cov = getelementptr i8, ptr %i.cop, i64 56
  store float %i.cos, ptr %i.cov, align 4, !tbaa !35
  %i.cow = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cox = getelementptr i8, ptr %i.cow, i64 60
  %i.coy = load float, ptr %i.cjj, align 4, !tbaa !35
  %i.coz = fadd float %i.clo, %i.coy
  %i.cpa = load <2 x float>, ptr %i.cji, align 4, !tbaa !35
  %i.cpb = fadd <2 x float> %i.cli, %i.cpa
  store <2 x float> %i.cpb, ptr %i.cox, align 4, !tbaa !35
  %i.cpc = getelementptr i8, ptr %i.cow, i64 68
  store float %i.coz, ptr %i.cpc, align 4, !tbaa !35
  %i.cpd = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cpe = getelementptr i8, ptr %i.cpd, i64 72
  %i.cpf = load float, ptr %i.cjl, align 4, !tbaa !35
  %i.cpg = fadd float %i.clo, %i.cpf
  %i.cph = load <2 x float>, ptr %i.cjk, align 4, !tbaa !35
  %i.cpi = fadd <2 x float> %i.cli, %i.cph
  store <2 x float> %i.cpi, ptr %i.cpe, align 4, !tbaa !35
  %i.cpj = getelementptr i8, ptr %i.cpd, i64 80
  store float %i.cpg, ptr %i.cpj, align 4, !tbaa !35
  %i.cpk = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cpl = getelementptr i8, ptr %i.cpk, i64 84
  %i.cpm = load float, ptr %i.cjn, align 4, !tbaa !35
  %i.cpn = fadd float %i.clo, %i.cpm
  %i.cpo = load <2 x float>, ptr %i.cjm, align 4, !tbaa !35
  %i.cpp = fadd <2 x float> %i.cli, %i.cpo
  store <2 x float> %i.cpp, ptr %i.cpl, align 4, !tbaa !35
  %i.cpq = getelementptr i8, ptr %i.cpk, i64 92
  store float %i.cpn, ptr %i.cpq, align 4, !tbaa !35
  %i.cpr = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cps = getelementptr i8, ptr %i.cpr, i64 96
  %i.cpt = load float, ptr %i.cjp, align 4, !tbaa !35
  %i.cpu = fadd float %i.clo, %i.cpt
  %i.cpv = load <2 x float>, ptr %i.cjo, align 4, !tbaa !35
  %i.cpw = fadd <2 x float> %i.cli, %i.cpv
  store <2 x float> %i.cpw, ptr %i.cps, align 4, !tbaa !35
  %i.cpx = getelementptr i8, ptr %i.cpr, i64 104
  store float %i.cpu, ptr %i.cpx, align 4, !tbaa !35
  %i.cpy = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cpz = getelementptr i8, ptr %i.cpy, i64 108
  %i.cqa = load float, ptr %i.cjr, align 4, !tbaa !35
  %i.cqb = fadd float %i.clo, %i.cqa
  %i.cqc = load <2 x float>, ptr %i.cjq, align 4, !tbaa !35
  %i.cqd = fadd <2 x float> %i.cli, %i.cqc
  store <2 x float> %i.cqd, ptr %i.cpz, align 4, !tbaa !35
  %i.cqe = getelementptr i8, ptr %i.cpy, i64 116
  store float %i.cqb, ptr %i.cqe, align 4, !tbaa !35
  %i.cqf = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cqg = getelementptr i8, ptr %i.cqf, i64 120
  %i.cqh = load float, ptr %i.cjt, align 4, !tbaa !35
  %i.cqi = fadd float %i.clo, %i.cqh
  %i.cqj = load <2 x float>, ptr %i.cjs, align 4, !tbaa !35
  %i.cqk = fadd <2 x float> %i.cli, %i.cqj
  store <2 x float> %i.cqk, ptr %i.cqg, align 4, !tbaa !35
  %i.cql = getelementptr i8, ptr %i.cqf, i64 128
  store float %i.cqi, ptr %i.cql, align 4, !tbaa !35
  %i.cqm = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cqn = getelementptr i8, ptr %i.cqm, i64 132
  %i.cqo = load float, ptr %i.cjv, align 4, !tbaa !35
  %i.cqp = fadd float %i.clo, %i.cqo
  %i.cqq = load <2 x float>, ptr %i.cju, align 4, !tbaa !35
  %i.cqr = fadd <2 x float> %i.cli, %i.cqq
  store <2 x float> %i.cqr, ptr %i.cqn, align 4, !tbaa !35
  %i.cqs = getelementptr i8, ptr %i.cqm, i64 140
  store float %i.cqp, ptr %i.cqs, align 4, !tbaa !35
  %i.cqt = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cqu = getelementptr i8, ptr %i.cqt, i64 144
  %i.cqv = load float, ptr %i.cjx, align 4, !tbaa !35
  %i.cqw = fadd float %i.clo, %i.cqv
  %i.cqx = load <2 x float>, ptr %i.cjw, align 4, !tbaa !35
  %i.cqy = fadd <2 x float> %i.cli, %i.cqx
  store <2 x float> %i.cqy, ptr %i.cqu, align 4, !tbaa !35
  %i.cqz = getelementptr i8, ptr %i.cqt, i64 152
  store float %i.cqw, ptr %i.cqz, align 4, !tbaa !35
  %i.cra = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.crb = getelementptr i8, ptr %i.cra, i64 156
  %i.crc = load float, ptr %i.cjz, align 4, !tbaa !35
  %i.crd = fadd float %i.clo, %i.crc
  %i.cre = load <2 x float>, ptr %i.cjy, align 4, !tbaa !35
  %i.crf = fadd <2 x float> %i.cli, %i.cre
  store <2 x float> %i.crf, ptr %i.crb, align 4, !tbaa !35
  %i.crg = getelementptr i8, ptr %i.cra, i64 164
  store float %i.crd, ptr %i.crg, align 4, !tbaa !35
  %i.crh = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.cri = getelementptr i8, ptr %i.crh, i64 168
  %i.crj = load float, ptr %i.ckb, align 4, !tbaa !35
  %i.crk = fadd float %i.clo, %i.crj
  %i.crl = load <2 x float>, ptr %i.cka, align 4, !tbaa !35
  %i.crm = fadd <2 x float> %i.cli, %i.crl
  store <2 x float> %i.crm, ptr %i.cri, align 4, !tbaa !35
  %i.crn = getelementptr i8, ptr %i.crh, i64 176
  store float %i.crk, ptr %i.crn, align 4, !tbaa !35
  %i.cro = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.crp = getelementptr i8, ptr %i.cro, i64 180
  %i.crq = load float, ptr %i.ckd, align 4, !tbaa !35
  %i.crr = fadd float %i.clo, %i.crq
  %i.crs = load <2 x float>, ptr %i.ckc, align 4, !tbaa !35
  %i.crt = fadd <2 x float> %i.cli, %i.crs
  store <2 x float> %i.crt, ptr %i.crp, align 4, !tbaa !35
  %i.cru = getelementptr i8, ptr %i.cro, i64 188
  store float %i.crr, ptr %i.cru, align 4, !tbaa !35
  %i.crv = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
  %i.crw = getelementptr i8, ptr %i.crv, i64 192
  %i.crx = load float, ptr %i.ckf, align 4, !tbaa !35
  %i.cry = fadd float %i.clo, %i.crx
  %i.crz = load <2 x float>, ptr %i.cke, align 4, !tbaa !35
  %i.csa = fadd <2 x float> %i.cli, %i.crz
  store <2 x float> %i.csa, ptr %i.crw, align 4, !tbaa !35
  %i.csb = getelementptr i8, ptr %i.crv, i64 200
  store float %i.cry, ptr %i.csb, align 4, !tbaa !35
  %i.csc = getelementptr [12 x i8], ptr %i.cil, i64 %.223.us.us.i ; 2 uses
end_hunk_0
