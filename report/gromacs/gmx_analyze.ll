Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_analyze?download=true
inline.NumInlined: 346
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z11gmx_analyzeiPPc:bb.a
  %i.cey = fpext float %i.cex to double
  store double %i.cey, ptr %i.bif, align 16, !tbaa !34
  %i.cez = invoke noundef zeroext i1 @_Z10bDebugModev()
          to label %bb.gp unwind label %.loopexit.split-lp.i308

bb.gp:                                            ; preds = %._crit_edge463.i
  %i.cfa = sitofp i32 %i.cbg to float
  %i.cfb = fmul float %i.bei, %i.cfa
  %i.cfc = invoke noundef float @_Z8do_lmfitiPKfPffS0_ffPK16gmx_output_env_tbiPdiPKc(i32 noundef %i.cbg, ptr noundef nonnull %i.cbh, ptr noundef nonnull %i.bhn, float noundef %i.bei, ptr noundef null, float noundef 0.000000e+00, float noundef %i.cfb, ptr noundef %i.bep, i1 noundef zeroext %i.cez, i32 noundef 3, ptr noundef nonnull %i.o, i32 noundef 0, ptr noundef null)
          to label %bb.gq unwind label %.loopexit.split-lp.i308 ; 0 uses

bb.gq:                                            ; preds = %bb.gp
  %i.cfd = load double, ptr %i.bie, align 8, !tbaa !34 ; 4 uses
  %i.cfe = fsub double 1.000000e+00, %i.cfd       ; 2 uses
  store double %i.cfe, ptr %i.big, align 8, !tbaa !34
  %i.cff = load ptr, ptr @stdout, align 8, !tbaa !156
  %i.cfg = load double, ptr %i.bvu, align 8, !tbaa !34 ; 2 uses
  %i.cfh = fcmp oeq double %i.cfg, 0.000000e+00
  br i1 %i.cfh, label %_ZL22optimal_error_estimatedPKdf.exit373.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.cfi = load double, ptr %i.o, align 16, !tbaa !34
  %i.cfj = load double, ptr %i.bif, align 16, !tbaa !34
  %i.cfk = fmul double %i.cfe, %i.cfj
  %i.cfl = call double @llvm.fmuladd.f64(double %i.cfd, double %i.cfi, double %i.cfk) ; 3 uses
  %i.cfm = fcmp ole double %i.cfl, 0.000000e+00
  %or.cond.i371.i = select i1 %i.bid, i1 true, i1 %i.cfm
  br i1 %or.cond.i371.i, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.cfn = load ptr, ptr @stderr, align 8, !tbaa !156
  %i.cfo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cfn, ptr noundef nonnull @.str.231, double noundef %i.bhu, double noundef %i.cfl) #27 ; 0 uses
  %.pre544.i = load double, ptr %i.bie, align 8, !tbaa !34
  br label %_ZL22optimal_error_estimatedPKdf.exit373.i

bb.gt:                                            ; preds = %bb.gr
  %i.cfp = fmul double %i.cfl, 2.000000e+00
  %i.cfq = fdiv double %i.cfp, %i.bhu
  %i.cfr = call double @sqrt(double noundef %i.cfq) #23
  %i.cfs = fmul double %i.cfg, %i.cfr
  %i.cft = fptrunc double %i.cfs to float
  %i.cfu = fpext float %i.cft to double
  br label %_ZL22optimal_error_estimatedPKdf.exit373.i

_ZL22optimal_error_estimatedPKdf.exit373.i:       ; preds = %bb.gt, %bb.gs, %bb.gq
  %i.cfv = phi double [ %i.cfd, %bb.gq ], [ %.pre544.i, %bb.gs ], [ %i.cfd, %bb.gt ]
  %.1.i372.i = phi double [ 0.000000e+00, %bb.gq ], [ 0.000000e+00, %bb.gs ], [ %i.cfu, %bb.gt ]
  %i.cfw = load double, ptr %i.o, align 16, !tbaa !34
  %i.cfx = load double, ptr %i.bif, align 16, !tbaa !34
  %i.cfy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cff, ptr noundef nonnull @.str.228, i32 noundef %i.bvw, double noundef %.1.i372.i, double noundef %i.cfv, double noundef %i.cfw, double noundef %i.cfx) #23 ; 0 uses
  %i.cfz = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.bep)
          to label %bb.gu unwind label %.loopexit.split-lp.i308

