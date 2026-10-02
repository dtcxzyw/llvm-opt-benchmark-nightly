Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/editconf?download=true
inline.NumInlined: 264
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z12gmx_editconfiPPc:bb.a
  %i.ccr = extractelement <4 x double> %i.cbs, i64 0
  %i.ccs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbn, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbc, i32 noundef 32, double noundef %i.ccr, double noundef %i.cbg, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccq) #20 ; 0 uses
  %i.cct = extractelement <4 x double> %i.ccp, i64 1
  %i.ccu = extractelement <4 x double> %i.cbs, i64 1
  %i.ccv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbo, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbc, i32 noundef 32, double noundef %i.ccu, double noundef %i.cbg, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cct) #20 ; 0 uses
  %i.ccw = extractelement <4 x double> %i.ccp, i64 2
  %i.ccx = extractelement <4 x double> %i.cbs, i64 2
  %i.ccy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbp, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbc, i32 noundef 32, double noundef %i.ccx, double noundef %i.cbg, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccw) #20 ; 0 uses
  %i.ccz = extractelement <4 x double> %i.ccp, i64 3
  %i.cda = extractelement <4 x double> %i.cbs, i64 3
  %i.cdb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cbq, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbc, i32 noundef 32, double noundef %i.cda, double noundef %i.cbg, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.ccz) #20 ; 0 uses
  %i.cdc = add nsw i32 %i.bzc, 10
  %i.cdd = fadd double %i.cbf, 1.080000e+00
  %i.cde = fmul double %i.cdd, 1.000000e+01
  %i.cdf = fmul double %i.cbt, 8.000000e+00
  %i.cdg = fdiv double %i.cdf, 1.000000e+01
  %i.cdh = fadd double %i.cdg, %i.caz
  %i.cdi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdc, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbc, i32 noundef 32, double noundef %i.cde, double noundef %i.cbg, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdh) #20 ; 0 uses
  %i.cdj = add nsw i32 %i.bzc, 11
  %i.cdk = fadd double %i.cbf, 1.200000e+00
  %i.cdl = fmul double %i.cdk, 1.000000e+01
  %i.cdm = add nsw i32 %i.bzc, 12
  %i.cdn = fadd double %i.cbf, f0x3FF51EB851EB851E
  %i.cdo = fmul double %i.cdn, 1.000000e+01
  %i.cdp = insertelement <2 x double> poison, double %i.cbt, i64 0
  %i.cdq = shufflevector <2 x double> %i.cdp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cdr = fmul <2 x double> %i.cdq, <double 9.000000e+00, double 1.000000e+01>
  %i.cds = fdiv <2 x double> %i.cdr, splat (double 1.000000e+01) ; 2 uses
  %i.cdt = extractelement <2 x double> %i.cds, i64 0
  %i.cdu = fadd double %i.cdt, %i.caz
  %i.cdv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdj, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbc, i32 noundef 32, double noundef %i.cdl, double noundef %i.cbg, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdu) #20 ; 0 uses
  %i.cdw = extractelement <2 x double> %i.cds, i64 1
  %i.cdx = fadd double %i.cdw, %i.caz
  %i.cdy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %i.cdm, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, i32 noundef 32, i32 noundef %i.cbc, i32 noundef 32, double noundef %i.cdo, double noundef %i.cbg, double noundef %.024.lcssa.i, double noundef 1.000000e+00, double noundef %i.cdx) #20 ; 0 uses
  br label %bb.kz

bb.kz:                                            ; preds = %_ZL10pdb_legendP8_IO_FILEiiP7t_atomsPA3_f.exit, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit494
  %i.cdz = load float, ptr @_ZZ12gmx_editconfiPPcE6visbox, align 4, !tbaa !35 ; 2 uses
  %i.cea = fcmp ogt float %i.cdz, 0.000000e+00
  br i1 %i.cea, label %bb.la, label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit

bb.la:                                            ; preds = %bb.kz
  %i.ceb = load i8, ptr @_ZZ12gmx_editconfiPPcE7bLegend, align 1, !tbaa !118, !range !23, !noundef !25
  %i.cec = trunc nuw i8 %i.ceb to i1              ; 2 uses
  %i.ced = load i32, ptr %12, align 8             ; 2 uses
  %i.cee = add nsw i32 %i.ced, 12
  %i.cef = select i1 %i.cec, i32 %i.cee, i32 %i.ced ; 8 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  br i1 %i.cec, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  store i32 12, ptr %i.ceg, align 8, !tbaa !164
  br label %bb.ld

