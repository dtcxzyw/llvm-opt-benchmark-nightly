inline.NumInlined: 3034
inline.NumDeleted: 1650
begin_hunk_0_@_ZN5arrow7compute8internal23RegisterVectorSelectionEPNS0_16FunctionRegistryE:bb.a
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #27
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit73:       ; preds = %bb.af, %bb.ag
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %29) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %28, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %28, i64 104 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit73
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !40
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i75: ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74
  %i.dw = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !42 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i.i76 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not4.i.i.i.i76, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84, label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i75, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80
  %.05.i.i.i.i78 = phi ptr [ %i.ef, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i75 ] ; 3 uses
  %i.ea = load ptr, ptr %.05.i.i.i.i78, align 8, !tbaa !38 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i78, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i79: ; preds = %.lr.ph.i.i.i.i77
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !40
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80: ; preds = %.lr.ph.i.i.i.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i79
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i78, i64 32 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.ef, %i.dz
  br i1 %.not.i.i.i.i81, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82, label %.lr.ph.i.i.i.i77, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i80
  %.pr.i.i83 = load ptr, ptr %i.dw, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i75
  %i.eg = phi ptr [ %.pr.i.i83, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i82 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i75 ] ; 3 uses
  %.not.i.i1.i.i85 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i1.i.i85, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84
  %i.eh = getelementptr inbounds nuw i8, ptr %28, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !48
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86: ; preds = %bb.ai, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i84
  %i.em = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !38 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i87: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !40
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i88: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i87
  %i.es = load ptr, ptr %28, align 8, !tbaa !38   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZN5arrow7compute11FunctionDocD2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i88
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !40
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #26
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit94

_ZN5arrow7compute11FunctionDocD2Ev.exit94:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i89
  %i.ex = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dg
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit94
  %i.ez = load i64, ptr %i.dg, align 8, !tbaa !40
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  invoke void @_ZN5arrow7compute8internal20MakeTakeMetaFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.30") align 8 %32)
          to label %bb.aj unwind label %bb.bc

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  invoke void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %_ZNSt10shared_ptrIN5arrow7compute8FunctionEEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit99 unwind label %bb.bd

_ZNSt10shared_ptrIN5arrow7compute8FunctionEEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit99: ; preds = %bb.aj
  invoke void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %31, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.be

bb.ak:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute8FunctionEEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit99
  %i.fb = load ptr, ptr %30, align 8, !tbaa !74   ; 2 uses
  %.not.i100 = icmp eq ptr %i.fb, null
  br i1 %.not.i100, label %_ZN5arrow6StatusD2Ev.exit101, label %bb.al, !prof !77

bb.al:                                            ; preds = %bb.ak
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !78, !range !84, !noundef !85
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %_ZN5arrow6StatusD2Ev.exit101, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #24
  br label %_ZN5arrow6StatusD2Ev.exit101

_ZN5arrow6StatusD2Ev.exit101:                     ; preds = %bb.ak, %bb.al, %bb.am
  %i.ff = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !86 ; 8 uses
  %.not.i.i102 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i102, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106, label %bb.an

bb.an:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit101
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.fh, align 8, !tbaa !87
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !89
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !90
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24, !inline_history !92
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !90
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24, !inline_history !92
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106

bb.ap:                                            ; preds = %bb.an
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i103 = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i103, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

bb.ar:                                            ; preds = %bb.ap
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i105 = phi i32 [ %i.fk, %bb.aq ], [ %i.fu, %bb.ar ]
  %i.fv = icmp eq i32 %.0.i.i.i.i105, 1
  br i1 %i.fv, label %bb.as, label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106, !prof !37

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24
  br label %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106

_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106: ; preds = %_ZN5arrow6StatusD2Ev.exit101, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104, %bb.as
  %i.fw = load ptr, ptr %32, align 8, !tbaa !93   ; 3 uses
  %.not.i107 = icmp eq ptr %i.fw, null
  br i1 %.not.i107, label %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit109, label %_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit.i108

_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit.i108: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !90
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.fw) #24, !inline_history !95
  br label %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit109

_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit109: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit106, %_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.ga = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #25
          to label %.noexc110 unwind label %bb.bp ; 6 uses

.noexc110:                                        ; preds = %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit109
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i32 1, ptr %i.gb, align 8, !tbaa !87, !noalias !96
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 1, ptr %i.gc, align 4, !tbaa !89, !noalias !96
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ga, align 8, !tbaa !90, !noalias !96
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !96
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ge, ptr %14, align 8, !tbaa !33, !noalias !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ge, ptr noundef nonnull align 1 dereferenceable(9) @.str.39, i64 9, i1 false), !noalias !96
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 9, ptr %i.gf, align 8, !tbaa !41, !noalias !96
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 25
  store i8 0, ptr %i.gg, align 1, !tbaa !40, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !96
  store i40 1, ptr %15, align 8, !noalias !96
  invoke void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %16, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_113drop_null_docE)
          to label %bb.at unwind label %bb.av, !noalias !96

bb.at:                                            ; preds = %.noexc110
  call void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %i.gd, ptr noundef nonnull %14, ptr noundef nonnull align 4 dereferenceable(5) %15, ptr noundef nonnull %16, ptr noundef null), !noalias !96
  %i.gh = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !38, !noalias !96 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !40, !noalias !96
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #26, !noalias !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !42, !noalias !96 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !45, !noalias !96 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, %i.gq
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gr = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !38, !noalias !96 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !40, !noalias !96
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #26, !noalias !96
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.gq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gn, align 8, !tbaa !42, !noalias !96
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.gx = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !48, !noalias !96
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hc) #26, !noalias !96
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.au, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !38, !noalias !96 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !40, !noalias !96
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #26, !noalias !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  %i.hj = load ptr, ptr %16, align 8, !tbaa !38, !noalias !96 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !40, !noalias !96
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #26, !noalias !96
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i

_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !96
  %i.ho = load ptr, ptr %14, align 8, !tbaa !38, !noalias !96 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.ge
  br i1 %i.hp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i
  %i.hq = load i64, ptr %i.ge, align 8, !tbaa !40, !noalias !96
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #26, !noalias !96
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %.noexc110
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !96
  %i.ht = load ptr, ptr %14, align 8, !tbaa !38, !noalias !96 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ge
  br i1 %i.hu, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.hv = load i64, ptr %i.ge, align 8, !tbaa !40, !noalias !96
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #26, !noalias !96
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 208) #26, !noalias !96
  br label %.body

bb.aw:                                            ; preds = %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.ax:                                            ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit63
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ac
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.ae, %bb.ad
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %29) #24
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn31 = phi { ptr, i32 } [ %i.ia, %bb.az ], [ %i.hz, %bb.ay ]
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %28) #24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.ba ], [ %i.hy, %bb.ax ]
  %i.ib = load ptr, ptr %27, align 8, !tbaa !38   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.dg
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.bb
  %i.id = load i64, ptr %i.dg, align 8, !tbaa !40
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %.body

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit116

bb.bd:                                            ; preds = %bb.aj
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute8FunctionEEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit99
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #24
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn35 = phi { ptr, i32 } [ %i.ih, %bb.be ], [ %i.ig, %bb.bd ] ; 2 uses
  %i.ii = load ptr, ptr %32, align 8, !tbaa !93   ; 3 uses
  %.not.i114 = icmp eq ptr %i.ii, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit116, label %_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit.i115: ; preds = %bb.bf
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !90
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.ii) #24, !inline_history !95
  br label %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit116

_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit116: ; preds = %_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit.i115, %bb.bf, %bb.bc
  %.pn35.pn = phi { ptr, i32 } [ %i.if, %bb.bc ], [ %.pn35, %bb.bf ], [ %.pn35, %_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionE, i64 16), ptr %i.gd, align 8, !tbaa !90, !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !96
  store ptr %i.gd, ptr %34, align 8, !tbaa !99
  %i.im = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr %i.ga, ptr %i.im, align 8, !tbaa !86
  invoke void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %34, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.bq

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.in = load ptr, ptr %33, align 8, !tbaa !74   ; 2 uses
  %.not.i117 = icmp eq ptr %i.in, null
  br i1 %.not.i117, label %_ZN5arrow6StatusD2Ev.exit118, label %bb.bh, !prof !77

bb.bh:                                            ; preds = %bb.bg
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !78, !range !84, !noundef !85
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %_ZN5arrow6StatusD2Ev.exit118, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %33) #24
  br label %_ZN5arrow6StatusD2Ev.exit118

_ZN5arrow6StatusD2Ev.exit118:                     ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.ir = load ptr, ptr %i.im, align 8, !tbaa !86 ; 8 uses
  %.not.i.i119 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i119, label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit118
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.is, align 8, !tbaa !87
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !89
  %i.ix = load ptr, ptr %i.ir, align 8, !tbaa !90
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #24, !inline_history !92
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !90
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #24, !inline_history !92
  br label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bl:                                            ; preds = %bb.bj
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i120 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i120, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121

bb.bn:                                            ; preds = %bb.bl
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i122 = phi i32 [ %i.iv, %bb.bm ], [ %i.jf, %bb.bn ]
  %i.jg = icmp eq i32 %.0.i.i.i.i122, 1
  br i1 %i.jg, label %bb.bo, label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #24
  br label %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121, %bb.bk, %_ZN5arrow6StatusD2Ev.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  %i.jh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  store ptr %i.jh, ptr %38, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.jh, ptr noundef nonnull align 1 dereferenceable(15) @.str.21, i64 15, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 15, ptr %i.ji, align 8, !tbaa !41
  %i.jj = getelementptr inbounds nuw i8, ptr %38, i64 31
  store i8 0, ptr %i.jj, align 1, !tbaa !40
  invoke void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %39, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_119indices_nonzero_docE)
          to label %bb.br unwind label %bb.gp

bb.bp:                                            ; preds = %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit109
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #24
  call fastcc void @_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr null) #24
  br label %.body

bb.br:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !101
  store i40 1, ptr %2, align 8, !noalias !101
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  store ptr null, ptr %37, align 16, !tbaa !107, !alias.scope !110
  %i.jm = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #25
          to label %.noexc147 unwind label %bb.gq ; 6 uses