bb.gu:                                            ; preds = %_ZL22optimal_error_estimatedPKdf.exit373.i
  %i.cga = select i1 %i.cfz, ptr @.str.171, ptr @.str.20
  %i.cgb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.170, ptr noundef nonnull %i.cga) #23 ; 0 uses
  br i1 %i.bxw, label %.lr.ph466.preheader.i, label %._crit_edge467.i

.lr.ph466.preheader.i:                            ; preds = %bb.gu
  %wide.trip.count527.i = zext nneg i32 %.0304.lcssa601.i to i64
  br label %.lr.ph466.i

.lr.ph466.i:                                      ; preds = %bb.gv, %.lr.ph466.preheader.i
  %indvars.iv524.i = phi i64 [ 0, %.lr.ph466.preheader.i ], [ %indvars.iv.next525.i, %bb.gv ] ; 2 uses
  %i.cgc = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv524.i
  %i.cgd = load float, ptr %i.cgc, align 4, !tbaa !17
  %i.cge = fpext float %i.cgd to double           ; 2 uses
  %i.cgf = load double, ptr %i.bvu, align 8, !tbaa !34
  %i.cgg = invoke noundef double @_Z12fit_functioniPKdd(i32 noundef 9, ptr noundef nonnull %i.o, double noundef %i.cge)
          to label %bb.gv unwind label %.loopexit.i310

bb.gv:                                            ; preds = %.lr.ph466.i
  %i.cgh = call double @sqrt(double noundef %i.cgg) #23
  %i.cgi = fmul double %i.cgf, %i.cgh
  %i.cgj = fdiv double %i.cgi, %i.bhu
  %i.cgk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.229, double noundef %i.cge, double noundef %i.cgj) #23 ; 0 uses
  %indvars.iv.next525.i = add nuw nsw i64 %indvars.iv524.i, 1 ; 2 uses
  %exitcond528.not.i = icmp eq i64 %indvars.iv.next525.i, %wide.trip.count527.i
  br i1 %exitcond528.not.i, label %._crit_edge467.i, label %.lr.ph466.i, !llvm.loop !108

._crit_edge467.i:                                 ; preds = %bb.gv, %bb.gu
  %i.cgl = load ptr, ptr %i.n, align 8, !tbaa !25
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.150, i32 noundef 723, ptr noundef %i.cgl)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i unwind label %.loopexit.split-lp.i308

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i:         ; preds = %._crit_edge467.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  br label %bb.gw

bb.gw:                                            ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i, %._crit_edge448.i
  %i.cgm = icmp samesign ult i64 %indvars.iv529.i, %i.bii
  br i1 %i.cgm, label %bb.gx, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.i

bb.gx:                                            ; preds = %bb.gw
  %i.cgn = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.bep)
          to label %bb.gy unwind label %.loopexit.split-lp419.loopexit.i

bb.gy:                                            ; preds = %bb.gx
  %i.cgo = select i1 %i.cgn, ptr @.str.171, ptr @.str.20
  %i.cgp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bfb, ptr noundef nonnull @.str.170, ptr noundef nonnull %i.cgo) #23 ; 0 uses
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.i

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.i:     ; preds = %bb.gy, %bb.gw
  %exitcond533.not.i = icmp eq i64 %indvars.iv.next530.i, %wide.trip.count532.i
  br i1 %exitcond533.not.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356._crit_edge.i, label %bb.ee, !llvm.loop !109

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356._crit_edge.i: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356.preheader.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.150, i32 noundef 730, ptr noundef %i.bhn)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit376.i unwind label %.loopexit.split-lp419.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit376.i:      ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit356._crit_edge.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.150, i32 noundef 731, ptr noundef %i.bhm)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit378.i unwind label %.loopexit.split-lp419.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit378.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit376.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.150, i32 noundef 732, ptr noundef %i.bhl)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit380.i unwind label %.loopexit.split-lp419.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit380.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit378.i
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.bfb)
          to label %bb.gz unwind label %.loopexit.split-lp419.loopexit.split-lp.i

