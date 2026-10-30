Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/main.cc.X86_64?download=true
inline.NumInlined: 5581
inline.NumDeleted: 3026
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN4mold9mold_mainINS_6X86_64EEEiiPPc:bb.a
  %i.ch = icmp slt i64 %i.cf, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ci = add nuw i64 %i.cf, 1                    ; 2 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42.i, !prof !63

bb.t:                                             ; preds = %bb.s
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42.i: ; preds = %bb.s
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #28 ; 2 uses
  store ptr %i.ck, ptr %36, align 8, !tbaa !61
  store i64 %i.cf, ptr %i.as, align 8, !tbaa !64
  br label %._crit_edge.i.i41.i

._crit_edge.i.i41.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42.i, %bb.p
  %i.cl = phi ptr [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i42.i ], [ %i.as, %bb.p ] ; 3 uses
  switch i64 %i.cf, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit43.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i41.i
  %i.cm = load i8, ptr %i.cd, align 1, !tbaa !64
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit43.i

bb.v:                                             ; preds = %._crit_edge.i.i41.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit43.i: ; preds = %bb.v, %bb.u, %._crit_edge.i.i41.i
  store i64 %i.cf, ptr %i.at, align 8, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cf
  store i8 0, ptr %i.cn, align 1, !tbaa !64
  %i.co = call noundef ptr @_ZN4mold9open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %39, ptr nofree noundef nonnull align 8 dereferenceable(32) %36) ; 3 uses
  %i.cp = load ptr, ptr %36, align 8, !tbaa !61   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit43.i
  %i.cr = load i64, ptr %i.as, align 8, !tbaa !64
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit43.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  %.not34.i = icmp eq ptr %i.co, null
  br i1 %.not34.i, label %.critedge38.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  %i.ct = call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %39, ptr noundef nonnull %i.co) #19
  %i.cu = icmp eq i32 %i.ct, 6
  br i1 %i.cu, label %bb.x, label %.critedge38.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  store ptr %39, ptr %37, align 8, !tbaa !66
  store ptr %.sroa.047.076.i, ptr %i.au, align 8, !tbaa !68
  store ptr %i.co, ptr %i.av, align 8, !tbaa !74
  store i32 0, ptr %i.aw, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.cv = call { i64, ptr } @_ZN4mold6ScriptINS_6X86_64EE22get_script_output_typeEv(ptr noundef nonnull align 8 dereferenceable(56) %37) #19 ; 2 uses
  %i.cw = extractvalue { i64, ptr } %i.cv, 0      ; 2 uses
  %i.cx = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i70, label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #25
  br label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i

_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i:          ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %i.dc = icmp eq i64 %i.cw, 0
  br i1 %i.dc, label %.critedge38.i, label %_ZN4moldL19detect_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EESt4spanINS_9ReaderJobELm18446744073709551615EE.exit

.critedge38.i:                                    ; preds = %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.047.076.i, i64 120 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ao
  br i1 %i.de, label %._crit_edge.i, label %bb.o

._crit_edge.i:                                    ; preds = %.critedge38.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %38, ptr noundef nonnull align 8 dereferenceable(14448) %39) #19
  %i.df = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA21_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %38, ptr noundef nonnull align 1 dereferenceable(21) @.str.26) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %38) #26
  unreachable

_ZN4moldL19detect_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EESt4spanINS_9ReaderJobELm18446744073709551615EE.exit: ; preds = %bb.n, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i
  %.sroa.059.6.i = phi i64 [ %i.cw, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i ], [ %i.bv, %bb.n ] ; 2 uses
  %.pn.i = phi { i64, ptr } [ %i.cv, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i ], [ %i.bu, %bb.n ]
  %.sroa.562.6.i = extractvalue { i64, ptr } %.pn.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  store i64 %.sroa.059.6.i, ptr %i.aj, align 8, !tbaa !44
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 3384
  store ptr %.sroa.562.6.i, ptr %.sroa.435.0..sroa_idx, align 8, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %_ZN4moldL19detect_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EESt4spanINS_9ReaderJobELm18446744073709551615EE.exit, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  %.sroa.032.0.copyload = phi i64 [ %.sroa.059.6.i, %_ZN4moldL19detect_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EESt4spanINS_9ReaderJobELm18446744073709551615EE.exit ], [ %i.ak, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit ] ; 2 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 3384 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.032.0.copyload, 6
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.233.0.copyload = load ptr, ptr %.sroa.233.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %i.dh = load i32, ptr %.sroa.233.0.copyload, align 1
  %i.di = xor i32 %i.dh, 1597388920
  %i.dj = getelementptr i8, ptr %.sroa.233.0.copyload, i64 4
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i32
  %i.dm = xor i32 %i.dl, 13366
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dr = load i32, ptr %40, align 8, !tbaa !746
  %.not234 = icmp eq i32 %i.dr, 0
  br i1 %.not234, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt10filesystem12current_pathERKNS_7__cxx114pathERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(16) %40) #19
  %.sroa.028.0.copyload.pre = load i64, ptr %i.aj, align 8, !tbaa !44
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.028.0.copyload = phi i64 [ %.sroa.028.0.copyload.pre, %bb.ac ], [ %.sroa.032.0.copyload, %bb.ab ]
  %.sroa.229.0.copyload = load ptr, ptr %.sroa.233.0..sroa_idx, align 8, !tbaa !38
  %i.ds = call noundef i32 @_ZN4mold9redo_mainINS_6X86_64EEEiSt17basic_string_viewIcSt11char_traitsIcEEiPPc(i64 %.sroa.028.0.copyload, ptr %.sroa.229.0.copyload, i32 noundef %0, ptr noundef %1) #19
  br label %bb.hb

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  %i.dt = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  store ptr %i.dt, ptr %45, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dt, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 3, ptr %i.du, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %45, i64 19
  store i8 0, ptr %i.dv, align 1, !tbaa !64
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(14448) %39, ptr nofree noundef nonnull align 8 dereferenceable(32) %45, ptr noundef null)
  %i.dw = load ptr, ptr %45, align 8, !tbaa !61   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dt
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %i.dy = load i64, ptr %i.dt, align 8, !tbaa !64
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZN4mold22install_signal_handlerEv() #19
  %i.ea = getelementptr inbounds nuw i8, ptr %39, i64 2669
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !752, !range !58, !noundef !59
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4mold10fork_childINS_6X86_64EEEvv() #19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4mold19acquire_global_lockEv() #19
  %i.ed = getelementptr inbounds nuw i8, ptr %39, i64 3992 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %39, i64 2784 ; 2 uses
  %.val62 = load i64, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %39, i64 2792 ; 2 uses
  %.val63 = load i8, ptr %i.ef, align 8, !tbaa !340, !range !58, !noundef !59
  %i.eg = trunc nuw i8 %.val63 to i1
  br i1 %i.eg, label %_ZN4moldL16get_thread_countINS_6X86_64EEElRNS_7ContextIT_EE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = call noundef i64 @_ZN3tbb6detail2r127global_control_active_valueEi(i32 noundef 0) #19
  %i.ei = trunc i64 %i.eh to i32
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.ei, i32 32)
  %i.ej = sext i32 %.sroa.speculated.i to i64
  br label %_ZN4moldL16get_thread_countINS_6X86_64EEElRNS_7ContextIT_EE.exit