.noexc147:                                        ; preds = %bb.br
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 1, ptr %i.jn, align 8, !tbaa !87, !noalias !110
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store i32 1, ptr %i.jo, align 4, !tbaa !89, !noalias !110
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.jm, align 8, !tbaa !90, !noalias !110
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute14VectorFunctionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5ArityENS1_11FunctionDocEEEvPT_DpOT0_(ptr noundef nonnull %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull align 8 dereferenceable(121) %39)
          to label %_ZSt11make_sharedIN5arrow7compute14VectorFunctionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5ArityENS1_11FunctionDocEEESt10shared_ptrIT_EDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !110

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc147
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef 232) #26, !noalias !110
  br label %.body148

_ZSt11make_sharedIN5arrow7compute14VectorFunctionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5ArityENS1_11FunctionDocEEESt10shared_ptrIT_EDpOT0_.exit.i: ; preds = %.noexc147
  %i.jr = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  store ptr %i.jm, ptr %i.jr, align 8, !tbaa !86, !alias.scope !110
  store ptr %i.jp, ptr %37, align 16, !tbaa !111, !alias.scope !110
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !101
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(131) %3, i8 0, i64 48, i1 false), !noalias !101
  store i8 1, ptr %i.js, align 16, !tbaa !49, !noalias !101
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jt, i8 0, i64 20, i1 false), !noalias !101
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, i8 0, i64 32, i1 false), !noalias !101
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 1, ptr %i.jy, align 16, !tbaa !69, !noalias !101
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 129
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 130
  store i32 3, ptr %i.jv, align 8, !tbaa !63, !noalias !101
  store i32 1, ptr %i.jx, align 4, !tbaa !68, !noalias !101
  store i8 0, ptr %i.ka, align 2, !tbaa !71, !noalias !101
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118IndicesNonZeroExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.kb, align 8, !tbaa !112, !noalias !101
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_125IndicesNonZeroExecChunkedEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE, ptr %i.ju, align 16, !tbaa !113, !noalias !101
  store i8 0, ptr %i.jz, align 1, !tbaa !70, !noalias !101
  %i.kc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow12NumericTypesEv()
          to label %bb.bs unwind label %bb.cs, !noalias !101 ; 2 uses

bb.bs:                                            ; preds = %_ZSt11make_sharedIN5arrow7compute14VectorFunctionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_5ArityENS1_11FunctionDocEEESt10shared_ptrIT_EDpOT0_.exit.i
  %.val35.i = load ptr, ptr %i.kc, align 8, !tbaa !114, !noalias !101
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.val36.i = load ptr, ptr %i.kd, align 8, !tbaa !114, !noalias !101
  invoke fastcc void @"_ZZN5arrow7compute8internal12_GLOBAL__N_126MakeIndicesNonZeroFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11FunctionDocEENK3$_0clERKSt6vectorISt10shared_ptrINS_8DataTypeEESaISE_EE"(ptr nonnull %3, ptr nonnull align 8 %37, ptr %.val35.i, ptr %.val36.i)
          to label %bb.bt unwind label %bb.cs

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !101
  %i.ke = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv()
          to label %bb.bu unwind label %bb.ct, !noalias !101 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !86, !noalias !101 ; 2 uses
  %i.ki = load <2 x ptr>, ptr %i.ke, align 8, !tbaa !72, !noalias !101
  store <2 x ptr> %i.ki, ptr %5, align 16, !tbaa !72, !noalias !101
  %.not.i.i.i.i136 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i136, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 3 uses
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !101
  %.not.i.i.i.i.i = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kl = load i32, ptr %i.kj, align 4, !tbaa !3, !noalias !101
  %i.km = add nsw i32 %i.kl, 1
  store i32 %i.km, ptr %i.kj, align 4, !tbaa !3, !noalias !101
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.kn = atomicrmw volatile add ptr %i.kj, i32 1 acq_rel, align 4, !noalias !101 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.bx, %bb.bw, %bb.bu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !101
  %i.ko = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %.noexc.i137 unwind label %bb.cu, !noalias !101 ; 6 uses

.noexc.i137:                                      ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  store ptr %i.ko, ptr %4, align 8, !tbaa !116, !noalias !101
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !118, !noalias !101
  %i.kr = load ptr, ptr %i.kf, align 8, !tbaa !86, !noalias !101 ; 2 uses
  %i.ks = load <2 x ptr>, ptr %5, align 16, !tbaa !72, !noalias !101
  store <2 x ptr> %i.ks, ptr %i.ko, align 8, !tbaa !72, !noalias !101
  %.not.i.i.i.i.i.i.i.i.i.i.i138 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i138, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %.noexc.i137
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 3 uses
  %i.ku = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !101
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kv = load i32, ptr %i.kt, align 4, !tbaa !3, !noalias !101
  %i.kw = add nsw i32 %i.kv, 1
  store i32 %i.kw, ptr %i.kt, align 4, !tbaa !3, !noalias !101
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.kx = atomicrmw volatile add ptr %i.kt, i32 1 acq_rel, align 4, !noalias !101 ; 0 uses
  %.val31.pre.i = load ptr, ptr %4, align 8, !tbaa !114, !noalias !101
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz, %.noexc.i137
  %i.ky = phi ptr [ %.val31.pre.i, %bb.ca ], [ %i.ko, %bb.bz ], [ %i.ko, %.noexc.i137 ] ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.kp, ptr %i.kz, align 8, !tbaa !119, !noalias !101
  invoke fastcc void @"_ZZN5arrow7compute8internal12_GLOBAL__N_126MakeIndicesNonZeroFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11FunctionDocEENK3$_0clERKSt6vectorISt10shared_ptrINS_8DataTypeEESaISE_EE"(ptr nonnull %3, ptr nonnull align 8 %37, ptr %i.ky, ptr nonnull %i.kp)
          to label %bb.cb unwind label %bb.cv

bb.cb:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.not4.i.i.i.i139 = icmp eq ptr %i.ky, %i.kp
  br i1 %.not4.i.i.i.i139, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i140

.lr.ph.i.i.i.i140:                                ; preds = %bb.cb, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i141 = phi ptr [ %i.lr, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i ], [ %i.ky, %bb.cb ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i141, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !86, !noalias !101 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i140
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 4 uses
  %i.ld = load atomic i64, ptr %i.lc acquire, align 8, !noalias !101 ; 2 uses
  %i.le = icmp eq i64 %i.ld, 4294967297
  %i.lf = trunc i64 %i.ld to i32                  ; 2 uses
  br i1 %i.le, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.lc, align 8, !tbaa !87, !noalias !101
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  store i32 0, ptr %i.lg, align 4, !tbaa !89, !noalias !101
  %i.lh = load ptr, ptr %i.lb, align 8, !tbaa !90, !noalias !101
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !101
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #24, !noalias !101, !inline_history !120
  %i.lk = load ptr, ptr %i.lb, align 8, !tbaa !90, !noalias !101
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !101
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #24, !noalias !101, !inline_history !120
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.ln = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !101
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lo = add nsw i32 %i.lf, -1
  store i32 %i.lo, ptr %i.lc, align 8, !tbaa !3, !noalias !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.lp = atomicrmw volatile add ptr %i.lc, i32 -1 acq_rel, align 4, !noalias !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lf, %bb.cf ], [ %i.lp, %bb.cg ]
  %i.lq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.lq, label %bb.ch, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i, !prof !37

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #24, !noalias !101
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i: ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.cd, %.lr.ph.i.i.i.i140
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i141, i64 16
  %.not.i.i.i37.i = icmp eq ptr %.05.i.i.i.i141, %i.ko
  br i1 %.not.i.i.i37.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i140, !llvm.loop !121

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i.i.i
  %.pr.i.i142 = load ptr, ptr %4, align 8, !tbaa !116, !noalias !101
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.cb
  %i.ls = phi ptr [ %.pr.i.i142, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ky, %bb.cb ] ; 3 uses
  %.not.i.i1.i.i143 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i1.i.i143, label %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.lt = load ptr, ptr %i.kq, align 8, !tbaa !118, !noalias !101
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lw) #26, !noalias !101
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit.i: ; preds = %bb.ci, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.lx = load ptr, ptr %i.kf, align 8, !tbaa !86, !noalias !101 ; 8 uses
  %.not.i.i.i144 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i144, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cj

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal23RegisterVectorSelectionEPNS0_16FunctionRegistryE:bb.a
  %i.xf = load ptr, ptr %38, align 8, !tbaa !38   ; 2 uses
  %i.xg = icmp eq ptr %i.xf, %i.jh
  br i1 %i.xg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit181
  %i.xh = load i64, ptr %i.jh, align 8, !tbaa !40
  %i.xi = add i64 %i.xh, 1
  call void @_ZdlPvm(ptr noundef %i.xf, i64 noundef %i.xi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  %i.xj = getelementptr inbounds nuw i8, ptr %26, i64 104
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !73 ; 2 uses
  %.not.i.i185 = icmp eq ptr %i.xk, null
  br i1 %.not.i.i185, label %_ZN5arrow7compute12VectorKernelD2Ev.exit186, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.xl = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 2 uses
  %i.xm = invoke noundef zeroext i1 %i.xk(ptr noundef nonnull align 8 dereferenceable(32) %i.xl, ptr noundef nonnull align 8 dereferenceable(32) %i.xl, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit186 unwind label %bb.gk ; 0 uses

bb.gk:                                            ; preds = %bb.gj
  %i.xn = landingpad { ptr, i32 }
          catch ptr null
  %i.xo = extractvalue { ptr, i32 } %i.xn, 0
  call void @__clang_call_terminate(ptr %i.xo) #27
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit186:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.gj
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.xp = load ptr, ptr %25, align 8, !tbaa !153  ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.xp, %i.xr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit186, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.xs, %.lr.ph.i.i.i ], [ %i.xp, %_ZN5arrow7compute12VectorKernelD2Ev.exit186 ] ; 2 uses
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i) #24
  %i.xs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.xs, %i.xr
  br i1 %.not.i.i.i187, label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !157

