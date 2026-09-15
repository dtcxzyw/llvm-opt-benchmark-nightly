Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/JSONSchema?download=true
inline.NumInlined: 9470
inline.NumDeleted: 4163
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.se, align 8, !tbaa !475, !noalias !11076
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  store i32 0, ptr %i.si, align 4, !tbaa !476, !noalias !11076
  %i.sj = load ptr, ptr %i.sd, align 8, !tbaa !436, !noalias !11076
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !noalias !11076
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(16) %i.sd) #23, !noalias !11076, !call_target !481, !inline_history !10797
  %i.sm = load ptr, ptr %i.sd, align 8, !tbaa !436, !noalias !11076
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !noalias !11076
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(16) %i.sd) #23, !noalias !11076, !call_target !496, !inline_history !10797
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.sp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11076
  %.not.i.i.i.i.i.i = icmp eq i8 %i.sp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sq = add nsw i32 %i.sh, -1
  store i32 %i.sq, ptr %i.se, align 8, !tbaa !542, !noalias !11076
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.sr = atomicrmw volatile add ptr %i.se, i32 -1 acq_rel, align 4, !noalias !11076
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sh, %bb.dm ], [ %i.sr, %bb.dn ]
  %i.ss = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ss, label %bb.do, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i, !prof !425

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sd) #23, !noalias !11076
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i: ; preds = %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dk, %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEaSERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !11076
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.body.i.i:                                        ; preds = %bb.cy
  %i.st = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost13re_detail_50026basic_regex_implementationIcNS0_12regex_traitsIcNS0_16cpp_regex_traitsIcEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #23, !noalias !11076
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !11076
  call void @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qv) #23, !noalias !11076
  call void @_ZdlPvm(ptr noundef nonnull %i.qu, i64 noundef 24) #47, !noalias !11076
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.cx, %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i
  store ptr %i.qu, ptr %29, align 8, !tbaa !8374, !alias.scope !11076
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !8351 ; 6 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !8352
  %.not.i298 = icmp eq ptr %i.sv, %i.sx
  br i1 %.not.i298, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.qu, ptr %i.sv, align 8, !tbaa !8354
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  store ptr %i.sy, ptr %i.su, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit

bb.dq:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i299 = load ptr, ptr %i.qt, align 8, !tbaa !8355 ; 10 uses
  %i.sz = ptrtoint ptr %i.sv to i64               ; 3 uses
  %i.ta = ptrtoint ptr %.val.i.i299 to i64        ; 4 uses
  %i.tb = sub i64 %i.sz, %i.ta                    ; 3 uses
  %i.tc = icmp eq i64 %i.tb, 9223372036854775800
  br i1 %i.tc, label %bb.dr, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc311 unwind label %bb.dt

.noexc311:                                        ; preds = %bb.dr
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300: ; preds = %bb.dq
  %i.td = ashr exact i64 %i.tb, 3                 ; 3 uses
  %i.te = icmp eq ptr %i.sv, %.val.i.i299         ; 2 uses
  %.sroa.speculated.i.i.i301 = select i1 %i.te, i64 1, i64 %i.td
  %i.tf = add nsw i64 %.sroa.speculated.i.i.i301, %i.td ; 2 uses
  %i.tg = icmp ult i64 %i.tf, %i.td
  %i.th = call i64 @llvm.umin.i64(i64 %i.tf, i64 1152921504606846975)
  %i.ti = select i1 %i.tg, i64 1152921504606846975, i64 %i.th ; 3 uses
  %.not.i.i.i302 = icmp ne i64 %i.ti, 0
  call void @llvm.assume(i1 %.not.i.i.i302)
  %i.tj = shl nuw nsw i64 %i.ti, 3
  %i.tk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tj) #46
          to label %.noexc312 unwind label %bb.dt ; 10 uses

.noexc312:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tb
  store ptr %i.qu, ptr %i.tl, align 8, !tbaa !8354
  br i1 %i.te, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308, label %.lr.ph.i.i.i.i.i303.preheader

.lr.ph.i.i.i.i.i303.preheader:                    ; preds = %.noexc312
  %i.tm = add i64 %i.sz, -8
  %i.tn = sub i64 %i.tm, %i.ta                    ; 2 uses
  %i.to = lshr i64 %i.tn, 3
  %i.tp = add nuw nsw i64 %i.to, 1                ; 2 uses
  %min.iters.check2533 = icmp ult i64 %i.tn, 136
  br i1 %min.iters.check2533, label %.lr.ph.i.i.i.i.i303.preheader3022, label %vector.memcheck2526

vector.memcheck2526:                              ; preds = %.lr.ph.i.i.i.i.i303.preheader
  %i.tq = add i64 %i.sz, -8
  %i.tr = sub i64 %i.tq, %i.ta
  %i.ts = and i64 %i.tr, -8
  %i.tt = add i64 %i.ts, 8                        ; 2 uses
  %scevgep2527 = getelementptr i8, ptr %i.tk, i64 %i.tt
  %scevgep2528 = getelementptr i8, ptr %.val.i.i299, i64 %i.tt
  %bound02529 = icmp ult ptr %i.tk, %scevgep2528
  %bound12530 = icmp ult ptr %.val.i.i299, %scevgep2527
  %found.conflict2531 = and i1 %bound02529, %bound12530
  br i1 %found.conflict2531, label %.lr.ph.i.i.i.i.i303.preheader3022, label %vector.ph2534

vector.ph2534:                                    ; preds = %vector.memcheck2526
  %n.vec2535 = and i64 %i.tp, 4611686018427387900 ; 3 uses
  %i.tu = shl i64 %n.vec2535, 3                   ; 2 uses
  %i.tv = getelementptr i8, ptr %i.tk, i64 %i.tu  ; 2 uses
  %i.tw = getelementptr i8, ptr %.val.i.i299, i64 %i.tu
  br label %vector.body2536

vector.body2536:                                  ; preds = %vector.body2536, %vector.ph2534
  %index2537 = phi i64 [ 0, %vector.ph2534 ], [ %index.next2542, %vector.body2536 ] ; 2 uses
  %i.tx = shl i64 %index2537, 3                   ; 2 uses
  %next.gep2538 = getelementptr i8, ptr %i.tk, i64 %i.tx ; 2 uses
  %next.gep2539 = getelementptr i8, ptr %.val.i.i299, i64 %i.tx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11077)
  call void @llvm.experimental.noalias.scope.decl(metadata !11078)
  %i.ty = getelementptr i8, ptr %next.gep2539, i64 16
  %wide.load2540 = load <2 x i64>, ptr %next.gep2539, align 8, !tbaa !466, !alias.scope !11079, !noalias !11077
  %wide.load2541 = load <2 x i64>, ptr %i.ty, align 8, !tbaa !466, !alias.scope !11079, !noalias !11077
  %i.tz = getelementptr i8, ptr %next.gep2538, i64 16
  store <2 x i64> %wide.load2540, ptr %next.gep2538, align 8, !tbaa !466, !alias.scope !11080, !noalias !11079
  store <2 x i64> %wide.load2541, ptr %i.tz, align 8, !tbaa !466, !alias.scope !11080, !noalias !11079
  %i.ua = getelementptr i8, ptr %next.gep2539, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2539, align 8, !tbaa !466, !alias.scope !11079, !noalias !11077
  store <2 x ptr> splat (ptr null), ptr %i.ua, align 8, !tbaa !466, !alias.scope !11079, !noalias !11077
  %index.next2542 = add nuw i64 %index2537, 4     ; 2 uses
  %i.ub = icmp eq i64 %index.next2542, %n.vec2535
  br i1 %i.ub, label %middle.block2543, label %vector.body2536, !llvm.loop !10804

middle.block2543:                                 ; preds = %vector.body2536
  %cmp.n2544 = icmp eq i64 %i.tp, %n.vec2535
  br i1 %cmp.n2544, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308, label %.lr.ph.i.i.i.i.i303.preheader3022

.lr.ph.i.i.i.i.i303.preheader3022:                ; preds = %vector.memcheck2526, %.lr.ph.i.i.i.i.i303.preheader, %middle.block2543
  %.03.i.i.i.i.i304.ph = phi ptr [ %i.tk, %vector.memcheck2526 ], [ %i.tk, %.lr.ph.i.i.i.i.i303.preheader ], [ %i.tv, %middle.block2543 ]
  %.092.i.i.i.i.i305.ph = phi ptr [ %.val.i.i299, %vector.memcheck2526 ], [ %.val.i.i299, %.lr.ph.i.i.i.i.i303.preheader ], [ %i.tw, %middle.block2543 ]
  br label %.lr.ph.i.i.i.i.i303

.lr.ph.i.i.i.i.i303:                              ; preds = %.lr.ph.i.i.i.i.i303.preheader3022, %.lr.ph.i.i.i.i.i303
  %.03.i.i.i.i.i304 = phi ptr [ %i.ud, %.lr.ph.i.i.i.i.i303 ], [ %.03.i.i.i.i.i304.ph, %.lr.ph.i.i.i.i.i303.preheader3022 ] ; 2 uses
  %.092.i.i.i.i.i305 = phi ptr [ %i.uc, %.lr.ph.i.i.i.i.i303 ], [ %.092.i.i.i.i.i305.ph, %.lr.ph.i.i.i.i.i303.preheader3022 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11077)
  call void @llvm.experimental.noalias.scope.decl(metadata !11078)
  %.val.i.i.i.i.i.i.i.i.i.i306 = load i64, ptr %.092.i.i.i.i.i305, align 8, !tbaa !466, !alias.scope !11078, !noalias !11077
  store i64 %.val.i.i.i.i.i.i.i.i.i.i306, ptr %.03.i.i.i.i.i304, align 8, !tbaa !466, !alias.scope !11077, !noalias !11078
  store ptr null, ptr %.092.i.i.i.i.i305, align 8, !tbaa !466, !alias.scope !11078, !noalias !11077
  %i.uc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i305, i64 8 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i304, i64 8 ; 2 uses
  %.not.i.i.i.i.i307 = icmp eq ptr %i.uc, %i.sv
  br i1 %.not.i.i.i.i.i307, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308, label %.lr.ph.i.i.i.i.i303, !llvm.loop !10805

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308: ; preds = %.lr.ph.i.i.i.i.i303, %middle.block2543, %.noexc312
  %.0.lcssa.i.i.i.i.i309 = phi ptr [ %i.tk, %.noexc312 ], [ %i.tv, %middle.block2543 ], [ %i.ud, %.lr.ph.i.i.i.i.i303 ]
  %i.ue = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i309, i64 8
  %.not.i28.i.i310 = icmp eq ptr %.val.i.i299, null
  br i1 %.not.i28.i.i310, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308
  %i.uf = load ptr, ptr %i.sw, align 8, !tbaa !8352
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = sub i64 %i.ug, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i299, i64 noundef %i.uh) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.ds, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308
  store ptr %i.tk, ptr %i.qt, align 8, !tbaa !8355
  store ptr %i.ue, ptr %i.su, align 8, !tbaa !8351
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.ti
  store ptr %i.ui, ptr %i.sw, align 8, !tbaa !8352
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.dp, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.du

bb.dt:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300, %bb.dr
  %i.uj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %common.resume

bb.du:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit
  %i.uk = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.45, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 5)) ; 6 uses
  %i.ul = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.46, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 15)) ; 5 uses
  %i.um = icmp ne ptr %i.uk, null
  %i.un = icmp ne ptr %i.ul, null
  %or.cond = or i1 %i.um, %i.un
  br i1 %or.cond, label %bb.dv, label %bb.ev

bb.dv:                                            ; preds = %bb.du
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.up = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46, !noalias !11081, !inline_history !10808 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE, i64 16), ptr %i.up, align 8, !tbaa !436, !noalias !11081
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8 ; 6 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 16 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 40 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.uq, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.ut, align 8, !tbaa !8384, !noalias !11081
  %.not.i663 = icmp eq ptr %i.uk, null
  br i1 %.not.i663, label %.critedge.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.uu = load i32, ptr %i.uk, align 8, !tbaa !8339, !noalias !11081
  switch i32 %i.uu, label %.critedge.i [
    i32 5, label %bb.dx
    i32 1, label %_ZNK5folly7dynamic3endEv.exit.i
  ]

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !11082)
  %i.uv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc.i unwind label %bb.dz  ; 6 uses

.noexc.i:                                         ; preds = %bb.dx
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.uv, align 8, !tbaa !436, !noalias !11083
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.uw, align 8, !tbaa !436, !noalias !11083
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ux, i8 0, i64 24, i1 false), !noalias !11083
  store ptr %i.uv, ptr %12, align 8, !tbaa !438, !alias.scope !11082, !noalias !11081
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.uv, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.uk)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i unwind label %bb.dy, !noalias !11084, !inline_history !10813

bb.dy:                                            ; preds = %.noexc.i
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23, !noalias !11081, !inline_history !10813
  br label %.body.i667

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i: ; preds = %.noexc.i
  %i.uz = load ptr, ptr %i.uq, align 8, !tbaa !466, !noalias !11081 ; 3 uses
  store ptr %i.uv, ptr %i.uq, align 8, !tbaa !466, !noalias !11081
  %.not.i.i.i36.i = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i36.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i669

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i669: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !436, !noalias !11081
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !noalias !11081
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(8) %i.uz) #23, !noalias !11081, !call_target !8389, !inline_history !10814
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i669
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !11081
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.dz:                                            ; preds = %bb.dx
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i667

