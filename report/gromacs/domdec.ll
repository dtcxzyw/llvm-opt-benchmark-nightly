inline.NumInlined: 3413
inline.NumDeleted: 1670
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3gmx26DomainDecompositionBuilder4Impl5buildEPNS_19LocalAtomSetManagerEbPNS_25ObservablesReducerBuilderE:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #30
          to label %.noexc.i.i80 unwind label %bb.ew

.noexc.i.i80:                                     ; preds = %bb.ev
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %bb.eu
  %i.ajm = load ptr, ptr %i.ais, align 8, !tbaa !44
  %i.ajn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %i.ajm, i64 noundef %i.ajk)
          to label %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i unwind label %bb.ew ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.ajo = load ptr, ptr %i.ajf, align 8, !tbaa !546
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16
  %i.ajq = load ptr, ptr %i.ajp, align 8
  invoke void %i.ajq(ptr noundef nonnull align 8 dereferenceable(8) %i.ajf, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i75 unwind label %bb.ew, !inline_history !548

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i75: ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.ajr = load ptr, ptr %9, align 8, !tbaa !44   ; 2 uses
  %i.ajs = icmp eq ptr %i.ajr, %i.ajh
  br i1 %i.ajs, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i75
  %i.ajt = load i64, ptr %i.ajh, align 8, !tbaa !26
  %i.aju = add i64 %i.ajt, 1
  call void @_ZdlPvm(ptr noundef %i.ajr, i64 noundef %i.aju) #31
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i.i77

_ZN3gmx14LogEntryWriterD2Ev.exit.i.i77:           ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ex

bb.ew:                                            ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i, %bb.ev
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  %i.ajw = load ptr, ptr %9, align 8, !tbaa !44   ; 2 uses
  %i.ajx = icmp eq ptr %i.ajw, %i.ajh
  br i1 %i.ajx, label %_ZN3gmx14LogEntryWriterD2Ev.exit26.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24.i.i: ; preds = %bb.ew
  %i.ajy = load i64, ptr %i.ajh, align 8, !tbaa !26
  %i.ajz = add i64 %i.ajy, 1
  call void @_ZdlPvm(ptr noundef %i.ajw, i64 noundef %i.ajz) #31
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit26.i.i

_ZN3gmx14LogEntryWriterD2Ev.exit26.i.i:           ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ey

bb.ex:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i.i77, %bb.et
  call void @_ZN3gmx10TextWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx18StringOutputStreamE, i64 16), ptr %7, align 8, !tbaa !546
  %i.aka = load ptr, ptr %i.ais, align 8, !tbaa !44 ; 2 uses
  %i.akb = icmp eq ptr %i.aka, %i.ait
  br i1 %i.akb, label %_ZL11logSettingsRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tRK10t_inputrecfPK11gmx_ddbox_t.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ex
  %i.akc = load i64, ptr %i.ait, align 8, !tbaa !26
  %i.akd = add i64 %i.akc, 1
  call void @_ZdlPvm(ptr noundef %i.aka, i64 noundef %i.akd) #31
  br label %_ZL11logSettingsRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tRK10t_inputrecfPK11gmx_ddbox_t.exit.i

bb.ey:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit26.i.i, %bb.es
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ajd, %bb.es ], [ %i.ajv, %_ZN3gmx14LogEntryWriterD2Ev.exit26.i.i ]
  call void @_ZN3gmx10TextWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.er
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.ey ], [ %i.ajc, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx18StringOutputStreamE, i64 16), ptr %7, align 8, !tbaa !546
  %i.ake = load ptr, ptr %i.ais, align 8, !tbaa !44 ; 2 uses
  %i.akf = icmp eq ptr %i.ake, %i.ait
  br i1 %i.akf, label %_ZN3gmx18StringOutputStreamD2Ev.exit29.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27.i.i: ; preds = %bb.ez
  %i.akg = load i64, ptr %i.ait, align 8, !tbaa !26
  %i.akh = add i64 %i.akg, 1
  call void @_ZdlPvm(ptr noundef %i.ake, i64 noundef %i.akh) #31
  br label %_ZN3gmx18StringOutputStreamD2Ev.exit29.i.i

_ZN3gmx18StringOutputStreamD2Ev.exit29.i.i:       ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body25

_ZL11logSettingsRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tRK10t_inputrecfPK11gmx_ddbox_t.exit.i: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ym, i64 176
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !354
  %i.akk = icmp eq i32 %i.akj, 1
  br i1 %i.akk, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_ZL11logSettingsRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tRK10t_inputrecfPK11gmx_ddbox_t.exit.i
  %i.akl = load i32, ptr %i.ey, align 8, !tbaa !453
  %i.akm = sitofp i32 %i.akl to double
  %i.akn = fdiv double 1.000000e+00, %i.akm
  %i.ako = fsub double 1.000000e+00, %i.akn
  br label %bb.fc

bb.fb:                                            ; preds = %_ZL11logSettingsRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tRK10t_inputrecfPK11gmx_ddbox_t.exit.i
  %i.akp = getelementptr inbounds nuw i8, ptr %i.yn, i64 540
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !764
  %i.akr = invoke noundef float @_Z13comm_box_fracRKN3gmx11BasicVectorIiEEfRK11gmx_ddbox_t(ptr noundef nonnull align 4 dereferenceable(12) %i.ei, float noundef %i.akq, ptr noundef nonnull align 4 dereferenceable(200) %i.cr)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.fb
  %i.aks = fadd float %i.akr, 1.000000e+00
  %i.akt = fpext float %i.aks to double
  %i.aku = load i32, ptr %i.ey, align 8, !tbaa !453
  %i.akv = sitofp i32 %i.aku to double
  %i.akw = fdiv double %i.akt, %i.akv
  br label %bb.fc

bb.fc:                                            ; preds = %.noexc92, %bb.fa
  %i.akx = phi double [ %i.ako, %bb.fa ], [ %i.akw, %.noexc92 ]
  %i.aky = fptrunc double %i.akx to float         ; 2 uses
  %i.akz = load ptr, ptr @debug, align 8, !tbaa !694 ; 2 uses
  %.not45.i = icmp eq ptr %i.akz, null
  br i1 %.not45.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ala = fpext float %i.aky to double
  %i.alb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.akz, ptr noundef nonnull @.str.165, double noundef %i.ala) #29 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.alc = getelementptr inbounds nuw i8, ptr %i.yl, i64 176
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !581 ; 2 uses
  %i.ale = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc93:                                         ; preds = %bb.fe
  %i.alf = sitofp i32 %i.ald to float
  %i.alg = fmul float %i.aky, %i.alf
  %i.alh = fptosi float %i.alg to i32
  invoke void @_ZN11gmx_ga2la_tC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.ale, i32 noundef %i.ald, i32 noundef %i.alh)
          to label %_ZSt11make_uniqueI11gmx_ga2la_tJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i unwind label %bb.ff, !noalias !781

bb.ff:                                            ; preds = %.noexc93
  %i.ali = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ale, i64 noundef 48) #31, !noalias !781
  br label %.body25

_ZSt11make_uniqueI11gmx_ga2la_tJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %.noexc93
  %i.alj = getelementptr inbounds nuw i8, ptr %i.r, i64 920 ; 2 uses
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !458 ; 5 uses
  store ptr %i.ale, ptr %i.alj, align 8, !tbaa !458
  %.not.i.i.i.i.i78 = icmp eq ptr %i.alk, null
  br i1 %.not.i.i.i.i.i78, label %_ZL21set_ddgrid_parametersRKN3gmx8MDLoggerEP12gmx_domdec_tfRK10gmx_mtop_tRK10t_inputrecPK11gmx_ddbox_t.exit, label %bb.fg

bb.fg:                                            ; preds = %_ZSt11make_uniqueI11gmx_ga2la_tJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 40
  %i.alm = load i8, ptr %i.all, align 8, !tbaa !459
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.alm, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteI11gmx_ga2la_tEclEPS0_.exit.i.i.i.i.i, label %bb.fh, !prof !461