_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i188 = load ptr, ptr %25, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow7compute12VectorKernelD2Ev.exit186
  %i.xt = phi ptr [ %.pr.i188, %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.xp, %_ZN5arrow7compute12VectorKernelD2Ev.exit186 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.xt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit, label %bb.gl

bb.gl:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i
  %i.xu = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !158
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = ptrtoint ptr %i.xt to i64
  %i.xy = sub i64 %i.xw, %i.xx
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.xy) #26
  br label %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.xz = getelementptr inbounds nuw i8, ptr %18, i64 104
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !73 ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i189, label %_ZN5arrow7compute12VectorKernelD2Ev.exit190, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit
  %i.yb = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  %i.yc = invoke noundef zeroext i1 %i.ya(ptr noundef nonnull align 8 dereferenceable(32) %i.yb, ptr noundef nonnull align 8 dereferenceable(32) %i.yb, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit190 unwind label %bb.gn ; 0 uses

bb.gn:                                            ; preds = %bb.gm
  %i.yd = landingpad { ptr, i32 }
          catch ptr null
  %i.ye = extractvalue { ptr, i32 } %i.yd, 0
  call void @__clang_call_terminate(ptr %i.ye) #27
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit190:      ; preds = %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit, %bb.gm
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.yf = load ptr, ptr %17, align 8, !tbaa !153  ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !156 ; 2 uses
  %.not4.i.i.i191 = icmp eq ptr %i.yf, %i.yh
  br i1 %.not4.i.i.i191, label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i197, label %.lr.ph.i.i.i192

.lr.ph.i.i.i192:                                  ; preds = %_ZN5arrow7compute12VectorKernelD2Ev.exit190, %.lr.ph.i.i.i192
  %.05.i.i.i193 = phi ptr [ %i.yi, %.lr.ph.i.i.i192 ], [ %i.yf, %_ZN5arrow7compute12VectorKernelD2Ev.exit190 ] ; 2 uses
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i193) #24
  %i.yi = getelementptr inbounds nuw i8, ptr %.05.i.i.i193, i64 88 ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.yi, %i.yh
  br i1 %.not.i.i.i194, label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i195, label %.lr.ph.i.i.i192, !llvm.loop !157

_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i195: ; preds = %.lr.ph.i.i.i192
  %.pr.i196 = load ptr, ptr %17, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i197

_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i197: ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i195, %_ZN5arrow7compute12VectorKernelD2Ev.exit190
  %i.yj = phi ptr [ %.pr.i196, %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i195 ], [ %i.yf, %_ZN5arrow7compute12VectorKernelD2Ev.exit190 ] ; 3 uses
  %.not.i.i1.i198 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i1.i198, label %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit199, label %bb.go

bb.go:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i197
  %i.yk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !158
  %i.ym = ptrtoint ptr %i.yl to i64
  %i.yn = ptrtoint ptr %i.yj to i64
  %i.yo = sub i64 %i.ym, %i.yn
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.yo) #26
  br label %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit199

_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit199: ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit.i197, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  ret void

bb.gp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gq:                                            ; preds = %bb.br
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.gr:                                            ; preds = %bb.fs
  %i.yr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #24
  call void @_ZNSt12__shared_ptrIN5arrow7compute14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #24
  br label %.body148

.body148:                                         ; preds = %bb.gq, %bb.fr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, %bb.gr
  %.pn40 = phi { ptr, i32 } [ %i.yr, %bb.gr ], [ %i.yq, %bb.gq ], [ %i.jq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute14VectorFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ], [ %.pn27.pn.i, %bb.fr ]
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %39) #24
  br label %bb.gs

bb.gs:                                            ; preds = %.body148, %bb.gp
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.body148 ], [ %i.yp, %bb.gp ]
  %i.ys = load ptr, ptr %38, align 8, !tbaa !38   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.jh
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.gs
  %i.yu = load i64, ptr %i.jh, align 8, !tbaa !40
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %.body

.body:                                            ; preds = %bb.bq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.pn31.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn35.pn, %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit116 ], [ %i.jl, %bb.bq ], [ %i.jk, %bb.bp ], [ %i.hs, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.gt

bb.gt:                                            ; preds = %.body, %bb.aw
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %.body ], [ %i.hx, %bb.aw ]
  call void @_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.gt ], [ %.pn28.pn, %_ZNSt10unique_ptrIN5arrow7compute8FunctionESt14default_deleteIS2_EED2Ev.exit60 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  call void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.s
  %.pn40.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn, %bb.gu ], [ %i.cg, %bb.s ]
  call void @_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn.pn
}

declare void @_ZN5arrow7compute8internal21PopulateFilterKernelsEPSt6vectorINS1_19SelectionKernelDataESaIS3_EE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_13FilterOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25, !noalias !164 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167, !noalias !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !170, !noalias !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_13FilterOptionsEEE, i64 16), ptr %i.c, align 8, !tbaa !90, !noalias !164
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.i, align 8, !tbaa !167, !noalias !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute13FilterOptionsE, i64 16), ptr %i.h, align 8, !tbaa !90, !noalias !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.g, ptr %i.j, align 8, !tbaa !170, !noalias !164
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.k, align 8, !tbaa !173
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(62) @.str.38)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  %i.l = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  %.not.i4 = icmp eq ptr %i.l, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !78, !range !84, !noundef !85
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow7compute8internal25RegisterSelectionFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11FunctionDocENS0_12VectorKernelEOSt6vectorINS1_19SelectionKernelDataESaISD_EEPKNS0_15FunctionOptionsEPNS0_16FunctionRegistryE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(121) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !37

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !38
  store i64 %i.d, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !33
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41   ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.f, label %._crit_edge.i.i11

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %.noexc.i14, label %bb.g

.noexc.i14:                                       ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %.noexc.i14
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc6.i13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12, !prof !37

.noexc6.i13:                                      ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %.noexc6.i13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12: ; preds = %bb.g
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25
          to label %.noexc16 unwind label %bb.t   ; 2 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12
  store ptr %i.x, ptr %i.n, align 8, !tbaa !38
  store i64 %i.s, ptr %i.p, align 8, !tbaa !40
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.x, %.noexc16 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i11
  %i.z = load i8, ptr %i.q, align 1, !tbaa !40
  store i8 %i.z, ptr %i.y, align 1, !tbaa !40
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %.noexc19, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ugt i64 %i.aj, 9223372036854775776
  br i1 %i.ak, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !37

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc18 unwind label %bb.u

.noexc18:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #25
          to label %.noexc19 unwind label %bb.u

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.am = phi ptr [ null, %bb.j ], [ %i.al, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !48
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !175
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !175
  %i.as = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aq, ptr %i.ar, ptr noundef %i.am)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc19
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body, label %bb.m

end_hunk_1
begin_hunk_2_@_ZN5arrow7compute12VectorKernelC2ERKS1_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #27
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i: ; preds = %bb.f, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !72
  store <2 x ptr> %i.ab, ptr %i.x, align 8, !tbaa !72
  %.not.i.i.i6.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i6.i, label %_ZN5arrow7compute6KernelC2ERKS1_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i7.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i7.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !3
  br label %_ZN5arrow7compute6KernelC2ERKS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute6KernelC2ERKS1_.exit

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %.body.i ], [ %i.aq, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h, %bb.g
  tail call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #24
  br label %common.resume

_ZN5arrow7compute6KernelC2ERKS1_.exit:            ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i, %bb.k, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEC2ERKSB_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow7compute6KernelC2ERKS1_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ao = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 noundef 2)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = load <2 x ptr>, ptr %i.al, align 8, !tbaa !72
  store <2 x ptr> %i.ap, ptr %i.ak, align 8, !tbaa !72
  br label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEC2ERKSB_.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3)
          to label %.body unwind label %bb.q      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #27
  unreachable

_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEC2ERKSB_.exit: ; preds = %bb.n, %_ZN5arrow7compute6KernelC2ERKS1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.av, ptr noundef nonnull align 8 dereferenceable(11) %i.aw, i64 11, i1 false)
  ret void

.body:                                            ; preds = %bb.o, %bb.p
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #24
  br label %common.resume
}

declare noundef ptr @_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute12VectorKernelD2Ev(ptr noundef nonnull align 8 dereferenceable(131) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #24
  ret void
}

declare void @_ZN5arrow7compute16FunctionRegistry11AddFunctionESt10shared_ptrINS0_8FunctionEEb(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN5arrow7compute8internal22MakeFilterMetaFunctionEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.30") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !89
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !181
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow7compute8internal19PopulateTakeKernelsEPSt6vectorINS1_19SelectionKernelDataESaIS3_EE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25, !noalias !182 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167, !noalias !182
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !185, !range !84, !noalias !182, !noundef !85
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEEE, i64 16), ptr %i.c, align 8, !tbaa !90, !noalias !182
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.i, align 8, !tbaa !167, !noalias !182
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11TakeOptionsE, i64 16), ptr %i.h, align 8, !tbaa !90, !noalias !182
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %i.g, ptr %i.j, align 8, !tbaa !185, !noalias !182
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.k, align 8, !tbaa !173
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(62) @.str.38)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  %i.l = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  %.not.i4 = icmp eq ptr %i.l, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !78, !range !84, !noundef !85
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare noundef ptr @_ZN5arrow7compute8internal21GetDefaultTakeOptionsEv() local_unnamed_addr #5

declare void @_ZN5arrow7compute8internal20MakeTakeMetaFunctionEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.30") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !89
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !181
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !89
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !181
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i) #24
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !157