.body.i667:                                       ; preds = %bb.dz, %bb.dy
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.vd, %bb.dz ], [ %i.uy, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !11081
  br label %bb.ep

_ZNK5folly7dynamic3endEv.exit.i:                  ; preds = %bb.dw
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !440, !noalias !11081 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !440, !noalias !11081 ; 2 uses
  %i.vi = icmp eq ptr %i.vf, %i.vh
  br i1 %i.vi, label %.loopexit1074, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly7dynamic3endEv.exit.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.up, i64 24 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.up, i64 32 ; 3 uses
  br label %bb.ea

bb.ea:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i
  %.sroa.0987.01198 = phi ptr [ %i.vf, %.lr.ph ], [ %i.xa, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !11085)
  %i.vl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc42.i unwind label %bb.eg ; 6 uses

.noexc42.i:                                       ; preds = %bb.ea
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72)>, ptr %i.vl, align 8, !tbaa !436, !noalias !11086
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vm, i8 0, i64 24, i1 false), !noalias !11086
  store ptr %i.vl, ptr %13, align 8, !tbaa !438, !alias.scope !11085, !noalias !11081
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.vl, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0987.01198)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i unwind label %bb.eb, !noalias !11087, !inline_history !10813

bb.eb:                                            ; preds = %.noexc42.i
  %i.vn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23, !noalias !11081, !inline_history !10813
  br label %bb.ei

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i: ; preds = %.noexc42.i
  %i.vo = load ptr, ptr %i.vj, align 8, !tbaa !8351, !noalias !11081 ; 6 uses
  %i.vp = load ptr, ptr %i.vk, align 8, !tbaa !8352, !noalias !11081
  %.not.i46.i = icmp eq ptr %i.vo, %i.vp
  br i1 %.not.i46.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i
  store ptr %i.vl, ptr %i.vo, align 8, !tbaa !8354, !noalias !11081
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store ptr %i.vq, ptr %i.vj, align 8, !tbaa !8351, !noalias !11081
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i

bb.ed:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i
  %.val.i.i.i = load ptr, ptr %i.ur, align 8, !tbaa !8355, !noalias !11081 ; 10 uses
  %i.vr = ptrtoint ptr %i.vo to i64               ; 3 uses
  %i.vs = ptrtoint ptr %.val.i.i.i to i64         ; 4 uses
  %i.vt = sub i64 %i.vr, %i.vs                    ; 3 uses
  %i.vu = icmp eq i64 %i.vt, 9223372036854775800
  br i1 %i.vu, label %bb.ee, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc48.i unwind label %.loopexit.split-lp1076, !noalias !11081, !inline_history !10819

.noexc48.i:                                       ; preds = %bb.ee
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ed
  %i.vv = ashr exact i64 %i.vt, 3                 ; 3 uses
  %i.vw = icmp eq ptr %i.vo, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.vw, i64 1, i64 %i.vv
  %i.vx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.vv ; 2 uses
  %i.vy = icmp ult i64 %i.vx, %i.vv
  %i.vz = call i64 @llvm.umin.i64(i64 %i.vx, i64 1152921504606846975)
  %i.wa = select i1 %i.vy, i64 1152921504606846975, i64 %i.vz ; 3 uses
  %.not.i.i.i47.i = icmp ne i64 %i.wa, 0
  call void @llvm.assume(i1 %.not.i.i.i47.i), !noalias !11081
  %i.wb = shl nuw nsw i64 %i.wa, 3
  %i.wc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wb) #46
          to label %.noexc49.i unwind label %.loopexit1075, !noalias !11081, !inline_history !10819 ; 10 uses

.noexc49.i:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.vt
  store ptr %i.vl, ptr %i.wd, align 8, !tbaa !8354, !noalias !11081
  br i1 %i.vw, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i665.preheader

.lr.ph.i.i.i.i.i.i665.preheader:                  ; preds = %.noexc49.i
  %i.we = add i64 %i.vr, -8
  %i.wf = sub i64 %i.we, %i.vs                    ; 2 uses
  %i.wg = lshr i64 %i.wf, 3
  %i.wh = add nuw nsw i64 %i.wg, 1                ; 2 uses
  %min.iters.check2556 = icmp ult i64 %i.wf, 56
  br i1 %min.iters.check2556, label %.lr.ph.i.i.i.i.i.i665.preheader3020, label %vector.memcheck2547

vector.memcheck2547:                              ; preds = %.lr.ph.i.i.i.i.i.i665.preheader
  %scevgep2548 = getelementptr i8, ptr %i.wc, i64 8
  %i.wi = add i64 %i.vr, -8
  %i.wj = sub i64 %i.wi, %i.vs
  %i.wk = and i64 %i.wj, -8                       ; 2 uses
  %scevgep2549 = getelementptr i8, ptr %scevgep2548, i64 %i.wk
  %scevgep2550 = getelementptr i8, ptr %.val.i.i.i, i64 8
  %scevgep2551 = getelementptr i8, ptr %scevgep2550, i64 %i.wk
  %bound02552 = icmp ult ptr %i.wc, %scevgep2551
  %bound12553 = icmp ult ptr %.val.i.i.i, %scevgep2549
  %found.conflict2554 = and i1 %bound02552, %bound12553
  br i1 %found.conflict2554, label %.lr.ph.i.i.i.i.i.i665.preheader3020, label %vector.ph2557

vector.ph2557:                                    ; preds = %vector.memcheck2547
  %n.vec2558 = and i64 %i.wh, 4611686018427387900 ; 3 uses
  %i.wl = shl i64 %n.vec2558, 3                   ; 2 uses
  %i.wm = getelementptr i8, ptr %i.wc, i64 %i.wl  ; 2 uses
  %i.wn = getelementptr i8, ptr %.val.i.i.i, i64 %i.wl
  br label %vector.body2559

vector.body2559:                                  ; preds = %vector.body2559, %vector.ph2557
  %index2560 = phi i64 [ 0, %vector.ph2557 ], [ %index.next2565, %vector.body2559 ] ; 2 uses
  %i.wo = shl i64 %index2560, 3                   ; 2 uses
  %next.gep2561 = getelementptr i8, ptr %i.wc, i64 %i.wo ; 2 uses
  %next.gep2562 = getelementptr i8, ptr %.val.i.i.i, i64 %i.wo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11088), !noalias !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !11089), !noalias !11081
  %i.wp = getelementptr i8, ptr %next.gep2562, i64 16
  %wide.load2563 = load <2 x i64>, ptr %next.gep2562, align 8, !tbaa !466, !alias.scope !11090, !noalias !11091
  %wide.load2564 = load <2 x i64>, ptr %i.wp, align 8, !tbaa !466, !alias.scope !11090, !noalias !11091
  %i.wq = getelementptr i8, ptr %next.gep2561, i64 16
  store <2 x i64> %wide.load2563, ptr %next.gep2561, align 8, !tbaa !466, !alias.scope !11092, !noalias !11093
  store <2 x i64> %wide.load2564, ptr %i.wq, align 8, !tbaa !466, !alias.scope !11092, !noalias !11093
  %i.wr = getelementptr i8, ptr %next.gep2562, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2562, align 8, !tbaa !466, !alias.scope !11090, !noalias !11091
  store <2 x ptr> splat (ptr null), ptr %i.wr, align 8, !tbaa !466, !alias.scope !11090, !noalias !11091
  %index.next2565 = add nuw i64 %index2560, 4     ; 2 uses
  %i.ws = icmp eq i64 %index.next2565, %n.vec2558
  br i1 %i.ws, label %middle.block2566, label %vector.body2559, !llvm.loop !10826

middle.block2566:                                 ; preds = %vector.body2559
  %cmp.n2567 = icmp eq i64 %i.wh, %n.vec2558
  br i1 %cmp.n2567, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i665.preheader3020

.lr.ph.i.i.i.i.i.i665.preheader3020:              ; preds = %vector.memcheck2547, %.lr.ph.i.i.i.i.i.i665.preheader, %middle.block2566
  %.03.i.i.i.i.i.i.ph = phi ptr [ %i.wc, %vector.memcheck2547 ], [ %i.wc, %.lr.ph.i.i.i.i.i.i665.preheader ], [ %i.wm, %middle.block2566 ]
  %.092.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i, %vector.memcheck2547 ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.i.i665.preheader ], [ %i.wn, %middle.block2566 ]
  br label %.lr.ph.i.i.i.i.i.i665

.lr.ph.i.i.i.i.i.i665:                            ; preds = %.lr.ph.i.i.i.i.i.i665.preheader3020, %.lr.ph.i.i.i.i.i.i665
  %.03.i.i.i.i.i.i = phi ptr [ %i.wu, %.lr.ph.i.i.i.i.i.i665 ], [ %.03.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i665.preheader3020 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.wt, %.lr.ph.i.i.i.i.i.i665 ], [ %.092.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i665.preheader3020 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11088), !noalias !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !11089), !noalias !11081
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11089, !noalias !11091
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11088, !noalias !11094
  store ptr null, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11089, !noalias !11091
  %i.wt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i666 = icmp eq ptr %i.wt, %i.vo
  br i1 %.not.i.i.i.i.i.i666, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i665, !llvm.loop !10827

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i665, %middle.block2566, %.noexc49.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.wc, %.noexc49.i ], [ %i.wm, %middle.block2566 ], [ %i.wu, %.lr.ph.i.i.i.i.i.i665 ]
  %i.wv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i
  %i.ww = load ptr, ptr %i.vk, align 8, !tbaa !8352, !noalias !11081
  %i.wx = ptrtoint ptr %i.ww to i64
  %i.wy = sub i64 %i.wx, %i.vs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.wy) #47, !noalias !11081, !inline_history !10819
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.ef, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i
  store ptr %i.wc, ptr %i.ur, align 8, !tbaa !8355, !noalias !11081
  store ptr %i.wv, ptr %i.vj, align 8, !tbaa !8351, !noalias !11081
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %i.wa
  store ptr %i.wz, ptr %i.vk, align 8, !tbaa !8352, !noalias !11081
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i: ; preds = %bb.ec, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !11081
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0987.01198, i64 40 ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.vh
  br i1 %i.xb, label %.loopexit1074, label %bb.ea

bb.eg:                                            ; preds = %bb.ea
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.loopexit1075:                                    ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1077 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

.loopexit.split-lp1076:                           ; preds = %bb.ee
  %lpad.loopexit.split-lp1078 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.split-lp1076, %.loopexit1075
  %lpad.phi1079 = phi { ptr, i32 } [ %lpad.loopexit1077, %.loopexit1075 ], [ %lpad.loopexit.split-lp1078, %.loopexit.split-lp1076 ]
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23, !noalias !11081, !inline_history !10819
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eb, %bb.eg, %bb.eh
  %.pn30.i = phi { ptr, i32 } [ %lpad.phi1079, %bb.eh ], [ %i.xc, %bb.eg ], [ %i.vn, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !11081
  br label %bb.ep

.critedge.i:                                      ; preds = %bb.dw, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !11081
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !11081
  store i32 5, ptr %15, align 8, !tbaa !8339, !noalias !11081
  %i.xd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.xd, align 8, !tbaa !9865, !noalias !11081
  %i.xe = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xe, i8 0, i64 16, i1 false), !noalias !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !11095)
  %i.xf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc68.i unwind label %bb.ek ; 6 uses

.noexc68.i:                                       ; preds = %.critedge.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.xf, align 8, !tbaa !436, !noalias !11096
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.xg, align 8, !tbaa !436, !noalias !11096
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xh, i8 0, i64 24, i1 false), !noalias !11096
  store ptr %i.xf, ptr %14, align 8, !tbaa !438, !alias.scope !11095, !noalias !11081
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.xf, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i unwind label %bb.ej, !noalias !11097, !inline_history !10813

bb.ej:                                            ; preds = %.noexc68.i
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #23, !noalias !11081, !inline_history !10813
  br label %.body69.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i: ; preds = %.noexc68.i
  %i.xj = load ptr, ptr %i.uq, align 8, !tbaa !466, !noalias !11081 ; 3 uses
  store ptr %i.xf, ptr %i.uq, align 8, !tbaa !466, !noalias !11081
  %.not.i.i.i72.i = icmp eq ptr %i.xj, null
  br i1 %.not.i.i.i72.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i73.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i73.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !436, !noalias !11081
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !noalias !11081
  call void %i.xm(ptr noundef nonnull align 8 dereferenceable(8) %i.xj) #23, !noalias !11081, !call_target !8389, !inline_history !10814
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i73.i
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #23, !noalias !11081, !inline_history !10819
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !11081
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !11081
  br label %.loopexit1074

bb.ek:                                            ; preds = %.critedge.i
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %.body69.i