bb.fh:                                            ; preds = %bb.fg
  %i.aln = load ptr, ptr %i.alk, align 8, !tbaa !462 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aln, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteI11gmx_ga2la_tEclEPS0_.exit.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS6_EEN3gmx9HashedMapIS6_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit.sink.split.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS6_EEN3gmx9HashedMapIS6_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fh
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alk, i64 16
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !462
  %i.alq = ptrtoint ptr %i.alp to i64
  %i.alr = ptrtoint ptr %i.aln to i64
  %i.als = sub i64 %i.alq, %i.alr
  call void @_ZdlPvm(ptr noundef nonnull %i.aln, i64 noundef %i.als) #31
  br label %_ZNKSt14default_deleteI11gmx_ga2la_tEclEPS0_.exit.i.i.i.i.i

_ZNKSt14default_deleteI11gmx_ga2la_tEclEPS0_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS6_EEN3gmx9HashedMapIS6_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.fh, %bb.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.alk, i64 noundef 48) #31
  br label %_ZL21set_ddgrid_parametersRKN3gmx8MDLoggerEP12gmx_domdec_tfRK10gmx_mtop_tRK10t_inputrecPK11gmx_ddbox_t.exit

_ZL21set_ddgrid_parametersRKN3gmx8MDLoggerEP12gmx_domdec_tfRK10gmx_mtop_tRK10t_inputrecPK11gmx_ddbox_t.exit: ; preds = %_ZNKSt14default_deleteI11gmx_ga2la_tEclEPS0_.exit.i.i.i.i.i, %_ZSt11make_uniqueI11gmx_ga2la_tJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %i.alt = load i32, ptr %i.el, align 8, !tbaa !201 ; 2 uses
  %i.alu = icmp sgt i32 %i.alt, 0
  br i1 %i.alu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZL21set_ddgrid_parametersRKN3gmx8MDLoggerEP12gmx_domdec_tfRK10gmx_mtop_tRK10t_inputrecPK11gmx_ddbox_t.exit
  %i.alv = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  br label %bb.fi

._crit_edge.i:                                    ; preds = %bb.fp, %_ZL21set_ddgrid_parametersRKN3gmx8MDLoggerEP12gmx_domdec_tfRK10gmx_mtop_tRK10t_inputrecPK11gmx_ddbox_t.exit
  %.lcssa.i = phi i32 [ %i.alt, %_ZL21set_ddgrid_parametersRKN3gmx8MDLoggerEP12gmx_domdec_tfRK10gmx_mtop_tRK10t_inputrecPK11gmx_ddbox_t.exit ], [ %i.apm, %bb.fp ]
  %i.aly = load ptr, ptr %i.ah, align 8, !tbaa !10 ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 392
  %.val.i94 = load i32, ptr %i.alz, align 4, !tbaa !561
  %spec.select.i.i95 = icmp ult i32 %.val.i94, 2
  br i1 %spec.select.i.i95, label %_ZNSt6vectorI18DDCellsizesWithDlbSaIS0_EE6resizeEm.exit.i, label %bb.fq

bb.fi:                                            ; preds = %bb.fp, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.fp ] ; 3 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !9 ; 2 uses
  %19 = zext nneg i32 %i.amb to i64               ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %19 ; 8 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %19 ; 4 uses
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv.i ; 4 uses
  %i.amf = load ptr, ptr %i.ah, align 8, !tbaa !10 ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 288
  %i.amh = load i8, ptr %i.amg, align 8, !tbaa !13, !range !21, !noundef !22
  %i.ami = trunc nuw i8 %i.amh to i1
  br i1 %i.ami, label %.split.us.i, label %bb.fj

.split.us.i:                                      ; preds = %bb.fi
  %.val.i.us.i = load i32, ptr %i.ej, align 8, !tbaa !9 ; 2 uses
  %.val9.i.us.i = load i32, ptr %i.ek, align 4, !tbaa !9 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amf, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !25
  %i.amk = load i32, ptr %i.amc, align 4, !tbaa !9
  %i.aml = add nsw i32 %i.amk, 1
  %i.amm = load i32, ptr %i.amd, align 4, !tbaa !9 ; 2 uses
  %i.amn = add nsw i32 %i.aml, %i.amm
  %i.amo = srem i32 %i.amn, %i.amm
  store i32 %i.amo, ptr %i.amc, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  %i.amp = load i32, ptr %6, align 4, !tbaa !9
  %i.amq = mul nsw i32 %i.amp, %.val.i.us.i
  %i.amr = load i32, ptr %i.alv, align 4, !tbaa !9
  %i.ams = add nsw i32 %i.amq, %i.amr
  %i.amt = mul nsw i32 %i.ams, %.val9.i.us.i
  %i.amu = load i32, ptr %i.alw, align 4, !tbaa !9
  %i.amv = add nsw i32 %i.amt, %i.amu
  %i.amw = sext i32 %i.amv to i64
  %i.amx = load ptr, ptr %i.amj, align 8, !tbaa !23 ; 2 uses
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %i.amw
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  store i32 %i.amz, ptr %i.ame, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !25
  %i.ana = load i32, ptr %i.amc, align 4, !tbaa !9
  %i.anb = add nsw i32 %i.ana, -1
  %i.anc = load i32, ptr %i.amd, align 4, !tbaa !9 ; 2 uses
  %i.and = add nsw i32 %i.anb, %i.anc
  %i.ane = srem i32 %i.and, %i.anc
  store i32 %i.ane, ptr %i.amc, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  %i.anf = load i32, ptr %6, align 4, !tbaa !9
  %i.ang = mul nsw i32 %i.anf, %.val.i.us.i
  %i.anh = load i32, ptr %i.alv, align 4, !tbaa !9
  %i.ani = add nsw i32 %i.ang, %i.anh
  %i.anj = mul nsw i32 %i.ani, %.val9.i.us.i
  %i.ank = load i32, ptr %i.alw, align 4, !tbaa !9
  %i.anl = add nsw i32 %i.anj, %i.ank
  %i.anm = sext i32 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %i.anm
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !9
  br label %.split35.us.i