_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow7compute8internal19SelectionKernelDataESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute8internal19SelectionKernelDataES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_118IndicesNonZeroExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 128
  invoke void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %7, ptr noundef nonnull %i.e)
          to label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKS0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %6, align 8, !tbaa !198    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #26
  br label %.body

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit: ; preds = %_ZN5arrow9ArraySpanC2ERKS0_.exit
  %i.m = load i64, ptr %2, align 8, !tbaa !202
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19DoNonZeroERKSt6vectorINS_9ArraySpanESaIS4_EElPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.m, ptr noundef %4)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.g

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !74
  store ptr null, ptr %5, align 8, !tbaa !74
  %i.o = load ptr, ptr %6, align 8, !tbaa !198    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !207  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %_ZN5arrow6StatusD2Ev.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !208
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %_ZN5arrow6StatusD2Ev.exit
  %i.s = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.o, %_ZN5arrow6StatusD2Ev.exit ] ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !201
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #26, !inline_history !210
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !198  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !207 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.z, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !211
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit
  %i.ad = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.z, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !201
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #26, !inline_history !212
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aj = icmp eq ptr %i.n, null
  br i1 %i.aj, label %_ZN5arrow6StatusD2Ev.exit21, label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.g:                                             ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #24
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.g ], [ %i.f, %bb.b ], [ %i.f, %bb.c ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn.pn

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.am = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #24 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !213
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow9ArraySpanD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !86 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ap, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !89
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !90
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #24, !inline_history !216
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #24, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i23 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bd, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_125IndicesNonZeroExecChunkedEPNS0_13KernelContextERKNS0_9ExecBatchEPNS_5DatumE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.89", align 8    ; 13 uses
  %5 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  %6 = alloca %"class.std::shared_ptr.86", align 8 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !217    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !220
  %.not.i.i.i = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.36, ptr %i.e, align 8, !tbaa !222
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !231  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5arrow9ArraySpanD2Ev.exit, %_ZNK5arrow5Datum13chunked_arrayEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !232
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19DoNonZeroERKSt6vectorINS_9ArraySpanESaIS4_EElPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.x, ptr noundef %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.h

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow9ArraySpanD2Ev.exit
  %i.y = phi ptr [ %i.i, %.lr.ph ], [ %i.as, %_ZN5arrow9ArraySpanD2Ev.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5arrow9ArraySpanD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !245
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.p, align 8, !tbaa !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(120) %i.ac)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #24
  br label %.body

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit:      ; preds = %bb.c
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !207 ; 6 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !201
  %.not.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i, label %bb.e, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.thread

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.thread: ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 104, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ah = load <2 x ptr>, ptr %i.t, align 8, !tbaa !256
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !tbaa !256
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !201
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !201
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !207
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  invoke void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit unwind label %bb.g

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !198 ; 3 uses
  %.pre32 = load ptr, ptr %i.u, align 8, !tbaa !207 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %.pre, %.pre32
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.pre, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !211
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.al, %.pre32
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit
  %i.am = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %.pre, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !201
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #26, !inline_history !212
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.thread, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !228
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !231 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %sext = shl i64 %i.av, 28
  %i.aw = ashr i64 %sext, 32
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.c, label %._crit_edge, !llvm.loop !257

bb.g:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #24
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %.pn18 = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %._crit_edge
  %i.az = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit25, label %.critedge

bb.h:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.p

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNSt7variantIJN5arrow5Datum5EmptyESt10shared_ptrINS0_6ScalarEES3_INS0_9ArrayDataEES3_INS0_12ChunkedArrayEES3_INS0_11RecordBatchEES3_INS0_5TableEEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS2_S5_S7_S9_SB_SD_EE4typeEE18is_constructible_vISL_SI_E15is_assignable_vIRSL_SI_EERSE_E4typeESJ_(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(16) %6) #24 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !258
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit25
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.be, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bf, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !89
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24, !inline_history !216
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i27 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bt, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute14VectorFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.n, ptr %6, align 8, !tbaa !38
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre9 = load i64, ptr %.phi.trans.insert8, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi i64 [ %.pre9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !41
  store ptr %i.o, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.w, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre11 = load i64, ptr %.phi.trans.insert10, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi i64 [ %.pre11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.ak, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !175
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !175
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 5 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !33
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !38
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !40
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !40
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre13 = load i64, ptr %.phi.trans.insert12, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.be = phi i64 [ %i.ba, %bb.e ], [ %.pre13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !41
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !38
  store i64 0, ptr %i.bf, align 8, !tbaa !41
  store i8 0, ptr %i.ax, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !176, !range !84, !noundef !85
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !176
  invoke void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8Function4KindERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull %6, ptr noundef %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.bm = load i64, ptr %i.av, align 8, !tbaa !40
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !42 ; 3 uses
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !40
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.am, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.aa
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cd = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cf = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #26
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.a
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !40
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute14VectorFunctionE, i64 16), ptr %0, align 8, !tbaa !90
  ret void

bb.h:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %6) #24
  %i.co = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.a
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.h
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !40
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.cn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8Function4KindERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(5) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.i, ptr %i.a, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.o, ptr %4, align 8, !tbaa !38
  store i64 0, ptr %i.x, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 7 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.al, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 7 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !38
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !40
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !40
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.bh = phi ptr [ %i.ay, %bb.e ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bd, %bb.e ], [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !41
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !38
  store i64 0, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ba, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !176, !range !84, !noundef !85 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp eq ptr %i.j, %i.a
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.br = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !38
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.bu, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.bv, align 8, !tbaa !274
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bx = load i64, ptr %3, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !33
  %i.ca = icmp eq ptr %i.v, %i.m
  br i1 %i.ca, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  %i.cb = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  store ptr %i.v, ptr %i.by, align 8, !tbaa !38
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.ce, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !33
  %i.ch = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ch, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ci = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.aj, ptr %i.cf, align 8, !tbaa !38
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !40
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ak, ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.cm, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.co, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cr = icmp eq ptr %i.bh, %i.ay
  br i1 %i.cr, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.cs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !38
  %i.cu = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bi, ptr %i.cv, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !176
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %5, ptr %i.cx, align 8, !tbaa !278
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !90
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i) #24
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !283

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !279
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !284
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26
  br label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute14VectorFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !285 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27, !inline_history !285
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i.i) #24, !inline_history !285
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !283

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !279
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !284
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26, !inline_history !285
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(216) %0) #24, !inline_history !285
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute6detail12FunctionImplINS0_12VectorKernelEE11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !282
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 136
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZNK5arrow7compute8Function13DispatchExactERKSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function12DispatchBestEPSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function15GetBestExecutorESt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.82") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute8Function7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.82") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute8Function8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow7compute8Function7is_pureEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEEE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !285 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27, !inline_history !285
  unreachable

_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.05.i.i.i.i) #24, !inline_history !285
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !283

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute12VectorKernelEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !279
  br label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !284
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26, !inline_history !285
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12VectorKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(216) %0) #24, !inline_history !285
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19DoNonZeroERKSt6vectorINS_9ArraySpanESaIS4_EElPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::NumericBuilder", align 8 ; 31 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = tail call noundef ptr @_ZN5arrow19default_memory_poolEv() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !286
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 64, ptr %i.c, align 8, !tbaa !299
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.a, ptr %i.e, align 8, !tbaa !300
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.f, align 8, !tbaa !301
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.h, align 8, !tbaa !302
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt64TypeEEE, i64 16), ptr %4, align 8, !tbaa !90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86, !noalias !303 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.j, align 8, !tbaa !72, !noalias !303
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !72, !alias.scope !303
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !303
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3, !noalias !303
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3, !noalias !303
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4, !noalias !303 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit

common.resume:                                    ; preds = %bb.v, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.e ], [ %.pn21.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %4) #24
  br label %common.resume

_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit: ; preds = %.noexc.i, %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 176
  store ptr %i.a, ptr %i.w, align 8, !tbaa !300
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 184
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !301
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !306, !noalias !307 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !90, !noalias !307
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !307
  %i.af = invoke noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(144) %4)
          to label %.noexc unwind label %bb.g, !inline_history !310

.noexc:                                           ; preds = %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit
  %i.ag = add nsw i64 %i.af, %2                   ; 2 uses
  %.not.i = icmp sgt i64 %i.ag, %i.ab
  br i1 %.not.i, label %bb.f, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.noexc
  store ptr null, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN5arrow6StatusD2Ev.exit32

bb.f:                                             ; preds = %.noexc
  %i.ah = shl nsw i64 %i.ab, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.smax.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = load ptr, ptr %4, align 8, !tbaa !90, !noalias !307
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !307
  invoke void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 noundef %.sroa.speculated.i.i)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.g, !inline_history !310

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f
  %.pr = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.al = icmp eq ptr %.pr, null
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit32, label %.critedge

bb.g:                                             ; preds = %bb.f, %_ZN5arrow14NumericBuilderINS_10UInt64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.v

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !198
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !311
  invoke fastcc void @_ZN5arrow15VisitTypeInlineINS_7compute8internal12_GLOBAL__N_114NonZeroVisitorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr nonnull %4, ptr nonnull %1)
          to label %_ZN5arrow6StatusD2Ev.exit34 unwind label %bb.i

_ZN5arrow6StatusD2Ev.exit34:                      ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.ap = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit38, label %.critedge

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit38
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.v

_ZN5arrow6StatusD2Ev.exit38:                      ; preds = %_ZN5arrow6StatusD2Ev.exit34
  invoke void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull %3)
          to label %.critedge unwind label %bb.h

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit38, %_ZN5arrow6StatusD2Ev.exit34, %_ZN5arrow6StatusD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt64TypeEEE, i64 16), ptr %4, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i39, label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !89
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !inline_history !312
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !inline_history !312
  br label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i40 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.m ], [ %i.bi, %bb.n ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.o, label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i, !prof !37

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !inline_history !313
  br label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i:     ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %.critedge
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !86  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bl, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !89
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !90
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !inline_history !314
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !inline_history !314
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bo, %bb.s ], [ %i.by, %bb.t ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.u, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit, !prof !37

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !inline_history !313
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %4) #24, !inline_history !313
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.v:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.pn21.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ar, %bb.h ], [ %i.as, %bb.i ]
  call void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !208
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !201
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26, !inline_history !210
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !198    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2), !inline_history !315
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !209

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !316
  switch i8 %i.b, label %bb.i [
    i8 1, label %_ZSt3getILm1EJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
    i8 -1, label %_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit
    i8 0, label %bb.h
  ], !prof !318