.body69.i:                                        ; preds = %bb.ek, %bb.ej
  %eh.lpad-body70.i = phi { ptr, i32 } [ %i.xn, %bb.ek ], [ %i.xi, %bb.ej ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #23, !noalias !11081, !inline_history !10819
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !11081
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !11081
  br label %bb.ep

.loopexit1074:                                    ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i, %_ZNK5folly7dynamic3endEv.exit.i, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i
  %.not29.i = icmp eq ptr %i.ul, null
  br i1 %.not29.i, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.el

bb.el:                                            ; preds = %.loopexit1074
  %i.xo = load i32, ptr %i.ul, align 8, !tbaa !8339, !noalias !11081
  switch i32 %i.xo, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit [
    i32 2, label %_ZNKR5folly7dynamic7getBoolEv.exit.i
    i32 5, label %bb.em
  ]

_ZNKR5folly7dynamic7getBoolEv.exit.i:             ; preds = %bb.el
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.xq = load i8, ptr %i.xp, align 8, !tbaa !651, !range !629, !noalias !11081, !noundef !530
  store i8 %i.xq, ptr %i.ut, align 8, !tbaa !8384, !noalias !11081
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23, !noalias !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !11098)
  %i.xr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc97.i unwind label %bb.eo ; 6 uses

.noexc97.i:                                       ; preds = %bb.em
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.xr, align 8, !tbaa !436, !noalias !11099
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.xs, align 8, !tbaa !436, !noalias !11099
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xt, i8 0, i64 24, i1 false), !noalias !11099
  store ptr %i.xr, ptr %16, align 8, !tbaa !438, !alias.scope !11098, !noalias !11081
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.xr, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ul)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i unwind label %bb.en, !noalias !11100, !inline_history !10813

bb.en:                                            ; preds = %.noexc97.i
  %i.xu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23, !noalias !11081, !inline_history !10813
  br label %.body98.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i: ; preds = %.noexc97.i
  %i.xv = load ptr, ptr %i.us, align 8, !tbaa !466, !noalias !11081 ; 3 uses
  store ptr %i.xr, ptr %i.us, align 8, !tbaa !466, !noalias !11081
  %.not.i.i.i101.i = icmp eq ptr %i.xv, null
  br i1 %.not.i.i.i101.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i102.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i102.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !436, !noalias !11081
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !noalias !11081
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(8) %i.xv) #23, !noalias !11081, !call_target !8389, !inline_history !10814
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !11081
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.eo:                                            ; preds = %bb.em
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

.body98.i:                                        ; preds = %bb.eo, %bb.en
  %eh.lpad-body99.i = phi { ptr, i32 } [ %i.xz, %bb.eo ], [ %i.xu, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !11081
  br label %bb.ep

bb.ep:                                            ; preds = %.body98.i, %.body69.i, %bb.ei, %.body.i667
  %.pn34.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i667 ], [ %.pn30.i, %bb.ei ], [ %eh.lpad-body70.i, %.body69.i ], [ %eh.lpad-body99.i, %.body98.i ]
  %i.ya = load ptr, ptr %i.us, align 8, !tbaa !466, !noalias !11081 ; 3 uses
  %.not.i121.i = icmp eq ptr %i.ya, null
  br i1 %.not.i121.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i: ; preds = %bb.ep
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !436, !noalias !11081
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !noalias !11081
  call void %i.yd(ptr noundef nonnull align 8 dereferenceable(8) %i.ya) #23, !noalias !11081, !call_target !8389, !inline_history !10836
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i, %bb.ep
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ur) #23, !noalias !11081, !inline_history !10819
  %i.ye = load ptr, ptr %i.uq, align 8, !tbaa !466, !noalias !11081 ; 3 uses
  %.not.i122.i = icmp eq ptr %i.ye, null
  br i1 %.not.i122.i, label %.body675, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i123.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i123.i: ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !436, !noalias !11081
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !noalias !11081
  call void %i.yh(ptr noundef nonnull align 8 dereferenceable(8) %i.ye) #23, !noalias !11081, !call_target !8389, !inline_history !10836
  br label %.body675

.body675:                                         ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i123.i
  call void @_ZdlPvm(ptr noundef nonnull %i.up, i64 noundef 56) #47, !noalias !11081, !inline_history !10808
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.el, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i, %_ZNKR5folly7dynamic7getBoolEv.exit.i, %.loopexit1074, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i
  store ptr %i.up, ptr %30, align 8, !tbaa !9867
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !8351 ; 6 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !8352
  %.not.i316 = icmp eq ptr %i.yj, %i.yl
  br i1 %.not.i316, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.up, ptr %i.yj, align 8, !tbaa !8354
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store ptr %i.ym, ptr %i.yi, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorESt14default_deleteIS3_EED2Ev.exit

bb.er:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i317 = load ptr, ptr %i.uo, align 8, !tbaa !8355 ; 10 uses
  %i.yn = ptrtoint ptr %i.yj to i64               ; 3 uses
  %i.yo = ptrtoint ptr %.val.i.i317 to i64        ; 4 uses
  %i.yp = sub i64 %i.yn, %i.yo                    ; 3 uses
  %i.yq = icmp eq i64 %i.yp, 9223372036854775800
  br i1 %i.yq, label %bb.es, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i318

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc329 unwind label %bb.eu

.noexc329:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i318: ; preds = %bb.er
  %i.yr = ashr exact i64 %i.yp, 3                 ; 3 uses
  %i.ys = icmp eq ptr %i.yj, %.val.i.i317         ; 2 uses
  %.sroa.speculated.i.i.i319 = select i1 %i.ys, i64 1, i64 %i.yr
  %i.yt = add nsw i64 %.sroa.speculated.i.i.i319, %i.yr ; 2 uses
  %i.yu = icmp ult i64 %i.yt, %i.yr
  %i.yv = call i64 @llvm.umin.i64(i64 %i.yt, i64 1152921504606846975)
  %i.yw = select i1 %i.yu, i64 1152921504606846975, i64 %i.yv ; 3 uses
  %.not.i.i.i320 = icmp ne i64 %i.yw, 0
  call void @llvm.assume(i1 %.not.i.i.i320)
  %i.yx = shl nuw nsw i64 %i.yw, 3
  %i.yy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #46
          to label %.noexc330 unwind label %bb.eu ; 10 uses

.noexc330:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i318
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.yp
  store ptr %i.up, ptr %i.yz, align 8, !tbaa !8354
  br i1 %i.ys, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326, label %.lr.ph.i.i.i.i.i321.preheader

.lr.ph.i.i.i.i.i321.preheader:                    ; preds = %.noexc330
  %i.za = add i64 %i.yn, -8
  %i.zb = sub i64 %i.za, %i.yo                    ; 2 uses
  %i.zc = lshr i64 %i.zb, 3
  %i.zd = add nuw nsw i64 %i.zc, 1                ; 2 uses
  %min.iters.check2577 = icmp ult i64 %i.zb, 136
  br i1 %min.iters.check2577, label %.lr.ph.i.i.i.i.i321.preheader3018, label %vector.memcheck2570

vector.memcheck2570:                              ; preds = %.lr.ph.i.i.i.i.i321.preheader
  %i.ze = add i64 %i.yn, -8
  %i.zf = sub i64 %i.ze, %i.yo
  %i.zg = and i64 %i.zf, -8
  %i.zh = add i64 %i.zg, 8                        ; 2 uses
  %scevgep2571 = getelementptr i8, ptr %i.yy, i64 %i.zh
  %scevgep2572 = getelementptr i8, ptr %.val.i.i317, i64 %i.zh
  %bound02573 = icmp ult ptr %i.yy, %scevgep2572
  %bound12574 = icmp ult ptr %.val.i.i317, %scevgep2571
  %found.conflict2575 = and i1 %bound02573, %bound12574
  br i1 %found.conflict2575, label %.lr.ph.i.i.i.i.i321.preheader3018, label %vector.ph2578

vector.ph2578:                                    ; preds = %vector.memcheck2570
  %n.vec2579 = and i64 %i.zd, 4611686018427387900 ; 3 uses
  %i.zi = shl i64 %n.vec2579, 3                   ; 2 uses
  %i.zj = getelementptr i8, ptr %i.yy, i64 %i.zi  ; 2 uses
  %i.zk = getelementptr i8, ptr %.val.i.i317, i64 %i.zi
  br label %vector.body2580

vector.body2580:                                  ; preds = %vector.body2580, %vector.ph2578
  %index2581 = phi i64 [ 0, %vector.ph2578 ], [ %index.next2586, %vector.body2580 ] ; 2 uses
  %i.zl = shl i64 %index2581, 3                   ; 2 uses
  %next.gep2582 = getelementptr i8, ptr %i.yy, i64 %i.zl ; 2 uses
  %next.gep2583 = getelementptr i8, ptr %.val.i.i317, i64 %i.zl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11101)
  call void @llvm.experimental.noalias.scope.decl(metadata !11102)
  %i.zm = getelementptr i8, ptr %next.gep2583, i64 16
  %wide.load2584 = load <2 x i64>, ptr %next.gep2583, align 8, !tbaa !466, !alias.scope !11103, !noalias !11101
  %wide.load2585 = load <2 x i64>, ptr %i.zm, align 8, !tbaa !466, !alias.scope !11103, !noalias !11101
  %i.zn = getelementptr i8, ptr %next.gep2582, i64 16
  store <2 x i64> %wide.load2584, ptr %next.gep2582, align 8, !tbaa !466, !alias.scope !11104, !noalias !11103
  store <2 x i64> %wide.load2585, ptr %i.zn, align 8, !tbaa !466, !alias.scope !11104, !noalias !11103
  %i.zo = getelementptr i8, ptr %next.gep2583, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2583, align 8, !tbaa !466, !alias.scope !11103, !noalias !11101
  store <2 x ptr> splat (ptr null), ptr %i.zo, align 8, !tbaa !466, !alias.scope !11103, !noalias !11101
  %index.next2586 = add nuw i64 %index2581, 4     ; 2 uses
  %i.zp = icmp eq i64 %index.next2586, %n.vec2579
  br i1 %i.zp, label %middle.block2587, label %vector.body2580, !llvm.loop !10843

middle.block2587:                                 ; preds = %vector.body2580
  %cmp.n2588 = icmp eq i64 %i.zd, %n.vec2579
  br i1 %cmp.n2588, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326, label %.lr.ph.i.i.i.i.i321.preheader3018

.lr.ph.i.i.i.i.i321.preheader3018:                ; preds = %vector.memcheck2570, %.lr.ph.i.i.i.i.i321.preheader, %middle.block2587
  %.03.i.i.i.i.i322.ph = phi ptr [ %i.yy, %vector.memcheck2570 ], [ %i.yy, %.lr.ph.i.i.i.i.i321.preheader ], [ %i.zj, %middle.block2587 ]
  %.092.i.i.i.i.i323.ph = phi ptr [ %.val.i.i317, %vector.memcheck2570 ], [ %.val.i.i317, %.lr.ph.i.i.i.i.i321.preheader ], [ %i.zk, %middle.block2587 ]
  br label %.lr.ph.i.i.i.i.i321

.lr.ph.i.i.i.i.i321:                              ; preds = %.lr.ph.i.i.i.i.i321.preheader3018, %.lr.ph.i.i.i.i.i321
  %.03.i.i.i.i.i322 = phi ptr [ %i.zr, %.lr.ph.i.i.i.i.i321 ], [ %.03.i.i.i.i.i322.ph, %.lr.ph.i.i.i.i.i321.preheader3018 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11112)
  %.val.i.i.i.i.i.i.i.i.i.i369 = load i64, ptr %.092.i.i.i.i.i368, align 8, !tbaa !466, !alias.scope !11112, !noalias !11111
  store i64 %.val.i.i.i.i.i.i.i.i.i.i369, ptr %.03.i.i.i.i.i367, align 8, !tbaa !466, !alias.scope !11111, !noalias !11112
  store ptr null, ptr %.092.i.i.i.i.i368, align 8, !tbaa !466, !alias.scope !11112, !noalias !11111
  %i.adm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i368, i64 8 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i367, i64 8 ; 2 uses
  %.not.i.i.i.i.i370 = icmp eq ptr %i.adm, %i.acf
  br i1 %.not.i.i.i.i.i370, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371, label %.lr.ph.i.i.i.i.i366, !llvm.loop !10864

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371: ; preds = %.lr.ph.i.i.i.i.i366, %middle.block2629, %.noexc376
  %.0.lcssa.i.i.i.i.i372 = phi ptr [ %i.acu, %.noexc376 ], [ %i.adf, %middle.block2629 ], [ %i.adn, %.lr.ph.i.i.i.i.i366 ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i372, i64 8
  %.not.i28.i.i373 = icmp eq ptr %.val.i.i362, null
  br i1 %.not.i28.i.i373, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371
  %i.adp = load ptr, ptr %i.acg, align 8, !tbaa !8352
  %i.adq = ptrtoint ptr %i.adp to i64
  %i.adr = sub i64 %i.adq, %i.ack
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i362, i64 noundef %i.adr) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374: ; preds = %bb.fh, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371
  store ptr %i.acu, ptr %i.abx, align 8, !tbaa !8355
  store ptr %i.ado, ptr %i.ace, align 8, !tbaa !8351
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acs
  store ptr %i.ads, ptr %i.acg, align 8, !tbaa !8352
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit383: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i363, %bb.fg
  %i.adt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aby, i64 noundef 24) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374, %bb.fe, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit355
  %i.adu = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.49, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.49, i64 11)) ; 3 uses
  %.not163 = icmp eq ptr %i.adu, null
  br i1 %.not163, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.adw = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #46, !noalias !11115 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE, i64 16), ptr %i.adw, align 8, !tbaa !436, !noalias !11115
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 8 ; 2 uses
  store i8 0, ptr %i.adx, align 8, !tbaa !9869, !noalias !11115
  %i.ady = load i32, ptr %i.adu, align 8, !tbaa !8339, !noalias !11115
  %.not.i.i.i.i.i384 = icmp eq i32 %i.ady, 2
  br i1 %.not.i.i.i.i.i384, label %bb.fj, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.fj:                                            ; preds = %bb.fi
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !651, !range !629, !noalias !11115, !noundef !530
  store i8 %i.aea, ptr %i.adx, align 8, !tbaa !9869, !noalias !11115
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.fi, %bb.fj
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !8351 ; 6 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !8352
  %.not.i385 = icmp eq ptr %i.aec, %i.aee
  br i1 %.not.i385, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.adw, ptr %i.aec, align 8, !tbaa !8354
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store ptr %i.aef, ptr %i.aeb, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit

bb.fl:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i386 = load ptr, ptr %i.adv, align 8, !tbaa !8355 ; 10 uses
  %i.aeg = ptrtoint ptr %i.aec to i64             ; 3 uses
  %i.aeh = ptrtoint ptr %.val.i.i386 to i64       ; 4 uses
  %i.aei = sub i64 %i.aeg, %i.aeh                 ; 3 uses
  %i.aej = icmp eq i64 %i.aei, 9223372036854775800
  br i1 %i.aej, label %bb.fm, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc398 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403

.noexc398:                                        ; preds = %bb.fm
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387: ; preds = %bb.fl
  %i.aek = ashr exact i64 %i.aei, 3               ; 3 uses
  %i.ael = icmp eq ptr %i.aec, %.val.i.i386       ; 2 uses
  %.sroa.speculated.i.i.i388 = select i1 %i.ael, i64 1, i64 %i.aek
  %i.aem = add nsw i64 %.sroa.speculated.i.i.i388, %i.aek ; 2 uses
  %i.aen = icmp ult i64 %i.aem, %i.aek
  %i.aeo = call i64 @llvm.umin.i64(i64 %i.aem, i64 1152921504606846975)
  %i.aep = select i1 %i.aen, i64 1152921504606846975, i64 %i.aeo ; 3 uses
  %.not.i.i.i389 = icmp ne i64 %i.aep, 0
  call void @llvm.assume(i1 %.not.i.i.i389)
  %i.aeq = shl nuw nsw i64 %i.aep, 3
  %i.aer = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeq) #46
          to label %.noexc399 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403 ; 10 uses

.noexc399:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aei
  store ptr %i.adw, ptr %i.aes, align 8, !tbaa !8354
  br i1 %i.ael, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395, label %.lr.ph.i.i.i.i.i390.preheader

.lr.ph.i.i.i.i.i390.preheader:                    ; preds = %.noexc399
  %i.aet = add i64 %i.aeg, -8
  %i.aeu = sub i64 %i.aet, %i.aeh                 ; 2 uses
  %i.aev = lshr i64 %i.aeu, 3
  %i.aew = add nuw nsw i64 %i.aev, 1              ; 2 uses
  %min.iters.check2640 = icmp ult i64 %i.aeu, 136
  br i1 %min.iters.check2640, label %.lr.ph.i.i.i.i.i390.preheader3012, label %vector.memcheck2633

vector.memcheck2633:                              ; preds = %.lr.ph.i.i.i.i.i390.preheader
  %i.aex = add i64 %i.aeg, -8
  %i.aey = sub i64 %i.aex, %i.aeh
  %i.aez = and i64 %i.aey, -8
  %i.afa = add i64 %i.aez, 8                      ; 2 uses
  %scevgep2634 = getelementptr i8, ptr %i.aer, i64 %i.afa
  %scevgep2635 = getelementptr i8, ptr %.val.i.i386, i64 %i.afa
  %bound02636 = icmp ult ptr %i.aer, %scevgep2635
  %bound12637 = icmp ult ptr %.val.i.i386, %scevgep2634
  %found.conflict2638 = and i1 %bound02636, %bound12637
  br i1 %found.conflict2638, label %.lr.ph.i.i.i.i.i390.preheader3012, label %vector.ph2641

vector.ph2641:                                    ; preds = %vector.memcheck2633
  %n.vec2642 = and i64 %i.aew, 4611686018427387900 ; 3 uses
  %i.afb = shl i64 %n.vec2642, 3                  ; 2 uses
  %i.afc = getelementptr i8, ptr %i.aer, i64 %i.afb ; 2 uses
  %i.afd = getelementptr i8, ptr %.val.i.i386, i64 %i.afb
  br label %vector.body2643

vector.body2643:                                  ; preds = %vector.body2643, %vector.ph2641
  %index2644 = phi i64 [ 0, %vector.ph2641 ], [ %index.next2649, %vector.body2643 ] ; 2 uses
  %i.afe = shl i64 %index2644, 3                  ; 2 uses
  %next.gep2645 = getelementptr i8, ptr %i.aer, i64 %i.afe ; 2 uses
  %next.gep2646 = getelementptr i8, ptr %.val.i.i386, i64 %i.afe ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  %i.aff = getelementptr i8, ptr %next.gep2646, i64 16
  %wide.load2647 = load <2 x i64>, ptr %next.gep2646, align 8, !tbaa !466, !alias.scope !11118, !noalias !11116
  %wide.load2648 = load <2 x i64>, ptr %i.aff, align 8, !tbaa !466, !alias.scope !11118, !noalias !11116
  %i.afg = getelementptr i8, ptr %next.gep2645, i64 16
  store <2 x i64> %wide.load2647, ptr %next.gep2645, align 8, !tbaa !466, !alias.scope !11119, !noalias !11118
  store <2 x i64> %wide.load2648, ptr %i.afg, align 8, !tbaa !466, !alias.scope !11119, !noalias !11118
  %i.afh = getelementptr i8, ptr %next.gep2646, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2646, align 8, !tbaa !466, !alias.scope !11118, !noalias !11116
  store <2 x ptr> splat (ptr null), ptr %i.afh, align 8, !tbaa !466, !alias.scope !11118, !noalias !11116
  %index.next2649 = add nuw i64 %index2644, 4     ; 2 uses
  %i.afi = icmp eq i64 %index.next2649, %n.vec2642
  br i1 %i.afi, label %middle.block2650, label %vector.body2643, !llvm.loop !10873

middle.block2650:                                 ; preds = %vector.body2643
  %cmp.n2651 = icmp eq i64 %i.aew, %n.vec2642
  br i1 %cmp.n2651, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395, label %.lr.ph.i.i.i.i.i390.preheader3012

.lr.ph.i.i.i.i.i390.preheader3012:                ; preds = %vector.memcheck2633, %.lr.ph.i.i.i.i.i390.preheader, %middle.block2650
  %.03.i.i.i.i.i391.ph = phi ptr [ %i.aer, %vector.memcheck2633 ], [ %i.aer, %.lr.ph.i.i.i.i.i390.preheader ], [ %i.afc, %middle.block2650 ]
  %.092.i.i.i.i.i392.ph = phi ptr [ %.val.i.i386, %vector.memcheck2633 ], [ %.val.i.i386, %.lr.ph.i.i.i.i.i390.preheader ], [ %i.afd, %middle.block2650 ]
  br label %.lr.ph.i.i.i.i.i390

.lr.ph.i.i.i.i.i390:                              ; preds = %.lr.ph.i.i.i.i.i390.preheader3012, %.lr.ph.i.i.i.i.i390
  %.03.i.i.i.i.i391 = phi ptr [ %i.afk, %.lr.ph.i.i.i.i.i390 ], [ %.03.i.i.i.i.i391.ph, %.lr.ph.i.i.i.i.i390.preheader3012 ] ; 2 uses
  %.092.i.i.i.i.i392 = phi ptr [ %i.afj, %.lr.ph.i.i.i.i.i390 ], [ %.092.i.i.i.i.i392.ph, %.lr.ph.i.i.i.i.i390.preheader3012 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  %.val.i.i.i.i.i.i.i.i.i.i393 = load i64, ptr %.092.i.i.i.i.i392, align 8, !tbaa !466, !alias.scope !11117, !noalias !11116
  store i64 %.val.i.i.i.i.i.i.i.i.i.i393, ptr %.03.i.i.i.i.i391, align 8, !tbaa !466, !alias.scope !11116, !noalias !11117
  store ptr null, ptr %.092.i.i.i.i.i392, align 8, !tbaa !466, !alias.scope !11117, !noalias !11116
  %i.afj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i392, i64 8 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i391, i64 8 ; 2 uses
  %.not.i.i.i.i.i394 = icmp eq ptr %i.afj, %i.aec
  br i1 %.not.i.i.i.i.i394, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395, label %.lr.ph.i.i.i.i.i390, !llvm.loop !10874

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395: ; preds = %.lr.ph.i.i.i.i.i390, %middle.block2650, %.noexc399
  %.0.lcssa.i.i.i.i.i396 = phi ptr [ %i.aer, %.noexc399 ], [ %i.afc, %middle.block2650 ], [ %i.afk, %.lr.ph.i.i.i.i.i390 ]
  %i.afl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i396, i64 8
  %.not.i28.i.i397 = icmp eq ptr %.val.i.i386, null
  br i1 %.not.i28.i.i397, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395
  %i.afm = load ptr, ptr %i.aed, align 8, !tbaa !8352
  %i.afn = ptrtoint ptr %i.afm to i64
  %i.afo = sub i64 %i.afn, %i.aeh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i386, i64 noundef %i.afo) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.fn, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395
  store ptr %i.aer, ptr %i.adv, align 8, !tbaa !8355
  store ptr %i.afl, ptr %i.aeb, align 8, !tbaa !8351
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.aep
  store ptr %i.afp, ptr %i.aed, align 8, !tbaa !8352
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387, %bb.fm
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.adw, i64 noundef 16) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.fk, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380
  %i.afr = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.50, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.50, i64 10)) ; 4 uses
  %i.afs = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.51, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.51, i64 17)) ; 4 uses
  %i.aft = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.52, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.52, i64 20)) ; 5 uses
  %i.afu = icmp ne ptr %i.afr, null
  %i.afv = icmp ne ptr %i.afs, null
  %or.cond5 = or i1 %i.afu, %i.afv
  %i.afw = icmp ne ptr %i.aft, null
  %or.cond7 = or i1 %or.cond5, %i.afw
  br i1 %or.cond7, label %bb.fo, label %bb.jg

bb.fo:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.afy = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #46, !noalias !11120, !inline_history !10877 ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE, i64 16), ptr %i.afy, align 8, !tbaa !436, !noalias !11120
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8 ; 6 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 56 ; 4 uses
  store ptr %i.aga, ptr %i.afz, align 8, !tbaa !9871, !noalias !11120
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afy, i64 16 ; 6 uses
  store i64 1, ptr %i.agb, align 8, !tbaa !9872, !noalias !11120
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afy, i64 24 ; 9 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afy, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agc, i8 0, i64 16, i1 false), !noalias !11120
  store float 1.000000e+00, ptr %i.agd, align 8, !tbaa !451, !noalias !11120
  %i.age = getelementptr inbounds nuw i8, ptr %i.afy, i64 48 ; 3 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afy, i64 64 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afy, i64 88 ; 3 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afy, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.age, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.agh, align 8, !tbaa !9880, !noalias !11120
  %.not.i677 = icmp eq ptr %i.afr, null
  br i1 %.not.i677, label %.loopexit1058, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.agi = load i32, ptr %i.afr, align 8, !tbaa !8339, !noalias !11120
  %.not.i.i.i.i678 = icmp eq i32 %i.agi, 5
  br i1 %.not.i.i.i.i678, label %_ZNK5folly7dynamic5itemsEv.exit.i, label %.loopexit1058

_ZNK5folly7dynamic5itemsEv.exit.i:                ; preds = %bb.fp
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !9881, !noalias !11120 ; 3 uses
  %i.agl = and i64 %i.agk, -8                     ; 2 uses
  %.not10241199 = icmp eq i64 %i.agl, 0
  br i1 %.not10241199, label %.loopexit1058, label %.lr.ph1202

.lr.ph1202:                                       ; preds = %_ZNK5folly7dynamic5itemsEv.exit.i
  %i.agm = inttoptr i64 %i.agl to ptr
  %i.agn = shl i64 %i.agk, 1
  %i.ago = and i64 %i.agn, 14
  %i.agp = lshr i64 %i.agk, 3
  %i.agq = and i64 %i.agp, 1
  %i.agr = or disjoint i64 %i.ago, %i.agq
  %i.ags = getelementptr inbounds nuw i8, ptr %i.afy, i64 32 ; 3 uses
  br label %bb.fq