.split35.us.i:                                    ; preds = %bb.fn, %.noexc110, %bb.fl, %.split.us.i
  %.sink.i = phi i32 [ %i.ano, %.split.us.i ], [ %.pre.i.1.i, %.noexc110 ], [ %i.api, %bb.fn ], [ %i.aow, %bb.fl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  store i32 %.sink.i, ptr %i.anp, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.anq = load ptr, ptr @debug, align 8, !tbaa !694 ; 2 uses
  %.not.i107 = icmp eq ptr %i.anq, null
  br i1 %.not.i107, label %bb.fp, label %bb.fo

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !25
  %i.anr = load i32, ptr %i.amc, align 4, !tbaa !9
  %i.ans = add nsw i32 %i.anr, 1
  %i.ant = load i32, ptr %i.amd, align 4, !tbaa !9 ; 2 uses
  %i.anu = add nsw i32 %i.ans, %i.ant
  %i.anv = srem i32 %i.anu, %i.ant
  store i32 %i.anv, ptr %i.amc, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  %.val.i.i106 = load i32, ptr %i.ej, align 8, !tbaa !9 ; 2 uses
  %.val9.i.i = load i32, ptr %i.ek, align 4, !tbaa !9 ; 2 uses
  %i.anw = load i32, ptr %6, align 4, !tbaa !9
  %i.anx = mul nsw i32 %i.anw, %.val.i.i106
  %i.any = load i32, ptr %i.alv, align 4, !tbaa !9
  %i.anz = add nsw i32 %i.anx, %i.any
  %i.aoa = mul nsw i32 %i.anz, %.val9.i.i
  %i.aob = load i32, ptr %i.alw, align 4, !tbaa !9
  %i.aoc = add nsw i32 %i.aoa, %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %i.amf, i64 336
  %i.aoe = load i8, ptr %i.aod, align 8, !tbaa !24, !range !21, !noundef !22
  %i.aof = trunc nuw i8 %i.aoe to i1
  br i1 %i.aof, label %bb.fk, label %_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE.exit.i

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull readonly align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !25
  %i.aog = load ptr, ptr %i.xy, align 8, !tbaa !27
  %i.aoh = invoke noundef i32 @_Z14tMPI_Cart_rankP10tmpi_comm_PKiPi(ptr noundef %i.aog, ptr noundef nonnull %5, ptr noundef nonnull %i.b)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc109:                                        ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre.i.i108 = load i32, ptr %i.b, align 4, !tbaa !9
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !10
  %.val.i.1.pre.i = load i32, ptr %i.ej, align 8, !tbaa !9
  %.val9.i.1.pre.i = load i32, ptr %i.ek, align 4, !tbaa !9
  br label %_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE.exit.i

_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE.exit.i: ; preds = %.noexc109, %bb.fj
  %.val9.i.1.i = phi i32 [ %.val9.i.1.pre.i, %.noexc109 ], [ %.val9.i.i, %bb.fj ]
  %.val.i.1.i = phi i32 [ %.val.i.1.pre.i, %.noexc109 ], [ %.val.i.i106, %bb.fj ]
  %i.aoi = phi ptr [ %.pre.i, %.noexc109 ], [ %i.amf, %bb.fj ] ; 3 uses
  %i.aoj = phi i32 [ %.pre.i.i108, %.noexc109 ], [ %i.aoc, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  store i32 %i.aoj, ptr %i.ame, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !25
  %i.aok = load i32, ptr %i.amc, align 4, !tbaa !9
  %i.aol = add nsw i32 %i.aok, -1
  %i.aom = load i32, ptr %i.amd, align 4, !tbaa !9 ; 2 uses
  %i.aon = add nsw i32 %i.aol, %i.aom
  %i.aoo = srem i32 %i.aon, %i.aom
  store i32 %i.aoo, ptr %i.amc, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoi, i64 288
  %i.aoq = load i32, ptr %6, align 4, !tbaa !9
  %i.aor = mul nsw i32 %i.aoq, %.val.i.1.i
  %i.aos = load i32, ptr %i.alv, align 4, !tbaa !9
  %i.aot = add nsw i32 %i.aor, %i.aos
  %i.aou = mul nsw i32 %i.aot, %.val9.i.1.i
  %i.aov = load i32, ptr %i.alw, align 4, !tbaa !9
  %i.aow = add nsw i32 %i.aou, %i.aov             ; 2 uses
  %i.aox = load i8, ptr %i.aop, align 8, !tbaa !13, !range !21, !noundef !22
  %i.aoy = trunc nuw i8 %i.aox to i1
  br i1 %i.aoy, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE.exit.i
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoi, i64 336
  %i.apa = load i8, ptr %i.aoz, align 8, !tbaa !24, !range !21, !noundef !22
  %i.apb = trunc nuw i8 %i.apa to i1
  br i1 %i.apb, label %bb.fm, label %.split35.us.i

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull readonly align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !25
  %i.apc = load ptr, ptr %i.xy, align 8, !tbaa !27
  %i.apd = invoke noundef i32 @_Z14tMPI_Cart_rankP10tmpi_comm_PKiPi(ptr noundef %i.apc, ptr noundef nonnull %5, ptr noundef nonnull %i.b)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc110:                                        ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre.i.1.i = load i32, ptr %i.b, align 4, !tbaa !9
  br label %.split35.us.i

bb.fn:                                            ; preds = %_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE.exit.i
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoi, i64 344
  %i.apf = sext i32 %i.aow to i64
  %i.apg = load ptr, ptr %i.ape, align 8, !tbaa !23
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.apg, i64 %i.apf
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !9
  br label %.split35.us.i

bb.fo:                                            ; preds = %.split35.us.i
  %i.apj = load i32, ptr %i.ci, align 4, !tbaa !351
  %i.apk = load i32, ptr %i.ame, align 8, !tbaa !9
  %i.apl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.anq, ptr noundef nonnull @.str.190, i32 noundef %i.apj, i32 noundef %i.amb, i32 noundef %i.apk, i32 noundef %.sink.i) #29 ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.split35.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.apm = load i32, ptr %i.el, align 8, !tbaa !201 ; 2 uses
  %i.apn = sext i32 %i.apm to i64
  %i.apo = icmp slt i64 %indvars.iv.next.i, %i.apn
  br i1 %i.apo, label %bb.fi, label %._crit_edge.i, !llvm.loop !784

bb.fq:                                            ; preds = %._crit_edge.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.aly, i64 1480 ; 2 uses
  %i.apq = sext i32 %.lcssa.i to i64              ; 4 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aly, i64 1488 ; 2 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !785 ; 3 uses
  %i.apt = load ptr, ptr %i.app, align 8, !tbaa !786 ; 2 uses
  %i.apu = ptrtoint ptr %i.aps to i64
  %i.apv = ptrtoint ptr %i.apt to i64
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = sdiv exact i64 %i.apw, 48              ; 3 uses
  %i.apy = icmp ult i64 %i.apx, %i.apq
  br i1 %i.apy, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.apz = sub nuw nsw i64 %i.apq, %i.apx
  invoke void @_ZNSt6vectorI18DDCellsizesWithDlbSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.app, i64 noundef %i.apz)
          to label %_ZNSt6vectorI18DDCellsizesWithDlbSaIS0_EE6resizeEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fq
  %i.aqa = icmp ugt i64 %i.apx, %i.apq
  br i1 %i.aqa, label %bb.ft, label %_ZNSt6vectorI18DDCellsizesWithDlbSaIS0_EE6resizeEm.exit.i

end_hunk_0
begin_hunk_1_@_ZL10init_ddpmeP12gmx_domdec_tP9gmx_ddpmei:bb.a
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 5 uses
  %.sroa.5 = alloca i32, align 4                  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.c = icmp eq i32 %2, 0                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !679
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c
  store i32 1, ptr %1, align 8, !tbaa !338
  %i.j = load i32, ptr %i.d, align 4, !tbaa !9
  %i.k = icmp eq i32 %i.j, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 8, !tbaa !338
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !9
  %i.n = icmp eq i32 %i.m, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.c
  store i32 0, ptr %1, align 8, !tbaa !338
  %i.o = load i32, ptr %i.d, align 4, !tbaa !9
  %i.p = icmp eq i32 %i.o, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread, %bb.e
  %.sink108 = phi i1 [ %i.n, %bb.d ], [ %i.k, %.thread ], [ %i.p, %bb.e ]
  %.sink = phi i64 [ 92, %bb.d ], [ 92, %.thread ], [ 88, %bb.e ]
  %i.q = phi ptr [ %i.l, %bb.d ], [ %i.d, %.thread ], [ %i.d, %bb.e ]
  %.sroa.phi = phi ptr [ %.sroa.5, %bb.d ], [ %.sroa.0, %.thread ], [ %.sroa.0, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = zext i1 %.sink108 to i8
  store i8 %i.s, ptr %i.r, align 4, !tbaa !534
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9    ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !533
  %i.w = icmp slt i32 %i.u, 2
  br i1 %i.w, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.b, i64 84       ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !331
  %i.z = sdiv i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ab = zext nneg i32 %i.u to i64               ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !169 ; 2 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.ab
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = sub nuw nsw i64 %i.ab, %i.ai
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.ak)
  %.pre = load i32, ptr %i.v, align 8, !tbaa !533
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ugt i64 %i.ai, %i.ab
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.am
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.an = phi i32 [ %.pre, %bb.h ], [ %i.u, %bb.i ], [ %i.u, %bb.j ], [ %i.u, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ap = sext i32 %i.an to i64                   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !169 ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.ap
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ay = sub nuw nsw i64 %i.ap, %i.aw
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.ay)
  %.pre86 = load i32, ptr %i.v, align 8, !tbaa !533
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit63

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.az = icmp ugt i64 %i.aw, %i.ap
  br i1 %i.az, label %bb.m, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit63

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.ar, %i.ba
  br i1 %.not.i.i61, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit63, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i62

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i62:      ; preds = %bb.m
  store ptr %i.ba, ptr %i.aq, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit63