bb.lc:                                            ; preds = %bb.la
  %i.ceh = load i32, ptr %i.ceg, align 8, !tbaa !164
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %i.cei = phi i32 [ 12, %bb.lb ], [ %i.ceh, %bb.lc ] ; 8 uses
  %i.cej = add nsw i32 %i.cef, 1                  ; 6 uses
  %i.cek = add nsw i32 %i.cei, 1                  ; 2 uses
  %i.cel = call float @llvm.rint.f32(float %i.cdz)
  %i.cem = fptosi float %i.cel to i32             ; 3 uses
  %i.cen = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 4), align 4, !tbaa !35
  %i.ceo = call float @llvm.rint.f32(float %i.cen)
  %i.cep = fptosi float %i.ceo to i32             ; 3 uses
  %i.ceq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ12gmx_editconfiPPcE6visbox, i64 8), align 4, !tbaa !35
  %i.cer = call float @llvm.rint.f32(float %i.ceq)
  %i.ces = fptosi float %i.cer to i32             ; 3 uses
  %i.cet = mul i32 %i.cep, %i.cem
  %i.ceu = mul i32 %i.cet, %i.ces                 ; 3 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.cew = load float, ptr %i.cev, align 4, !tbaa !35
  %i.cex = fcmp une float %i.cew, 0.000000e+00
  %i.cey = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.cez = load float, ptr %i.cey, align 8
  %i.cfa = fcmp une float %i.cez, 0.000000e+00
  %or.cond555 = select i1 %i.cex, i1 true, i1 %i.cfa
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.cfc = load float, ptr %i.cfb, align 4
  %i.cfd = fcmp une float %i.cfc, 0.000000e+00
  %or.cond558 = select i1 %or.cond555, i1 true, i1 %i.cfd
  br i1 %or.cond558, label %bb.le, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.ld
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 8 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 8 uses
  %i.cfg = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfh = fmul float %i.cfg, 0.000000e+00
  %i.cfi = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cfj = fmul float %i.cfi, 0.000000e+00
  %i.cfk = load float, ptr %i.cff, align 16, !tbaa !35
  %i.cfl = fmul float %i.cfk, 0.000000e+00
  %i.cfm = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.cej, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cek, i8 noundef signext 32, float noundef %i.cfh, float noundef %i.cfj, float noundef %i.cfl, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc511 unwind label %.loopexit.split-lp ; 0 uses

.noexc511:                                        ; preds = %.preheader12.i
  %i.cfn = add nsw i32 %i.cef, 2                  ; 4 uses
  %i.cfo = add nsw i32 %i.cei, 2
  %i.cfp = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfq = fmul float %i.cfp, 1.000000e+01
  %i.cfr = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cfs = fmul float %i.cfr, 0.000000e+00
  %i.cft = load float, ptr %i.cff, align 16, !tbaa !35
  %i.cfu = fmul float %i.cft, 0.000000e+00
  %i.cfv = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.cfn, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cfo, i8 noundef signext 32, float noundef %i.cfq, float noundef %i.cfs, float noundef %i.cfu, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc512 unwind label %.loopexit.split-lp ; 0 uses

.noexc512:                                        ; preds = %.noexc511
  %i.cfw = add nsw i32 %i.cef, 3                  ; 4 uses
  %i.cfx = add nsw i32 %i.cei, 3
  %i.cfy = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cfz = fmul float %i.cfy, 0.000000e+00
  %i.cga = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cgb = fmul float %i.cga, 1.000000e+01
  %i.cgc = load float, ptr %i.cff, align 16, !tbaa !35
  %i.cgd = fmul float %i.cgc, 0.000000e+00
  %i.cge = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.cfw, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cfx, i8 noundef signext 32, float noundef %i.cfz, float noundef %i.cgb, float noundef %i.cgd, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc513 unwind label %.loopexit.split-lp ; 0 uses

.noexc513:                                        ; preds = %.noexc512
  %i.cgf = add nsw i32 %i.cef, 4                  ; 4 uses
  %i.cgg = add nsw i32 %i.cei, 4
  %i.cgh = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cgi = fmul float %i.cgh, 1.000000e+01
  %i.cgj = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cgk = fmul float %i.cgj, 1.000000e+01
  %i.cgl = load float, ptr %i.cff, align 16, !tbaa !35
  %i.cgm = fmul float %i.cgl, 0.000000e+00
  %i.cgn = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.cgf, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgg, i8 noundef signext 32, float noundef %i.cgi, float noundef %i.cgk, float noundef %i.cgm, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc514 unwind label %.loopexit.split-lp ; 0 uses

.noexc514:                                        ; preds = %.noexc513
  %i.cgo = add nsw i32 %i.cef, 5                  ; 4 uses
  %i.cgp = add nsw i32 %i.cei, 5
  %i.cgq = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cgr = fmul float %i.cgq, 0.000000e+00
  %i.cgs = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.cgt = fmul float %i.cgs, 0.000000e+00
  %i.cgu = load float, ptr %i.cff, align 16, !tbaa !35
  %i.cgv = fmul float %i.cgu, 1.000000e+01
  %i.cgw = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.cgo, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgp, i8 noundef signext 32, float noundef %i.cgr, float noundef %i.cgt, float noundef %i.cgv, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc515 unwind label %.loopexit.split-lp ; 0 uses