_ZN4moldL16get_thread_countINS_6X86_64EEElRNS_7ContextIT_EE.exit: ; preds = %bb.af, %bb.ag
  %.0.i = phi i64 [ %i.ej, %bb.ag ], [ %.val62, %bb.af ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %39, i64 4016 ; 3 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !341, !range !58, !noundef !59
  %i.em = trunc nuw i8 %i.el to i1
  store i8 0, ptr %i.ek, align 8, !tbaa !341
  br i1 %i.em, label %bb.ah, label %_ZNSt19_Optional_base_implIN3tbb6detail2d114global_controlESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i

bb.ah:                                            ; preds = %_ZN4moldL16get_thread_countINS_6X86_64EEElRNS_7ContextIT_EE.exit
  call void @_ZN3tbb6detail2r17destroyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed) #19
  br label %_ZNSt19_Optional_base_implIN3tbb6detail2d114global_controlESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implIN3tbb6detail2d114global_controlESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.ah, %_ZN4moldL16get_thread_countINS_6X86_64EEElRNS_7ContextIT_EE.exit
  store i64 %.0.i, ptr %i.ed, align 8, !tbaa !755
  %i.en = getelementptr inbounds nuw i8, ptr %39, i64 4000
  store i64 0, ptr %i.en, align 8, !tbaa !756
  %i.eo = getelementptr inbounds nuw i8, ptr %39, i64 4008
  store i32 0, ptr %i.eo, align 8, !tbaa !757
  %.not.i.i.i.i.i74 = icmp eq i64 %.0.i, 0
  br i1 %.not.i.i.i.i.i74, label %bb.ai, label %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterElEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS8_.exit

bb.ai:                                            ; preds = %_ZNSt19_Optional_base_implIN3tbb6detail2d114global_controlESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i
  call void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef nonnull @__func__._ZN3tbb6detail2d114global_controlC2ENS2_9parameterEm, i32 noundef 88, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #19
  br label %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterElEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS8_.exit

_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterElEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS8_.exit: ; preds = %_ZNSt19_Optional_base_implIN3tbb6detail2d114global_controlESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i, %bb.ai
  call void @_ZN3tbb6detail2r16createERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed) #19
  store i8 1, ptr %i.ek, align 8, !tbaa !341
  %i.ep = getelementptr inbounds nuw i8, ptr %39, i64 3688
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !342 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterElEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS8_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %39, i64 2824
  %i.et = load i8, ptr %i.es, align 8, !tbaa !343, !range !58, !noundef !59
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.aj, label %.loopexit238

.lr.ph:                                           ; preds = %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterElEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS8_.exit, %.lr.ph
  %.sroa.0220.0250 = phi ptr [ %i.fa, %.lr.ph ], [ %i.eq, %_ZNSt8optionalIN3tbb6detail2d114global_controlEE7emplaceIJNS3_9parameterElEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOS8_.exit ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0220.0250, i64 8
  %.sroa.024.0.copyload = load i64, ptr %i.ev, align 8, !tbaa !44
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0220.0250, i64 16
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !38
  %i.ew = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %39, i64 %.sroa.024.0.copyload, ptr %.sroa.425.0.copyload) #19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 33 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 1
  %i.ez = or i16 %i.ey, 1024
  store i16 %i.ez, ptr %i.ex, align 1
  %i.fa = load ptr, ptr %.sroa.0220.0250, align 8, !tbaa !344 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %39, i64 2800
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !758 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %39, i64 2808
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !758 ; 2 uses
  %i.fg = icmp eq ptr %i.fd, %i.ff
  br i1 %i.fg, label %.loopexit238, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.aj, %.lr.ph253
  %.sroa.0216.0251 = phi ptr [ %i.fl, %.lr.ph253 ], [ %i.fd, %bb.aj ] ; 2 uses
  %i.fh = load ptr, ptr %.sroa.0216.0251, align 8, !tbaa !345
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 33 ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 1
  %i.fk = or i16 %i.fj, 2
  store i16 %i.fk, ptr %i.fi, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0216.0251, i64 8 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ff
  br i1 %i.fm, label %.loopexit238, label %.lr.ph253

.loopexit238:                                     ; preds = %.lr.ph253, %bb.aj, %._crit_edge
  %i.fn = getelementptr inbounds nuw i8, ptr %39, i64 3944
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !748 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %39, i64 3952
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !748 ; 2 uses
  %i.fr = icmp eq ptr %i.fo, %i.fq
  br i1 %i.fr, label %._crit_edge257, label %.lr.ph256