_ZNSt6vectorIiSaIiEE6resizeEm.exit63:             ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i62
  %i.bb = phi i32 [ %.pre86, %bb.k ], [ %i.an, %bb.l ], [ %i.an, %bb.m ], [ %i.an, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i62 ]
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit63
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.bf = load ptr, ptr %i.ao, align 8, !tbaa !23
  br label %bb.n

.preheader:                                       ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE6resizeEm.exit63
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !453 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bm = getelementptr i8, ptr %i.b, i64 60      ; 2 uses
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.bn = load i32, ptr %i.q, align 4, !tbaa !9
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !9
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  store i32 0, ptr %i.bt, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = load i32, ptr %i.v, align 8, !tbaa !533
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %bb.n, label %.preheader, !llvm.loop !830

._crit_edge:                                      ; preds = %bb.v, %.preheader
  %i.bx = load i32, ptr %1, align 8, !tbaa !338
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !10, !noalias !831
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ca = sext i32 %i.bx to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !9, !noalias !831 ; 9 uses
  %i.cd = icmp slt i32 %i.cc, -1
  br i1 %i.cd, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #30, !noalias !831
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge
  %i.ce = add nsw i32 %i.cc, 1                    ; 2 uses
  %i.cf = zext nneg i32 %i.ce to i64              ; 3 uses
  %.not.i.i.i.i.i = icmp ne i32 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #33, !noalias !831 ; 17 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cf
  %i.cj = getelementptr i8, ptr %i.ch, i64 4      ; 3 uses
  %i.ck = add nsw i64 %i.cf, -1                   ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ck, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !204, !noalias !831
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.o

bb.o:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.cj, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  store float 0.000000e+00, ptr %i.ch, align 4, !tbaa !204, !noalias !831
  %i.cn = icmp samesign ugt i32 %i.cc, 1
  br i1 %i.cn, label %.lr.ph.i, label %._ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit_crit_edge

._ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit_crit_edge: ; preds = %bb.o
  %.pre88 = zext nneg i32 %i.cc to i64
  br label %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit

.lr.ph.i:                                         ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 432
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.ca ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !703, !noalias !831 ; 10 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !703, !noalias !831
  %i.ct = icmp eq ptr %i.cq, %i.cs
  %i.cu = uitofp nneg i32 %i.cc to float          ; 3 uses
  %wide.trip.count29.i = zext nneg i32 %i.cc to i64 ; 8 uses
  br i1 %i.ct, label %iter.check, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.cv = add nsw i64 %wide.trip.count29.i, -1    ; 2 uses
  %xtraiter = and i64 %i.cv, 7                    ; 3 uses
  %i.cw = add i32 %i.cc, -2
  %i.cx = icmp ult i32 %i.cw, 7
  br i1 %i.cx, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.cv, -8
  br label %.lr.ph.split.i

iter.check:                                       ; preds = %.lr.ph.i
  %i.cy = add nsw i64 %wide.trip.count29.i, -1    ; 5 uses
  %min.iters.check = icmp ult i32 %i.cc, 5
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check110 = icmp ult i32 %i.cc, 33
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cy, 28
  %n.vec = and i64 %i.cy, -32                     ; 4 uses
  %i.da = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.db = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.dc = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.dd = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.de = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.df = fdiv <8 x float> %i.db, %broadcast.splat
  %i.dg = fdiv <8 x float> %i.dc, %broadcast.splat
  %i.dh = fdiv <8 x float> %i.dd, %broadcast.splat
  %i.di = fdiv <8 x float> %i.de, %broadcast.splat
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 100
  store <8 x float> %i.df, ptr %i.dk, align 4, !tbaa !204, !noalias !831
  store <8 x float> %i.dg, ptr %i.dl, align 4, !tbaa !204, !noalias !831
  store <8 x float> %i.dh, ptr %i.dm, align 4, !tbaa !204, !noalias !831
  store <8 x float> %i.di, ptr %i.dn, align 4, !tbaa !204, !noalias !831
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !834

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !767

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.da, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.cy, -4                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec111, 1
  %broadcast.splatinsert112 = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat113 = shufflevector <4 x float> %broadcast.splatinsert112, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert114 = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat115 = shufflevector <4 x i32> %broadcast.splatinsert114, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat115, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind117 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = uitofp nneg <4 x i32> %vec.ind117 to <4 x float>
  %i.ds = fdiv <4 x float> %i.dr, %broadcast.splat113
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index116
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store <4 x float> %i.ds, ptr %i.du, align 4, !tbaa !204, !noalias !831
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %vec.ind.next119 = add <4 x i32> %vec.ind117, splat (i32 4)
  %i.dv = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !835

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.cy, %n.vec111
  br i1 %cmp.n120, label %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv26.i.ph = phi i64 [ 1, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %.lr.ph.split.us.i ], [ %indvars.iv26.i.ph, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.dx = uitofp nneg i32 %i.dw to float
  %i.dy = fdiv float %i.dx, %i.cu
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv26.i
  store float %i.dy, ptr %i.dz, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit, label %.lr.ph.split.us.i, !llvm.loop !836

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %i.ea = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader.new ], [ %i.fn, %.lr.ph.split.i ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.7, %.lr.ph.split.i ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.7, %.lr.ph.split.i ]
  %i.eb = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !204, !noalias !831
  %i.ee = fadd float %i.ea, %i.ed                 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  store float %i.ee, ptr %i.ef, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !204, !noalias !831
  %i.ej = fadd float %i.ee, %i.ei                 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i
  store float %i.ej, ptr %i.ek, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.i.1
  %i.em = getelementptr i8, ptr %i.el, i64 -4
  %i.en = load float, ptr %i.em, align 4, !tbaa !204, !noalias !831
  %i.eo = fadd float %i.ej, %i.en                 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.1
  store float %i.eo, ptr %i.ep, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.i.2
  %i.er = getelementptr i8, ptr %i.eq, i64 -4
  %i.es = load float, ptr %i.er, align 4, !tbaa !204, !noalias !831
  %i.et = fadd float %i.eo, %i.es                 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.2
  store float %i.et, ptr %i.eu, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ev = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.i.3
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !204, !noalias !831
  %i.ey = fadd float %i.et, %i.ex                 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.3
  store float %i.ey, ptr %i.ez, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.i.4
  %i.fb = getelementptr i8, ptr %i.fa, i64 -4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !204, !noalias !831
  %i.fd = fadd float %i.ey, %i.fc                 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.4
  store float %i.fd, ptr %i.fe, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.ff = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.i.5
  %i.fg = getelementptr i8, ptr %i.ff, i64 -4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !204, !noalias !831
  %i.fi = fadd float %i.fd, %i.fh                 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.5
  store float %i.fi, ptr %i.fj, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.i.6
  %i.fl = getelementptr i8, ptr %i.fk, i64 -4
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !204, !noalias !831
  %i.fn = fadd float %i.fi, %i.fm                 ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.6
  store float %i.fn, ptr %i.fo, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit.loopexit122.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !837

_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit.loopexit122.unr-lcssa: ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit.loopexit122.unr-lcssa, %.lr.ph.split.i.preheader
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %i.fn, %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit.loopexit122.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.7, %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit.loopexit122.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %i.fp = phi float [ %i.ft, %.lr.ph.split.i.epil ], [ %.epil.init, %.lr.ph.split.i.epil.preheader ]
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.fq = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.i.epil
  %i.fr = getelementptr i8, ptr %i.fq, i64 -4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !204, !noalias !831
  %i.ft = fadd float %i.fp, %i.fs                 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.epil
  store float %i.ft, ptr %i.fu, align 4, !tbaa !204, !noalias !831
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit, label %.lr.ph.split.i.epil, !llvm.loop !838