bb.fq:                                            ; preds = %.lr.ph1202, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i
  %.sroa.91001.01201 = phi i64 [ %i.agr, %.lr.ph1202 ], [ %.sroa.91001.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 3 uses
  %.sroa.0998.01200 = phi ptr [ %i.agm, %.lr.ph1202 ], [ %.sroa.0998.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 3 uses
  %i.agt = load ptr, ptr %.sroa.0998.01200, align 8, !tbaa !9883, !noalias !11120 ; 5 uses
  %i.agu = load i32, ptr %i.agt, align 8, !tbaa !8339, !noalias !11120
  %.not.i.i.i58.i = icmp eq i32 %i.agu, 6
  br i1 %.not.i.i.i58.i, label %bb.fr, label %bb.he

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !11120
  call void @llvm.experimental.noalias.scope.decl(metadata !11121)
  %i.agv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc59.i unwind label %bb.hd ; 5 uses

.noexc59.i:                                       ; preds = %bb.fr
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72)>, ptr %i.agv, align 8, !tbaa !436, !noalias !11122
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agx, i8 0, i64 24, i1 false), !noalias !11122
  store ptr %i.agv, ptr %8, align 8, !tbaa !438, !alias.scope !11121, !noalias !11120
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.agv, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.agw)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693 unwind label %bb.fs, !noalias !11123, !inline_history !10882

bb.fs:                                            ; preds = %.noexc59.i
  %i.agy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23, !noalias !11120, !inline_history !10882
  br label %.body.i690

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693: ; preds = %.noexc59.i
  %i.agz = load i32, ptr %i.agt, align 8, !tbaa !8339, !noalias !11120 ; 2 uses
  %.not.i.not.i.i.i60.i = icmp eq i32 %i.agz, 6
  br i1 %.not.i.not.i.i.i60.i, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i, label %bb.ft

bb.ft:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693
  %i.aha = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nameE, align 8, !tbaa !8346, !noalias !11120
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.aha, i32 noundef %i.agz) #20
          to label %.noexc61.i unwind label %.loopexit.split-lp1060, !noalias !11120, !inline_history !10883

.noexc61.i:                                       ; preds = %bb.ft
  unreachable

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i:    ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agt, i64 8 ; 3 uses
  %.val.i.i.i694 = load ptr, ptr %i.ahb, align 8, !tbaa !462, !noalias !11120
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agt, i64 16 ; 3 uses
  %.val21.i.i.i = load i64, ptr %i.ahc, align 8, !tbaa !456, !noalias !11120
  %i.ahd = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val.i.i.i694, i64 noundef %.val21.i.i.i, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i unwind label %bb.fu, !noalias !11120, !inline_history !10883 ; 5 uses

bb.fu:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i
  %i.ahe = landingpad { ptr, i32 }
          catch ptr null
  %i.ahf = extractvalue { ptr, i32 } %i.ahe, 0
  call void @__clang_call_terminate(ptr %i.ahf) #45, !noalias !11120, !inline_history !10883
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i: ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i
  %.val22.i.i.i = load i64, ptr %i.agb, align 8, !tbaa !9872, !noalias !11120 ; 3 uses
  %i.ahg = urem i64 %i.ahd, %.val22.i.i.i         ; 4 uses
  %.val23.i.i.i = load ptr, ptr %i.afz, align 8, !tbaa !9871, !noalias !11120
  %.val25.i.i.i = load ptr, ptr %i.ahb, align 8, !noalias !11120
  %.val26.i.i.i = load i64, ptr %i.ahc, align 8, !noalias !11120
  %.8.val4.fr.i.i.i.i.i = freeze i64 %.val26.i.i.i ; 3 uses
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %.val23.i.i.i, i64 %i.ahg
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !457, !noalias !11120 ; 2 uses
  %.not.i.i.i.i.i695 = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i.i.i.i695, label %.loopexit42.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !458, !noalias !11120 ; 3 uses
  %i.ahk = icmp eq i64 %.8.val4.fr.i.i.i.i.i, 0
  %.phi.trans.insert11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahj, i64 48
  %.val.i.us.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert11.i.i.i.i.i, align 8, !tbaa !460, !noalias !11120 ; 2 uses
  br i1 %i.ahk, label %.split.us.i.i.i.i.i, label %.split.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %bb.fv, %bb.fx
  %.val.i.us.i.i.i.i.i = phi i64 [ %.val23.us.i.i.i.i.i, %bb.fx ], [ %.val.i.us.pre.i.i.i.i.i, %bb.fv ]
  %.0.us.i.i.i.i.i = phi ptr [ %i.aho, %bb.fx ], [ %i.ahj, %bb.fv ] ; 3 uses
  %i.ahl = icmp eq i64 %i.ahd, %.val.i.us.i.i.i.i.i
  br i1 %i.ahl, label %bb.fw, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i

bb.fw:                                            ; preds = %.split.us.i.i.i.i.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i.i, i64 16
  %.val7.i.us.i.i.i.i.i = load i64, ptr %i.ahm, align 8, !tbaa !456, !noalias !11120
  %i.ahn = icmp eq i64 %.val7.i.us.i.i.i.i.i, 0
  br i1 %i.ahn, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i: ; preds = %bb.fw, %.split.us.i.i.i.i.i
  %i.aho = load ptr, ptr %.0.us.i.i.i.i.i, align 8, !tbaa !458, !noalias !11120 ; 3 uses
  %.not18.us.i.i.i.i.i = icmp eq ptr %i.aho, null
  br i1 %.not18.us.i.i.i.i.i, label %.loopexit42.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i
  %i.ahp = getelementptr i8, ptr %i.aho, i64 48
  %.val23.us.i.i.i.i.i = load i64, ptr %i.ahp, align 8, !tbaa !460, !noalias !11120 ; 2 uses
  %i.ahq = urem i64 %.val23.us.i.i.i.i.i, %.val22.i.i.i
  %.not19.us.i.i.i.i.i = icmp eq i64 %i.ahq, %i.ahg
  br i1 %.not19.us.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %.loopexit42.i.i.i, !llvm.loop !360

.split.i.i.i.i.i:                                 ; preds = %bb.fv, %bb.fz
  %.val.i.i.i.i.i.i = phi i64 [ %.val23.i.i.i.i.i, %bb.fz ], [ %.val.i.us.pre.i.i.i.i.i, %bb.fv ]
  %.0.i.i.i.i.i = phi ptr [ %i.ahw, %bb.fz ], [ %i.ahj, %bb.fv ] ; 4 uses
  %i.ahr = icmp eq i64 %i.ahd, %.val.i.i.i.i.i.i
  br i1 %i.ahr, label %bb.fy, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i.i.i

bb.fy:                                            ; preds = %.split.i.i.i.i.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %.val7.i.i.i.i.i.i = load i64, ptr %i.ahs, align 8, !tbaa !456, !noalias !11120
  %i.aht = icmp eq i64 %.8.val4.fr.i.i.i.i.i, %.val7.i.i.i.i.i.i
  br i1 %i.aht, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.fy
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.ahu, align 8, !noalias !11120
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val25.i.i.i, ptr readonly %.val6.i.i.i.i.i.i, i64 %.8.val4.fr.i.i.i.i.i), !noalias !11120, !inline_history !10883
  %i.ahv = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahv, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i.i.i, %bb.fy, %.split.i.i.i.i.i
  %i.ahw = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !458, !noalias !11120 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ahw, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit42.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i.i.i
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 48
  %.val23.i.i.i.i.i = load i64, ptr %i.ahx, align 8, !tbaa !460, !noalias !11120 ; 2 uses
  %i.ahy = urem i64 %.val23.i.i.i.i.i, %.val22.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.ahy, %i.ahg
  br i1 %.not19.i.i.i.i.i, label %.split.i.i.i.i.i, label %.loopexit42.i.i.i, !llvm.loop !360

.loopexit42.i.i.i:                                ; preds = %bb.fz, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.i.i.i.i.i, %bb.fx, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i
  %i.ahz = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46
          to label %.noexc62.i unwind label %.loopexit1059, !noalias !11120, !inline_history !10883 ; 14 uses

.noexc62.i:                                       ; preds = %.loopexit42.i.i.i
  store ptr null, ptr %i.ahz, align 8, !tbaa !458, !noalias !11120
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24 ; 3 uses
  store ptr %i.aib, ptr %i.aia, align 8, !tbaa !454, !noalias !11120
  %i.aic = load ptr, ptr %i.ahb, align 8, !tbaa !462, !noalias !11120 ; 2 uses
  %i.aid = load i64, ptr %i.ahc, align 8, !tbaa !456, !noalias !11120 ; 8 uses
  %i.aie = icmp ugt i64 %i.aid, 15
  br i1 %i.aie, label %bb.ga, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.ga:                                            ; preds = %.noexc62.i
  %i.aif = icmp slt i64 %i.aid, 0
  br i1 %i.aif, label %.noexc.i.i.i.i.i.i.i.i.i, label %bb.gb

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ga
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #44
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp1065, !noalias !11120, !inline_history !10883

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  unreachable

bb.gb:                                            ; preds = %bb.ga
  %i.aig = add nuw i64 %i.aid, 1                  ; 2 uses
  %i.aih = icmp slt i64 %i.aig, 0
  br i1 %i.aih, label %.noexc6.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, !prof !425

.noexc6.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.gb
  invoke void @_ZSt17__throw_bad_allocv() #44
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.split-lp1065, !noalias !11120, !inline_history !10883

.noexc11.i.i.i.i.i:                               ; preds = %.noexc6.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gb
  %i.aii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aig) #46
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit1064, !noalias !11120, !inline_history !10883 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.aii, ptr %i.aia, align 8, !tbaa !462, !noalias !11120
  store i64 %i.aid, ptr %i.aib, align 8, !tbaa !428, !noalias !11120
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
.loopexit1069:                                    ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISE_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i
  %lpad.loopexit1071 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gt

.loopexit.split-lp1070:                           ; preds = %bb.gm, %bb.gn
  %lpad.loopexit.split-lp1072 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gt

bb.gt:                                            ; preds = %.loopexit.split-lp1070, %.loopexit1069
  %lpad.phi1073 = phi { ptr, i32 } [ %lpad.loopexit1071, %.loopexit1069 ], [ %lpad.loopexit.split-lp1072, %.loopexit.split-lp1070 ]
  %i.ajs = extractvalue { ptr, i32 } %lpad.phi1073, 0
  %i.ajt = call ptr @__cxa_begin_catch(ptr %i.ajs) #23, !noalias !11120, !inline_history !10883 ; 0 uses
  store i64 %i.ait, ptr %i.age, align 8, !tbaa !1722, !noalias !11120
  invoke void @__cxa_rethrow() #44
          to label %bb.gw unwind label %bb.gu, !noalias !11120, !inline_history !10883

bb.gu:                                            ; preds = %bb.gt
  %i.aju = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i unwind label %bb.gv, !noalias !11120, !inline_history !10883

bb.gv:                                            ; preds = %bb.gu
  %i.ajv = landingpad { ptr, i32 }
          catch ptr null
  %i.ajw = extractvalue { ptr, i32 } %i.ajv, 0
  call void @__clang_call_terminate(ptr %i.ajw) #45, !noalias !11120, !inline_history !10883
  unreachable

bb.gw:                                            ; preds = %bb.gt
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i: ; preds = %bb.gs, %._crit_edge.i.i.i.i.i.i
  store i64 %i.aiz, ptr %i.agb, align 8, !tbaa !9872, !noalias !11120
  store ptr %.0.i.i.i.i.i.i.i715, ptr %i.afz, align 8, !tbaa !9871, !noalias !11120
  %i.ajx = urem i64 %i.ahd, %i.aiz
  br label %bb.gx