._crit_edge257:                                   ; preds = %.lr.ph256, %.loopexit238
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.fs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  store ptr %i.fs, ptr %29, align 8, !tbaa !60
  %i.ft = call noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #28 ; 3 uses
  store ptr %i.ft, ptr %29, align 8, !tbaa !61
  store i64 16, ptr %i.fs, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ft, ptr noundef nonnull align 1 dereferenceable(16) @.str.29, i64 16, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 16, ptr %i.fu, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i8 0, ptr %i.fv, align 1, !tbaa !64
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(14448) %39, ptr nofree noundef nonnull align 8 dereferenceable(32) %29, ptr noundef null)
  %i.fw = load ptr, ptr %29, align 8, !tbaa !61   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fs
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %._crit_edge257
  %i.fy = load i64, ptr %i.fs, align 8, !tbaa !64
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77: ; preds = %._crit_edge257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  store ptr inttoptr (i64 1 to ptr), ptr %30, align 8, !tbaa !351
  %i.ga = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 8 uses
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.gb, i8 0, i64 17, i1 false)
  store atomic ptr %scevgep.i.i.i.i, ptr %i.ga monotonic, align 8
  store atomic ptr null, ptr %scevgep.i.i.i.i monotonic, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  store atomic ptr null, ptr %i.gc monotonic, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 2 uses
  store atomic ptr null, ptr %i.gd monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store ptr %39, ptr %31, align 8, !tbaa !66
  %i.ge = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %30, ptr %i.ge, align 8, !tbaa !759
  %.val.i = load ptr, ptr %43, align 8, !tbaa !353 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %43, i64 8
  %.val27.i = load ptr, ptr %i.gf, align 8, !tbaa !353 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.gg = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 0, ptr %i.gg, align 8, !tbaa !355
  %i.gh = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.gi = getelementptr inbounds nuw i8, ptr %27, i64 15
  %i.gj = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %27, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.gk, align 8, !tbaa !371
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.gh, align 4, !tbaa !64
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %27) #19
  %i.gl = icmp eq ptr %.val.i, %.val27.i
  br i1 %i.gl, label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorIS6_SaIS6_EEEEZNS5_L16read_input_filesINS5_6X86_64EEEvRNS5_7ContextIT_EERSA_EUlRS6_RNS0_2d16feederIS6_EEE_EEvSF_SF_RKT0_RNSK_18task_group_contextE.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d119wait_context_vertexE, i64 16), ptr %25, align 8, !tbaa !373
  %i.gm = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store i64 1, ptr %i.gm, align 8, !tbaa !375
  %i.gn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store i64 0, ptr %i.gn, align 8, !tbaa !376
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.go = getelementptr inbounds nuw i8, ptr %26, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.go, i8 0, i64 56, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %26, i64 64
  store ptr %.val.i, ptr %i.gp, align 64, !tbaa !353
  %i.gq = getelementptr inbounds nuw i8, ptr %26, i64 72
  store ptr %.val27.i, ptr %i.gq, align 8, !tbaa !353
  %i.gr = getelementptr inbounds nuw i8, ptr %26, i64 80
  store ptr %25, ptr %i.gr, align 16, !tbaa !378
  %i.gs = getelementptr inbounds nuw i8, ptr %26, i64 88
  store ptr %27, ptr %i.gs, align 8, !tbaa !380
  %i.gt = getelementptr inbounds nuw i8, ptr %26, i64 96
  store ptr %31, ptr %i.gt, align 32, !tbaa !381
  %i.gu = getelementptr inbounds nuw i8, ptr %26, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d211feeder_implIZN4moldL16read_input_filesINS3_6X86_64EEEvRNS3_7ContextIT_EERSt6vectorINS3_9ReaderJobESaISB_EEEUlRSB_RNS0_2d16feederISB_EEE_SB_EE, i64 16), ptr %i.gu, align 8, !tbaa !373
  %i.gv = getelementptr inbounds nuw i8, ptr %26, i64 112
  store ptr %31, ptr %i.gv, align 16, !tbaa !381
  %i.gw = getelementptr inbounds nuw i8, ptr %26, i64 120
  store ptr %25, ptr %i.gw, align 8, !tbaa !378
  %i.gx = getelementptr inbounds nuw i8, ptr %26, i64 128
  store ptr %27, ptr %i.gx, align 64, !tbaa !380
  %i.gy = atomicrmw add ptr %i.gn, i64 1 seq_cst, align 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.gy, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.al, label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gz = ptrtoint ptr %i.gm to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.gz) #19
  br label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i

_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i: ; preds = %bb.al, %bb.ak
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorIS6_SaIS6_EEEEZNS5_L16read_input_filesINS5_6X86_64EEEvRNS5_7ContextIT_EERSA_EUlRS6_RNS0_2d16feederIS6_EEE_S6_St26random_access_iterator_tagEE, i64 16), ptr %26, align 64, !tbaa !373
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %26, ptr noundef nonnull align 8 dereferenceable(128) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(128) %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorIS6_SaIS6_EEEEZNS5_L16read_input_filesINS5_6X86_64EEEvRNS5_7ContextIT_EERSA_EUlRS6_RNS0_2d16feederIS6_EEE_EEvSF_SF_RKT0_RNSK_18task_group_contextE.exit.i.i.i

_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorIS6_SaIS6_EEEEZNS5_L16read_input_filesINS5_6X86_64EEEvRNS5_7ContextIT_EERSA_EUlRS6_RNS0_2d16feederIS6_EEE_EEvSF_SF_RKT0_RNSK_18task_group_contextE.exit.i.i.i: ; preds = %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77
  %i.ha = load atomic i8, ptr %i.gi monotonic, align 1
  %i.hb = icmp eq i8 %i.ha, -1
  br i1 %i.hb, label %_ZN3tbb6detail2d217parallel_for_eachISt6vectorIN4mold9ReaderJobESaIS5_EEZNS4_L16read_input_filesINS4_6X86_64EEEvRNS4_7ContextIT_EERS7_EUlRS5_RNS0_2d16feederIS5_EEE_EEvRSB_RKT0_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorIS6_SaIS6_EEEEZNS5_L16read_input_filesINS5_6X86_64EEEvRNS5_7ContextIT_EERSA_EUlRS6_RNS0_2d16feederIS6_EEE_EEvSF_SF_RKT0_RNSK_18task_group_contextE.exit.i.i.i
  call void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %27) #19
  br label %_ZN3tbb6detail2d217parallel_for_eachISt6vectorIN4mold9ReaderJobESaIS5_EEZNS4_L16read_input_filesINS4_6X86_64EEEvRNS4_7ContextIT_EERS7_EUlRS5_RNS0_2d16feederIS5_EEE_EEvRSB_RKT0_.exit.i