_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit:      ; preds = %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit.loopexit122.unr-lcssa, %.lr.ph.split.i.epil, %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %._ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre88, %._ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit_crit_edge ], [ %wide.trip.count29.i, %middle.block ], [ %wide.trip.count29.i, %.lr.ph.split.us.i ], [ %wide.trip.count29.i, %vec.epilog.middle.block ], [ %wide.trip.count29.i, %.lr.ph.split.i.epil ], [ %wide.trip.count29.i, %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit.loopexit122.unr-lcssa ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.pre-phi
  store float 1.000000e+00, ptr %i.fv, align 4, !tbaa !204, !noalias !831
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !492 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !493
  store ptr %i.ch, ptr %i.fw, align 8, !tbaa !492
  store ptr %.0.i.i.i.i.i.i, ptr %i.fy, align 8, !tbaa !807
  store ptr %i.ci, ptr %i.fz, align 8, !tbaa !493
  %.not.i.i.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i64, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = sub i64 %i.gb, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gd) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.q:                                             ; preds = %.lr.ph81, %bb.v
  %i.ge = phi i32 [ %i.bh, %.lr.ph81 ], [ %i.hj, %bb.v ]
  %.079 = phi i32 [ 0, %.lr.ph81 ], [ %i.hk, %bb.v ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.gf = load i32, ptr %i.bj, align 8, !tbaa !9  ; 2 uses
  %i.gg = load i32, ptr %i.bk, align 4, !tbaa !9  ; 2 uses
  %i.gh = mul nsw i32 %i.gg, %i.gf
  %i.gi = sdiv i32 %.079, %i.gh                   ; 2 uses
  store i32 %i.gi, ptr %.sroa.0, align 4, !tbaa !9
  %i.gj = sdiv i32 %.079, %i.gg
  %i.gk = srem i32 %i.gj, %i.gf
  store i32 %i.gk, ptr %.sroa.5, align 4, !tbaa !9
  br i1 %i.c, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gl = load i32, ptr %i.bl, align 4, !tbaa !9
  %i.gm = icmp eq i32 %i.gi, %i.gl
  br i1 %i.gm, label %bb.t, label %bb.v

bb.s:                                             ; preds = %bb.q
  %.val71 = load i32, ptr %i.bm, align 4, !tbaa !330
  %.val6072 = load i32, ptr %i.x, align 4, !tbaa !331 ; 2 uses
  %i.gn = mul nsw i32 %.val6072, %.079
  %i.go = sdiv i32 %.val6072, 2
  %i.gp = add nsw i32 %i.gn, %i.go
  %i.gq = sdiv i32 %i.gp, %.val71
  %i.gr = sdiv i32 %i.gq, %i.z
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.val = load i32, ptr %i.bm, align 4, !tbaa !330
  %.val60 = load i32, ptr %i.x, align 4, !tbaa !331 ; 2 uses
  %i.gs = mul nsw i32 %.val60, %.079
  %i.gt = sdiv i32 %.val60, 2
  %i.gu = add nsw i32 %i.gs, %i.gt
  %i.gv = sdiv i32 %i.gu, %.val
  %i.gw = load i32, ptr %i.v, align 8, !tbaa !533
  %i.gx = srem i32 %i.gv, %i.gw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gy = phi i32 [ %i.gr, %bb.s ], [ %i.gx, %bb.t ]
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.gz ; 2 uses
  %i.hc = load i32, ptr %.sroa.phi, align 4, !tbaa !9 ; 2 uses
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !9
  %i.he = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 %i.hd)
  store i32 %i.he, ptr %i.hb, align 4, !tbaa !9
  %i.hf = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.gz ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !9
  %i.hi = tail call i32 @llvm.smax.i32(i32 %i.hh, i32 %i.hc)
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !9
  %.pre87 = load i32, ptr %i.bg, align 8, !tbaa !453
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.hj = phi i32 [ %.pre87, %bb.u ], [ %i.ge, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.hk = add nuw nsw i32 %.079, 1                ; 2 uses
  %i.hl = icmp slt i32 %i.hk, %i.hj
  br i1 %i.hl, label %bb.q, label %._crit_edge, !llvm.loop !839

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZL17set_slb_pme_dim_fP12gmx_domdec_ti.exit, %bb.p, %bb.f
  ret void
}

declare noundef float @_Z13comm_box_fracRKN3gmx11BasicVectorIiEEfRK11gmx_ddbox_t(ptr noundef nonnull align 4 dereferenceable(12), float noundef, ptr noundef nonnull align 4 dereferenceable(200)) local_unnamed_addr #2

declare void @_Z14set_dlb_limitsP12gmx_domdec_t(ptr noundef) local_unnamed_addr #2

declare void @_ZN3gmx10TextWriterC1EPNS_16TextOutputStreamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL13writeSettingsPN3gmx10TextWriterEP12gmx_domdec_tRK10gmx_mtop_tRK10t_inputrecbfPK11gmx_ddbox_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(768) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %3, i1 noundef zeroext %4, float noundef %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 16 uses
  br i1 %4, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx10TextWriter11writeStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.168)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !201
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph135, label %._crit_edge136

.lr.ph135:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.c

._crit_edge136:                                   ; preds = %bb.c, %bb.b
  tail call void @_ZN3gmx10TextWriter15ensureLineBreakEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  %i.j = load float, ptr %i.i, align 4, !tbaa !752
  %i.k = fpext float %i.j to double
  tail call void (ptr, ptr, ...) @_ZN3gmx10TextWriter18writeLineFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.170, double noundef %i.k)
  %i.l = fpext float %5 to double
  tail call void (ptr, ptr, ...) @_ZN3gmx10TextWriter18writeLineFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.171, double noundef %i.l)
  tail call void @_ZN3gmx10TextWriter11writeStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.172)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.q = load i32, ptr %i.m, align 4, !tbaa !9    ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.lr.ph135, %bb.c
  %indvars.iv145 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next146, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv145
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9
  %i.u = tail call noundef signext i8 @_Z8dim2chari(i32 noundef %i.t)
  %i.v = sext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv145
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  tail call void (ptr, ptr, ...) @_ZN3gmx10TextWriter20writeStringFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.169, i32 noundef %i.v, i32 noundef %i.x)
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.y = load i32, ptr %i.d, align 8, !tbaa !201
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next146, %i.z
  br i1 %i.aa, label %bb.c, label %._crit_edge136, !llvm.loop !840

bb.d:                                             ; preds = %._crit_edge136
  %i.ab = load i32, ptr %6, align 4, !tbaa !841
  %.not = icmp slt i32 %i.ab, 1
  %i.ac = icmp eq i32 %i.q, 2
  %or.cond126 = and i1 %i.ac, %.not
  br i1 %or.cond126, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load float, ptr %i.n, align 4, !tbaa !204
  %i.ae = load float, ptr %i.o, align 4, !tbaa !204
  %i.af = load float, ptr %i.p, align 4, !tbaa !204
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = uitofp nneg i32 %i.q to float
  %i.ai = fdiv float %i.ag, %i.ah
  %i.aj = fdiv float %i.ad, %i.ai
  %i.ak = fpext float %i.aj to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.al = phi double [ %i.ak, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.am = tail call noundef signext i8 @_Z8dim2chari(i32 noundef 0)
  %i.an = sext i8 %i.am to i32
  tail call void (ptr, ptr, ...) @_ZN3gmx10TextWriter20writeStringFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.173, i32 noundef %i.an, double noundef %i.al)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge136, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !9  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %6, align 4, !tbaa !841
  %.not.1 = icmp slt i32 %i.ar, 2
  %i.as = icmp eq i32 %i.ap, 2
  %or.cond126.1 = and i1 %i.as, %.not.1
  br i1 %or.cond126.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.au = load float, ptr %i.at, align 4, !tbaa !204
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !204
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !204
  %i.az = fmul float %i.aw, %i.ay
  %i.ba = uitofp nneg i32 %i.ap to float
  %i.bb = fdiv float %i.az, %i.ba
  %i.bc = fdiv float %i.au, %i.bb
  %i.bd = fpext float %i.bc to double
  br label %bb.j