bb.gx:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.ajy = phi ptr [ %.0.i.i.i.i.i.i.i715, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.0.i30.i.i.i = phi i64 [ %i.ajx, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i ], [ %i.ahg, %._crit_edge.i.i.i.i ]
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ahz, i64 48
  store i64 %i.ahd, ptr %i.ajz, align 8, !tbaa !460, !noalias !11120
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.ajy, i64 %.0.i30.i.i.i ; 3 uses
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !457, !noalias !11120 ; 2 uses
  %.not.i.i31.i.i.i = icmp eq ptr %i.akb, null
  br i1 %.not.i.i31.i.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !458, !noalias !11120
  store ptr %i.akc, ptr %i.ahz, align 8, !tbaa !458, !noalias !11120
  %i.akd = load ptr, ptr %i.aka, align 8, !tbaa !457, !noalias !11120
  store ptr %i.ahz, ptr %i.akd, align 8, !tbaa !458, !noalias !11120
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i

bb.gz:                                            ; preds = %bb.gx
  %i.ake = load ptr, ptr %i.agc, align 8, !tbaa !9885, !noalias !11120 ; 3 uses
  store ptr %i.ake, ptr %i.ahz, align 8, !tbaa !458, !noalias !11120
  store ptr %i.ahz, ptr %i.agc, align 8, !tbaa !9885, !noalias !11120
  %.not11.i.i.i.i.i = icmp eq ptr %i.ake, null
  br i1 %.not11.i.i.i.i.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.val12.i.i.i.i.i = load i64, ptr %i.agb, align 8, !tbaa !9872, !noalias !11120
  %i.akf = getelementptr i8, ptr %i.ake, i64 48
  %.val13.i.i.i.i.i = load i64, ptr %i.akf, align 8, !tbaa !460, !noalias !11120
  %i.akg = urem i64 %.val13.i.i.i.i.i, %.val12.i.i.i.i.i
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.ajy, i64 %i.akg
  store ptr %i.ahz, ptr %i.akh, align 8, !tbaa !457, !noalias !11120
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  store ptr %i.agc, ptr %i.aka, align 8, !tbaa !457, !noalias !11120
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i: ; preds = %bb.hb, %bb.gy
  %i.aki = load i64, ptr %i.ags, align 8, !tbaa !9884, !noalias !11120
  %i.akj = add i64 %i.aki, 1
  store i64 %i.akj, ptr %i.ags, align 8, !tbaa !9884, !noalias !11120
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i

bb.hc:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESZ_IJEEEEEPNSI_16_Hashtable_allocISaINSI_10_Hash_nodeISG_Lb1EEEEEEDpOT_.exit.i.i.i
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.hc, %bb.gu
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.akk, %bb.hc ], [ %i.aju, %bb.gu ]
  call fastcc void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr nonnull %i.ahz) #23, !noalias !11120, !inline_history !10883
  br label %.body63.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i.i.i, %bb.fw, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.ahz, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i ], [ %.0.us.i.i.i.i.i, %bb.fw ], [ %.0.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i.i.i ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 40 ; 2 uses
  %i.akl = load ptr, ptr %.1.i.i.i, align 8, !tbaa !466, !noalias !11120 ; 3 uses
  store ptr %i.agv, ptr %.1.i.i.i, align 8, !tbaa !466, !noalias !11120
  %.not.i.i.i65.i = icmp eq ptr %i.akl, null
  br i1 %.not.i.i.i65.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i714, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i696

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i696: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !436, !noalias !11120
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %i.ako = load ptr, ptr %i.akn, align 8, !noalias !11120
  call void %i.ako(ptr noundef nonnull align 8 dereferenceable(8) %i.akl) #23, !noalias !11120, !call_target !8389, !inline_history !10885
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i714

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i714: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i696
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !11120
  br label %bb.he

bb.hd:                                            ; preds = %bb.fr
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i690

.loopexit1059:                                    ; preds = %.loopexit42.i.i.i
  %lpad.loopexit1061 = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

.loopexit.split-lp1060:                           ; preds = %bb.ft
  %lpad.loopexit.split-lp1062 = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

.body63.i:                                        ; preds = %.loopexit1059, %.loopexit.split-lp1060, %bb.gf, %.body.i.i.i
  %eh.lpad-body64.i = phi { ptr, i32 } [ %i.ain, %bb.gf ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.loopexit1061, %.loopexit1059 ], [ %lpad.loopexit.split-lp1062, %.loopexit.split-lp1060 ]
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23, !noalias !11120, !inline_history !10883
  br label %.body.i690

.body.i690:                                       ; preds = %bb.fs, %bb.hd, %.body63.i
  %.pn50.i = phi { ptr, i32 } [ %eh.lpad-body64.i, %.body63.i ], [ %i.akp, %bb.hd ], [ %i.agy, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !11120
  br label %bb.ja

bb.he:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i714, %bb.fq
  %i.akq = getelementptr inbounds i8, ptr %.sroa.0998.01200, i64 -16
  %.neg.i.i.i.i.i.i = mul nsw i64 %.sroa.91001.01201, -8
  %i.akr = getelementptr inbounds i8, ptr %i.akq, i64 %.neg.i.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i.i = icmp eq i64 %.sroa.91001.01201, 0
  br i1 %.not19.i5.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

.critedge.i.i.i.i.i.preheader:                    ; preds = %bb.hf, %bb.he
  br label %.critedge.i.i.i.i.i

bb.hf:                                            ; preds = %thread-pre-split.i.i.i.i
  %.not19.i.i.i.i67.i = icmp eq i64 %i.aku, 0
  br i1 %.not19.i.i.i.i67.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.he, %bb.hf
  %i.aks = phi i64 [ %i.aku, %bb.hf ], [ %.sroa.91001.01201, %bb.he ]
  %i.akt = phi ptr [ %i.akv, %bb.hf ], [ %.sroa.0998.01200, %bb.he ]
  %i.aku = add nsw i64 %i.aks, -1                 ; 4 uses
  %i.akv = getelementptr inbounds i8, ptr %i.akt, i64 -8 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.aku
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !428, !noalias !11120
  %.not.i.i.i66.i = icmp eq i8 %i.akx, 0
  br i1 %.not.i.i.i66.i, label %bb.hf, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, !prof !425, !llvm.loop !361

.critedge.i.i.i.i.i:                              ; preds = %.critedge.i.i.i.i.i.preheader, %bb.hg
  %.017.i.i.i.i.i = phi ptr [ %i.alb, %bb.hg ], [ %i.akr, %.critedge.i.i.i.i.i.preheader ] ; 3 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 14
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !428, !noalias !11120
  %i.ala = and i8 %i.akz, 15
  %.not2.i.i.i.i = icmp eq i8 %i.ala, 0
  br i1 %.not2.i.i.i.i, label %bb.hg, label %.loopexit1058, !prof !643

bb.hg:                                            ; preds = %.critedge.i.i.i.i.i
  %i.alb = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -128 ; 4 uses
  %i.alc = load <16 x i8>, ptr %i.alb, align 16, !tbaa !428, !noalias !11120
  %i.ald = icmp eq <16 x i8> %i.alc, zeroinitializer
  %i.ale = bitcast <16 x i1> %i.ald to i16
  %i.alf = and i16 %i.ale, 16383                  ; 2 uses
  %i.alg = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.alg, i32 0, i32 3, i32 1), !noalias !11120
  %.not3.i.i.i.i = icmp eq i16 %i.alf, 16383
  br i1 %.not3.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.hh, !prof !425, !llvm.loop !362

bb.hh:                                            ; preds = %bb.hg
  %i.alh = xor i16 %i.alf, 16383
  %i.ali = zext nneg i16 %i.alh to i32
  %i.alj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ali, i1 true)
  %i.alk = xor i32 %i.alj, 31
  %i.all = zext nneg i32 %i.alk to i64            ; 2 uses
  %i.alm = icmp ne ptr %i.alb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.alm), !noalias !11120
  %i.aln = shl nuw nsw i64 %i.all, 3
  %i.alo = getelementptr i8, ptr %i.alb, i64 %i.aln
  %i.alp = getelementptr i8, ptr %i.alo, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i: ; preds = %thread-pre-split.i.i.i.i, %bb.hh
  %.sroa.0998.1 = phi ptr [ %i.alp, %bb.hh ], [ %i.akv, %thread-pre-split.i.i.i.i ] ; 2 uses
  %.sroa.91001.1 = phi i64 [ %i.all, %bb.hh ], [ %i.aku, %thread-pre-split.i.i.i.i ]
  %.not1024 = icmp eq ptr %.sroa.0998.1, null
  br i1 %.not1024, label %.loopexit1058, label %bb.fq

.loopexit1058:                                    ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, %.critedge.i.i.i.i.i, %_ZNK5folly7dynamic5itemsEv.exit.i, %bb.fp, %bb.fo
  %.not41.i = icmp eq ptr %i.afs, null
  br i1 %.not41.i, label %.loopexit1049, label %bb.hi

bb.hi:                                            ; preds = %.loopexit1058
  %i.alq = load i32, ptr %i.afs, align 8, !tbaa !8339, !noalias !11120
  %.not.i.i.i68.i = icmp eq i32 %i.alq, 5
  br i1 %.not.i.i.i68.i, label %_ZNK5folly7dynamic5itemsEv.exit71.i, label %.loopexit1049

_ZNK5folly7dynamic5itemsEv.exit71.i:              ; preds = %bb.hi
  %i.alr = getelementptr inbounds nuw i8, ptr %i.afs, i64 24
  %i.als = load i64, ptr %i.alr, align 8, !tbaa !9881, !noalias !11120 ; 3 uses
  %i.alt = and i64 %i.als, -8                     ; 2 uses
  %.not10251203 = icmp eq i64 %i.alt, 0
  br i1 %.not10251203, label %.loopexit1049, label %.lr.ph1206

.lr.ph1206:                                       ; preds = %_ZNK5folly7dynamic5itemsEv.exit71.i
  %i.alu = inttoptr i64 %i.alt to ptr
  %i.alv = shl i64 %i.als, 1
  %i.alw = and i64 %i.alv, 14
  %i.alx = lshr i64 %i.als, 3
  %i.aly = and i64 %i.alx, 1
  %i.alz = or disjoint i64 %i.alw, %i.aly
  %i.ama = getelementptr inbounds nuw i8, ptr %i.afy, i64 72 ; 4 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.afy, i64 80 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %bb.hj

bb.hj:                                            ; preds = %.lr.ph1206, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i
  %.sroa.9.01205 = phi i64 [ %i.alz, %.lr.ph1206 ], [ %.sroa.9.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i ] ; 3 uses
  %.sroa.0992.01204 = phi ptr [ %i.alu, %.lr.ph1206 ], [ %.sroa.0992.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i ] ; 3 uses
  %i.amd = load ptr, ptr %.sroa.0992.01204, align 8, !tbaa !9883, !noalias !11120 ; 5 uses
  %i.ame = load i32, ptr %i.amd, align 8, !tbaa !8339, !noalias !11120
  %.not.i.i.i74.i = icmp eq i32 %i.ame, 6
  br i1 %.not.i.i.i74.i, label %bb.hk, label %bb.is

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !11120
  %i.amf = load i32, ptr %i.amd, align 8, !tbaa !8339, !noalias !11120 ; 2 uses
  %.not.i.not.i.i.i75.i = icmp eq i32 %i.amf, 6
  br i1 %.not.i.not.i.i.i75.i, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit77.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.amg = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nameE, align 8, !tbaa !8346, !noalias !11120
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.amg, i32 noundef %i.amf) #20
          to label %.noexc76.i unwind label %bb.ip, !noalias !11120, !inline_history !10883

.noexc76.i:                                       ; preds = %bb.hl
  unreachable

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit77.i:  ; preds = %bb.hk
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !11120
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !462, !noalias !11120 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amd, i64 16
  %i.amk = load i64, ptr %i.amj, align 8, !tbaa !456, !noalias !11120
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.amk
  %i.amm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9do_assignEPKcS7_j(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.ami, ptr noundef %i.aml, i32 noundef 0)
          to label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i unwind label %bb.hm, !noalias !11120, !inline_history !10883 ; 0 uses

bb.hm:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit77.i
  %i.amn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost13re_detail_50026basic_regex_implementationIcNS0_12regex_traitsIcNS0_16cpp_regex_traitsIcEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23, !noalias !11120, !inline_history !10883
  br label %.body78.i

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i: ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit77.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !11120
  call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  %i.amo = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc81.i unwind label %bb.iq ; 6 uses

.noexc81.i:                                       ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amd, i64 40
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72)>, ptr %i.amo, align 8, !tbaa !436, !noalias !11126
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amq, i8 0, i64 24, i1 false), !noalias !11126
  store ptr %i.amo, ptr %10, align 8, !tbaa !438, !alias.scope !11125, !noalias !11120
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.amo, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.amp)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit84.i unwind label %bb.hn, !noalias !11127, !inline_history !10882

bb.hn:                                            ; preds = %.noexc81.i
  %i.amr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23, !noalias !11120, !inline_history !10882
  br label %.body82.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit84.i: ; preds = %.noexc81.i
  %i.ams = load ptr, ptr %i.ama, align 8, !tbaa !9886, !noalias !11120 ; 9 uses
  %i.amt = load ptr, ptr %i.amb, align 8, !tbaa !9887, !noalias !11120
  %.not.i85.i = icmp eq ptr %i.ams, %i.amt
  br i1 %.not.i85.i, label %bb.hs, label %bb.ho

bb.ho:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit84.i
  %.val5.i.i = load ptr, ptr %i.amc, align 8, !tbaa !473, !noalias !11120 ; 2 uses
  %i.amu = load <2 x ptr>, ptr %9, align 16, !tbaa !434, !noalias !11120
  store <2 x ptr> %i.amu, ptr %i.ams, align 8, !tbaa !434, !noalias !11120
  %.not.i.i.i.i.i.i.i.i682 = icmp eq ptr %.val5.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i682, label %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.amv = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8 ; 3 uses
  %i.amw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11120
  %.not.i.i.i.i.i.i.i.i.i683 = icmp eq i8 %i.amw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i683, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.amx = load i32, ptr %i.amv, align 4, !tbaa !542, !noalias !11120
  %i.amy = add nsw i32 %i.amx, 1
  store i32 %i.amy, ptr %i.amv, align 4, !tbaa !542, !noalias !11120
  br label %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i

bb.hr:                                            ; preds = %bb.hp
  %i.amz = atomicrmw volatile add ptr %i.amv, i32 1 acq_rel, align 4, !noalias !11120 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.ama, align 8, !tbaa !9886, !noalias !11120
  br label %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i

_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i: ; preds = %bb.hr, %bb.hq, %bb.ho
  %i.ana = phi ptr [ %i.ams, %bb.ho ], [ %i.ams, %bb.hq ], [ %.pre.i.i, %bb.hr ]
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  store ptr %i.amo, ptr %i.anb, align 8, !tbaa !8354, !noalias !11120
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ana, i64 24
  store ptr %i.anc, ptr %i.ama, align 8, !tbaa !9886, !noalias !11120
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit109.i