_ZN3tbb6detail2d217parallel_for_eachISt6vectorIN4mold9ReaderJobESaIS5_EEZNS4_L16read_input_filesINS4_6X86_64EEEvRNS4_7ContextIT_EERS7_EUlRS5_RNS0_2d16feederIS5_EEE_EEvRSB_RKT0_.exit.i: ; preds = %bb.am, %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold9ReaderJobESt6vectorIS6_SaIS6_EEEEZNS5_L16read_input_filesINS5_6X86_64EEEvRNS5_7ContextIT_EERSA_EUlRS6_RNS0_2d16feederIS6_EEE_EEvSF_SF_RKT0_RNSK_18task_group_contextE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %i.hc = getelementptr inbounds nuw i8, ptr %30, i64 56 ; 3 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8, !noalias !760
  %i.he = load atomic ptr, ptr %i.ga acquire, align 8, !noalias !760 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %scevgep.i.i.i.i
  %i.hg = select i1 %i.hf, i64 3, i64 64
  %i.hh = load ptr, ptr %30, align 8, !tbaa !351, !noalias !760
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %_ZN3tbb6detail2d217parallel_for_eachISt6vectorIN4mold9ReaderJobESaIS5_EEZNS4_L16read_input_filesINS4_6X86_64EEEvRNS4_7ContextIT_EERS7_EUlRS5_RNS0_2d16feederIS5_EEE_EEvRSB_RKT0_.exit.i
  %.01015.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN3tbb6detail2d217parallel_for_eachISt6vectorIN4mold9ReaderJobESaIS5_EEZNS4_L16read_input_filesINS4_6X86_64EEEvRNS4_7ContextIT_EERS7_EUlRS5_RNS0_2d16feederIS5_EEE_EEvRSB_RKT0_.exit.i ], [ %i.hm, %bb.ao ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.01015.i.i.i.i.i.i.i
  %i.hj = load atomic ptr, ptr %i.hi monotonic, align 8, !noalias !760
  %.not.i.i.i.i.i.i28.i = icmp ugt ptr %i.hj, %i.hh
  br i1 %.not.i.i.i.i.i.i28.i, label %bb.ao, label %.thread.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4mold7ContextINS_6X86_64EED2Ev:bb.a
  %i.ew = load atomic i64, ptr %i.ek seq_cst, align 8
  %i.ex = icmp ult i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i27, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE15nullify_segmentEPSt6atomicIPS8_Em.exit.i.i.i.i, !llvm.loop !864

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE15nullify_segmentEPSt6atomicIPS8_Em.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i27, %.preheader.i.i.i.i.i25, %bb.v, %bb.u
  %i.ey = load ptr, ptr %i.ee, align 8, !tbaa !537
  %i.ez = icmp eq ptr %i.eq, %i.ey
  br i1 %i.ez, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14delete_segmentEm.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE15nullify_segmentEPSt6atomicIPS8_Em.exit.i.i.i.i
  %i.fa = shl nuw i64 1, %i.el
  %i.fb = and i64 %i.fa, -2
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fb
  tail call void @_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE15destroy_segmentEPS8_m(ptr noundef nonnull align 8 dereferenceable(65) %i.ee, ptr noundef %i.fc, i64 noundef %i.el)
  br label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14delete_segmentEm.exit.i.i.i

_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14delete_segmentEm.exit.i.i.i: ; preds = %bb.w, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE15nullify_segmentEPSt6atomicIPS8_Em.exit.i.i.i.i, %bb.s
  %.not.i.i.i22 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i22, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14clear_segmentsEv.exit.i.i, label %bb.s, !llvm.loop !865

_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14clear_segmentsEv.exit.i.i: ; preds = %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14delete_segmentEm.exit.i.i.i
  %i.fd = load atomic ptr, ptr %i.ef acquire, align 8 ; 2 uses
  %.not.i1.i.i23 = icmp eq ptr %i.fd, %i.eh
  br i1 %.not.i1.i.i23, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EED2Ev.exit, label %.lr.ph.i.i.i.i24

.lr.ph.i.i.i.i24:                                 ; preds = %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14clear_segmentsEv.exit.i.i
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.fd) #19
  store atomic ptr %i.eh, ptr %i.ef monotonic, align 8
  store atomic ptr null, ptr %i.eh monotonic, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 12592
  store atomic ptr null, ptr %i.fe monotonic, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 12600
  store atomic ptr null, ptr %i.ff monotonic, align 8
  br label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EED2Ev.exit

_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EED2Ev.exit: ; preds = %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE14clear_segmentsEv.exit.i.i, %.lr.ph.i.i.i.i24
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 12616
  store atomic i64 0, ptr %i.fg monotonic, align 8
  store atomic i64 0, ptr %i.ek monotonic, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 12488
  tail call void @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE14clear_segmentsEv(ptr noundef nonnull align 8 dereferenceable(65) %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 12504 ; 2 uses
  %i.fj = load atomic ptr, ptr %i.fi acquire, align 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 12512 ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i.i.i29, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EED2Ev.exit, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EED2Ev.exit
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.fj) #19
  store atomic ptr %i.fk, ptr %i.fi monotonic, align 8
  store atomic ptr null, ptr %i.fk monotonic, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 12520
  store atomic ptr null, ptr %i.fl monotonic, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 12528
  store atomic ptr null, ptr %i.fm monotonic, align 8
  br label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EED2Ev.exit

_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EED2Ev.exit: ; preds = %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EED2Ev.exit, %.lr.ph.i.i.i.i30
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 12544
  store atomic i64 0, ptr %i.fn monotonic, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 12536
  store atomic i64 0, ptr %i.fo monotonic, align 8
  %.ptr40 = getelementptr inbounds nuw i8, ptr %0, i64 12384
  tail call void @_ZN3tbb6detail2d126enumerable_thread_specificISt5arrayISt6vectorIN4mold10ShardedMapINS5_6SymbolINS5_6X86_64EEEE7PendingESaISB_EELm64EENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.ptr40) #19
  br label %bb.x

bb.x:                                             ; preds = %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5ShardD2Ev.exit.i, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EED2Ev.exit
  %.idx = phi i64 [ 12384, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EED2Ev.exit ], [ %.add, %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5ShardD2Ev.exit.i ] ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %.add = add nsw i64 %.idx, -128                 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.ptr, i64 -56 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.ptr, i64 -40 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !874 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEES0_IKS5_PN4mold15ShardedMapEntryINS7_6SymbolINS7_6X86_64EEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ENS7_10ShardedMapISB_E15PassThroughHashENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %i.fr, %bb.x ] ; 2 uses
  %i.fs = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !344 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 48) #25
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEES0_IKS5_PN4mold15ShardedMapEntryINS7_6SymbolINS7_6X86_64EEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ENS7_10ShardedMapISB_E15PassThroughHashENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !866

_ZNSt10_HashtableISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEES0_IKS5_PN4mold15ShardedMapEntryINS7_6SymbolINS7_6X86_64EEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ENS7_10ShardedMapISB_E15PassThroughHashENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.x
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !550
  %i.fu = getelementptr inbounds i8, ptr %.ptr, i64 -48 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !551
  %i.fw = shl i64 %i.fv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ft, i8 0, i64 %i.fw, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  %i.fx = load ptr, ptr %i.fp, align 8, !tbaa !550 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.ptr, i64 -8
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt13unordered_mapISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEEPN4mold15ShardedMapEntryINS6_6SymbolINS6_6X86_64EEEEENS6_10ShardedMapISA_E15PassThroughHashESt8equal_toIS5_ESaIS0_IKS5_SC_EEED2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEES0_IKS5_PN4mold15ShardedMapEntryINS7_6SymbolINS7_6X86_64EEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ENS7_10ShardedMapISB_E15PassThroughHashENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ga = load i64, ptr %i.fu, align 8, !tbaa !551
  %i.gb = shl i64 %i.ga, 3
  tail call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #25
  br label %_ZNSt13unordered_mapISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEEPN4mold15ShardedMapEntryINS6_6SymbolINS6_6X86_64EEEEENS6_10ShardedMapISA_E15PassThroughHashESt8equal_toIS5_ESaIS0_IKS5_SC_EEED2Ev.exit.i.i