.noexc515:                                        ; preds = %.noexc514
  %i.cgx = add nsw i32 %i.cef, 6                  ; 4 uses
  %i.cgy = add nsw i32 %i.cei, 6
  %i.cgz = load float, ptr %i.ad, align 16, !tbaa !35
  %i.cha = fmul float %i.cgz, 1.000000e+01
  %i.chb = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.chc = fmul float %i.chb, 0.000000e+00
  %i.chd = load float, ptr %i.cff, align 16, !tbaa !35
  %i.che = fmul float %i.chd, 1.000000e+01
  %i.chf = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.cgx, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.cgy, i8 noundef signext 32, float noundef %i.cha, float noundef %i.chc, float noundef %i.che, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc516 unwind label %.loopexit.split-lp ; 0 uses

.noexc516:                                        ; preds = %.noexc515
  %i.chg = add nsw i32 %i.cef, 7                  ; 4 uses
  %i.chh = add nsw i32 %i.cei, 7
  %i.chi = load float, ptr %i.ad, align 16, !tbaa !35
  %i.chj = fmul float %i.chi, 0.000000e+00
  %i.chk = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.chl = fmul float %i.chk, 1.000000e+01
  %i.chm = load float, ptr %i.cff, align 16, !tbaa !35
  %i.chn = fmul float %i.chm, 1.000000e+01
  %i.cho = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.chg, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.chh, i8 noundef signext 32, float noundef %i.chj, float noundef %i.chl, float noundef %i.chn, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc517 unwind label %.loopexit.split-lp ; 0 uses

.noexc517:                                        ; preds = %.noexc516
  %i.chp = add nsw i32 %i.cef, 8                  ; 4 uses
  %i.chq = add nsw i32 %i.cei, 8
  %i.chr = load float, ptr %i.ad, align 16, !tbaa !35
  %i.chs = fmul float %i.chr, 1.000000e+01
  %i.cht = load float, ptr %i.cfe, align 16, !tbaa !35
  %i.chu = fmul float %i.cht, 1.000000e+01
  %i.chv = load float, ptr %i.cff, align 16, !tbaa !35
  %i.chw = fmul float %i.chv, 1.000000e+01
  %i.chx = invoke noundef i32 @_Z24gmx_fprintf_pdb_atomlineP8_IO_FILE13PdbRecordTypeiPKccS3_cicfffffS3_(ptr noundef %i.bor, i32 noundef 0, i32 noundef %i.chp, ptr noundef nonnull @.str.201, i8 noundef signext 32, ptr noundef nonnull @.str.222, i8 noundef signext 75, i32 noundef %i.chq, i8 noundef signext 32, float noundef %i.chs, float noundef %i.chu, float noundef %i.chw, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.73)
          to label %.noexc518 unwind label %.loopexit.split-lp ; 0 uses

.noexc518:                                        ; preds = %.noexc517
  %i.chy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cej, i32 noundef %i.cfn) #20 ; 0 uses
  %i.chz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cfn, i32 noundef %i.cgf) #20 ; 0 uses
  %i.cia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cgf, i32 noundef %i.cfw) #20 ; 0 uses
  %i.cib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cej, i32 noundef %i.cfw) #20 ; 0 uses
  %i.cic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cej, i32 noundef %i.cgo) #20 ; 0 uses
  %i.cid = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cfn, i32 noundef %i.cgx) #20 ; 0 uses
  %i.cie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cgf, i32 noundef %i.chp) #20 ; 0 uses
  %i.cif = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cfw, i32 noundef %i.chg) #20 ; 0 uses
  %i.cig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cgo, i32 noundef %i.cgx) #20 ; 0 uses
  %i.cih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.cgx, i32 noundef %i.chp) #20 ; 0 uses
  %i.cii = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.chp, i32 noundef %i.chg) #20 ; 0 uses
  %i.cij = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bor, ptr noundef nonnull @.str.223, i32 noundef %i.chg, i32 noundef %i.cgo) #20 ; 0 uses
  br label %_ZL13visualize_boxP8_IO_FILEiiPA3_fPKf.exit

bb.le:                                            ; preds = %bb.ld
  %i.cik = mul nsw i32 %i.ceu, 24                 ; 2 uses
  %i.cil = sext i32 %i.cik to i64
  %i.cim = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.142, i32 noundef 408, i64 noundef range(i64 -2147483648, 2147483648) %i.cil, i64 noundef 12)
          to label %.noexc519 unwind label %.loopexit.split-lp ; 92 uses

.noexc519:                                        ; preds = %bb.le
  invoke void @_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f(i32 noundef 0, ptr noundef nonnull %i.ad, ptr noundef %i.cim)
          to label %.noexc520 unwind label %.loopexit.split-lp