bb.gz:                                            ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit380.i
  %.pre545.i = load ptr, ptr %2, align 8, !tbaa !37 ; 3 uses
  %.pre546.i = load ptr, ptr %i.bgk, align 8, !tbaa !36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  %.not4.i.i.i.i = icmp eq ptr %.pre545.i, %.pre546.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.gz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cgv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %.pre545.i, %bb.gz ] ; 3 uses
  %i.cgq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cgs = icmp eq ptr %i.cgq, %i.cgr
  br i1 %i.cgs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cgt = load i64, ptr %i.cgr, align 8, !tbaa !23
  %i.cgu = add i64 %i.cgt, 1
  call void @_ZdlPvm(ptr noundef %i.cgq, i64 noundef %i.cgu) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cgv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i381.i = icmp eq ptr %i.cgv, %.pre546.i
  br i1 %.not.i.i.i381.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.gz
  %i.cgw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre545.i, %bb.gz ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cgw, null
  br i1 %.not.i.i1.i.i, label %_ZL14estimate_errorPKciiiiPdS1_PPffbbbPK16gmx_output_env_t.exit, label %bb.ha

bb.ha:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cgx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cgy = load ptr, ptr %i.cgx, align 8, !tbaa !38
  %i.cgz = ptrtoint ptr %i.cgy to i64
  %i.cha = ptrtoint ptr %i.cgw to i64
  %i.chb = sub i64 %i.cgz, %i.cha
  call void @_ZdlPvm(ptr noundef nonnull %i.cgw, i64 noundef %i.chb) #24
  br label %_ZL14estimate_errorPKciiiiPdS1_PPffbbbPK16gmx_output_env_t.exit

.loopexit.split-lp419.i:                          ; preds = %bb.gn, %.loopexit.split-lp419.loopexit.split-lp.i, %.loopexit.split-lp419.loopexit.i, %.loopexit418.i, %bb.dy
  %.pn330.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.dy ], [ %lpad.phi.i, %bb.gn ], [ %lpad.loopexit420.i, %.loopexit418.i ], [ %lpad.loopexit424.i, %.loopexit.split-lp419.loopexit.i ], [ %lpad.loopexit.split-lp425.i, %.loopexit.split-lp419.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

_ZL14estimate_errorPKciiiiPdS1_PPffbbbPK16gmx_output_env_t.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.hb

bb.hb:                                            ; preds = %_ZL14estimate_errorPKciiiiPdS1_PPffbbbPK16gmx_output_env_t.exit, %bb.do
  %i.chc = load i8, ptr @_ZZ11gmx_analyzeiPPcE6bPower, align 1, !tbaa !142, !range !143, !noundef !144
  %i.chd = trunc nuw i8 %i.chc to i1
  br i1 %i.chd, label %bb.hc, label %bb.hi

bb.hc:                                            ; preds = %bb.hb
  %i.che = load i32, ptr %i.x, align 4, !tbaa !132 ; 8 uses
  %i.chf = load i32, ptr %i.y, align 4, !tbaa !132 ; 2 uses
  %i.chg = load ptr, ptr %i.z, align 8, !tbaa !25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.chh = sext i32 %i.che to i64                 ; 2 uses
  %i.chi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.150, i32 noundef 91, i64 noundef range(i64 -2147483648, 2147483648) %i.chh, i64 noundef 4)
          to label %.noexc341 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc341:                                        ; preds = %bb.hc
  %i.chj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.150, i32 noundef 92, i64 noundef range(i64 -2147483648, 2147483648) %i.chh, i64 noundef 4)
          to label %.noexc342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc342:                                        ; preds = %.noexc341
  %i.chk = load float, ptr %i.chg, align 4, !tbaa !17
  %i.chl = fcmp ogt float %i.chk, 0.000000e+00
  br i1 %i.chl, label %.preheader41.i, label %bb.hf

.preheader41.i:                                   ; preds = %.noexc342
  %i.chm = icmp sgt i32 %i.che, 0
  br i1 %i.chm, label %.lr.ph47.split.preheader.i, label %.loopexit.i331

.lr.ph47.split.preheader.i:                       ; preds = %.preheader41.i
  %wide.trip.count59.i = zext nneg i32 %i.che to i64
  br label %.lr.ph47.split.i

.lr.ph47.split.i:                                 ; preds = %bb.he, %.lr.ph47.split.preheader.i
  %indvars.iv56.i = phi i64 [ 0, %.lr.ph47.split.preheader.i ], [ %indvars.iv.next57.i, %bb.he ] ; 3 uses
  %25 = load float, ptr %i.chg, align 4, !tbaa !17
  %i.chn = fcmp ogt float %25, 0.000000e+00
  br i1 %i.chn, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %.lr.ph47.split.i
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %i.chg, i64 %indvars.iv56.i
  %i.chp = load float, ptr %i.cho, align 4, !tbaa !17
  %i.chq = call noundef float @logf(float noundef %i.chp) #23
  %i.chr = getelementptr inbounds nuw [4 x i8], ptr %i.chi, i64 %indvars.iv56.i
  store float %i.chq, ptr %i.chr, align 4, !tbaa !17
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %.lr.ph47.split.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %.loopexit.i331, label %.lr.ph47.split.i, !llvm.loop !110