_ZNSt13unordered_mapISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEEPN4mold15ShardedMapEntryINS6_6SymbolINS6_6X86_64EEEEENS6_10ShardedMapISA_E15PassThroughHashESt8equal_toIS5_ESaIS0_IKS5_SC_EEED2Ev.exit.i.i: ; preds = %bb.y, %_ZNSt10_HashtableISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEES0_IKS5_PN4mold15ShardedMapEntryINS7_6SymbolINS7_6X86_64EEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ENS7_10ShardedMapISB_E15PassThroughHashENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.gc = getelementptr inbounds i8, ptr %.ptr, i64 -80
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !875 ; 3 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i31, label %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5ShardD2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt13unordered_mapISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEEPN4mold15ShardedMapEntryINS6_6SymbolINS6_6X86_64EEEEENS6_10ShardedMapISA_E15PassThroughHashESt8equal_toIS5_ESaIS0_IKS5_SC_EEED2Ev.exit.i.i
  %i.ge = getelementptr inbounds i8, ptr %.ptr, i64 -64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !876
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #25
  br label %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5ShardD2Ev.exit.i

_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5ShardD2Ev.exit.i: ; preds = %bb.z, %_ZNSt13unordered_mapISt4pairImSt17basic_string_viewIcSt11char_traitsIcEEEPN4mold15ShardedMapEntryINS6_6SymbolINS6_6X86_64EEEEENS6_10ShardedMapISA_E15PassThroughHashESt8equal_toIS5_ESaIS0_IKS5_SC_EEED2Ev.exit.i.i
  %i.gj = icmp eq i64 %.add, 4192
  br i1 %i.gj, label %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEED2Ev.exit, label %bb.x

_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEED2Ev.exit: ; preds = %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEE5ShardD2Ev.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 4176
  tail call void @_ZN4mold13ArenaResourceD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gk) #19
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 4120 ; 3 uses
  %i.gn = load atomic ptr, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 4128 ; 4 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  %i.gq = select i1 %i.gp, i64 3, i64 64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEED2Ev.exit
  %.07.i.i.i32 = phi i64 [ %i.gq, %_ZN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEED2Ev.exit ], [ %i.gr, %bb.ac ]
  %i.gr = add nsw i64 %.07.i.i.i32, -1            ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gr
  %i.gt = load atomic ptr, ptr %i.gs monotonic, align 8
  %.not6.i.i.i33 = icmp eq ptr %i.gt, null
  br i1 %.not6.i.i.i33, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EE14delete_segmentEm(ptr noundef nonnull align 8 dereferenceable(65) %i.gl, i64 noundef %i.gr)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not.i.i.i34 = icmp eq i64 %i.gr, 0
  br i1 %.not.i.i.i34, label %_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EE14clear_segmentsEv.exit.i.i, label %bb.aa, !llvm.loop !867

_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EE14clear_segmentsEv.exit.i.i: ; preds = %bb.ac
  %i.gu = load atomic ptr, ptr %i.gm acquire, align 8 ; 2 uses
  %.not.i1.i.i35 = icmp eq ptr %i.gu, %i.go
  br i1 %.not.i1.i.i35, label %_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EED2Ev.exit, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EE14clear_segmentsEv.exit.i.i
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.gu) #19
  store atomic ptr %i.go, ptr %i.gm monotonic, align 8
  store atomic ptr null, ptr %i.go monotonic, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 4136
  store atomic ptr null, ptr %i.gv monotonic, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 4144
  store atomic ptr null, ptr %i.gw monotonic, align 8
  br label %_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EED2Ev.exit

_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EED2Ev.exit: ; preds = %_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EE14clear_segmentsEv.exit.i.i, %.lr.ph.i.i.i.i36
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 4160
  store atomic i64 0, ptr %i.gx monotonic, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 4152
  store atomic i64 0, ptr %i.gy monotonic, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 4048
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN4mold14DynamicPatternESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 4064
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !878
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #25
  br label %_ZNSt6vectorIN4mold14DynamicPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4mold14DynamicPatternESaIS1_EED2Ev.exit: ; preds = %_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EED2Ev.exit, %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 4024
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !879 ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4mold14DynamicPatternESaIS1_EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 4040
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !880
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4mold14DynamicPatternESaIS1_EED2Ev.exit, %bb.ae
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 4016 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !341, !range !58, !noundef !59
  %i.hp = trunc nuw i8 %i.ho to i1
  store i8 0, ptr %i.hn, align 8, !tbaa !341
  br i1 %i.hp, label %bb.af, label %_ZNSt14_Optional_baseIN3tbb6detail2d114global_controlELb0ELb0EED2Ev.exit

bb.af:                                            ; preds = %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 3992
  tail call void @_ZN3tbb6detail2r17destroyERNS0_2d114global_controlE(ptr noundef nonnull align 8 dereferenceable(32) %i.hq) #19
  br label %_ZNSt14_Optional_baseIN3tbb6detail2d114global_controlELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN3tbb6detail2d114global_controlELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit, %bb.af
  tail call void @_ZN4mold7ContextINS_6X86_64EEUt_D2Ev(ptr noundef nonnull align 8 dead_on_return(3992) dereferenceable(3992) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold9read_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %5 = alloca %"class.std::vector.366", align 8   ; 7 uses
  %6 = alloca %"struct.mold::ReaderContext", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.mold::Script", align 8      ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %10 = alloca %"class.mold::Fatal", align 8      ; 4 uses
  %i.a = tail call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #19
  switch i32 %i.a, label %bb.x [
    i32 2, label %._crit_edge.i.i
    i32 3, label %bb.b
    i32 4, label %bb.l
    i32 5, label %bb.l
    i32 6, label %bb.v
    i32 7, label %._crit_edge.i.i30
    i32 8, label %._crit_edge.i.i30
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !62
  store i8 0, ptr %i.b, align 8, !tbaa !64
  call fastcc void @_ZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(32) %4)
  %i.d = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.f = load i64, ptr %i.b, align 8, !tbaa !64
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !554, !range !58, !noundef !59
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.k = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.l = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA44_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.k, ptr noundef nonnull align 1 dereferenceable(44) @.str.47) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4moldL24check_file_compatibilityINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.n = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef 480, i64 noundef 8) #19 ; 12 uses
  tail call void @_ZN4mold9InputFileINS_6X86_64EEC2ERNS_7ContextIS1_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(480) %i.n, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #19
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4mold10SharedFileINS_6X86_64EEE, i64 16), ptr %i.n, align 8, !tbaa !373
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 328 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  store i64 0, ptr %i.q, align 8, !tbaa !62
  store i8 0, ptr %i.p, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  store i32 0, ptr %i.s, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, i8 0, i64 96, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12704
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12760
  %i.w = atomicrmw add ptr %i.v, i64 1 seq_cst, align 8, !noalias !889
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12752 ; 2 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8, !noalias !889
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = cmpxchg ptr %i.x, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !889 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i: ; preds = %bb.e, %bb.d
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.u, i64 noundef %i.w), !noalias !889
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !442, !noalias !889
  %i.ac = load i8, ptr %1, align 8, !tbaa !890, !range !58, !noundef !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store i8 %i.ac, ptr %i.ad, align 8, !tbaa !555
  tail call void @_ZN4mold10SharedFileINS_6X86_64EE5parseERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(480) %i.n, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !556 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !394 ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i
  %i.al = icmp ugt i64 %i.ak, 9223372036854775804
  br i1 %i.al, label %bb.g, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !63

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !557 ; 2 uses
  %.pre21.i = load ptr, ptr %i.af, align 8, !tbaa !557
  %.pre22.i = ptrtoint ptr %.pre21.i to i64
  %.pre23.i = ptrtoint ptr %.pre.i to i64
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i:  ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i
  %.pre-phi24.i = phi i64 [ %.pre23.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.aj, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i ]
  %.pre-phi.i = phi i64 [ %.pre22.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ai, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i ]
  %i.an = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ah, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i ] ; 2 uses
  %i.ao = phi ptr [ %i.am, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i ] ; 5 uses
  %i.ap = sub i64 %.pre-phi.i, %.pre-phi24.i      ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 4
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !558

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ao, ptr align 4 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10SharedFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i
  %i.ar = icmp eq i64 %i.ap, 4
  br i1 %i.ar, label %bb.j, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10SharedFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.an, align 4, !tbaa !546
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !546
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10SharedFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit.i

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10SharedFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.au = atomicrmw add ptr %i.at, i64 1 seq_cst, align 8, !noalias !891
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.aw = load atomic i64, ptr %i.av monotonic, align 8, !noalias !891
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %_ZN4moldL15new_shared_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE.exit