.noexc520:                                        ; preds = %.noexc519
  %i.cin = icmp sgt i32 %i.ces, 0
  br i1 %i.cin, label %.preheader8.lr.ph.i, label %.preheader4.i

.preheader8.lr.ph.i:                              ; preds = %.noexc520
  %i.cio = icmp sgt i32 %i.cep, 0
  %i.cip = icmp sgt i32 %i.cem, 0
  %or.cond.i507 = select i1 %i.cio, i1 %i.cip, i1 false
  br i1 %or.cond.i507, label %.preheader8.us.preheader.i, label %.preheader4.i

.preheader8.us.preheader.i:                       ; preds = %.preheader8.lr.ph.i
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.cis = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %scevgep1092 = getelementptr i8, ptr %i.cim, i64 280
  %scevgep1094 = getelementptr i8, ptr %i.cim, i64 4 ; 2 uses
  %i.cit = getelementptr i8, ptr %i.cim, <2 x i64> <i64 280, i64 284>
  %scevgep1096.a = getelementptr i8, ptr %i.cim, i64 284 ; 2 uses
  %i.ciu = getelementptr i8, ptr %i.cim, <2 x i64> <i64 4, i64 8>
  %scevgep1098.a = getelementptr i8, ptr %i.cim, i64 8 ; 2 uses
  %32 = insertelement <4 x ptr> poison, ptr %i.cim, i64 0
  %33 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.civ = getelementptr i8, ptr %i.cim, <4 x i64> <i64 280, i64 284, i64 288, i64 280>
  %scevgep1100 = getelementptr i8, ptr %i.cim, i64 288 ; 3 uses
  %34 = insertelement <4 x ptr> poison, ptr %i.cim, i64 1
  %35 = shufflevector <2 x ptr> %i.ciu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %36 = shufflevector <4 x ptr> %34, <4 x ptr> %35, <4 x i32> <i32 poison, i32 1, i32 4, i32 5>
  %37 = shufflevector <4 x ptr> %33, <4 x ptr> %35, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %38 = shufflevector <2 x ptr> %i.cit, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ciw = insertelement <4 x ptr> %38, ptr %scevgep1100, i64 3
  %i.cix = getelementptr inbounds nuw i8, ptr %i.cim, i64 96
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cim, i64 192
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cim, i64 8
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cim, i64 12
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cim, i64 20
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cim, i64 24
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cim, i64 32
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cim, i64 36
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cim, i64 44
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cim, i64 48
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cim, i64 56
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cim, i64 60
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cim, i64 68
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cim, i64 72
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cim, i64 80
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cim, i64 84
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cim, i64 92
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cim, i64 96
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cim, i64 104
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cim, i64 108
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cim, i64 116
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cim, i64 120
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cim, i64 128
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cim, i64 132
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cim, i64 140
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cim, i64 144
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cim, i64 152
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cim, i64 156
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cim, i64 164
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cim, i64 168
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cim, i64 176
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cim, i64 180
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cim, i64 188
  %i.cke = getelementptr inbounds nuw i8, ptr %i.cim, i64 192
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cim, i64 200
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cim, i64 204
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.cim, i64 212
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cim, i64 216
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.cim, i64 224
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.cim, i64 228
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.cim, i64 236
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.cim, i64 240
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.cim, i64 248
  %i.cko = getelementptr inbounds nuw i8, ptr %i.cim, i64 252
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cim, i64 260
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.cim, i64 264
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cim, i64 272
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cim, i64 276
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.cim, i64 284
  br label %.preheader8.us.i

.preheader8.us.i:                                 ; preds = %._crit_edge27.split.us.us.i, %.preheader8.us.preheader.i
  %.030.us.i = phi i32 [ %i.cuh, %._crit_edge27.split.us.us.i ], [ 0, %.preheader8.us.preheader.i ] ; 2 uses
  %.09529.us.i = phi i64 [ %indvars.iv.next.i509.lcssa, %._crit_edge27.split.us.us.i ], [ 0, %.preheader8.us.preheader.i ]
  %i.cku = uitofp nneg i32 %.030.us.i to float    ; 2 uses
  %i.ckv = insertelement <2 x float> poison, float %i.cku, i64 0
  %i.ckw = shufflevector <2 x float> %i.ckv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader7.us.us.i

.preheader7.us.us.i:                              ; preds = %._crit_edge.us.us.i, %.preheader8.us.i
  %.09126.us.us.i = phi i32 [ 0, %.preheader8.us.i ], [ %i.cug, %._crit_edge.us.us.i ] ; 2 uses
  %.19625.us.us.i = phi i64 [ %.09529.us.i, %.preheader8.us.i ], [ %indvars.iv.next.i509.lcssa, %._crit_edge.us.us.i ]
  %i.ckx = uitofp nneg i32 %.09126.us.us.i to float ; 2 uses
  %i.cky = insertelement <2 x float> poison, float %i.ckx, i64 0
  %i.ckz = shufflevector <2 x float> %i.cky, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader6.us.us.i