bb.hf:                                            ; preds = %.noexc342
  %i.chs = load ptr, ptr @stdout, align 8, !tbaa !156
  %fwrite.i330 = call i64 @fwrite(ptr nonnull @.str.234, i64 74, i64 1, ptr %i.chs) ; 0 uses
  %i.cht = icmp sgt i32 %i.che, 0
  br i1 %i.cht, label %.lr.ph.preheader.i, label %.loopexit.i331

.lr.ph.preheader.i:                               ; preds = %bb.hf
  %wide.trip.count.i336 = zext nneg i32 %i.che to i64
  br label %.lr.ph.i337

.lr.ph.i337:                                      ; preds = %.lr.ph.i337, %.lr.ph.preheader.i
  %indvars.iv.i338 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i339, %.lr.ph.i337 ] ; 3 uses
  %i.chu = trunc nuw nsw i64 %indvars.iv.i338 to i32
  %i.chv = uitofp nneg i32 %i.chu to float
  %i.chw = call noundef float @log1pf(float noundef %i.chv) #23
  %i.chx = getelementptr inbounds nuw [4 x i8], ptr %i.chi, i64 %indvars.iv.i338
  store float %i.chw, ptr %i.chx, align 4, !tbaa !17
  %indvars.iv.next.i339 = add nuw nsw i64 %indvars.iv.i338, 1 ; 2 uses
  %exitcond.not.i340 = icmp eq i64 %indvars.iv.next.i339, %wide.trip.count.i336
  br i1 %exitcond.not.i340, label %.loopexit.i331, label %.lr.ph.i337, !llvm.loop !111

.loopexit.i331:                                   ; preds = %.lr.ph.i337, %bb.he, %bb.hf, %.preheader41.i
  %i.chy = icmp sgt i32 %i.chf, 0
  br i1 %i.chy, label %.preheader.lr.ph.i333, label %._crit_edge.i332

.preheader.lr.ph.i333:                            ; preds = %.loopexit.i331
  %i.chz = icmp sgt i32 %i.che, 0
  %wide.trip.count69.i = zext nneg i32 %i.chf to i64
  %wide.trip.count64.i = zext nneg i32 %i.che to i64
  br label %.preheader.i334

.preheader.i334:                                  ; preds = %.noexc343, %.preheader.lr.ph.i333
  %indvars.iv66.i = phi i64 [ 0, %.preheader.lr.ph.i333 ], [ %indvars.iv.next67.i, %.noexc343 ] ; 2 uses
  br i1 %i.chz, label %.lr.ph49.i, label %.critedge34.i

.lr.ph49.i:                                       ; preds = %.preheader.i334
  %i.cia = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv66.i
  %i.cib = load ptr, ptr %i.cia, align 8, !tbaa !25
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hh, %.lr.ph49.i
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next62.i, %bb.hh ] ; 4 uses
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.cib, i64 %indvars.iv61.i
  %i.cid = load float, ptr %i.cic, align 4, !tbaa !17 ; 2 uses
  %i.cie = fcmp ult float %i.cid, 0.000000e+00
  br i1 %i.cie, label %.critedge.i335, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.cif = call noundef float @logf(float noundef %i.cid) #23
  %i.cig = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv61.i
  store float %i.cif, ptr %i.cig, align 4, !tbaa !17
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %.critedge34.i, label %bb.hg, !llvm.loop !112

.critedge.i335:                                   ; preds = %bb.hg
  %i.cih = trunc nuw nsw i64 %indvars.iv61.i to i32 ; 2 uses
  %i.cii = load ptr, ptr @stdout, align 8, !tbaa !156
  %i.cij = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cii, ptr noundef nonnull @.str.235, i32 noundef %i.cih) #23 ; 0 uses
  br label %.critedge34.i