bb.hs:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit84.i
  %.val30.i.i.i = load ptr, ptr %i.agf, align 8, !tbaa !9888, !noalias !11120 ; 6 uses
  %i.and = ptrtoint ptr %i.ams to i64
  %i.ane = ptrtoint ptr %.val30.i.i.i to i64      ; 2 uses
  %i.anf = sub i64 %i.and, %i.ane                 ; 3 uses
  %i.ang = icmp eq i64 %i.anf, 9223372036854775800
  br i1 %i.ang, label %bb.ht, label %_ZNKSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ht:                                            ; preds = %bb.hs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc91.i unwind label %.loopexit.split-lp1051, !noalias !11120, !inline_history !10883

.noexc91.i:                                       ; preds = %bb.ht
  unreachable

_ZNKSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hs
  %i.anh = sdiv exact i64 %i.anf, 24              ; 3 uses
  %i.ani = icmp eq ptr %i.ams, %.val30.i.i.i      ; 2 uses
  %.sroa.speculated.i.i.i.i685 = select i1 %i.ani, i64 1, i64 %i.anh
  %i.anj = add nsw i64 %.sroa.speculated.i.i.i.i685, %i.anh ; 2 uses
  %i.ank = icmp ult i64 %i.anj, %i.anh
  %i.anl = call i64 @llvm.umin.i64(i64 %i.anj, i64 384307168202282325)
  %i.anm = select i1 %i.ank, i64 384307168202282325, i64 %i.anl ; 3 uses
  %.not.i.i.i87.i = icmp ne i64 %i.anm, 0
  call void @llvm.assume(i1 %.not.i.i.i87.i), !noalias !11120
  %i.ann = mul nuw nsw i64 %i.anm, 24
  %i.ano = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ann) #46
          to label %.noexc92.i unwind label %.loopexit1050, !noalias !11120, !inline_history !10883 ; 5 uses

.noexc92.i:                                       ; preds = %_ZNKSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anf ; 2 uses
  %.val29.i.i.i = load ptr, ptr %i.amc, align 8, !tbaa !473, !noalias !11120 ; 2 uses
  %i.anq = load <2 x ptr>, ptr %9, align 16, !tbaa !434, !noalias !11120
  store <2 x ptr> %i.anq, ptr %i.anp, align 8, !tbaa !434, !noalias !11120
  %.not.i.i.i.i.i.i.i8.i.i = icmp eq ptr %.val29.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i8.i.i, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %.noexc92.i
  %i.anr = getelementptr inbounds nuw i8, ptr %.val29.i.i.i, i64 8 ; 3 uses
  %i.ans = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11120
  %.not.i.i.i.i.i.i.i.i.i89.i = icmp eq i8 %i.ans, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i89.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ant = load i32, ptr %i.anr, align 4, !tbaa !542, !noalias !11120
  %i.anu = add nsw i32 %i.ant, 1
  store i32 %i.anu, ptr %i.anr, align 4, !tbaa !542, !noalias !11120
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  %i.anv = atomicrmw volatile add ptr %i.anr, i32 1 acq_rel, align 4, !noalias !11120 ; 0 uses
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %.noexc92.i
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store ptr %i.amo, ptr %i.anw, align 8, !tbaa !8354, !noalias !11120
  br i1 %i.ani, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i: ; preds = %bb.hx
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ano, i64 24
  br label %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.hx, %bb.ib
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.aoj, %bb.ib ], [ %i.ano, %bb.hx ] ; 4 uses
  %.sroa.010.011.i.i.i.i.i.i.i.i = phi ptr [ %i.aoi, %bb.ib ], [ %.val30.i.i.i, %bb.hx ] ; 4 uses
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i.i, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !473, !noalias !11120 ; 2 uses
  %i.aoa = load <2 x ptr>, ptr %.sroa.010.011.i.i.i.i.i.i.i.i, align 8, !tbaa !434, !noalias !11120
  store <2 x ptr> %i.aoa, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !434, !noalias !11120
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.anz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ib, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 8 ; 3 uses
  %i.aoc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11120
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aoc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ia, label %bb.hz

end_hunk_2
begin_hunk_3_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a

bb.if:                                            ; preds = %bb.ie
  %i.ape = add nsw i32 %i.aov, -1
  store i32 %i.ape, ptr %i.aos, align 8, !tbaa !542, !noalias !11120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %bb.ie
  %i.apf = atomicrmw volatile add ptr %i.aos, i32 -1 acq_rel, align 4, !noalias !11120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ig, %bb.if
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aov, %bb.if ], [ %i.apf, %bb.ig ]
  %i.apg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.apg, label %bb.ih, label %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i, !prof !425

bb.ih:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aor) #23, !noalias !11120, !inline_history !10883
  br label %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ih, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.id, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.aph = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i90.i = icmp eq ptr %i.aph, %i.ams
  br i1 %.not.i.i.i.i90.i, label %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i686, !llvm.loop !363

_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i: ; preds = %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i
  %i.api = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 48
  br label %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i
  %i.apj = phi ptr [ %i.anx, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i ], [ %i.api, %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i ]
  %.not.i44.i.i.i = icmp eq ptr %.val30.i.i.i, null
  br i1 %.not.i44.i.i.i, label %_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i, label %bb.ii

bb.ii:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i
  %i.apk = load ptr, ptr %i.amb, align 8, !tbaa !9887, !noalias !11120
  %i.apl = ptrtoint ptr %i.apk to i64
  %i.apm = sub i64 %i.apl, %i.ane
  call void @_ZdlPvm(ptr noundef nonnull %.val30.i.i.i, i64 noundef %i.apm) #47, !noalias !11120, !inline_history !10883
  br label %_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i: ; preds = %bb.ii, %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i
  store ptr %i.ano, ptr %i.agf, align 8, !tbaa !9888, !noalias !11120
  store ptr %i.apj, ptr %i.ama, align 8, !tbaa !9886, !noalias !11120
  %i.apn = getelementptr inbounds nuw [24 x i8], ptr %i.ano, i64 %i.anm
  store ptr %i.apn, ptr %i.amb, align 8, !tbaa !9887, !noalias !11120
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit109.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit109.i: ; preds = %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i, %_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !11120
  %i.apo = load ptr, ptr %i.amc, align 8, !tbaa !473, !noalias !11120 ; 8 uses
  %.not.i.i.i110.i = icmp eq ptr %i.apo, null
  br i1 %.not.i.i.i110.i, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i, label %bb.ij

bb.ij:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit109.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8 ; 4 uses
  %i.apq = load atomic i64, ptr %i.app acquire, align 8, !noalias !11120 ; 2 uses
  %i.apr = icmp eq i64 %i.apq, 4294967297
  %i.aps = trunc i64 %i.apq to i32                ; 2 uses
  br i1 %i.apr, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  store i32 0, ptr %i.app, align 8, !tbaa !475, !noalias !11120
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apo, i64 12
  store i32 0, ptr %i.apt, align 4, !tbaa !476, !noalias !11120
  %i.apu = load ptr, ptr %i.apo, align 8, !tbaa !436, !noalias !11120
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.apw = load ptr, ptr %i.apv, align 8, !noalias !11120
  call void %i.apw(ptr noundef nonnull align 8 dereferenceable(16) %i.apo) #23, !noalias !11120, !call_target !481, !inline_history !10893
  %i.apx = load ptr, ptr %i.apo, align 8, !tbaa !436, !noalias !11120
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  %i.apz = load ptr, ptr %i.apy, align 8, !noalias !11120
  call void %i.apz(ptr noundef nonnull align 8 dereferenceable(16) %i.apo) #23, !noalias !11120, !call_target !496, !inline_history !10893
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i

bb.il:                                            ; preds = %bb.ij
  %i.aqa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11120
  %.not.i.i.i.i111.i = icmp eq i8 %i.aqa, 0
  br i1 %.not.i.i.i.i111.i, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aqb = add nsw i32 %i.aps, -1
  store i32 %i.aqb, ptr %i.app, align 8, !tbaa !542, !noalias !11120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.in:                                            ; preds = %bb.il
  %i.aqc = atomicrmw volatile add ptr %i.app, i32 -1 acq_rel, align 4, !noalias !11120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.in, %bb.im
  %.0.i.i.i.i.i.i = phi i32 [ %i.aps, %bb.im ], [ %i.aqc, %bb.in ]
  %i.aqd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aqd, label %bb.io, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i, !prof !425

bb.io:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.apo) #23, !noalias !11120, !inline_history !10883
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i: ; preds = %bb.io, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ik, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !11120
  br label %bb.is

bb.ip:                                            ; preds = %bb.hl
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

bb.iq:                                            ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i
  %i.aqf = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

.loopexit1050:                                    ; preds = %_ZNKSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1052 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

.loopexit.split-lp1051:                           ; preds = %bb.ht
  %lpad.loopexit.split-lp1053 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

bb.ir:                                            ; preds = %.loopexit.split-lp1051, %.loopexit1050
  %lpad.phi1054 = phi { ptr, i32 } [ %lpad.loopexit1052, %.loopexit1050 ], [ %lpad.loopexit.split-lp1053, %.loopexit.split-lp1051 ]
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23, !noalias !11120, !inline_history !10883
  br label %.body82.i

.body82.i:                                        ; preds = %bb.hn, %bb.iq, %bb.ir
  %.pn.i = phi { ptr, i32 } [ %lpad.phi1054, %bb.ir ], [ %i.aqf, %bb.iq ], [ %i.amr, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !11120
  call void @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23, !noalias !11120, !inline_history !10883
  br label %.body78.i

.body78.i:                                        ; preds = %bb.hm, %bb.ip, %.body82.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body82.i ], [ %i.aqe, %bb.ip ], [ %i.amn, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !11120
  br label %bb.ja

bb.is:                                            ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i, %bb.hj
  %i.aqg = getelementptr inbounds i8, ptr %.sroa.0992.01204, i64 -16
  %.neg.i.i.i.i.i112.i = mul nsw i64 %.sroa.9.01205, -8
  %i.aqh = getelementptr inbounds i8, ptr %i.aqg, i64 %.neg.i.i.i.i.i112.i ; 2 uses
  %.not19.i5.i.i.i113.i = icmp eq i64 %.sroa.9.01205, 0
  br i1 %.not19.i5.i.i.i113.i, label %.critedge.i.i.i.i118.i.preheader, label %thread-pre-split.i.i.i114.i

.critedge.i.i.i.i118.i.preheader:                 ; preds = %bb.it, %bb.is
  br label %.critedge.i.i.i.i118.i

bb.it:                                            ; preds = %thread-pre-split.i.i.i114.i
  %.not19.i.i.i.i116.i = icmp eq i64 %i.aqk, 0
  br i1 %.not19.i.i.i.i116.i, label %.critedge.i.i.i.i118.i.preheader, label %thread-pre-split.i.i.i114.i

thread-pre-split.i.i.i114.i:                      ; preds = %bb.is, %bb.it
  %i.aqi = phi i64 [ %i.aqk, %bb.it ], [ %.sroa.9.01205, %bb.is ]
  %i.aqj = phi ptr [ %i.aql, %bb.it ], [ %.sroa.0992.01204, %bb.is ]
  %i.aqk = add nsw i64 %i.aqi, -1                 ; 4 uses
  %i.aql = getelementptr inbounds i8, ptr %i.aqj, i64 -8 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqh, i64 %i.aqk
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !428, !noalias !11120
  %.not.i.i.i115.i = icmp eq i8 %i.aqn, 0
  br i1 %.not.i.i.i115.i, label %bb.it, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i, !prof !425, !llvm.loop !361

.critedge.i.i.i.i118.i:                           ; preds = %.critedge.i.i.i.i118.i.preheader, %bb.iu
  %.017.i.i.i.i119.i = phi ptr [ %i.aqr, %bb.iu ], [ %i.aqh, %.critedge.i.i.i.i118.i.preheader ] ; 3 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i119.i, i64 14
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !428, !noalias !11120
  %i.aqq = and i8 %i.aqp, 15
  %.not2.i.i.i120.i = icmp eq i8 %i.aqq, 0
  br i1 %.not2.i.i.i120.i, label %bb.iu, label %.loopexit1049, !prof !643

bb.iu:                                            ; preds = %.critedge.i.i.i.i118.i
  %i.aqr = getelementptr inbounds i8, ptr %.017.i.i.i.i119.i, i64 -128 ; 4 uses
  %i.aqs = load <16 x i8>, ptr %i.aqr, align 16, !tbaa !428, !noalias !11120
  %i.aqt = icmp eq <16 x i8> %i.aqs, zeroinitializer
  %i.aqu = bitcast <16 x i1> %i.aqt to i16
  %i.aqv = and i16 %i.aqu, 16383                  ; 2 uses
  %i.aqw = getelementptr inbounds i8, ptr %.017.i.i.i.i119.i, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.aqw, i32 0, i32 3, i32 1), !noalias !11120
  %.not3.i.i.i123.i = icmp eq i16 %i.aqv, 16383
  br i1 %.not3.i.i.i123.i, label %.critedge.i.i.i.i118.i, label %bb.iv, !prof !425, !llvm.loop !362