.preheader6.us.us.i:                              ; preds = %middle.block1164, %.preheader7.us.us.i
  %.09324.us.us.i = phi i32 [ 0, %.preheader7.us.us.i ], [ %i.cuf, %middle.block1164 ] ; 2 uses
  %.223.us.us.i = phi i64 [ %.19625.us.us.i, %.preheader7.us.us.i ], [ %indvars.iv.next.i509.lcssa, %middle.block1164 ] ; 29 uses
  %i.cla = uitofp nneg i32 %.09324.us.us.i to float ; 2 uses
  %i.clb = load <2 x float>, ptr %i.ad, align 16, !tbaa !35
  %i.clc = load <2 x float>, ptr %i.cev, align 4, !tbaa !35
  %i.cld = fmul <2 x float> %i.clc, %i.ckz
  %i.cle = insertelement <2 x float> poison, float %i.cla, i64 0
  %i.clf = shufflevector <2 x float> %i.cle, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clf, <2 x float> %i.clb, <2 x float> %i.cld)
  %i.clh = load <2 x float>, ptr %i.cey, align 8, !tbaa !35
  %i.cli = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ckw, <2 x float> %i.clh, <2 x float> %i.clg) ; 26 uses
  %i.clj = load float, ptr %i.ciq, align 8, !tbaa !35
  %i.clk = load float, ptr %i.cir, align 4, !tbaa !35
  %i.cll = fmul float %i.clk, %i.ckx
  %i.clm = call float @llvm.fmuladd.f32(float %i.cla, float %i.clj, float %i.cll)
  %i.cln = load float, ptr %i.cis, align 16, !tbaa !35
  %i.clo = call float @llvm.fmuladd.f32(float %i.cku, float %i.cln, float %i.clm) ; 25 uses
  %i.clp = mul i64 %.223.us.us.i, 12              ; 6 uses
  %scevgep = getelementptr i8, ptr %i.cim, i64 %i.clp ; 2 uses
  %scevgep1093 = getelementptr i8, ptr %scevgep1092, i64 %i.clp ; 2 uses
  %scevgep1095 = getelementptr i8, ptr %scevgep1094, i64 %i.clp ; 3 uses
  %scevgep1097 = getelementptr i8, ptr %scevgep1096.a, i64 %i.clp ; 3 uses
  %scevgep1099 = getelementptr i8, ptr %scevgep1098.a, i64 %i.clp ; 5 uses
  %scevgep1101 = getelementptr i8, ptr %scevgep1100, i64 %i.clp ; 5 uses
  %bound01102 = icmp ult ptr %scevgep, %scevgep1097
  %bound11103 = icmp ult ptr %scevgep1095, %scevgep1093
  %found.conflict1104 = and i1 %bound01102, %bound11103
  %bound01120 = icmp ult ptr %scevgep1095, %scevgep1101
  %bound11121 = icmp ult ptr %scevgep1099, %scevgep1097
  %i.clq = insertelement <4 x ptr> poison, ptr %scevgep1095, i64 0
  %i.clr = insertelement <4 x ptr> %i.clq, ptr %scevgep1099, i64 1
  %i.cls = shufflevector <4 x ptr> %i.clr, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.clt = icmp ult <4 x ptr> %i.cls, %i.civ
  %i.clu = insertelement <4 x ptr> poison, ptr %scevgep1097, i64 0
  %i.clv = insertelement <4 x ptr> %i.clu, ptr %scevgep1101, i64 1
  %i.clw = shufflevector <4 x ptr> %i.clv, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.clx = icmp ult <4 x ptr> %37, %i.clw
  %i.cly = and <4 x i1> %i.clt, %i.clx
  %bound01140 = icmp ult ptr %scevgep1099, %scevgep1096.a
  %bound11141 = icmp ult ptr %scevgep1094, %scevgep1101
  %bound01144 = icmp ult ptr %scevgep1099, %scevgep1100
  %bound11145 = icmp ult ptr %scevgep1098.a, %scevgep1101
  %i.clz = bitcast <4 x i1> %i.cly to i4
  %i.cma = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cmb = shufflevector <4 x ptr> %i.cma, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cmc = insertelement <4 x ptr> %i.ciw, ptr %scevgep1101, i64 0
  %i.cmd = icmp ult <4 x ptr> %i.cmb, %i.cmc
  %i.cme = insertelement <4 x ptr> %36, ptr %scevgep1099, i64 0
  %i.cmf = insertelement <4 x ptr> poison, ptr %scevgep1093, i64 0
  %i.cmg = shufflevector <4 x ptr> %i.cmf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cmh = icmp ult <4 x ptr> %i.cme, %i.cmg
  %i.cmi = icmp ne i4 %i.clz, 0
  %i.cmj = insertelement <8 x i1> poison, i1 %bound01120, i64 4
  %i.cmk = insertelement <8 x i1> %i.cmj, i1 %bound01140, i64 5
  %i.cml = insertelement <8 x i1> %i.cmk, i1 %bound01144, i64 6
  %i.cmm = insertelement <8 x i1> %i.cml, i1 %i.cmi, i64 7
  %i.cmn = shufflevector <4 x i1> %i.cmd, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cmo = shufflevector <8 x i1> %i.cmn, <8 x i1> %i.cmm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cmp = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound11121, i64 4
  %i.cmq = insertelement <8 x i1> %i.cmp, i1 %bound11141, i64 5
  %i.cmr = insertelement <8 x i1> %i.cmq, i1 %bound11145, i64 6
  %i.cms = shufflevector <4 x i1> %i.cmh, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cmt = shufflevector <8 x i1> %i.cms, <8 x i1> %i.cmr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cmu = and <8 x i1> %i.cmo, %i.cmt
  %i.cmv = bitcast <8 x i1> %i.cmu to i8
  %i.cmw = icmp ne i8 %i.cmv, 0
  %op.rdx1174 = or i1 %i.cmw, %found.conflict1104
  br i1 %op.rdx1174, label %scalar.ph1148, label %vector.body1156