_ZSt3getILm1EJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5_@_ZN5arrow14NumericBuilderINS_10UInt64TypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !90
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #24, !inline_history !633
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !90
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #24, !inline_history !633
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i46 = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i46, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.hd, %bb.bx ], [ %i.hn, %bb.by ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ho, label %bb.bz, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !37

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bv, %bb.bt
  %.pr.i47 = load ptr, ptr %5, align 8, !tbaa !74 ; 2 uses
  %.not.i.i48 = icmp eq ptr %.pr.i47, null
  br i1 %.not.i.i48, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !634

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit25
  %i.hp = phi ptr [ %.pr.i47, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.gw, %_ZN5arrow6StatusC2ERKS0_.exit25 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !78, !range !84, !noundef !85
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ht = load ptr, ptr %i.p, align 8, !tbaa !86  ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.hu, align 8, !tbaa !87
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !89
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !90
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #24, !inline_history !629
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !90
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #24, !inline_history !629
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53

bb.cd:                                            ; preds = %bb.cb
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i50 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i50, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

bb.cf:                                            ; preds = %bb.cd
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i52 = phi i32 [ %i.hx, %bb.ce ], [ %i.ih, %bb.cf ]
  %i.ii = icmp eq i32 %.0.i.i.i.i52, 1
  br i1 %i.ii, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53, !prof !37

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.ch:                                            ; preds = %bb.bs, %bb.h
  %.pn19 = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn.pn, %bb.bs ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.g
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.ch ], [ %i.y, %bb.g ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.cr

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit53
  %i.ij = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.cj, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54, !prof !77

bb.cj:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i.i55, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.in, align 8, !tbaa !87
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !89
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !90
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #24, !inline_history !633
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !90
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #24, !inline_history !633
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59

bb.cm:                                            ; preds = %bb.ck
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i56 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i.i.i.i56, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57

bb.co:                                            ; preds = %bb.cm
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i.i.i58 = phi i32 [ %i.iq, %bb.cn ], [ %i.ja, %bb.co ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i.i.i58, 1
  br i1 %i.jb, label %bb.cp, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, !prof !37

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59: ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i57, %bb.cl, %bb.cj
  %.pr.i60 = load ptr, ptr %3, align 8, !tbaa !74 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pr.i60, null
  br i1 %.not.i.i61, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54, !prof !634

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.jc = phi ptr [ %.pr.i60, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59 ], [ %i.ij, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !78, !range !84, !noundef !85
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62, label %bb.cq

bb.cq:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.cr:                                            ; preds = %bb.ci, %bb.c
  %.pn23 = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn19.pn, %bb.ci ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn23
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt64TypeEEE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !89
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !635
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !635
  br label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit

_ZN5arrow18TypedBufferBuilderImvED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !89
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !266
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !266
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow12ArrayBuilderE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !636  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !637  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !89
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24, !inline_history !638
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24, !inline_history !638
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !639

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !636
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !640
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !89
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24, !inline_history !641
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24, !inline_history !641
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !37

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt64TypeEEE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !89
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !312
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !312
  br label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !313
  br label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !89
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !314
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !314
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !313
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %0) #24, !inline_history !313
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK5arrow12ArrayBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !593
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !357, !noalias !642
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.26)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !593, !noalias !642
  %i.e = icmp slt i64 %2, %i.d
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !37

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.26)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.f

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %2, i64 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = shl i64 %.sroa.speculated, 3
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.h, i1 noundef zeroext true)
  %i.i = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.a, align 8, !tbaa !645
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderImvE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !89
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !646
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
end_hunk_5
begin_hunk_6_@_ZN5arrow13BufferBuilder6ResizeElb:bb.a
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !696
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ad = load ptr, ptr %6, align 8, !tbaa !645   ; 3 uses
  %.not.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #24, !inline_history !697
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !77

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !645 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #24, !inline_history !698
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !74 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !634

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !78, !range !84, !noundef !85
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !645   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #24, !inline_history !697
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !688   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !699
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !706
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !707, !range !84, !noundef !85
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !84
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !77
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !77
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !301
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !708
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.140") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !645  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #24, !inline_history !711
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !634

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !78, !range !84, !noundef !85
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !645    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !688
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !86
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !645
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !712
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !86 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !89
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !714
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !714
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !37

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !86
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !87
  store i32 0, ptr %i.f, align 4, !tbaa !89
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !181
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !715  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #24, !inline_history !717
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

declare void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #5

declare void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #5

declare void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE12AppendValuesEPKmlPKhl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !306, !noalias !718 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !90, !noalias !718
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !718
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !718, !inline_history !310
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit15.thread

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
end_hunk_6
begin_hunk_7_@_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb:_ZN5arrow6StatusD2Ev.exit
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cs, align 8, !tbaa !87
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !89
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !90
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #24, !inline_history !746
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !90
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #24, !inline_history !746
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

bb.af:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.ag ], [ %i.df, %bb.ah ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ai, label %_ZN5arrow13BufferBuilder5ResetEv.exit, !prof !37

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #24
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

_ZN5arrow13BufferBuilder5ResetEv.exit:            ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !747
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow13BufferBuilder5ResetEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.285") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !741  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #24, !inline_history !750
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !634

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !78, !range !84, !noundef !85
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !741    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !606
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !86
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !741
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !751
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !86 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !89
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !714
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !714
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !37

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !86
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !87
  store i32 0, ptr %i.f, align 4, !tbaa !89
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !181
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !753  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #24, !inline_history !755
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !38     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k                  ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !38    ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.f

end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal19SelectionKernelDataD2Ev:bb.a
  br i1 %.not.i.i.i1, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !89
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !267
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !267
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i2 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i4 = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.ay, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5, !prof !37

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.o, %_ZN5arrow7compute9InputTypeD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !86 ; 8 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i6, label %_ZN5arrow7compute9InputTypeD2Ev.exit10, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bb, align 8, !tbaa !87
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !89
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24, !inline_history !268
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !90
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24, !inline_history !268
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit10

bb.v:                                             ; preds = %bb.t
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2.i7 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i2.i7, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i8

bb.x:                                             ; preds = %bb.v
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i8: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i4.i9 = phi i32 [ %i.be, %bb.w ], [ %i.bo, %bb.x ]
  %i.bp = icmp eq i32 %.0.i.i.i.i4.i9, 1
  br i1 %i.bp, label %bb.y, label %_ZN5arrow7compute9InputTypeD2Ev.exit10, !prof !37

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit10

_ZN5arrow7compute9InputTypeD2Ev.exit10:           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i5, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i8, %bb.y
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute13FilterOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_13FilterOptionsEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_13FilterOptionsEEE, i64 16), ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_13FilterOptionsEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(62) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !786
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !786
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !677, !noalias !786, !nonnull !85, !align !687
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(62) %2) #24, !noalias !786
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(62) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !786 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !786
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !786
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA62_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !72, !noalias !789
  %i.b = load ptr, ptr %2, align 8, !tbaa !794, !noalias !789
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !796
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEEPNS2_13KernelContextERKNS2_14KernelInitArgsEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFN5arrow6ResultISt10unique_ptrINS1_7compute11KernelStateESt14default_deleteIS5_EEEEPNS4_13KernelContextERKNS4_14KernelInitArgsEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute8FunctionELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !93     ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !86
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow7compute8FunctionESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !797
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !86 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !89
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !714
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !714
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !37

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !86
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !87
  store i32 0, ptr %i.f, align 4, !tbaa !89
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !181
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute8FunctionESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute8FunctionESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !799  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.b) #24, !inline_history !801
  br label %_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit

_ZNKSt14default_deleteIN5arrow7compute8FunctionEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow7compute8FunctionESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow7compute8FunctionESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow7compute8FunctionESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow7compute8FunctionEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow7compute8FunctionEE) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util18EqualityComparableINS_7compute15FunctionOptionsEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11TakeOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEEE, i64 16), ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #24, !inline_history !802
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.i, ptr %i.a, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.o, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.x, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.al, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 7 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !38
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !40
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !40
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.bh = phi ptr [ %i.ay, %bb.e ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bd, %bb.e ], [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !41
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !38
  store i64 0, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ba, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !176, !range !84, !noundef !85 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp eq ptr %i.j, %i.a
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.br = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !38
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.bu, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.bv, align 8, !tbaa !274
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bx = load i64, ptr %2, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !33
  %i.ca = icmp eq ptr %i.v, %i.m
  br i1 %i.ca, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  %i.cb = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  store ptr %i.v, ptr %i.by, align 8, !tbaa !38
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.ce, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !33
  %i.ch = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ch, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ci = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.aj, ptr %i.cf, align 8, !tbaa !38
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !40
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ak, ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.cm, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.co, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cr = icmp eq ptr %i.bh, %i.ay
  br i1 %i.cr, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.cs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !38
  %i.cu = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bi, ptr %i.cv, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !176
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.cx, align 8, !tbaa !278
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute12MetaFunctionE, i64 16), ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !40
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute12MetaFunction11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.82") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.82") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.82") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree readnone captures(none) %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %class.anon.390, align 1            ; 3 uses
  %7 = alloca %class.anon.390, align 1            ; 3 uses
  %8 = alloca %"class.std::vector.511", align 8   ; 11 uses
  %9 = alloca %"class.arrow::TableBatchReader", align 8 ; 7 uses
  %10 = alloca %"class.arrow::Result.501", align 8 ; 12 uses
  %11 = alloca %"class.std::shared_ptr.345", align 8 ; 7 uses
  %12 = alloca %"class.arrow::Result.82", align 8 ; 13 uses
  %13 = alloca %"struct.arrow::Datum", align 16   ; 11 uses
  %14 = alloca %"class.arrow::Result.521", align 8 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.498", align 16 ; 6 uses
  %16 = alloca %"class.std::shared_ptr.339", align 8 ; 5 uses
  %17 = alloca %class.anon.390, align 1           ; 3 uses
  %18 = alloca %class.anon.390, align 1           ; 3 uses
  %19 = alloca %"class.arrow::Result.469", align 8 ; 9 uses
  %20 = alloca %"class.std::shared_ptr.54", align 16 ; 6 uses
  %21 = alloca %"class.std::vector.364", align 8  ; 13 uses
  %22 = alloca %"class.arrow::Result.82", align 8 ; 13 uses
  %23 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %24 = alloca %"class.std::shared_ptr.376", align 16 ; 9 uses
  %25 = alloca %"class.std::shared_ptr.376", align 8 ; 7 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !217    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !220   ; 4 uses
  %switch.tableidx.i = add i8 %i.c, -1            ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx.i, 5
  %switch.idx.cast.i = zext i8 %switch.tableidx.i to i32
  %switch.offset.i = add nuw nsw i32 %switch.idx.cast.i, 1
  %.0.i = select i1 %i.d, i32 %switch.offset.i, i32 0
  switch i32 %.0.i, label %bb.fd [
    i32 2, label %bb.b
    i32 3, label %bb.k
    i32 4, label %bb.cc
    i32 5, label %bb.ce
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.376") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullArrayERKSt10shared_ptrINS_5ArrayEEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef %4)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 8 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !89
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24, !inline_history !803
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24, !inline_history !803
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.fj

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %.not.i.i.i14 = icmp eq i8 %i.c, 3
  br i1 %.not.i.i.i14, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.w, align 8, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @.str.36, ptr %i.x, align 8, !tbaa !222
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !225, !noalias !804 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !807, !noalias !804 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !804
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJRKSt10shared_ptrINS_12ChunkedArrayEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_120DropNullChunkedArrayERKSt10shared_ptrINS_12ChunkedArrayEEPNS0_11ExecContextE.exit

bb.n:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !232
  %i.af = icmp eq i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !72
  store <2 x ptr> %i.ak, ptr %20, align 16, !tbaa !72, !noalias !804
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !804
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.aq = load ptr, ptr %4, align 8, !tbaa !808, !noalias !804
  invoke void @_ZN5arrow12ChunkedArray9MakeEmptyESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.469") align 8 %19, ptr noundef nonnull %20, ptr noundef %i.aq)
          to label %bb.s unwind label %bb.ah

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  call void @_ZN5arrow6ResultINS_5DatumEEC2ISt10shared_ptrINS_12ChunkedArrayEEvEEONS0_IT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %19) #24
  %i.ar = load ptr, ptr %19, align 8, !tbaa !74, !noalias !804 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.t, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i.i, !prof !77

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86, !noalias !804 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.av, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !89
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !inline_history !812
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24, !inline_history !812
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !804
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.x ], [ %i.bi, %bb.y ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.z, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i, !prof !37

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.v, %bb.t
  %.pr.i.i = load ptr, ptr %19, align 8, !tbaa !74, !noalias !804 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i15, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i.i, !prof !634

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i, %bb.s
  %i.bk = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i ], [ %i.ar, %bb.s ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !78, !range !84, !noundef !85
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit.i: ; preds = %bb.aa, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEE7DestroyEv.exit.i.i
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !86, !noalias !804 ; 8 uses
  %.not.i.i36.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i36.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bp, align 8, !tbaa !87
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !89
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !90
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #24, !inline_history !813
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !90
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #24, !inline_history !813
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !804
  %.not.i.i.i37.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i37.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i = phi i32 [ %i.bs, %bb.ae ], [ %i.cc, %bb.af ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac, %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !804
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_120DropNullChunkedArrayERKSt10shared_ptrINS_12ChunkedArrayEEPNS0_11ExecContextE.exit

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !804
  br label %common.resume

bb.ai:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24, !noalias !804
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !804
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !814 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !814 ; 2 uses
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai
end_hunk_8
begin_hunk_9_@_ZNK5arrow7compute8internal12_GLOBAL__N_120DropNullMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24, !noalias !804
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.cv = load i8, ptr %i.cj, align 8, !tbaa !220, !noalias !821 ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.ap, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ao
  %i.cx = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !72, !noalias !821
  store ptr null, ptr %i.cl, align 8, !tbaa !86, !noalias !821
  store <2 x ptr> %i.cx, ptr %23, align 16, !tbaa !72, !alias.scope !822, !noalias !804
  store ptr null, ptr %i.ck, align 8, !tbaa !72, !noalias !821
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.ao
  store i8 %i.cv, ptr %i.cm, align 16, !tbaa !220, !alias.scope !822, !noalias !804
  %i.cy = invoke noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.aq unwind label %bb.bb

bb.aq:                                            ; preds = %bb.ap
  %i.cz = icmp sgt i64 %i.cy, 0
  br i1 %i.cz, label %bb.ar, label %bb.bf

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24, !noalias !804
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.376") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !228, !noalias !804 ; 5 uses
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !823, !noalias !804
  %.not.i.i38.i = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i38.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr null, ptr %i.dc, align 8, !tbaa !86
  %i.dd = load <2 x ptr>, ptr %24, align 16, !tbaa !72, !noalias !804
  store ptr null, ptr %i.cp, align 8, !tbaa !86, !noalias !804
  store <2 x ptr> %i.dd, ptr %i.da, align 8, !tbaa !72
  store ptr null, ptr %24, align 16, !tbaa !245, !noalias !804
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.de, ptr %i.cn, align 8, !tbaa !228, !noalias !804
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i

bb.au:                                            ; preds = %bb.as
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.da, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i unwind label %bb.bd

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i: ; preds = %bb.au, %bb.at
  %i.df = load ptr, ptr %i.cp, align 8, !tbaa !86, !noalias !804 ; 8 uses
  %.not.i.i39.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i39.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.dg, align 8, !tbaa !87
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !89
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !90
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #24, !inline_history !824
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !90
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #24, !inline_history !824
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !804
  %.not.i.i.i40.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i40.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i

bb.az:                                            ; preds = %bb.ax
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i42.i = phi i32 [ %i.dj, %bb.ay ], [ %i.dt, %bb.az ]
  %i.du = icmp eq i32 %.0.i.i.i.i42.i, 1
  br i1 %i.du, label %bb.ba, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #24
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41.i, %bb.aw, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24, !noalias !804
  br label %bb.bf

bb.bb:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bc:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.au
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #24
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn.i = phi { ptr, i32 } [ %i.dx, %bb.bd ], [ %i.dw, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24, !noalias !804
  br label %bb.bl

bb.bf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !804
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZN5arrow5DatumD2Ev.exit.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit.i:                       ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !804
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit.i, %bb.am
  %i.ea = load ptr, ptr %22, align 8, !tbaa !74, !noalias !804 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.bi, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i, !prof !77

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !804
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #27
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i:  ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !804
  %.pr.i43.i = load ptr, ptr %22, align 8, !tbaa !74, !noalias !804 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %.pr.i43.i, null
  br i1 %.not.i.i44.i, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i, !prof !634

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i, %bb.bh
  %i.ee = phi ptr [ %.pr.i43.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i ], [ %i.ea, %bb.bh ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !78, !range !84, !noundef !85
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %22) #24
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i

_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i:          ; preds = %bb.bk, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !804
  br i1 %i.ct, label %bb.aj, label %.loopexit.i

bb.bl:                                            ; preds = %bb.be, %bb.bb
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.be ], [ %i.dv, %bb.bb ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24, !noalias !804
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24, !noalias !804
  br label %.body.i

.critedge.i:                                      ; preds = %bb.aj, %bb.ai
  %i.ei = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %.noexc45.i unwind label %bb.bu ; 6 uses

.noexc45.i:                                       ; preds = %.critedge.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 1, ptr %i.ej, align 8, !tbaa !87, !noalias !825
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 1, ptr %i.ek, align 4, !tbaa !89, !noalias !825
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ei, align 8, !tbaa !90, !noalias !825
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEEvPT_DpOT0_(ptr noundef nonnull %i.el, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !825

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %.noexc45.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 104) #26, !noalias !825
  br label %.body.i

_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit.i: ; preds = %.noexc45.i
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !804
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !804
  store ptr %i.el, ptr %16, align 8, !tbaa !225, !noalias !804
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.ei, ptr %i.eo, align 8, !tbaa !86, !noalias !804
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull %16)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !86, !noalias !804 ; 8 uses
  %.not.i.i.i.i.i46.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i46.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.eq, align 8, !tbaa !87
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !89
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !90
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24, !inline_history !828
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !90
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24, !inline_history !828
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !804
  %.not.i.i.i.i.i.i47.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i.i.i47.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i48.i

bb.br:                                            ; preds = %bb.bp
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i48.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i48.i: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i.i49.i = phi i32 [ %i.et, %bb.bq ], [ %i.fd, %bb.br ]
  %i.fe = icmp eq i32 %.0.i.i.i.i.i.i.i49.i, 1
  br i1 %i.fe, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i48.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bt:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EEEES3_IT_EDpOT0_.exit.i
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #27
  unreachable

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i48.i, %bb.bo, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !804
  br label %.loopexit.i

bb.bu:                                            ; preds = %.critedge.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.i:                                      ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.fi = load ptr, ptr %21, align 8, !tbaa !231, !noalias !804 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !228, !noalias !804 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fi, %i.fk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gc, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i ], [ %i.fi, %.loopexit.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 4 uses
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 4294967297
  %i.fq = trunc i64 %i.fo to i32                  ; 2 uses
  br i1 %i.fp, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.fn, align 8, !tbaa !87
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fr, align 4, !tbaa !89
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !90
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #24, !inline_history !829
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !90
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #24, !inline_history !829
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !804
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fz = add nsw i32 %i.fq, -1
  store i32 %i.fz, ptr %i.fn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ga = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fq, %bb.by ], [ %i.ga, %bb.bz ]
  %i.gb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gb, label %bb.ca, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i, !prof !37

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i: ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.bw, %.lr.ph.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i54.i = icmp eq ptr %i.gc, %i.fk
  br i1 %.not.i.i.i54.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !830

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i
  %.pr.i55.i = load ptr, ptr %21, align 8, !tbaa !231, !noalias !804
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit.i
  %i.gd = phi ptr [ %.pr.i55.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fi, %.loopexit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !823, !noalias !804
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i: ; preds = %bb.cb, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !804
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_120DropNullChunkedArrayERKSt10shared_ptrINS_12ChunkedArrayEEPNS0_11ExecContextE.exit

.body.i:                                          ; preds = %bb.bu, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, %bb.bl, %bb.an
  %.pn32.i = phi { ptr, i32 } [ %i.cu, %bb.an ], [ %.pn.pn.i, %bb.bl ], [ %i.fh, %bb.bu ], [ %i.em, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24, !noalias !804
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.ah, %.body.i, %bb.fc
  %common.resume.op = phi { ptr, i32 } [ %.pn32.i, %.body.i ], [ %.pn36.pn.i, %bb.fc ], [ %i.ce, %bb.ah ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.v, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN5arrow7compute8internal12_GLOBAL__N_120DropNullChunkedArrayERKSt10shared_ptrINS_12ChunkedArrayEEPNS0_11ExecContextE.exit: ; preds = %bb.m, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.fj

bb.cc:                                            ; preds = %bb.a
  %.not.i.i.i16 = icmp eq i8 %i.c, 4
  br i1 %.not.i.i.i16, label %_ZNK5arrow5Datum12record_batchEv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gj = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gj, align 8, !tbaa !90
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr @.str.36, ptr %i.gk, align 8, !tbaa !222
  tail call void @__cxa_throw(ptr nonnull %i.gj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK5arrow5Datum12record_batchEv.exit:            ; preds = %bb.cc
  tail call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_119DropNullRecordBatchERKSt10shared_ptrINS_11RecordBatchEEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %4)
  br label %bb.fj

bb.ce:                                            ; preds = %bb.a
  %.not.i.i.i17 = icmp eq i8 %i.c, 5
  br i1 %.not.i.i.i17, label %_ZNK5arrow5Datum5tableEv.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gl = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gl, align 8, !tbaa !90
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr @.str.36, ptr %i.gm, align 8, !tbaa !222
  tail call void @__cxa_throw(ptr nonnull %i.gl, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK5arrow5Datum5tableEv.exit:                    ; preds = %bb.ce
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !834, !noalias !831 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !837, !noalias !831
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZNK5arrow5Datum5tableEv.exit
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !831
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJRKSt10shared_ptrINS_5TableEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit

bb.ch:                                            ; preds = %_ZNK5arrow5Datum5tableEv.exit
  %i.gs = load ptr, ptr %i.gn, align 8, !tbaa !90
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(32) %i.gn), !inline_history !842 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !843 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !843 ; 2 uses
  %i.gz = icmp eq ptr %i.gw, %i.gy
  br i1 %i.gz, label %._crit_edge74.thread.i, label %.lr.ph73.i

._crit_edge74.i:                                  ; preds = %._crit_edge.i
  %i.ha = icmp eq i64 %.1.lcssa.i, 0
  br i1 %i.ha, label %._crit_edge74.thread.i, label %bb.ci

.lr.ph73.i:                                       ; preds = %bb.ch, %._crit_edge.i
  %.071.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.ch ] ; 2 uses
  %.sroa.064.070.i = phi ptr [ %i.hg, %._crit_edge.i ], [ %i.gw, %bb.ch ] ; 2 uses
  %i.hb = load ptr, ptr %.sroa.064.070.i, align 8, !tbaa !225 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !814 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !814 ; 2 uses
  %i.hf = icmp eq ptr %i.hc, %i.he
  br i1 %i.hf, label %._crit_edge.i, label %.lr.ph.i18

._crit_edge.i:                                    ; preds = %.lr.ph.i18, %.lr.ph73.i
  %.1.lcssa.i = phi i64 [ %.071.i, %.lr.ph73.i ], [ %i.hk, %.lr.ph.i18 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.064.070.i, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.gy
  br i1 %i.hh, label %._crit_edge74.i, label %.lr.ph73.i

.lr.ph.i18:                                       ; preds = %.lr.ph73.i, %.lr.ph.i18
  %.169.i = phi i64 [ %i.hk, %.lr.ph.i18 ], [ %.071.i, %.lr.ph73.i ]
  %.sroa.060.068.i = phi ptr [ %i.hl, %.lr.ph.i18 ], [ %i.hc, %.lr.ph73.i ] ; 2 uses
  %i.hi = load ptr, ptr %.sroa.060.068.i, align 8, !tbaa !245
  %i.hj = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hi)
  %i.hk = add nsw i64 %i.hj, %.169.i              ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.060.068.i, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.he
  br i1 %i.hm, label %._crit_edge.i, label %.lr.ph.i18

._crit_edge74.thread.i:                           ; preds = %._crit_edge74.i, %bb.ch
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !831
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJRKSt10shared_ptrINS_5TableEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullTableERKSt10shared_ptrINS_5TableEEPNS0_11ExecContextE.exit

bb.ci:                                            ; preds = %._crit_edge74.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !831
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !831
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !831
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !834, !noalias !831
  invoke void @_ZN5arrow16TableBatchReaderC1ERKNS_5TableE(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ho)
          to label %.preheader.i unwind label %bb.cm

.preheader.i:                                     ; preds = %bb.ci
  %i.hp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !831
  invoke void @_ZN5arrow17RecordBatchReader4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.501") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.hz = load ptr, ptr %10, align 8, !tbaa !74, !noalias !831
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.co, label %bb.cl, !prof !77

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #24
  br label %bb.dq

bb.cm:                                            ; preds = %bb.ci
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.cn:                                            ; preds = %bb.cj
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.co:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !831
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  %i.id = load ptr, ptr %i.hp, align 8, !tbaa !851, !noalias !854 ; 2 uses
  store ptr %i.id, ptr %11, align 8, !tbaa !851, !alias.scope !855, !noalias !831
  %i.ie = load ptr, ptr %i.hr, align 8, !tbaa !86, !noalias !854 ; 2 uses
  store ptr null, ptr %i.hr, align 8, !tbaa !86, !noalias !854
  store ptr %i.ie, ptr %i.hq, align 8, !tbaa !86, !alias.scope !855, !noalias !831
  store ptr null, ptr %i.hp, align 8, !tbaa !851, !noalias !854
  %.not.i.i30 = icmp eq ptr %i.id, null
  br i1 %.not.i.i30, label %bb.dj, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !831
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_119DropNullRecordBatchERKSt10shared_ptrINS_11RecordBatchEEPNS0_11ExecContextE(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %4)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.if = load ptr, ptr %12, align 8, !tbaa !74, !noalias !831
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ct, label %bb.cr, !prof !77

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #24
  br label %bb.df

bb.cs:                                            ; preds = %bb.cp
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !831
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.ii = load i8, ptr %i.hs, align 8, !tbaa !220, !noalias !862 ; 2 uses
  %i.ij = icmp eq i8 %i.ii, 0
  br i1 %i.ij, label %bb.cu, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i39

.sink.split.i.i.i.i.i.i.i.i.i.i.i39:              ; preds = %bb.ct
  %i.ik = load <2 x ptr>, ptr %i.ht, align 8, !tbaa !72, !noalias !862
  store ptr null, ptr %i.hv, align 8, !tbaa !86, !noalias !862
  store <2 x ptr> %i.ik, ptr %13, align 16, !tbaa !72, !alias.scope !863, !noalias !831
  store ptr null, ptr %i.ht, align 8, !tbaa !72, !noalias !862
  br label %bb.cu

bb.cu:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i39, %bb.ct
  store i8 %i.ii, ptr %i.hw, align 16, !tbaa !220, !alias.scope !863, !noalias !831
  %i.il = invoke noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.cv unwind label %.loopexit.i40

bb.cv:                                            ; preds = %bb.cu
  %i.im = icmp sgt i64 %i.il, 0
  br i1 %i.im, label %bb.cw, label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE9push_backERKS3_.exit.i

bb.cw:                                            ; preds = %bb.cv
  %i.in = load i8, ptr %i.hw, align 16, !tbaa !220, !noalias !831
  %.not.i.i.i.i42 = icmp eq i8 %i.in, 4
  br i1 %.not.i.i.i.i42, label %_ZNK5arrow5Datum12record_batchEv.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.io = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.io, align 8, !tbaa !90
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr @.str.36, ptr %i.ip, align 8, !tbaa !222
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.cx
  unreachable

_ZNK5arrow5Datum12record_batchEv.exit.i:          ; preds = %bb.cw
  %i.iq = load ptr, ptr %i.hx, align 8, !tbaa !864, !noalias !831 ; 5 uses
  %i.ir = load ptr, ptr %i.hy, align 8, !tbaa !867, !noalias !831
  %.not.i39.i = icmp eq ptr %i.iq, %i.ir
  br i1 %.not.i39.i, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %_ZNK5arrow5Datum12record_batchEv.exit.i
  %i.is = load ptr, ptr %i.hu, align 8, !tbaa !86, !noalias !831 ; 2 uses
  %i.it = load <2 x ptr>, ptr %13, align 16, !tbaa !72, !noalias !831
  store <2 x ptr> %i.it, ptr %i.iq, align 8, !tbaa !72
  %.not.i.i.i.i.i.i43 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i.i43, label %_ZSt12construct_atISt10shared_ptrIN5arrow11RecordBatchEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 3 uses
  %i.iv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !831
  %.not.i.i.i.i.i.i.i44 = icmp eq i8 %i.iv, 0
  br i1 %.not.i.i.i.i.i.i.i44, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.iw = load i32, ptr %i.iu, align 4, !tbaa !3
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iu, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow11RecordBatchEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

bb.db:                                            ; preds = %bb.cz
  %i.iy = atomicrmw volatile add ptr %i.iu, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.hx, align 8, !tbaa !864, !noalias !831
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow11RecordBatchEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i

_ZSt12construct_atISt10shared_ptrIN5arrow11RecordBatchEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i: ; preds = %bb.db, %bb.da, %bb.cy
  %i.iz = phi ptr [ %i.iq, %bb.cy ], [ %i.iq, %bb.da ], [ %.pre.i.i, %bb.db ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.ja, ptr %i.hx, align 8, !tbaa !864, !noalias !831
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE9push_backERKS3_.exit.i

bb.dc:                                            ; preds = %_ZNK5arrow5Datum12record_batchEv.exit.i
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.iq, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE9push_backERKS3_.exit.i unwind label %.loopexit.i40

.loopexit.i40:                                    ; preds = %bb.dc, %bb.cu
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit.split-lp.i:                             ; preds = %bb.cx
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i40
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i40 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !831
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !831
  br label %bb.dz

_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE9push_backERKS3_.exit.i: ; preds = %bb.dc, %_ZSt12construct_atISt10shared_ptrIN5arrow11RecordBatchEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !831
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZN5arrow5DatumD2Ev.exit.i41 unwind label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE9push_backERKS3_.exit.i
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit.i41:                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE9push_backERKS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !831
  br label %bb.df

bb.df:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit.i41, %bb.cr
  %.023.i = phi i32 [ 1, %bb.cr ], [ 0, %_ZN5arrow5DatumD2Ev.exit.i41 ]
  %i.jd = load ptr, ptr %12, align 8, !tbaa !74, !noalias !831 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.dg, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i32, !prof !77

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !831
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ht)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i36 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #27
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i36: ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !831
  %.pr.i.i37 = load ptr, ptr %12, align 8, !tbaa !74, !noalias !831 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.pr.i.i37, null
  br i1 %.not.i.i.i38, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i33, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i32, !prof !634

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i32: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i36, %bb.df
  %i.jh = phi ptr [ %.pr.i.i37, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i36 ], [ %i.jd, %bb.df ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !78, !range !84, !noundef !85
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i33, label %bb.di

bb.di:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i32
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #24
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i33

_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i33:        ; preds = %bb.di, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i32, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !831
  %.pr.i = load ptr, ptr %i.hq, align 8, !tbaa !86, !noalias !831
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i33, %bb.co
  %i.jl = phi ptr [ %i.ie, %bb.co ], [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i33 ] ; 8 uses
  %.124.i = phi i32 [ 7, %bb.co ], [ %.023.i, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i33 ]
  %.not.i.i41.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i41.i, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 4 uses
  %i.jn = load atomic i64, ptr %i.jm acquire, align 8 ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 4294967297
  %i.jp = trunc i64 %i.jn to i32                  ; 2 uses
  br i1 %i.jo, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.jm, align 8, !tbaa !87
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  store i32 0, ptr %i.jq, align 4, !tbaa !89
  %i.jr = load ptr, ptr %i.jl, align 8, !tbaa !90
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.jl) #24, !inline_history !868
  %i.ju = load ptr, ptr %i.jl, align 8, !tbaa !90
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jl) #24, !inline_history !868
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dm:                                            ; preds = %bb.dk
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !831
  %.not.i.i.i42.i = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i42.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jy = add nsw i32 %i.jp, -1
  store i32 %i.jy, ptr %i.jm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34

bb.do:                                            ; preds = %bb.dm
  %i.jz = atomicrmw volatile add ptr %i.jm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i.i35 = phi i32 [ %i.jp, %bb.dn ], [ %i.jz, %bb.do ]
  %i.ka = icmp eq i32 %.0.i.i.i.i.i35, 1
  br i1 %i.ka, label %bb.dp, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !37

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jl) #24
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34, %bb.dl, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !831
  br label %bb.dq

bb.dq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.cl
  %.2.i = phi i32 [ 1, %bb.cl ], [ %.124.i, %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.kb = load ptr, ptr %10, align 8, !tbaa !74, !noalias !831 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.dr, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i.i, !prof !77

bb.dr:                                            ; preds = %bb.dq
  %i.kd = load ptr, ptr %i.hr, align 8, !tbaa !86, !noalias !831 ; 8 uses
  %.not.i.i.i.i.i43.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i.i.i43.i, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 4 uses
  %i.kf = load atomic i64, ptr %i.ke acquire, align 8 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, 4294967297
  %i.kh = trunc i64 %i.kf to i32                  ; 2 uses
  br i1 %i.kg, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.ke, align 8, !tbaa !87
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store i32 0, ptr %i.ki, align 4, !tbaa !89
  %i.kj = load ptr, ptr %i.kd, align 8, !tbaa !90
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal12_GLOBAL__N_113DropNullArrayERKSt10shared_ptrINS_5ArrayEEPNS0_11ExecContextE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !245
  %i.l = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.m = load ptr, ptr %1, align 8, !tbaa !245
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !881  ; 2 uses
  %i.r = icmp eq i64 %i.l, %i.q
  br i1 %i.r, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86   ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.v, ptr %8, align 16, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.ab = load ptr, ptr %2, align 8, !tbaa !808
  invoke void @_ZN5arrow14MakeEmptyArrayESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.443") align 8 %7, ptr noundef nonnull %8, ptr noundef %i.ab)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ISt10shared_ptrINS_5ArrayEEvEEONS0_IT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  %i.ac = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !77

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ag, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !89
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24, !inline_history !897
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24, !inline_history !897
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.n ], [ %i.at, %bb.o ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !37

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !74   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !634

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.i
  %i.av = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.ac, %bb.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !78, !range !84, !noundef !85
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.q
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !86  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.az, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ba, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !89
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !266
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !266
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i21 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i21, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.u ], [ %i.bn, %bb.v ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.y:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !322
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.bu = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25, !noalias !901 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 1, ptr %i.bv, align 8, !tbaa !87, !noalias !898
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 1, ptr %i.bw, align 4, !tbaa !89, !noalias !898
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bu, align 8, !tbaa !90, !noalias !898
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  invoke void @_ZN5arrow9NullArrayC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef 0)
          to label %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !898

common.resume:                                    ; preds = %bb.x, %bb.be, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.by, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i ], [ %i.bp, %bb.x ], [ %.pn.pn.pn, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 48) #26, !noalias !898
  br label %common.resume