bb.k:                                             ; preds = %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10SharedFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit.i
  %i.ay = cmpxchg ptr %i.av, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !891 ; 0 uses
  br label %_ZN4moldL15new_shared_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE.exit

_ZN4moldL15new_shared_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE.exit: ; preds = %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10SharedFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit.i, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.ba = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  %i.bc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EE18internal_subscriptILb1EEERSC_m(ptr noundef nonnull align 8 dereferenceable(65) %i.az, i64 noundef %i.au), !noalias !891 ; 4 uses
  store ptr %i.ao, ptr %i.bc, align 8, !tbaa !394, !noalias !891
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !556, !noalias !891
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !395, !noalias !891
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.n, ptr %i.bf, align 8, !tbaa !398, !noalias !891
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4mold20read_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.366") align 8 %5, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #19
  %i.bg = load ptr, ptr %5, align 8, !tbaa !560   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !560 ; 2 uses
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.n

._crit_edge.loopexit:                             ; preds = %_ZN4mold13ReaderContextD2Ev.exit
  %.pre = load ptr, ptr %5, align 8, !tbaa !562
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.bp = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bg, %bb.l ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_1
begin_hunk_2_@_ZN4mold13ReaderContext10next_childEv:bb.a

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.i) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.af, ptr %i.b, align 8, !tbaa !394
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !556
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !395
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.aj, align 8, !tbaa !569
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN4moldL19read_archive_memberINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.mold::Warn", align 8        ; 17 uses
  %i.a = tail call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #19
  switch i32 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit [
    i32 2, label %bb.b
    i32 7, label %bb.i
    i32 8, label %bb.i
    i32 3, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !60
  %i.c = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !63

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !61
  store i64 %i.e, ptr %i.b, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.e, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !64
  store i8 %i.l, ptr %i.k, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !64
  call fastcc void @_ZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(32) %4)
  %i.o = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !64
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !60
  %i.t = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62   ; 8 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.j, label %._crit_edge.i.i10

bb.j:                                             ; preds = %bb.i
  %i.x = icmp slt i64 %i.v, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.y = add nuw i64 %i.v, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11, !prof !63

bb.m:                                             ; preds = %bb.l
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11: ; preds = %bb.l
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #28 ; 2 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !61
  store i64 %i.v, ptr %i.s, align 8, !tbaa !64
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11, %bb.i
  %i.ab = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %i.v, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12
  ]

bb.n:                                             ; preds = %._crit_edge.i.i10
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !64
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12

bb.o:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12: ; preds = %._crit_edge.i.i10, %bb.n, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.ad, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 0, ptr %i.ae, align 1, !tbaa !64
  call fastcc void @_ZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(32) %5)
  %i.af = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !64
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %6, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 408 ; 6 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58, !noundef !59
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit: ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.an = load ptr, ptr %3, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !62
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %i.an, i64 noundef %i.ap) #19 ; 0 uses
  %.pre = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.ar = trunc nuw i8 %.pre to i1
  br i1 %i.ar, label %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 1 dereferenceable(2) @.str.48, i64 noundef 1) #19 ; 0 uses
  %.pre17 = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.au = trunc nuw i8 %.pre17 to i1
  br i1 %i.au, label %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit16, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit16: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aw = load ptr, ptr %2, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !62
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.aw, i64 noundef %i.ay) #19 ; 0 uses
  %.pre18 = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.ba = trunc nuw i8 %.pre18 to i1
  br i1 %i.ba, label %_ZN4mold4WarnINS_6X86_64EElsIRA47_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA47_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit16
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 1 dereferenceable(47) @.str.49, i64 noundef 46) #19 ; 0 uses
  %.pre19 = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.bd = trunc nuw i8 %.pre19 to i1
  store i8 0, ptr %i.aj, align 8, !tbaa !571
  br i1 %i.bd, label %bb.q, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.q:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA47_KcEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %6)
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !373
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %i.bi
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !373
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !373
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bm, align 8, !tbaa !373
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !61 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #25
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bm, align 8, !tbaa !373
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #19
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %i.be, align 8, !tbaa !373
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.be, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !373
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.bz, align 8, !tbaa !431
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 136
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #19
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EED2Ev.exit:              ; preds = %bb.p, %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit16, %_ZN4mold4WarnINS_6X86_64EElsIRA47_KcEERS2_OT_.exit, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a, %_ZN4mold4WarnINS_6X86_64EED2Ev.exit
  ret void
}

declare void @_ZN4mold6ScriptINS_6X86_64EE19parse_linker_scriptEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = load atomic i8, ptr @_ZGVZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !565

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4mold7CounterC2ESt17basic_string_viewIcSt11char_traitsIcEEl(ptr noundef nonnull align 8 dereferenceable(120) @_ZZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count, i64 15, ptr nonnull @.str.50, i64 noundef 0)
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4mold7CounterD2Ev, ptr nonnull @_ZZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZN4mold7Counter7enabledE, align 1, !tbaa !566, !range !58, !noundef !59
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %_ZN4mold7CounterppEi.exit, !prof !63

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) getelementptr inbounds nuw (i8, ptr @_ZZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count, i64 16), ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = add nsw i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !44
  br label %_ZN4mold7CounterppEi.exit