end_hunk_1
begin_hunk_2_@_ZN3gmx26DomainDecompositionBuilderC2ERKNS_8MDLoggerERKNS_7MpiCommERKNS_13DomdecOptionsERKNS_12MdrunOptionsERK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPA3_KfNS_8ArrayRefIKNS_17RangePartitioningEEEbfNSP_IKNS_11BasicVectorIfEEEEbbbbb:bb.a
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  store ptr %i.q, ptr %i.k, align 8, !tbaa !564
  invoke void @_ZN3gmx26DomainDecompositionBuilder4ImplC1ERKNS_8MDLoggerERKNS_7MpiCommERKNS_13DomdecOptionsERKNS_12MdrunOptionsERK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPA3_KfNS_8ArrayRefIKNS_17RangePartitioningEEEbfNSQ_IKNS_11BasicVectorIfEEEEbbbbb(ptr noundef nonnull align 8 dereferenceable(856) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(768) %5, ptr noundef nonnull align 8 dereferenceable(888) %6, ptr noundef nonnull align 8 dereferenceable(816) %7, ptr noundef %8, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %18, i1 noundef zeroext %10, float noundef %11, ptr noundef nonnull byval(%"class.gmx::ArrayRef.420") align 8 %19, i1 noundef zeroext %13, i1 noundef zeroext %14, i1 noundef zeroext %15, i1 noundef zeroext %16, i1 noundef zeroext %17)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !886
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 856) #31
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26DomainDecompositionBuilder5buildEPNS_19LocalAtomSetManagerEbPNS_25ObservablesReducerBuilderE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::unique_ptr.688") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !886
  tail call void @_ZN3gmx26DomainDecompositionBuilder4Impl5buildEPNS_19LocalAtomSetManagerEbPNS_25ObservablesReducerBuilderE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.688") align 8 %0, ptr noundef nonnull align 8 dereferenceable(856) %i.a, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx26DomainDecompositionBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !886    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilder4ImplESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIN3gmx26DomainDecompositionBuilder4ImplEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a)
  br label %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilder4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilder4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN3gmx26DomainDecompositionBuilder4ImplEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN3gmx26DomainDecompositionBuilder4ImplD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !173
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #31
  br label %_ZN3gmx26DomainDecompositionBuilder4ImplD2Ev.exit

_ZN3gmx26DomainDecompositionBuilder4ImplD2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 712
  tail call void @_ZN3gmx7MpiCommD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #29
  tail call void @_ZN3gmx7MpiCommD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(168) %i.w) #29
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @_ZN11DDRankSetupD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.y) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 856) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZN3gmx26DomainDecompositionBuilder4ImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx26DomainDecompositionBuilder17thisRankHasPPDutyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !886
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.c = load i8, ptr %i.b, align 8, !tbaa !730, !range !21, !noundef !22
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx26DomainDecompositionBuilder18thisRankHasPmeDutyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !886
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 817
  %i.c = load i8, ptr %i.b, align 1, !tbaa !731, !range !21, !noundef !22
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z16change_dd_cutoffP12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS4_11BasicVectorIfEEEEfb(ptr noundef nonnull %0, ptr noundef %1, ptr %2, ptr %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.gmx_ddbox_t, align 4        ; 9 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097) %0, i1 noundef zeroext false, ptr noundef %1, i1 noundef zeroext true, ptr %2, ptr %i.e, ptr noundef nonnull %6)
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load i32, ptr %i.g, align 8, !tbaa !201  ; 5 uses
  %.not4658.i = icmp sgt i32 %i.h, 0
  br i1 %.not4658.i, label %.lr.ph.i, label %..critedge50_crit_edge.i

..critedge50_crit_edge.i:                         ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 928
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !10 ; 2 uses
  %.phi.trans.insert107.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 392
  %.val.pre.i = load i32, ptr %.phi.trans.insert107.i, align 4, !tbaa !561
  br label %.critedge50.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load i8, ptr %i.k, align 8, !tbaa !845, !range !21, !noundef !22
  %i.m = trunc nuw i8 %i.l to i1                  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10   ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 392
  %.val51.i = load i32, ptr %i.r, align 4, !tbaa !561
  %.val51.fr.i = freeze i32 %.val51.i             ; 8 uses
  %spec.select.i.i = icmp ugt i32 %.val51.fr.i, 1
  %i.s = load i32, ptr %6, align 4                ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 408 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 676 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 664 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  br i1 %spec.select.i.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %5, label %.lr.ph.split.us.split.i, label %bb.ai

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !888
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !888
  %i.aa = icmp ne ptr %i.y, %i.z
  %.fr70.i = freeze i1 %i.aa
  br i1 %.fr70.i, label %.lr.ph.split.us.split.split.i, label %bb.ai

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.i
  %wide.trip.count88.i = zext nneg i32 %i.h to i64 ; 2 uses
  %exitcond89.peel.not.i = icmp eq i32 %i.h, 1    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.split.i
  br i1 %exitcond89.peel.not.i, label %bb.ai, label %.lr.ph.split.us.split.split.split.i

bb.c:                                             ; preds = %.lr.ph.split.us.split.split.i
  br i1 %exitcond89.peel.not.i, label %bb.ai, label %.lr.ph.split.us.split.split.split.us.i

.lr.ph.split.us.split.split.split.us.i:           ; preds = %bb.c, %bb.d
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv85.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9
  %7 = zext nneg i32 %i.ac to i64                 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %7
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fmul nnan double %i.af, 1.000100e+00
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %7
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !204
  %i.aj = fpext float %i.ai to double
  %i.ak = fdiv double %i.ag, %i.aj
  %i.al = fptrunc double %i.ak to float
  %i.am = fpext float %i.al to double
  %i.an = fmul double %i.am, 1.020000e+00
  %i.ao = fptrunc double %i.an to float
  %i.ap = fmul float %4, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %7
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !204
  %i.as = fmul float %i.ar, %i.ap
  %i.at = fptosi float %i.as to i32
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split.split.split.us.i
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count88.i
  br i1 %exitcond89.not.i, label %.critedge50.i, label %.lr.ph.split.us.split.split.split.us.i, !llvm.loop !889

.lr.ph.split.us.split.split.split.i:              ; preds = %bb.b, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 1, %bb.b ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !9
  %8 = zext nneg i32 %i.aw to i64                 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fmul nnan double %i.az, 1.000100e+00
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !204
  %i.bd = fpext float %i.bc to double
  %i.be = fdiv double %i.ba, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = fmul float %4, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !204
  %i.bj = fmul float %i.bi, %i.bg
  %i.bk = fptosi float %i.bj to i32
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split.split.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count88.i
  br i1 %exitcond.not.i, label %.critedge50.i, label %.lr.ph.split.us.split.split.split.i, !llvm.loop !891

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %wide.trip.count104.i = zext nneg i32 %i.h to i64 ; 4 uses
  br i1 %5, label %.lr.ph.split.split.us.preheader.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.preheader.i:                ; preds = %.lr.ph.split.i
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !9   ; 2 uses
  %9 = zext nneg i32 %i.bm to i64                 ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %9
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fmul nnan double %i.bp, 1.000100e+00
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %9
  %i.bs = load float, ptr %i.br, align 4, !tbaa !204
  %i.bt = fpext float %i.bs to double
  %i.bu = fdiv double %i.bq, %i.bt
  %i.bv = fptrunc double %i.bu to float           ; 2 uses
  %i.bw = fpext float %i.bv to double
  %i.bx = fmul double %i.bw, 1.020000e+00
  %i.by = fptrunc double %i.bx to float
  %.0.i.us61.peel.i = select i1 %i.m, float %i.by, float %i.bv
  %i.bz = fmul float %4, %.0.i.us61.peel.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %9
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !204 ; 2 uses
  %i.cc = fmul float %i.cb, %i.bz
  %i.cd = fptosi float %i.cc to i32
  %i.ce = icmp slt i32 %i.bm, %i.s
  br i1 %i.ce, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph.split.split.us.preheader.i
  %i.cf = load i32, ptr %i.t, align 4, !tbaa !9   ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not57.us.peel.i = icmp sgt i32 %i.cf, %i.cd
  br i1 %.not57.us.peel.i, label %bb.h, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %9
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !204
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %9
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !204
  %i.cl = fsub float %i.ci, %i.ck
  %i.cm = fmul float %i.cb, %i.cl
  %i.cn = uitofp nneg i32 %i.cf to float
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = fcmp olt float %i.co, %4
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %.lr.ph.split.split.us.preheader.i
  %exitcond105.peel.not.i = icmp eq i32 %i.h, 1
  br i1 %exitcond105.peel.not.i, label %.critedge50.thread115.i, label %.lr.ph.split.split.us.i.preheader