.critedge34.i:                                    ; preds = %bb.hh, %.critedge.i335, %.preheader.i334
  %.244.i = phi i32 [ %i.cih, %.critedge.i335 ], [ 0, %.preheader.i334 ], [ %i.che, %bb.hh ]
  invoke void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef %.244.i, ptr noundef %i.chi, ptr noundef %i.chj, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g)
          to label %.noexc343 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc343:                                        ; preds = %.critedge34.i
  %i.cik = load ptr, ptr @stdout, align 8, !tbaa !156
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 3 uses
  %i.cil = load float, ptr %i.g, align 4, !tbaa !17
  %i.cim = fpext float %i.cil to double
  %i.cin = load float, ptr %i.h, align 4, !tbaa !17
  %i.cio = fpext float %i.cin to double
  %i.cip = load float, ptr %i.i, align 4, !tbaa !17
  %i.ciq = call noundef float @expf(float noundef %i.cip) #23
  %i.cir = fpext float %i.ciq to double
  %i.cis = trunc nuw nsw i64 %indvars.iv.next67.i to i32
  %i.cit = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cik, ptr noundef nonnull @.str.236, i32 noundef %i.cis, double noundef %i.cim, double noundef %i.cio, double noundef %i.cir) #23 ; 0 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %._crit_edge.i332, label %.preheader.i334, !llvm.loop !113

._crit_edge.i332:                                 ; preds = %.noexc343, %.loopexit.i331
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.150, i32 noundef 128, ptr noundef %i.chj)
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc344:                                        ; preds = %._crit_edge.i332
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.150, i32 noundef 129, ptr noundef %i.chi)
          to label %_ZL9power_fitiiPPfS_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9power_fitiiPPfS_.exit:                        ; preds = %.noexc344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.hi

bb.hi:                                            ; preds = %_ZL9power_fitiiPPfS_.exit, %bb.hb
  br i1 %i.cj, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ciu = load i8, ptr @_ZZ11gmx_analyzeiPPcE6bSubAv, align 1, !tbaa !142, !range !143, !noundef !144
  %i.civ = trunc nuw i8 %i.ciu to i1
  br i1 %i.civ, label %.preheader410, label %..loopexit411_crit_edge

..loopexit411_crit_edge:                          ; preds = %bb.hj
  %.pre594 = load i32, ptr %i.x, align 4, !tbaa !132
  %.pre596.a = load i32, ptr %i.y, align 4, !tbaa !132
  br label %.loopexit411

.preheader410:                                    ; preds = %bb.hj
  %i.ciw = load i32, ptr %i.y, align 4, !tbaa !132 ; 4 uses
  %i.cix = icmp sgt i32 %i.ciw, 0
  %.pre595 = load i32, ptr %i.x, align 4, !tbaa !132 ; 6 uses
  %i.ciy = icmp sgt i32 %.pre595, 0
  %or.cond851 = select i1 %i.cix, i1 %i.ciy, i1 false
  br i1 %or.cond851, label %.preheader.preheader, label %.loopexit411

.preheader.preheader:                             ; preds = %.preheader410
  %wide.trip.count591 = zext nneg i32 %i.ciw to i64
  %wide.trip.count586 = zext nneg i32 %.pre595 to i64 ; 6 uses
  %min.iters.check965 = icmp ult i32 %.pre595, 4
  %min.iters.check967 = icmp ult i32 %.pre595, 32
  %i.ciz = and i64 %wide.trip.count586, 28
  %n.vec969 = and i64 %wide.trip.count586, 2147483616 ; 4 uses
  %cmp.n980 = icmp eq i64 %n.vec969, %wide.trip.count586
  %min.epilog.iters.check985 = icmp eq i64 %i.ciz, 0
  %n.vec987 = and i64 %wide.trip.count586, 2147483644 ; 3 uses
  %cmp.n995 = icmp eq i64 %n.vec987, %wide.trip.count586
  br label %iter.check982

iter.check982:                                    ; preds = %.preheader.preheader, %._crit_edge506
  %indvars.iv588 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next589, %._crit_edge506 ] ; 3 uses
  %i.cja = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv588
  %i.cjb = load double, ptr %i.cja, align 8, !tbaa !34 ; 3 uses
  %i.cjc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv588
  %i.cjd = load ptr, ptr %i.cjc, align 8, !tbaa !25 ; 3 uses
  br i1 %min.iters.check965, label %vec.epilog.scalar.ph983.preheader, label %vector.main.loop.iter.check966

vector.main.loop.iter.check966:                   ; preds = %iter.check982
  br i1 %min.iters.check967, label %vec.epilog.ph986, label %vector.ph968