_ZN4mold7CounterppEi.exit:                        ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3616
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZNK4mold10MappedFile14get_identifierB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %i.l = load ptr, ptr %5, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !62
  store i64 %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = call ptr @_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %.not.i.i.not = icmp eq ptr %i.p, null
  %i.q = load ptr, ptr %5, align 8, !tbaa !61     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4mold7CounterppEi.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !64
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4mold7CounterppEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not.i.i.not, label %bb.f, label %bb.q

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call noundef ptr @_ZN4mold15read_lto_objectINS_6X86_64EEEPNS_10ObjectFileIT_EERNS_7ContextIS3_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull %2) #19 ; 4 uses
  %.not9 = icmp eq ptr %i.v, null
  br i1 %.not9, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !567, !range !58, !noundef !59
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !568, !range !58, !noundef !59
  %i.af = xor i8 %i.ae, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.ag = phi i8 [ 1, %bb.g ], [ 0, %bb.h ], [ %i.af, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  store i8 %i.ag, ptr %i.ah, align 8, !tbaa !555
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !556 ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !394 ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp ugt i64 %i.ap, 9223372036854775804
  br i1 %i.aq, label %bb.l, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !63

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !557 ; 2 uses
  %.pre15 = load ptr, ptr %i.ak, align 8, !tbaa !557
  %.pre16 = ptrtoint ptr %.pre15 to i64
  %.pre17 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i:    ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.j
  %.pre-phi18 = phi i64 [ %.pre17, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ao, %bb.j ]
  %.pre-phi = phi i64 [ %.pre16, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.an, %bb.j ]
  %i.as = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.am, %bb.j ] ; 2 uses
  %i.at = phi ptr [ %i.ar, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.j ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ap
  %i.av = sub i64 %.pre-phi, %.pre-phi18          ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 4
  br i1 %i.aw, label %bb.m, label %bb.n, !prof !558

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.at, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i
  %i.ax = icmp eq i64 %i.av, 4
  br i1 %i.ax, label %bb.o, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !546
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !546
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.az = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.bb = atomicrmw add ptr %i.ba, i64 1 seq_cst, align 8, !noalias !906
end_hunk_2
begin_hunk_3_@_ZN4mold7ContextINS_6X86_64EEUt_D2Ev:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !61 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !64
  %i.go = add i64 %i.gn, 1
  tail call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !61 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 3296 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !64
  %i.gu = add i64 %i.gt, 1
  tail call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !61 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !64
  %i.ha = add i64 %i.gz, 1
  tail call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !61 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !64
  %i.hg = add i64 %i.hf, 1
  tail call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !61 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !64
  %i.hm = add i64 %i.hl, 1
  tail call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !61 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !64
  %i.hs = add i64 %i.hr, 1
  tail call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !61 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !64
  %i.hy = add i64 %i.hx, 1
  tail call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !61 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !64
  %i.ie = add i64 %i.id, 1
  tail call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !61 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !64
  %i.ik = add i64 %i.ij, 1
  tail call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !61 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !64
  %i.iq = add i64 %i.ip, 1
  tail call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !61 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !64
  %i.iw = add i64 %i.iv, 1
  tail call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !61 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !64
  %i.jc = add i64 %i.jb, 1
  tail call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !61 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 2944 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !64
  %i.ji = add i64 %i.jh, 1
  tail call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !61 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !64
  %i.jo = add i64 %i.jn, 1
  tail call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !61 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2880 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !64
  %i.ju = add i64 %i.jt, 1
  tail call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !343, !range !58, !noundef !59
  %i.jx = trunc nuw i8 %i.jw to i1
  store i8 0, ptr %i.jv, align 8, !tbaa !343
  br i1 %i.jx, label %bb.r, label %_ZNSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !581 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !582
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.jz to i64
  %i.ke = sub i64 %i.kc, %i.kd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.ke) #25
  br label %_ZNSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.r, %bb.s
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1336
  tail call void @_ZN4mold4GlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1280) dereferenceable(1280) %i.kf) #19
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4mold4GlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1280) dereferenceable(1280) %i.kg) #19
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !932 ; 3 uses
  %.not.i.i.i.i113 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i113, label %_ZN4mold7BuildIdD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EED2Ev.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !933
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = sub i64 %i.kl, %i.km
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kn) #25
  br label %_ZN4mold7BuildIdD2Ev.exit

_ZN4mold7BuildIdD2Ev.exit:                        ; preds = %_ZNSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EED2Ev.exit, %bb.t
  ret void
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !934
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !546  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !546
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !373
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !934
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(570) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i64 0, ptr %i.c monotonic, align 8
  %i.d = or i64 %i.b, 1
  %i.e = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = sub nuw nsw i64 64, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit, %bb.a
  %.02024 = phi i64 [ %i.f, %bb.a ], [ %i.h, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit ] ; 2 uses
  %i.h = add nsw i64 %.02024, -1                  ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.l = load atomic ptr, ptr %i.i monotonic, align 8
  %i.m = icmp ult i64 %.02024, 9
  %i.n = icmp ne i64 %i.h, 1
  %.not.i = and i1 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.l) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %cond = icmp eq i64 %i.h, 0
  br i1 %cond, label %bb.h, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit: ; preds = %bb.e
  store atomic ptr null, ptr %i.i monotonic, align 8
  br label %bb.b

bb.f:                                             ; preds = %bb.b, %._crit_edge
  %.01923 = phi i64 [ 0, %bb.b ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.01923
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = icmp ugt ptr %i.q, inttoptr (i64 63 to ptr)
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSH_13spin_rw_mutexEEE.exit, %bb.f
  %i.s = add i64 %.01923, 1                       ; 2 uses
  %.019.highbits = lshr i64 %i.s, %i.k
  %i.t = icmp eq i64 %.019.highbits, 0
  br i1 %i.t, label %bb.f, label %bb.c, !llvm.loop !935

.lr.ph:                                           ; preds = %bb.f, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSH_13spin_rw_mutexEEE.exit
  %.022 = phi ptr [ %i.al, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSH_13spin_rw_mutexEEE.exit ], [ %i.q, %bb.f ] ; 5 uses
  %i.u = load ptr, ptr %.022, align 8, !tbaa !942
  store atomic ptr %i.u, ptr %i.p monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.022, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !578  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.022, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !579  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !64
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !578
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph
  %i.af = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSH_13spin_rw_mutexEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.022, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !580
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #25
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSH_13spin_rw_mutexEEE.exit

_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE11delete_nodeEPNS1_18hash_map_node_baseINSH_13spin_rw_mutexEEE.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i.i, %bb.g
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.022) #19
  %i.al = load atomic ptr, ptr %i.p monotonic, align 8 ; 2 uses
  %i.am = icmp ugt ptr %i.al, inttoptr (i64 63 to ptr)
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !936