_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !86, !alias.scope !898
  store ptr %i.bx, ptr %9, align 8, !tbaa !904, !alias.scope !898
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJSt10shared_ptrINS_9NullArrayEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %9) #24
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !86 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cc, align 8, !tbaa !87
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !89
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #24, !inline_history !906
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #24, !inline_history !906
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i23 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i23, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.ae:                                            ; preds = %bb.ac
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i25 = phi i32 [ %i.cf, %bb.ad ], [ %i.cp, %bb.ae ]
  %i.cq = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.cq, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #24
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11make_sharedIN5arrow9NullArrayEJiEESt10shared_ptrIT_EDpOT0_.exit, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN5arrow6ResultINS_5DatumEEC2IRKSt10shared_ptrINS_5ArrayEEvEEOT_.exit

bb.ag:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !622, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !907
  store i64 %i.q, ptr %i.a, align 8, !tbaa !357, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !907
  store ptr null, ptr %i.b, align 8, !tbaa !910, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !907
  store i32 0, ptr %i.c, align 4, !tbaa !3, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !907
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !912, !noalias !907
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !357, !noalias !907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !916
  store ptr null, ptr %11, align 16, !tbaa !917, !alias.scope !916
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJlRKSt10shared_ptrINS4_6BufferEEDnilEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !907
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cw = load <2 x ptr>, ptr %11, align 16, !tbaa !72
  store ptr null, ptr %i.cv, align 8, !tbaa !86
  store <2 x ptr> %i.cw, ptr %5, align 16, !tbaa !72
  store ptr null, ptr %11, align 16, !tbaa !917
  invoke void @_ZN5arrow5DatumC2ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ah unwind label %.body

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86 ; 8 uses
  %.not.i.i.i26 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i26, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.cz, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !89
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #24, !inline_history !920
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !90
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #24, !inline_history !920
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i27 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i27, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i = phi i32 [ %i.dc, %bb.al ], [ %i.dm, %bb.am ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.an, label %bb.ao, !prof !37

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #24
  br label %bb.ao

.body:                                            ; preds = %bb.ag
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #24
  br label %bb.be

bb.ao:                                            ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.dp = load ptr, ptr %i.cv, align 8, !tbaa !86 ; 8 uses
  %.not.i.i28 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i28, label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dq, align 8, !tbaa !87
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !89
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !90
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24, !inline_history !921
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !90
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24, !inline_history !921
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i29 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i29, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30
end_hunk_10
begin_hunk_11_@_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow7compute6FilterERKNS_5DatumES3_RKNS0_13FilterOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.82") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #5

declare void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.390, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #27
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow9NullArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #24, !inline_history !942
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow9NullArrayC1El(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJSt10shared_ptrINS_9NullArrayEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.376", align 16 ; 7 uses
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store <2 x ptr> %i.a, ptr %2, align 16, !tbaa !72
  invoke void @_ZN5arrow5DatumC2ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !89
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !943
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !943
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.body:                                            ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #27
  unreachable

_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare void @_ZN5arrow5DatumC2ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJlRKSt10shared_ptrINS4_6BufferEEDnilEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::shared_ptr.152", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25, !noalias !944 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.f = load i32, ptr %6, align 4, !tbaa !3
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr %7, align 8, !tbaa !357
  invoke void @_ZN5arrow12BooleanArrayC1ElRKSt10shared_ptrINS_6BufferEES5_ll(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.g, i64 noundef %i.h)
          to label %bb.b unwind label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !89
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !947
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !947
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26
  resume { ptr, i32 } %i.z

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  store ptr %i.a, ptr %0, align 8, !tbaa !86
  store ptr %i.d, ptr %1, align 8, !tbaa !948
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12BooleanArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24, !inline_history !949
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow12BooleanArrayC1ElRKSt10shared_ptrINS_6BufferEES5_ll(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #5

declare void @_ZN5arrow7compute13FilterOptionsC1ENS1_21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) unnamed_addr #5

declare void @_ZN5arrow12ChunkedArray9MakeEmptyESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.469") align 8, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEEC2ISt10shared_ptrINS_12ChunkedArrayEEvEEONS0_IT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.339", align 16 ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.j, !prof !77

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !72, !noalias !950
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !72
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN5arrow6StatusaSEOS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !89
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !953
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !953
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
end_hunk_11
begin_hunk_12_@_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev:bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread, !prof !634

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !78, !range !84, !noundef !85
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !89
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !181
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow5DatumC1ESt10shared_ptrINS_11RecordBatchEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJRKSt10shared_ptrINS_11RecordBatchEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.345", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !72
  store <2 x ptr> %i.d, ptr %2, align 16, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_11RecordBatchEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !86   ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !89
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !938
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24, !inline_history !938
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJlRSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.152", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25, !noalias !975 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12BooleanArrayC1ElRKSt10shared_ptrINS_6BufferEES5_ll(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef -1, i64 noundef 0)
          to label %bb.b unwind label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !89
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !978
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !978
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26
  resume { ptr, i32 } %i.w

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store ptr %i.a, ptr %0, align 8, !tbaa !86
  store ptr %i.d, ptr %1, align 8, !tbaa !948
  ret void
}

declare void @_ZN5arrow16TableBatchReaderC1ERKNS_5TableE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17RecordBatchReader4NextEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.501") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.345", align 16 ; 8 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %bb.b, !prof !77

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  %i.f = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  %.not.i6 = icmp eq ptr %i.f, null
  br i1 %.not.i6, label %bb.f, label %bb.c, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !78, !range !84, !noundef !85
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.j

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x ptr>, ptr %2, align 16, !tbaa !72
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !72
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !86 ; 8 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !89
  %i.r = load ptr, ptr %.pre, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #24, !inline_history !938
  %i.u = load ptr, ptr %.pre, align 8, !tbaa !90
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #24, !inline_history !938
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.p, %bb.j ], [ %i.z, %bb.k ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #24
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare void @_ZN5arrow5Table17FromRecordBatchesESt10shared_ptrINS_6SchemaEERKSt6vectorIS1_INS_11RecordBatchEESaIS6_EE(ptr dead_on_unwind writable sret(%"class.arrow::Result.521") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEEC2ISt10shared_ptrINS_5TableEEvEEONS0_IT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.351", align 16 ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.j, !prof !77

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !72, !noalias !979
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !72
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_5TableEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN5arrow6StatusaSEOS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !89
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !982
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !982
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %_ZN5arrow6StatusaSEOS0_.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5arrow6StatusaSERKS0_.exit

bb.j:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusaSERKS0_.exit unwind label %bb.k

_ZN5arrow6StatusaSERKS0_.exit:                    ; preds = %bb.j, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow16TableBatchReaderE, i64 16), ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !968  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !969
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !983  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !986
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !987  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !991
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #26
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.x, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !89
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !992
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !992
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i3 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  tail call void @_ZN5arrow17RecordBatchReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !873    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !864  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !89
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !993
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !993
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !875

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !873
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !867
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal14AlignedStorageINS_5DatumEE9constructIJRKSt10shared_ptrINS_5TableEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.351", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !72
  store <2 x ptr> %i.d, ptr %2, align 16, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5TableEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
end_hunk_12