vector.ph968:                                     ; preds = %vector.main.loop.iter.check966
  %broadcast.splatinsert970 = insertelement <8 x double> poison, double %i.cjb, i64 0
  %broadcast.splat971 = shufflevector <8 x double> %broadcast.splatinsert970, <8 x double> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body972

vector.body972:                                   ; preds = %vector.ph968, %vector.body972
  %index973 = phi i64 [ 0, %vector.ph968 ], [ %index.next978, %vector.body972 ] ; 2 uses
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %i.cjd, i64 %index973 ; 5 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cje, i64 32 ; 2 uses
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cje, i64 64 ; 2 uses
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cje, i64 96 ; 2 uses
  %wide.load974 = load <8 x float>, ptr %i.cje, align 4, !tbaa !17
  %wide.load975 = load <8 x float>, ptr %i.cjf, align 4, !tbaa !17
  %wide.load976 = load <8 x float>, ptr %i.cjg, align 4, !tbaa !17
  %wide.load977 = load <8 x float>, ptr %i.cjh, align 4, !tbaa !17
  %i.cji = fpext <8 x float> %wide.load974 to <8 x double>
  %i.cjj = fpext <8 x float> %wide.load975 to <8 x double>
  %i.cjk = fpext <8 x float> %wide.load976 to <8 x double>
  %i.cjl = fpext <8 x float> %wide.load977 to <8 x double>
  %i.cjm = fsub <8 x double> %i.cji, %broadcast.splat971
  %i.cjn = fsub <8 x double> %i.cjj, %broadcast.splat971
  %i.cjo = fsub <8 x double> %i.cjk, %broadcast.splat971
  %i.cjp = fsub <8 x double> %i.cjl, %broadcast.splat971
  %i.cjq = fptrunc <8 x double> %i.cjm to <8 x float>
  %i.cjr = fptrunc <8 x double> %i.cjn to <8 x float>
  %i.cjs = fptrunc <8 x double> %i.cjo to <8 x float>
  %i.cjt = fptrunc <8 x double> %i.cjp to <8 x float>
  store <8 x float> %i.cjq, ptr %i.cje, align 4, !tbaa !17
  store <8 x float> %i.cjr, ptr %i.cjf, align 4, !tbaa !17
  store <8 x float> %i.cjs, ptr %i.cjg, align 4, !tbaa !17
  store <8 x float> %i.cjt, ptr %i.cjh, align 4, !tbaa !17
  %index.next978 = add nuw i64 %index973, 32      ; 2 uses
  %i.cju = icmp eq i64 %index.next978, %n.vec969
  br i1 %i.cju, label %middle.block979, label %vector.body972, !llvm.loop !114

middle.block979:                                  ; preds = %vector.body972
  br i1 %cmp.n980, label %._crit_edge506, label %vec.epilog.iter.check984

vec.epilog.iter.check984:                         ; preds = %middle.block979
  br i1 %min.epilog.iters.check985, label %vec.epilog.scalar.ph983.preheader, label %vec.epilog.ph986, !prof !149

vec.epilog.ph986:                                 ; preds = %vector.main.loop.iter.check966, %vec.epilog.iter.check984
  %vec.epilog.resume.val981 = phi i64 [ %n.vec969, %vec.epilog.iter.check984 ], [ 0, %vector.main.loop.iter.check966 ]
  %broadcast.splatinsert988 = insertelement <4 x double> poison, double %i.cjb, i64 0
  %broadcast.splat989 = shufflevector <4 x double> %broadcast.splatinsert988, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body990

vec.epilog.vector.body990:                        ; preds = %vec.epilog.vector.body990, %vec.epilog.ph986
  %index991 = phi i64 [ %vec.epilog.resume.val981, %vec.epilog.ph986 ], [ %index.next993, %vec.epilog.vector.body990 ] ; 2 uses
  %i.cjv = getelementptr inbounds nuw [4 x i8], ptr %i.cjd, i64 %index991 ; 2 uses
  %wide.load992 = load <4 x float>, ptr %i.cjv, align 4, !tbaa !17
  %i.cjw = fpext <4 x float> %wide.load992 to <4 x double>
  %i.cjx = fsub <4 x double> %i.cjw, %broadcast.splat989
  %i.cjy = fptrunc <4 x double> %i.cjx to <4 x float>
  store <4 x float> %i.cjy, ptr %i.cjv, align 4, !tbaa !17
end_hunk_0