.lr.ph.split.split.us.i.preheader:                ; preds = %bb.j
  %i.cq = load ptr, ptr %i.w, align 8, !tbaa !888
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !888
  %i.cs = icmp ne ptr %i.cq, %i.cr
  %.fr = freeze i1 %i.cs
  br i1 %.fr, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.us.i.us

.lr.ph.split.split.us.i.us:                       ; preds = %.lr.ph.split.split.us.i.preheader, %bb.o
  %indvars.iv101.i.us = phi i64 [ %indvars.iv.next102.i.us, %bb.o ], [ 1, %.lr.ph.split.split.us.i.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv101.i.us
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !9  ; 2 uses
  %10 = zext nneg i32 %i.cu to i64                ; 5 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %10
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !9
  %i.cx = sitofp i32 %i.cw to double
  %i.cy = fmul nnan double %i.cx, 1.000100e+00
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %10
  %i.da = load float, ptr %i.cz, align 4, !tbaa !204
  %i.db = fpext float %i.da to double
  %i.dc = fdiv double %i.cy, %i.db
  %i.dd = fptrunc double %i.dc to float           ; 2 uses
  %i.de = fpext float %i.dd to double
  %i.df = fmul double %i.de, 1.020000e+00
  %i.dg = fptrunc double %i.df to float
  %.0.i.us61.i.us = select i1 %i.m, float %i.dg, float %i.dd
  %i.dh = fmul float %4, %.0.i.us61.i.us
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %10
  %i.dj = load float, ptr %i.di, align 4, !tbaa !204 ; 2 uses
  %i.dk = fmul float %i.dj, %i.dh
  %i.dl = fptosi float %i.dk to i32
  %i.dm = icmp slt i32 %i.cu, %i.s
  br i1 %i.dm, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.split.split.us.i.us
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv101.i.us
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !9  ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not57.us.i.us = icmp sgt i32 %i.do, %i.dl
  br i1 %.not57.us.i.us, label %bb.m, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %10
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !204
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %10
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !204
  %i.du = fsub float %i.dr, %i.dt
  %i.dv = fmul float %i.dj, %i.du
  %i.dw = uitofp nneg i32 %i.do to float
  %i.dx = fmul float %i.dv, %i.dw
  %i.dy = fcmp olt float %i.dx, %4
  br i1 %i.dy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %.lr.ph.split.split.us.i.us
  %indvars.iv.next102.i.us = add nuw nsw i64 %indvars.iv101.i.us, 1 ; 2 uses
  %exitcond105.not.i.us = icmp eq i64 %indvars.iv.next102.i.us, %wide.trip.count104.i
  br i1 %exitcond105.not.i.us, label %.critedge50.i, label %.lr.ph.split.split.us.i.us, !llvm.loop !892

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.split.us.i.preheader, %bb.u
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %bb.u ], [ 1, %.lr.ph.split.split.us.i.preheader ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv101.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !9  ; 2 uses
  %11 = zext nneg i32 %i.ea to i64                ; 5 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %11
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !9
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fmul nnan double %i.ed, 1.000100e+00
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %11
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !204
  %i.eh = fpext float %i.eg to double
  %i.ei = fdiv double %i.ee, %i.eh
  %i.ej = fptrunc double %i.ei to float           ; 2 uses
  %i.ek = fpext float %i.ej to double
  %i.el = fmul double %i.ek, 1.020000e+00
  %i.em = fptrunc double %i.el to float
  %.0.i.us61.i = select i1 %i.m, float %i.em, float %i.ej
  %i.en = fmul float %4, %.0.i.us61.i
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %11
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !204 ; 2 uses
  %i.eq = fmul float %i.ep, %i.en
  %i.er = fptosi float %i.eq to i32               ; 2 uses
  %i.es = icmp slt i32 %i.ea, %i.s
  br i1 %i.es, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.split.split.us.i
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv101.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !9  ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not57.us.i = icmp sgt i32 %i.eu, %i.er
  br i1 %.not57.us.i, label %bb.r, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %11
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !204
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %11
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !204
  %i.fa = fsub float %i.ex, %i.ez
  %i.fb = fmul float %i.ep, %i.fa
  %i.fc = uitofp nneg i32 %i.eu to float
  %i.fd = fmul float %i.fb, %i.fc
  %i.fe = fcmp olt float %i.fd, %4
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p, %.lr.ph.split.split.us.i
  %i.ff = icmp sgt i32 %i.er, 0
  br i1 %i.ff, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count104.i
  br i1 %exitcond105.not.i, label %.critedge50.i, label %.lr.ph.split.split.us.i, !llvm.loop !892

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  br i1 %i.m, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i, %bb.z
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %bb.z ], [ 0, %.lr.ph.split.split.i ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv96.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !9  ; 2 uses
  %12 = zext nneg i32 %i.fh to i64                ; 5 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !9
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = fmul nnan double %i.fk, 1.000100e+00
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %12
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !204
  %i.fo = fpext float %i.fn to double
  %i.fp = fdiv double %i.fl, %i.fo
  %i.fq = fptrunc double %i.fp to float
  %i.fr = fpext float %i.fq to double
  %i.fs = fmul double %i.fr, 1.020000e+00
  %i.ft = fptrunc double %i.fs to float
  %i.fu = fmul float %4, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %12
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !204 ; 2 uses
  %i.fx = fmul float %i.fw, %i.fu
  %i.fy = fptosi float %i.fx to i32
  %i.fz = icmp slt i32 %i.fh, %i.s
  br i1 %i.fz, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.split.split.split.us.i
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv96.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !9  ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.not57.us66.i = icmp sgt i32 %i.gb, %i.fy
  br i1 %.not57.us66.i, label %bb.x, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !204
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %12
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !204
  %i.gh = fsub float %i.ge, %i.gg
  %i.gi = fmul float %i.fw, %i.gh
  %i.gj = uitofp nneg i32 %i.gb to float
  %i.gk = fmul float %i.gi, %i.gj
  %i.gl = fcmp olt float %i.gk, %4
  br i1 %i.gl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %.lr.ph.split.split.split.us.i
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %wide.trip.count104.i
  br i1 %exitcond100.not.i, label %.critedge50.i, label %.lr.ph.split.split.split.us.i, !llvm.loop !893

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i, %bb.ae
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %bb.ae ], [ 0, %.lr.ph.split.split.i ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv91.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !9  ; 2 uses
  %13 = zext nneg i32 %i.gn to i64                ; 5 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %13
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !9
  %i.gq = sitofp i32 %i.gp to double
  %i.gr = fmul nnan double %i.gq, 1.000100e+00
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %13
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !204
  %i.gu = fpext float %i.gt to double
  %i.gv = fdiv double %i.gr, %i.gu
  %i.gw = fptrunc double %i.gv to float
  %i.gx = fmul float %4, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %13
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !204 ; 2 uses
  %i.ha = fmul float %i.gz, %i.gx
  %i.hb = fptosi float %i.ha to i32
  %i.hc = icmp slt i32 %i.gn, %i.s
  br i1 %i.hc, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.lr.ph.split.split.split.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv91.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !9  ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.not57.i = icmp sgt i32 %i.he, %i.hb
  br i1 %.not57.i, label %bb.ac, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %13
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !204
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %13
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !204
  %i.hk = fsub float %i.hh, %i.hj
  %i.hl = fmul float %i.gz, %i.hk
  %i.hm = uitofp nneg i32 %i.he to float
  %i.hn = fmul float %i.hl, %i.hm
  %i.ho = fcmp olt float %i.hn, %4
  br i1 %i.ho, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %.lr.ph.split.split.split.i
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %exitcond95.not.i = icmp eq i64 %indvars.iv.next92.i, %wide.trip.count104.i
  br i1 %exitcond95.not.i, label %.critedge50.i, label %.lr.ph.split.split.split.i, !llvm.loop !893

.critedge50.i:                                    ; preds = %bb.e, %bb.d, %bb.ae, %bb.z, %bb.o, %bb.u, %..critedge50_crit_edge.i
  %i.hp = phi ptr [ %.pre.i, %..critedge50_crit_edge.i ], [ %i.q, %bb.ae ], [ %i.q, %bb.o ], [ %i.q, %bb.u ], [ %i.q, %bb.d ], [ %i.q, %bb.z ], [ %i.q, %bb.e ]
  %.val.i = phi i32 [ %.val.pre.i, %..critedge50_crit_edge.i ], [ %.val51.fr.i, %bb.ae ], [ %.val51.fr.i, %bb.o ], [ %.val51.fr.i, %bb.u ], [ %.val51.fr.i, %bb.d ], [ %.val51.fr.i, %bb.z ], [ %.val51.fr.i, %bb.e ] ; 2 uses
  %spec.select.i53.i = icmp ult i32 %.val.i, 2
  br i1 %spec.select.i53.i, label %bb.ai, label %.critedge50.thread115.i

.critedge50.thread115.i:                          ; preds = %.critedge50.i, %bb.j
  %.val118.i = phi i32 [ %.val.i, %.critedge50.i ], [ %.val51.fr.i, %bb.j ]
  %i.hq = and i32 %.val118.i, -2
  %spec.select.i54.i = icmp eq i32 %i.hq, 4
  br i1 %spec.select.i54.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.critedge50.thread115.i
  %i.hr = call noundef zeroext i1 @_ZN3gmx15check_grid_jumpElPK12gmx_domdec_tfPK11gmx_ddbox_tb(i64 noundef 0, ptr noundef nonnull %0, float noundef %4, ptr noundef nonnull %6, i1 noundef zeroext false)
  br i1 %i.hr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.critedge50.thread115.i
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK3gmx7MpiComm9sumReduceEmPi(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef 1, ptr noundef nonnull %i.a)
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !9
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 928
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %bb.ai

_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread: ; preds = %.lr.ph.split.us.split.split.split.i, %.lr.ph.split.us.split.split.split.us.i, %bb.ab, %bb.w, %bb.l, %bb.t, %bb.q, %bb.ah, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge, %.critedge50.i, %bb.c, %bb.b, %.lr.ph.split.us.split.i, %.lr.ph.split.us.i
  %i.hv = phi ptr [ %.pre, %._crit_edge ], [ %i.hp, %.critedge50.i ], [ %i.q, %bb.c ], [ %i.q, %bb.b ], [ %i.q, %.lr.ph.split.us.split.i ], [ %i.q, %.lr.ph.split.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 540
  store float %4, ptr %i.hw, align 4, !tbaa !764
  br label %bb.aj

bb.aj:                                            ; preds = %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread, %bb.ai
  %.3.i10 = phi i1 [ false, %_ZL14test_dd_cutoffPK12gmx_domdec_tPA3_KfN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEfb.exit.thread ], [ true, %bb.ai ]
  ret i1 %.3.i10
}

declare void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr, ptr, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN3gmx15check_grid_jumpElPK12gmx_domdec_tfPK11gmx_ddbox_tb(i64 noundef, ptr noundef, float noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK3gmx7MpiComm9sumReduceEmPi(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z24constructGpuHaloExchangeRK9t_commrecRKN3gmx19DeviceStreamManagerEP13gmx_wallcycleb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.200", align 8   ; 17 uses
  %5 = alloca %"class.std::vector.200", align 8   ; 20 uses
  %6 = alloca %"class.gmx::HostAllocationPolicy", align 4 ; 13 uses
  %7 = alloca %"class.std::optional", align 4     ; 5 uses
  %8 = alloca %"class.std::unique_ptr.388", align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx19DeviceStreamManager13streamIsValidENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ24constructGpuHaloExchangeRK9t_commrecRKN3gmx19DeviceStreamManagerEP13gmx_wallcyclebENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 3115) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK3gmx19DeviceStreamManager13streamIsValidENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1)
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.197, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ24constructGpuHaloExchangeRK9t_commrecRKN3gmx19DeviceStreamManagerEP13gmx_wallcyclebENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 3118) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !343  ; 6 uses
  br i1 %3, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load i32, ptr %i.e, align 8, !tbaa !201
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph78, label %.loopexit70