bb.iv:                                            ; preds = %bb.iu
  %i.aqx = xor i16 %i.aqv, 16383
  %i.aqy = zext nneg i16 %i.aqx to i32
  %i.aqz = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aqy, i1 true)
  %i.ara = xor i32 %i.aqz, 31
  %i.arb = zext nneg i32 %i.ara to i64            ; 2 uses
  %i.arc = icmp ne ptr %i.aqr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.arc), !noalias !11120
  %i.ard = shl nuw nsw i64 %i.arb, 3
  %i.are = getelementptr i8, ptr %i.aqr, i64 %i.ard
  %i.arf = getelementptr i8, ptr %i.are, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i: ; preds = %thread-pre-split.i.i.i114.i, %bb.iv
  %.sroa.0992.1 = phi ptr [ %i.arf, %bb.iv ], [ %i.aql, %thread-pre-split.i.i.i114.i ] ; 2 uses
  %.sroa.9.1 = phi i64 [ %i.arb, %bb.iv ], [ %i.aqk, %thread-pre-split.i.i.i114.i ]
  %.not1025 = icmp eq ptr %.sroa.0992.1, null
  br i1 %.not1025, label %.loopexit1049, label %bb.hj

.loopexit1049:                                    ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i, %.critedge.i.i.i.i118.i, %_ZNK5folly7dynamic5itemsEv.exit71.i, %bb.hi, %.loopexit1058
  %.not42.i = icmp eq ptr %i.aft, null
  br i1 %.not42.i, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.iw

bb.iw:                                            ; preds = %.loopexit1049
  %i.arg = load i32, ptr %i.aft, align 8, !tbaa !8339, !noalias !11120
  switch i32 %i.arg, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit [
    i32 2, label %_ZNKR5folly7dynamic7getBoolEv.exit.i681
    i32 5, label %bb.ix
  ]

_ZNKR5folly7dynamic7getBoolEv.exit.i681:          ; preds = %bb.iw
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %i.ari = load i8, ptr %i.arh, align 8, !tbaa !651, !range !629, !noalias !11120, !noundef !530
  store i8 %i.ari, ptr %i.agh, align 8, !tbaa !9880, !noalias !11120
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !11120
  call void @llvm.experimental.noalias.scope.decl(metadata !11128)
  %i.arj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc130.i unwind label %bb.iz ; 6 uses

.noexc130.i:                                      ; preds = %bb.ix
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.arj, align 8, !tbaa !436, !noalias !11129
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.ark, align 8, !tbaa !436, !noalias !11129
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arl, i8 0, i64 24, i1 false), !noalias !11129
  store ptr %i.arj, ptr %11, align 8, !tbaa !438, !alias.scope !11128, !noalias !11120
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.arj, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.aft)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i unwind label %bb.iy, !noalias !11130, !inline_history !10882

bb.iy:                                            ; preds = %.noexc130.i
  %i.arm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23, !noalias !11120, !inline_history !10882
  br label %.body131.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i: ; preds = %.noexc130.i
  %i.arn = load ptr, ptr %i.agg, align 8, !tbaa !466, !noalias !11120 ; 3 uses
  store ptr %i.arj, ptr %i.agg, align 8, !tbaa !466, !noalias !11120
  %.not.i.i.i134.i = icmp eq ptr %i.arn, null
  br i1 %.not.i.i.i134.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i135.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i135.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !436, !noalias !11120
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 8
  %i.arq = load ptr, ptr %i.arp, align 8, !noalias !11120
  call void %i.arq(ptr noundef nonnull align 8 dereferenceable(8) %i.arn) #23, !noalias !11120, !call_target !8389, !inline_history !10885
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !11120
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.iz:                                            ; preds = %bb.ix
  %i.arr = landingpad { ptr, i32 }
          cleanup
  br label %.body131.i

.body131.i:                                       ; preds = %bb.iz, %bb.iy
  %eh.lpad-body132.i = phi { ptr, i32 } [ %i.arr, %bb.iz ], [ %i.arm, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !11120
  br label %bb.ja

bb.ja:                                            ; preds = %.body131.i, %.body78.i, %.body.i690
  %.pn53.pn.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body132.i, %.body131.i ], [ %.pn.pn.i, %.body78.i ], [ %.pn50.i, %.body.i690 ]
  %i.ars = load ptr, ptr %i.agg, align 8, !tbaa !466, !noalias !11120 ; 3 uses
  %.not.i154.i = icmp eq ptr %i.ars, null
  br i1 %.not.i154.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i679

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i679: ; preds = %bb.ja
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !436, !noalias !11120
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  %i.arv = load ptr, ptr %i.aru, align 8, !noalias !11120
  call void %i.arv(ptr noundef nonnull align 8 dereferenceable(8) %i.ars) #23, !noalias !11120, !call_target !8389, !inline_history !10898
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i679, %bb.ja
  call fastcc void @_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.agf) #23, !noalias !11120, !inline_history !10883
  call fastcc void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.afz) #23, !noalias !11120, !inline_history !10883
  call void @_ZdlPvm(ptr noundef nonnull %i.afy, i64 noundef 104) #47, !noalias !11120, !inline_history !10877
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.iw, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i, %_ZNKR5folly7dynamic7getBoolEv.exit.i681, %.loopexit1049
  store ptr %i.afy, ptr %31, align 8, !tbaa !9890
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !8351 ; 6 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !8352
  %.not.i404 = icmp eq ptr %i.arx, %i.arz
  br i1 %.not.i404, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %31, align 8, !tbaa !9890
  store ptr %i.afy, ptr %i.arx, align 8, !tbaa !8354
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 8
  store ptr %i.asa, ptr %i.arw, align 8, !tbaa !8351
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEERS7_DpOT_.exit

bb.jc:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i405 = load ptr, ptr %i.afx, align 8, !tbaa !8355 ; 10 uses
  %i.asb = ptrtoint ptr %i.arx to i64             ; 3 uses
  %i.asc = ptrtoint ptr %.val.i.i405 to i64       ; 4 uses
  %i.asd = sub i64 %i.asb, %i.asc                 ; 3 uses
  %i.ase = icmp eq i64 %i.asd, 9223372036854775800
  br i1 %i.ase, label %bb.jd, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i406

bb.jd:                                            ; preds = %bb.jc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc417 unwind label %bb.jf

.noexc417:                                        ; preds = %bb.jd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i406: ; preds = %bb.jc
  %i.asf = ashr exact i64 %i.asd, 3               ; 3 uses
  %i.asg = icmp eq ptr %i.arx, %.val.i.i405       ; 2 uses
  %.sroa.speculated.i.i.i407 = select i1 %i.asg, i64 1, i64 %i.asf
  %i.ash = add nsw i64 %.sroa.speculated.i.i.i407, %i.asf ; 2 uses
  %i.asi = icmp ult i64 %i.ash, %i.asf
  %i.asj = call i64 @llvm.umin.i64(i64 %i.ash, i64 1152921504606846975)
  %i.ask = select i1 %i.asi, i64 1152921504606846975, i64 %i.asj ; 3 uses
  %.not.i.i.i408 = icmp ne i64 %i.ask, 0
  call void @llvm.assume(i1 %.not.i.i.i408)
  %i.asl = shl nuw nsw i64 %i.ask, 3
  %i.asm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asl) #46
          to label %.noexc418 unwind label %bb.jf ; 10 uses

.noexc418:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i406
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 %i.asd
  store ptr null, ptr %31, align 8, !tbaa !9890
  store ptr %i.afy, ptr %i.asn, align 8, !tbaa !8354
  br i1 %i.asg, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414, label %.lr.ph.i.i.i.i.i409.preheader

.lr.ph.i.i.i.i.i409.preheader:                    ; preds = %.noexc418
  %i.aso = add i64 %i.asb, -8
  %i.asp = sub i64 %i.aso, %i.asc                 ; 2 uses
  %i.asq = lshr i64 %i.asp, 3
  %i.asr = add nuw nsw i64 %i.asq, 1              ; 2 uses
  %min.iters.check2661 = icmp ult i64 %i.asp, 136
  br i1 %min.iters.check2661, label %.lr.ph.i.i.i.i.i409.preheader2966, label %vector.memcheck2654

vector.memcheck2654:                              ; preds = %.lr.ph.i.i.i.i.i409.preheader
  %i.ass = add i64 %i.asb, -8
  %i.ast = sub i64 %i.ass, %i.asc
  %i.asu = and i64 %i.ast, -8
  %i.asv = add i64 %i.asu, 8                      ; 2 uses
  %scevgep2655 = getelementptr i8, ptr %i.asm, i64 %i.asv
  %scevgep2656 = getelementptr i8, ptr %.val.i.i405, i64 %i.asv
  %bound02657 = icmp ult ptr %i.asm, %scevgep2656
  %bound12658 = icmp ult ptr %.val.i.i405, %scevgep2655
  %found.conflict2659 = and i1 %bound02657, %bound12658
  br i1 %found.conflict2659, label %.lr.ph.i.i.i.i.i409.preheader2966, label %vector.ph2662

vector.ph2662:                                    ; preds = %vector.memcheck2654
  %n.vec2663 = and i64 %i.asr, 4611686018427387900 ; 3 uses
  %i.asw = shl i64 %n.vec2663, 3                  ; 2 uses
  %i.asx = getelementptr i8, ptr %i.asm, i64 %i.asw ; 2 uses
  %i.asy = getelementptr i8, ptr %.val.i.i405, i64 %i.asw
  br label %vector.body2664

vector.body2664:                                  ; preds = %vector.body2664, %vector.ph2662
  %index2665 = phi i64 [ 0, %vector.ph2662 ], [ %index.next2670, %vector.body2664 ] ; 2 uses
  %i.asz = shl i64 %index2665, 3                  ; 2 uses
  %next.gep2666 = getelementptr i8, ptr %i.asm, i64 %i.asz ; 2 uses
  %next.gep2667 = getelementptr i8, ptr %.val.i.i405, i64 %i.asz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11131)
  call void @llvm.experimental.noalias.scope.decl(metadata !11132)
  %i.ata = getelementptr i8, ptr %next.gep2667, i64 16
  %wide.load2668 = load <2 x i64>, ptr %next.gep2667, align 8, !tbaa !466, !alias.scope !11133, !noalias !11131
  %wide.load2669 = load <2 x i64>, ptr %i.ata, align 8, !tbaa !466, !alias.scope !11133, !noalias !11131
  %i.atb = getelementptr i8, ptr %next.gep2666, i64 16
  store <2 x i64> %wide.load2668, ptr %next.gep2666, align 8, !tbaa !466, !alias.scope !11134, !noalias !11133
  store <2 x i64> %wide.load2669, ptr %i.atb, align 8, !tbaa !466, !alias.scope !11134, !noalias !11133
  %i.atc = getelementptr i8, ptr %next.gep2667, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2667, align 8, !tbaa !466, !alias.scope !11133, !noalias !11131
  store <2 x ptr> splat (ptr null), ptr %i.atc, align 8, !tbaa !466, !alias.scope !11133, !noalias !11131
  %index.next2670 = add nuw i64 %index2665, 4     ; 2 uses
  %i.atd = icmp eq i64 %index.next2670, %n.vec2663
  br i1 %i.atd, label %middle.block2671, label %vector.body2664, !llvm.loop !10905

middle.block2671:                                 ; preds = %vector.body2664
  %cmp.n2672 = icmp eq i64 %i.asr, %n.vec2663
  br i1 %cmp.n2672, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414, label %.lr.ph.i.i.i.i.i409.preheader2966

.lr.ph.i.i.i.i.i409.preheader2966:                ; preds = %vector.memcheck2654, %.lr.ph.i.i.i.i.i409.preheader, %middle.block2671
  %.03.i.i.i.i.i410.ph = phi ptr [ %i.asm, %vector.memcheck2654 ], [ %i.asm, %.lr.ph.i.i.i.i.i409.preheader ], [ %i.asx, %middle.block2671 ]
  %.092.i.i.i.i.i411.ph = phi ptr [ %.val.i.i405, %vector.memcheck2654 ], [ %.val.i.i405, %.lr.ph.i.i.i.i.i409.preheader ], [ %i.asy, %middle.block2671 ]
  br label %.lr.ph.i.i.i.i.i409

.lr.ph.i.i.i.i.i409:                              ; preds = %.lr.ph.i.i.i.i.i409.preheader2966, %.lr.ph.i.i.i.i.i409
  %.03.i.i.i.i.i410 = phi ptr [ %i.atf, %.lr.ph.i.i.i.i.i409 ], [ %.03.i.i.i.i.i410.ph, %.lr.ph.i.i.i.i.i409.preheader2966 ] ; 2 uses
  %.092.i.i.i.i.i411 = phi ptr [ %i.ate, %.lr.ph.i.i.i.i.i409 ], [ %.092.i.i.i.i.i411.ph, %.lr.ph.i.i.i.i.i409.preheader2966 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11131)
  call void @llvm.experimental.noalias.scope.decl(metadata !11132)
  %.val.i.i.i.i.i.i.i.i.i.i412 = load i64, ptr %.092.i.i.i.i.i411, align 8, !tbaa !466, !alias.scope !11132, !noalias !11131
  store i64 %.val.i.i.i.i.i.i.i.i.i.i412, ptr %.03.i.i.i.i.i410, align 8, !tbaa !466, !alias.scope !11131, !noalias !11132
  store ptr null, ptr %.092.i.i.i.i.i411, align 8, !tbaa !466, !alias.scope !11132, !noalias !11131
  %i.ate = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i411, i64 8 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i410, i64 8 ; 2 uses
  %.not.i.i.i.i.i413 = icmp eq ptr %i.ate, %i.arx
end_hunk_3