vector.body1156:                                  ; preds = %.preheader6.us.us.i
  %broadcast.splatinsert1154 = insertelement <8 x float> poison, float %i.clo, i64 0 ; 3 uses
  %broadcast.splat1153 = shufflevector <2 x float> %i.cli, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %broadcast.splat1151 = shufflevector <2 x float> %i.cli, <2 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.cmx = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i
  %wide.vec1158 = load <24 x float>, ptr %i.cim, align 4, !tbaa !35 ; 3 uses
  %strided.vec1159 = shufflevector <24 x float> %wide.vec1158, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1160 = shufflevector <24 x float> %wide.vec1158, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cmy = fadd <8 x float> %broadcast.splat1151, %strided.vec1159
  %i.cmz = fadd <8 x float> %broadcast.splat1153, %strided.vec1160
  %i.cna = shufflevector <8 x float> %i.cmy, <8 x float> %i.cmz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cnb = shufflevector <8 x float> %broadcast.splatinsert1154, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnc = shufflevector <24 x float> %wide.vec1158, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnd = fadd <16 x float> %i.cnb, %i.cnc
  %interleaved.vec1162 = shufflevector <16 x float> %i.cna, <16 x float> %i.cnd, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1162, ptr %i.cmx, align 4, !tbaa !35
  %i.cne = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i
  %i.cnf = getelementptr i8, ptr %i.cne, i64 96
  %wide.vec1158.1 = load <24 x float>, ptr %i.cix, align 4, !tbaa !35 ; 3 uses
  %strided.vec1159.1 = shufflevector <24 x float> %wide.vec1158.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1160.1 = shufflevector <24 x float> %wide.vec1158.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cng = fadd <8 x float> %broadcast.splat1151, %strided.vec1159.1
  %i.cnh = fadd <8 x float> %broadcast.splat1153, %strided.vec1160.1
  %i.cni = shufflevector <8 x float> %i.cng, <8 x float> %i.cnh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cnj = shufflevector <8 x float> %broadcast.splatinsert1154, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnk = shufflevector <24 x float> %wide.vec1158.1, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnl = fadd <16 x float> %i.cnj, %i.cnk
  %interleaved.vec1162.1 = shufflevector <16 x float> %i.cni, <16 x float> %i.cnl, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1162.1, ptr %i.cnf, align 4, !tbaa !35
  %i.cnm = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i
  %i.cnn = getelementptr i8, ptr %i.cnm, i64 192
  %wide.vec1158.2 = load <24 x float>, ptr %i.ciy, align 4, !tbaa !35 ; 3 uses
  %strided.vec1159.2 = shufflevector <24 x float> %wide.vec1158.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1160.2 = shufflevector <24 x float> %wide.vec1158.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.cno = fadd <8 x float> %broadcast.splat1151, %strided.vec1159.2
  %i.cnp = fadd <8 x float> %broadcast.splat1153, %strided.vec1160.2
  %i.cnq = shufflevector <8 x float> %i.cno, <8 x float> %i.cnp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cnr = shufflevector <8 x float> %broadcast.splatinsert1154, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cns = shufflevector <24 x float> %wide.vec1158.2, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cnt = fadd <16 x float> %i.cnr, %i.cns
  %interleaved.vec1162.2 = shufflevector <16 x float> %i.cnq, <16 x float> %i.cnt, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1162.2, ptr %i.cnn, align 4, !tbaa !35
  br label %middle.block1164