.lr.ph78:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !506
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1096
  store i8 1, ptr %i.k, align 8, !tbaa !894
  %i.l = tail call noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.m = tail call noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager6streamENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !895, !nonnull !22, !align !234
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = load ptr, ptr %0, align 8, !tbaa !348, !nonnull !22, !align !234
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #33, !noalias !896 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !896
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 0, ptr %i.t, align 4, !tbaa !899, !noalias !896
  invoke void @_ZN3gmx28GpuHaloExchangeNvshmemHelperC1ERK12gmx_domdec_tRK13DeviceContextRK12DeviceStreamRKSt8optionalIiEP13gmx_wallcycleP10tmpi_comm_SH_(ptr noundef nonnull align 8 dereferenceable(184) %i.s, ptr noundef nonnull align 8 dereferenceable(1097) %i.d, ptr noundef nonnull align 1 %i.l, ptr noundef nonnull align 1 %i.m, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef %2, ptr noundef %i.p, ptr noundef %i.r)
          to label %_ZSt11make_uniqueIN3gmx28GpuHaloExchangeNvshmemHelperEJR12gmx_domdec_tRK13DeviceContextRK12DeviceStreamRKSt9nullopt_tRP13gmx_wallcycleP10tmpi_comm_SH_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.h, !noalias !896

common.resume:                                    ; preds = %bb.w, %bb.x, %bb.af, %bb.ab, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %lpad.phi, %bb.af ], [ %i.ik, %bb.ab ], [ %i.gm, %bb.x ], [ %i.gm, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !896
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 184) #31, !noalias !896
  br label %common.resume

_ZSt11make_uniqueIN3gmx28GpuHaloExchangeNvshmemHelperEJR12gmx_domdec_tRK13DeviceContextRK12DeviceStreamRKSt9nullopt_tRP13gmx_wallcycleP10tmpi_comm_SH_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !896
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !343  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1016 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !506  ; 3 uses
  store ptr %i.s, ptr %i.w, align 8, !tbaa !506
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx28GpuHaloExchangeNvshmemHelperEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx28GpuHaloExchangeNvshmemHelperEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx28GpuHaloExchangeNvshmemHelperEJR12gmx_domdec_tRK13DeviceContextRK12DeviceStreamRKSt9nullopt_tRP13gmx_wallcycleP10tmpi_comm_SH_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN3gmx28GpuHaloExchangeNvshmemHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.x) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 184) #31
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !343
  br label %_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN3gmx28GpuHaloExchangeNvshmemHelperEJR12gmx_domdec_tRK13DeviceContextRK12DeviceStreamRKSt9nullopt_tRP13gmx_wallcycleP10tmpi_comm_SH_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNKSt14default_deleteIN3gmx28GpuHaloExchangeNvshmemHelperEEclEPS1_.exit.i.i.i.i, %bb.f
  %i.y = phi ptr [ %i.v, %_ZSt11make_uniqueIN3gmx28GpuHaloExchangeNvshmemHelperEJR12gmx_domdec_tRK13DeviceContextRK12DeviceStreamRKSt9nullopt_tRP13gmx_wallcycleP10tmpi_comm_SH_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %.pre, %_ZNKSt14default_deleteIN3gmx28GpuHaloExchangeNvshmemHelperEEclEPS1_.exit.i.i.i.i ], [ %i.d, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 928
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.aa, i64 904
end_hunk_2