bb.h:                                             ; preds = %bb.e
  store atomic i64 1, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13OutputSectionINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE14clear_segmentsEv(ptr noundef nonnull align 8 dereferenceable(65) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = select i1 %i.d, i64 3, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN4mold14must_open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !64
  store i8 %i.k, ptr %i.j, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !64
  %i.n = call noundef ptr @_ZN4mold9open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load i64, ptr %i.a, align 8, !tbaa !64
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.s = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA13_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.41)
  %i.t = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.u = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA3_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4mold12errno_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4) #19
  %i.v = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #26
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold12open_libraryINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EERNS_13ReaderContextENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nofree noundef align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.mold::Warn", align 8        ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !60
  %i.b = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !63

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !61
  store i64 %i.d, ptr %i.a, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !64
  store i8 %i.k, ptr %i.j, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !64
  %i.n = call noundef ptr @_ZN4mold9open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) ; 4 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load i64, ptr %i.a, align 8, !tbaa !64
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = call { i64, ptr } @_ZN4mold16get_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.n) #19 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 3 uses
  switch i64 %i.t, label %bb.j [
    i64 0, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
    i64 6, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 1597388920
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = xor i32 %i.z, 13366
  %i.ab = or i32 %i.w, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 408 ; 8 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !571, !range !58, !noundef !59
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aj = load ptr, ptr %2, align 8, !tbaa !61
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !62
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i64 noundef %i.ak) #19 ; 0 uses
  %.pre = load i8, ptr %i.af, align 8, !tbaa !571, !range !58
  %i.am = trunc nuw i8 %.pre to i1
  br i1 %i.am, label %_ZN4mold4WarnINS_6X86_64EElsIRA31_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA31_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 1 dereferenceable(31) @.str.38, i64 noundef 30) #19 ; 0 uses
  %.pre13 = load i8, ptr %i.af, align 8, !tbaa !571, !range !58
  %i.ap = trunc nuw i8 %.pre13 to i1
  br i1 %i.ap, label %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA31_KcEERS2_OT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.u, i64 noundef %i.t) #19 ; 0 uses
  %.pre14 = load i8, ptr %i.af, align 8, !tbaa !571, !range !58
  %i.as = trunc nuw i8 %.pre14 to i1
  br i1 %i.as, label %_ZN4mold4WarnINS_6X86_64EElsIRA13_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA13_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 1 dereferenceable(13) @.str.39, i64 noundef 12) #19 ; 0 uses
  %.pre15 = load i8, ptr %i.af, align 8, !tbaa !571, !range !58
  %i.av = trunc nuw i8 %.pre15 to i1
  br i1 %i.av, label %_ZN4mold4WarnINS_6X86_64EElsIiEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIiEERS2_OT_.exit:     ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA13_KcEERS2_OT_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef 62) #19 ; 0 uses
  %.pre16 = load i8, ptr %i.af, align 8, !tbaa !571, !range !58
  %i.ay = trunc nuw i8 %.pre16 to i1
  br i1 %i.ay, label %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIiEERS2_OT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 1 dereferenceable(2) @.str.40, i64 noundef 1) #19 ; 0 uses
  %.pre17 = load i8, ptr %i.af, align 8, !tbaa !571, !range !58
  %i.bb = trunc nuw i8 %.pre17 to i1
  store i8 0, ptr %i.af, align 8, !tbaa !571
  br i1 %i.bb, label %bb.k, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.k:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %4)
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bd = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !373
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !373
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !373
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !373
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !64
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #25
  br label %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !373
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #19
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bs, ptr %i.bc, align 8, !tbaa !373
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bc, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !373
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.bx, align 8, !tbaa !431
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.by) #19
  br label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EED2Ev.exit:              ; preds = %bb.j, %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA31_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA13_KcEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIiEERS2_OT_.exit, %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit, %_ZNSt22_Optional_payload_baseIN4mold10SyncStreamEE10_M_destroyEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %bb.h, %_ZN4mold4WarnINS_6X86_64EED2Ev.exit, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZN4mold4WarnINS_6X86_64EED2Ev.exit ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  ret ptr %.1
}

declare void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416), ptr noundef nonnull align 8 dereferenceable(14448)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA13_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(13) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #19
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.b) #19 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA3_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %1) #19
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 noundef %i.b) #19 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %1, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b, i64 noundef %i.d) #19 ; 0 uses
  ret ptr %0
}

declare void @_ZN4mold12errno_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE18internal_subscriptILb1EEERS4_m(ptr noundef nonnull align 8 dereferenceable(65) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"struct.tbb::detail::d0::try_call_proxy.692", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = or i64 %1, 1
  %i.d = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true) ; 3 uses
  %i.e = xor i64 %i.d, 63                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 4 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = add i64 %1, -8
  %i.k = icmp ult i64 %i.j, -9
  %or.cond.i = and i1 %i.k, %i.i
  br i1 %or.cond.i, label %bb.b, label %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS4_Emm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 9
  br i1 %i.l, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %0, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableIN4mold9ReaderJobENS3_23cache_aligned_allocatorIS6_EENS3_17concurrent_vectorIS6_S8_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS6_EmmEUlvE_E12on_exceptionIZNSB_25extend_table_if_necessaryESG_mmEUlvE0_EEvT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull align 8 dereferenceable(65) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !635
  br label %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS4_Emm.exit

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.n = load atomic i8, ptr %i.m monotonic, align 8, !range !58, !noundef !59
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = icmp slt i32 %.sroa.0.0.i, 17
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i32 %.sroa.0.0.i, 0
  br i1 %i.q, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %xtraiter = and i32 %.sroa.0.0.i, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.r, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.r = add nsw i32 %.01.i.i.i.prol, -1          ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1151

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.0.i, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i32 %.sroa.0.0.i, 8
  br i1 %i.s, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.t, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.t = add nsw i32 %.01.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.u = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.g
  %i.v = shl i32 %.sroa.0.0.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = tail call noundef i32 @sched_yield() #19 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.h, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.v, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i ], [ %.sroa.0.0.i, %bb.h ]
  %i.x = load atomic ptr, ptr %i.f acquire, align 8 ; 3 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !635
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %bb.d, label %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS4_Emm.exit, !llvm.loop !1152

_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS4_Emm.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %bb.a, %bb.c
  %i.z = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.a ], [ %i.x, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.e
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 2 uses
end_hunk_4