scalar.ph1148:                                    ; preds = %.preheader6.us.us.i
  %i.cnu = getelementptr inbounds [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cnv = load float, ptr %i.ciz, align 4, !tbaa !35
  %i.cnw = fadd float %i.clo, %i.cnv
  %i.cnx = load <2 x float>, ptr %i.cim, align 4, !tbaa !35
  %i.cny = fadd <2 x float> %i.cli, %i.cnx
  store <2 x float> %i.cny, ptr %i.cnu, align 4, !tbaa !35
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cnu, i64 8
  store float %i.cnw, ptr %i.cnz, align 4, !tbaa !35
  %i.coa = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cob = getelementptr i8, ptr %i.coa, i64 12
  %i.coc = load float, ptr %i.cjb, align 4, !tbaa !35
  %i.cod = fadd float %i.clo, %i.coc
  %i.coe = load <2 x float>, ptr %i.cja, align 4, !tbaa !35
  %i.cof = fadd <2 x float> %i.cli, %i.coe
  store <2 x float> %i.cof, ptr %i.cob, align 4, !tbaa !35
  %i.cog = getelementptr i8, ptr %i.coa, i64 20
  store float %i.cod, ptr %i.cog, align 4, !tbaa !35
  %i.coh = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.coi = getelementptr i8, ptr %i.coh, i64 24
  %i.coj = load float, ptr %i.cjd, align 4, !tbaa !35
  %i.cok = fadd float %i.clo, %i.coj
  %i.col = load <2 x float>, ptr %i.cjc, align 4, !tbaa !35
  %i.com = fadd <2 x float> %i.cli, %i.col
  store <2 x float> %i.com, ptr %i.coi, align 4, !tbaa !35
  %i.con = getelementptr i8, ptr %i.coh, i64 32
  store float %i.cok, ptr %i.con, align 4, !tbaa !35
  %i.coo = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cop = getelementptr i8, ptr %i.coo, i64 36
  %i.coq = load float, ptr %i.cjf, align 4, !tbaa !35
  %i.cor = fadd float %i.clo, %i.coq
  %i.cos = load <2 x float>, ptr %i.cje, align 4, !tbaa !35
  %i.cot = fadd <2 x float> %i.cli, %i.cos
  store <2 x float> %i.cot, ptr %i.cop, align 4, !tbaa !35
  %i.cou = getelementptr i8, ptr %i.coo, i64 44
  store float %i.cor, ptr %i.cou, align 4, !tbaa !35
  %i.cov = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cow = getelementptr i8, ptr %i.cov, i64 48
  %i.cox = load float, ptr %i.cjh, align 4, !tbaa !35
  %i.coy = fadd float %i.clo, %i.cox
  %i.coz = load <2 x float>, ptr %i.cjg, align 4, !tbaa !35
  %i.cpa = fadd <2 x float> %i.cli, %i.coz
  store <2 x float> %i.cpa, ptr %i.cow, align 4, !tbaa !35
  %i.cpb = getelementptr i8, ptr %i.cov, i64 56
  store float %i.coy, ptr %i.cpb, align 4, !tbaa !35
  %i.cpc = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cpd = getelementptr i8, ptr %i.cpc, i64 60
  %i.cpe = load float, ptr %i.cjj, align 4, !tbaa !35
  %i.cpf = fadd float %i.clo, %i.cpe
  %i.cpg = load <2 x float>, ptr %i.cji, align 4, !tbaa !35
  %i.cph = fadd <2 x float> %i.cli, %i.cpg
  store <2 x float> %i.cph, ptr %i.cpd, align 4, !tbaa !35
  %i.cpi = getelementptr i8, ptr %i.cpc, i64 68
  store float %i.cpf, ptr %i.cpi, align 4, !tbaa !35
  %i.cpj = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cpk = getelementptr i8, ptr %i.cpj, i64 72
  %i.cpl = load float, ptr %i.cjl, align 4, !tbaa !35
  %i.cpm = fadd float %i.clo, %i.cpl
  %i.cpn = load <2 x float>, ptr %i.cjk, align 4, !tbaa !35
  %i.cpo = fadd <2 x float> %i.cli, %i.cpn
  store <2 x float> %i.cpo, ptr %i.cpk, align 4, !tbaa !35
  %i.cpp = getelementptr i8, ptr %i.cpj, i64 80
  store float %i.cpm, ptr %i.cpp, align 4, !tbaa !35
  %i.cpq = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cpr = getelementptr i8, ptr %i.cpq, i64 84
  %i.cps = load float, ptr %i.cjn, align 4, !tbaa !35
  %i.cpt = fadd float %i.clo, %i.cps
  %i.cpu = load <2 x float>, ptr %i.cjm, align 4, !tbaa !35
  %i.cpv = fadd <2 x float> %i.cli, %i.cpu
  store <2 x float> %i.cpv, ptr %i.cpr, align 4, !tbaa !35
  %i.cpw = getelementptr i8, ptr %i.cpq, i64 92
  store float %i.cpt, ptr %i.cpw, align 4, !tbaa !35
  %i.cpx = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cpy = getelementptr i8, ptr %i.cpx, i64 96
  %i.cpz = load float, ptr %i.cjp, align 4, !tbaa !35
  %i.cqa = fadd float %i.clo, %i.cpz
  %i.cqb = load <2 x float>, ptr %i.cjo, align 4, !tbaa !35
  %i.cqc = fadd <2 x float> %i.cli, %i.cqb
  store <2 x float> %i.cqc, ptr %i.cpy, align 4, !tbaa !35
  %i.cqd = getelementptr i8, ptr %i.cpx, i64 104
  store float %i.cqa, ptr %i.cqd, align 4, !tbaa !35
  %i.cqe = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cqf = getelementptr i8, ptr %i.cqe, i64 108
  %i.cqg = load float, ptr %i.cjr, align 4, !tbaa !35
  %i.cqh = fadd float %i.clo, %i.cqg
  %i.cqi = load <2 x float>, ptr %i.cjq, align 4, !tbaa !35
  %i.cqj = fadd <2 x float> %i.cli, %i.cqi
  store <2 x float> %i.cqj, ptr %i.cqf, align 4, !tbaa !35
  %i.cqk = getelementptr i8, ptr %i.cqe, i64 116
  store float %i.cqh, ptr %i.cqk, align 4, !tbaa !35
  %i.cql = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cqm = getelementptr i8, ptr %i.cql, i64 120
  %i.cqn = load float, ptr %i.cjt, align 4, !tbaa !35
  %i.cqo = fadd float %i.clo, %i.cqn
  %i.cqp = load <2 x float>, ptr %i.cjs, align 4, !tbaa !35
  %i.cqq = fadd <2 x float> %i.cli, %i.cqp
  store <2 x float> %i.cqq, ptr %i.cqm, align 4, !tbaa !35
  %i.cqr = getelementptr i8, ptr %i.cql, i64 128
  store float %i.cqo, ptr %i.cqr, align 4, !tbaa !35
  %i.cqs = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cqt = getelementptr i8, ptr %i.cqs, i64 132
  %i.cqu = load float, ptr %i.cjv, align 4, !tbaa !35
  %i.cqv = fadd float %i.clo, %i.cqu
  %i.cqw = load <2 x float>, ptr %i.cju, align 4, !tbaa !35
  %i.cqx = fadd <2 x float> %i.cli, %i.cqw
  store <2 x float> %i.cqx, ptr %i.cqt, align 4, !tbaa !35
  %i.cqy = getelementptr i8, ptr %i.cqs, i64 140
  store float %i.cqv, ptr %i.cqy, align 4, !tbaa !35
  %i.cqz = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cra = getelementptr i8, ptr %i.cqz, i64 144
  %i.crb = load float, ptr %i.cjx, align 4, !tbaa !35
  %i.crc = fadd float %i.clo, %i.crb
  %i.crd = load <2 x float>, ptr %i.cjw, align 4, !tbaa !35
  %i.cre = fadd <2 x float> %i.cli, %i.crd
  store <2 x float> %i.cre, ptr %i.cra, align 4, !tbaa !35
  %i.crf = getelementptr i8, ptr %i.cqz, i64 152
  store float %i.crc, ptr %i.crf, align 4, !tbaa !35
  %i.crg = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.crh = getelementptr i8, ptr %i.crg, i64 156
  %i.cri = load float, ptr %i.cjz, align 4, !tbaa !35
  %i.crj = fadd float %i.clo, %i.cri
  %i.crk = load <2 x float>, ptr %i.cjy, align 4, !tbaa !35
  %i.crl = fadd <2 x float> %i.cli, %i.crk
  store <2 x float> %i.crl, ptr %i.crh, align 4, !tbaa !35
  %i.crm = getelementptr i8, ptr %i.crg, i64 164
  store float %i.crj, ptr %i.crm, align 4, !tbaa !35
  %i.crn = getelementptr [12 x i8], ptr %i.cim, i64 %.223.us.us.i ; 2 uses
  %i.cro = getelementptr i8, ptr %i.crn, i64 168
  %i.crp = load float, ptr %i.ckb, align 4, !tbaa !35
  %i.crq = fadd float %i.clo, %i.crp
  %i.crr = load <2 x float>, ptr %i.cka, align 4, !tbaa !35
  %i.crs = fadd <2 x float> %i.cli, %i.crr
  store <2 x float> %i.crs, ptr %i.cro, align 4, !tbaa !35
  %i.crt = getelementptr i8, ptr %i.crn, i64 176
  store float %i.crq, ptr %i.crt, align 4, !tbaa !35
end_hunk_0
