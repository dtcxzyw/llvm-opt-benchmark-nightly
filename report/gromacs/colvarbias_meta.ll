Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_meta?download=true
inline.NumInlined: 4972
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN15colvarbias_meta4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  br i1 %.not.i.i.i588, label %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I18colvar_grid_scalarvEERKS_IT_E.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8 ; 3 uses
  %i.aqy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.aqy, 0
  br i1 %.not.i.i.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aqz = load i32, ptr %i.aqx, align 4, !tbaa !194
  %i.ara = add nsw i32 %i.aqz, 1
  store i32 %i.ara, ptr %i.aqx, align 4, !tbaa !194
  br label %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I18colvar_grid_scalarvEERKS_IT_E.exit

bb.em:                                            ; preds = %bb.ek
  %i.arb = atomicrmw volatile add ptr %i.aqx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I18colvar_grid_scalarvEERKS_IT_E.exit

_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I18colvar_grid_scalarvEERKS_IT_E.exit: ; preds = %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.el, %bb.em
  %i.arc = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  store ptr %i.arc, ptr %38, align 8, !tbaa !32
  %i.ard = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 0, ptr %i.ard, align 8, !tbaa !38
  store i8 0, ptr %i.arc, align 8, !tbaa !37
  invoke void @_ZN20colvar_grid_gradientC1ERSt6vectorIP6colvarSaIS2_EESt10shared_ptrI17colvar_grid_countES6_IK18colvar_grid_paramsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(728) %i.aql, ptr noundef nonnull align 8 dereferenceable(24) %i.aqq, ptr noundef nonnull align 8 %36, ptr noundef nonnull align 8 %37, ptr noundef nonnull align 8 %38)
          to label %bb.en unwind label %bb.fd

bb.en:                                            ; preds = %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I18colvar_grid_scalarvEERKS_IT_E.exit
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE5resetIS0_EENSt9enable_ifIXsr21__sp_is_constructibleIS0_T_EE5valueEvE4typeEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.are, ptr noundef nonnull %i.aql)
          to label %bb.eo unwind label %bb.fd

bb.eo:                                            ; preds = %bb.en
  %i.arf = load ptr, ptr %38, align 8, !tbaa !36  ; 2 uses
  %i.arg = icmp eq ptr %i.arf, %i.arc
  br i1 %i.arg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589: ; preds = %bb.eo
  %i.arh = load i64, ptr %i.arc, align 8, !tbaa !37
  %i.ari = add i64 %i.arh, 1
  call void @_ZdlPvm(ptr noundef %i.arf, i64 noundef %i.ari) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589
  %i.arj = load ptr, ptr %i.aqu, align 8, !tbaa !190 ; 8 uses
  %.not.i.i592 = icmp eq ptr %i.arj, null
  br i1 %.not.i.i592, label %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 8 ; 4 uses
  %i.arl = load atomic i64, ptr %i.ark acquire, align 8 ; 2 uses
  %i.arm = icmp eq i64 %i.arl, 4294967297
  %i.arn = trunc i64 %i.arl to i32                ; 2 uses
  br i1 %i.arm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.ark, align 8, !tbaa !192
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arj, i64 12
  store i32 0, ptr %i.aro, align 4, !tbaa !193
  %i.arp = load ptr, ptr %i.arj, align 8, !tbaa !28
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  %i.arr = load ptr, ptr %i.arq, align 8
  call void %i.arr(ptr noundef nonnull align 8 dereferenceable(16) %i.arj) #24, !inline_history !0
  %i.ars = load ptr, ptr %i.arj, align 8, !tbaa !28
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 24
  %i.aru = load ptr, ptr %i.art, align 8
  call void %i.aru(ptr noundef nonnull align 8 dereferenceable(16) %i.arj) #24, !inline_history !0
  br label %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596

bb.er:                                            ; preds = %bb.ep
  %i.arv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i593 = icmp eq i8 %i.arv, 0
  br i1 %.not.i.i.i593, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.arw = add nsw i32 %i.arn, -1
  store i32 %i.arw, ptr %i.ark, align 8, !tbaa !194
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i594

bb.et:                                            ; preds = %bb.er
  %i.arx = atomicrmw volatile add ptr %i.ark, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i594

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i594: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i595 = phi i32 [ %i.arn, %bb.es ], [ %i.arx, %bb.et ]
  %i.ary = icmp eq i32 %.0.i.i.i.i595, 1
  br i1 %i.ary, label %bb.eu, label %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596, !prof !195

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i594
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.arj) #24
  br label %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596

_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, %bb.eq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i594, %bb.eu
  %i.arz = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !190 ; 8 uses
  %.not.i.i597 = icmp eq ptr %i.asa, null
  br i1 %.not.i.i597, label %bb.fg, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 8 ; 4 uses
  %i.asc = load atomic i64, ptr %i.asb acquire, align 8 ; 2 uses
  %i.asd = icmp eq i64 %i.asc, 4294967297
  %i.ase = trunc i64 %i.asc to i32                ; 2 uses
  br i1 %i.asd, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.asb, align 8, !tbaa !192
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asa, i64 12
  store i32 0, ptr %i.asf, align 4, !tbaa !193
  %i.asg = load ptr, ptr %i.asa, align 8, !tbaa !28
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  %i.asi = load ptr, ptr %i.ash, align 8
  call void %i.asi(ptr noundef nonnull align 8 dereferenceable(16) %i.asa) #24, !inline_history !1
  %i.asj = load ptr, ptr %i.asa, align 8, !tbaa !28
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 24
  %i.asl = load ptr, ptr %i.ask, align 8
  call void %i.asl(ptr noundef nonnull align 8 dereferenceable(16) %i.asa) #24, !inline_history !1
  br label %bb.fg

bb.ex:                                            ; preds = %bb.ev
  %i.asm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i598 = icmp eq i8 %i.asm, 0
  br i1 %.not.i.i.i598, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.asn = add nsw i32 %i.ase, -1
  store i32 %i.asn, ptr %i.asb, align 8, !tbaa !194
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i599

bb.ez:                                            ; preds = %bb.ex
  %i.aso = atomicrmw volatile add ptr %i.asb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i599

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i599: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i600 = phi i32 [ %i.ase, %bb.ey ], [ %i.aso, %bb.ez ]
  %i.asp = icmp eq i32 %.0.i.i.i.i600, 1
  br i1 %i.asp, label %bb.fa, label %bb.fg, !prof !195

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i599
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.asa) #24
  br label %bb.fg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603.thread: ; preds = %.noexc.i582
  %i.asq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #24
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ec, %bb.eb
  %.071 = phi i1 [ false, %bb.ec ], [ true, %bb.eb ] ; 2 uses
  %i.asr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ass = load ptr, ptr %35, align 8, !tbaa !36  ; 2 uses
  %i.ast = icmp eq ptr %i.ass, %i.apb
  br i1 %i.ast, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601: ; preds = %bb.fb
  %i.asu = load i64, ptr %i.apb, align 8, !tbaa !37
  %i.asv = add i64 %i.asu, 1
  call void @_ZdlPvm(ptr noundef %i.ass, i64 noundef %i.asv) #25
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #24
  br i1 %.071, label %bb.fc, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603: ; preds = %bb.fb
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #24
  br i1 %.071, label %bb.fc, label %common.resume

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
  %.pn159733 = phi { ptr, i32 } [ %i.asq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603.thread ], [ %i.asr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603 ], [ %i.asr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aot, i64 noundef 712) #25
  br label %common.resume

bb.fd:                                            ; preds = %bb.en, %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I18colvar_grid_scalarvEERKS_IT_E.exit
  %.070 = phi i1 [ false, %bb.en ], [ true, %_ZNSt10shared_ptrIK18colvar_grid_paramsEC2I18colvar_grid_scalarvEERKS_IT_E.exit ]
  %i.asw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asx = load ptr, ptr %38, align 8, !tbaa !36  ; 2 uses
  %i.asy = icmp eq ptr %i.asx, %i.arc
  br i1 %i.asy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %bb.fd
  %i.asz = load i64, ptr %i.arc, align 8, !tbaa !37
  %i.ata = add i64 %i.asz, 1
  call void @_ZdlPvm(ptr noundef %i.asx, i64 noundef %i.ata) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
  call void @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #24
  call void @_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #24
  br i1 %.070, label %bb.fe, label %common.resume

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606
  call void @_ZdlPvm(ptr noundef nonnull %i.aql, i64 noundef 728) #25
  br label %common.resume

bb.ff:                                            ; preds = %bb.bm
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 0, ptr %i.atb, align 2, !tbaa !199
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %._crit_edge967, %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596, %bb.ew, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i599, %bb.fa
  %.4132 = phi i32 [ %.3131, %._crit_edge967 ], [ %.2130, %bb.ff ], [ %.3131, %_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit596 ], [ %.3131, %bb.ew ], [ %.3131, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i599 ], [ %.3131, %bb.fa ]
  %i.atc = load ptr, ptr %0, align 8, !tbaa !28
  %i.atd = getelementptr i8, ptr %i.atc, i64 -32
  %i.ate = load i64, ptr %i.atd, align 8
  %i.atf = getelementptr inbounds i8, ptr %0, i64 %i.ate
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ath = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %i.atf, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.atg, ptr noundef nonnull align 1 dereferenceable(1) %i.atg, i32 noundef 131078) ; 0 uses
  %i.ati = call noundef i32 @_ZN15colvarbias_meta20init_replicas_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.atj = call noundef i32 @_ZN15colvarbias_meta25init_well_tempered_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.atk = call noundef i32 @_ZN15colvarbias_meta18init_ebmeta_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.atl = or i32 %i.ati, %.4132
  %i.atm = or i32 %i.atl, %i.atk
  ret i32 %i.atm
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN15colvarbias_meta16clear_state_dataEv(ptr noundef nonnull align 8 dereferenceable(896) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !200 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  tail call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.d) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 128) #25
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.a, ptr %i.e, align 8, !tbaa !201
  store ptr %i.a, ptr %i.a, align 8, !tbaa !200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.f, align 8, !tbaa !202
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200  ; 2 uses
  %.not8.i.i1 = icmp eq ptr %i.h, %i.g
  br i1 %.not8.i.i1, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit5, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit, %.lr.ph.i.i2
  %.09.i.i3 = phi ptr [ %i.i, %.lr.ph.i.i2 ], [ %i.h, %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit ] ; 3 uses
  %i.i = load ptr, ptr %.09.i.i3, align 8, !tbaa !200 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i3, i64 16
  tail call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.j) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3, i64 noundef 128) #25
  %.not.i.i4 = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i4, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit5, label %.lr.ph.i.i2, !llvm.loop !2

_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit5: ; preds = %.lr.ph.i.i2, %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5clearEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.k, align 8, !tbaa !201
  store ptr %i.g, ptr %i.g, align 8, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.l, align 8, !tbaa !202
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN15colvarbias_meta6updateEv(ptr noundef nonnull align 8 dereferenceable(896) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = tail call noundef i32 @_ZN10colvarbias6updateEv(ptr noundef nonnull align 8 dereferenceable(312) %i.d)
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr i8, ptr %i.f, i64 -48
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = tail call noundef i32 @_ZN13colvarbias_ti6updateEv(ptr noundef nonnull align 8 dereferenceable(120) %i.i)
  %i.k = or i32 %i.j, %i.e
  %i.l = tail call noundef i32 @_ZN15colvarbias_meta18update_grid_paramsEv(ptr noundef nonnull align 8 dereferenceable(896) %0) ; 0 uses
  %i.m = tail call noundef i32 @_ZN15colvarbias_meta11update_biasEv(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.n = or i32 %i.k, %i.m                        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i8, ptr %i.o, align 8, !tbaa !185, !range !182, !noundef !183
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %_ZN15colvarbias_meta16update_grid_dataEv.exit

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr @_ZN12colvarmodule2itE, align 8, !tbaa !203
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load i64, ptr %i.s, align 8, !tbaa !186
  %i.u = urem i64 %i.r, %i.t
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %_ZN15colvarbias_meta16update_grid_dataEv.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.013.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !204
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !189
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !205
  tail call void @_ZN15colvarbias_meta13project_hillsESt14_List_iteratorINS_4hillEES2_P18colvar_grid_scalarP20colvar_grid_gradientb(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr %.sroa.013.0.copyload.i, ptr nonnull %i.x, ptr noundef %i.z, ptr noundef %i.ab, i1 noundef zeroext false)
  store ptr %i.x, ptr %i.w, align 8, !tbaa !204
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !184
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %.preheader.i, label %_ZN15colvarbias_meta16update_grid_dataEv.exit

.preheader.i:                                     ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !206
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !207 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %_ZN15colvarbias_meta16update_grid_dataEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.aj = phi ptr [ %i.as, %.lr.ph.i ], [ %i.ai, %.preheader.i ]
  %.014.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.014.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !209 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %.sroa.02.0.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !204
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !189
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !205
  tail call void @_ZN15colvarbias_meta13project_hillsESt14_List_iteratorINS_4hillEES2_P18colvar_grid_scalarP20colvar_grid_gradientb(ptr noundef nonnull align 8 dereferenceable(896) %i.al, ptr %.sroa.02.0.copyload.i, ptr nonnull %i.an, ptr noundef %i.ap, ptr noundef %i.ar, i1 noundef zeroext false)
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !207 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.014.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !209 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !204
  %i.ax = add nuw i64 %.014.i, 1                  ; 2 uses
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !206
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.as to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ult i64 %i.ax, %i.bc
  br i1 %i.bd, label %.lr.ph.i, label %_ZN15colvarbias_meta16update_grid_dataEv.exit, !llvm.loop !3

_ZN15colvarbias_meta16update_grid_dataEv.exit:    ; preds = %.lr.ph.i, %.preheader.i, %bb.c, %bb.b, %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !184
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN15colvarbias_meta16update_grid_dataEv.exit
  %i.bg = load i64, ptr @_ZN12colvarmodule2itE, align 8, !tbaa !203
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !210
  %i.bj = urem i64 %i.bg, %i.bi
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %0, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.bp = or i32 %i.bo, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN15colvarbias_meta16update_grid_dataEv.exit
  %.1 = phi i32 [ %i.bp, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %_ZN15colvarbias_meta16update_grid_dataEv.exit ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef null)
  %i.bu = or i32 %i.bt, %.1
  %i.bv = load ptr, ptr %0, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef null)
  %i.bz = or i32 %i.bu, %i.by
  ret i32 %i.bz
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN15colvarbias_meta13replica_shareEv(ptr noundef nonnull align 8 dereferenceable(896) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !184
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.e = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !212
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 864 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
end_hunk_0
begin_hunk_1_@_ZN15colvarbias_meta18read_replica_filesEv:bb.a
  %i.l = icmp ugt i64 %i.k, 8
  br i1 %i.l, label %.lr.ph2069, label %._crit_edge2070

.lr.ph2069:                                       ; preds = %bb.a
  %i.m = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !212
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 864 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %41, i64 8
  br label %bb.b

._crit_edge2070:                                  ; preds = %bb.fo, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph2069, %bb.fo
  %i.di = phi ptr [ %i.h, %.lr.ph2069 ], [ %i.bdx, %bb.fo ]
  %.02066 = phi i64 [ 1, %.lr.ph2069 ], [ %i.bdy, %bb.fo ] ; 28 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.02066
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !209 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !28
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 257
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !269, !range !182, !noundef !183
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 456
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !252, !range !182, !noundef !183
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.bv, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 432
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !38
  %.not = icmp eq i64 %i.dw, 0
  br i1 %.not, label %bb.av, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dx = load ptr, ptr %0, align 8, !tbaa !28
  %i.dy = getelementptr i8, ptr %i.dx, i64 -24
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds i8, ptr %0, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !36, !noalias !768
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !38, !noalias !768 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !32, !alias.scope !769
  store i64 0, ptr %i.o, align 8, !tbaa !38, !alias.scope !769
  store i8 0, ptr %i.n, align 8, !tbaa !37, !alias.scope !769
  %i.ef = add i64 %i.ee, 19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ef)
          to label %bb.f unwind label %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.eg = load i64, ptr %i.o, align 8, !tbaa !38, !alias.scope !769
  %i.eh = add i64 %i.eg, -4611686018427387885
  %i.ei = icmp ult i64 %i.eh, 19
  br i1 %i.ei, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.21, i64 noundef 19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ek = load i64, ptr %i.o, align 8, !tbaa !38, !alias.scope !769
  %i.el = sub i64 4611686018427387903, %i.ek
  %i.em = icmp ult i64 %i.el, %i.ee
  br i1 %i.em, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ec, i64 noundef %i.ee)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.e, %.invoke.i.i
  %lpad.loopexit.split-lp2579 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %7, align 8, !tbaa !36, !alias.scope !769 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.n
  br i1 %i.ep, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp
  %i.eq = load i64, ptr %i.n, align 8, !tbaa !37, !alias.scope !769
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #25
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp1212.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1172.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp, %bb.cb, %.loopexit.split-lp1137.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1117.loopexit.split-lp.loopexit.split-lp, %bb.ac, %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit926, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i927, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i627, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i554, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp2633, %.loopexit.split-lp1172.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2612, %.loopexit.split-lp1137.loopexit.split-lp.loopexit.split-lp ], [ %i.lx, %bb.ac ], [ %lpad.loopexit.split-lp2600, %.loopexit.split-lp1117.loopexit.split-lp.loopexit.split-lp ], [ %i.aat, %bb.cb ], [ %lpad.loopexit.split-lp2645, %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2560, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2579, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp2600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i269 ], [ %lpad.loopexit.split-lp2612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330 ], [ %lpad.loopexit.split-lp2645, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i554 ], [ %lpad.loopexit.split-lp2560, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i627 ], [ %lpad.loopexit.split-lp2633, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i855 ], [ %lpad.loopexit.split-lp2657, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i927 ], [ %.pn179.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040 ], [ %lpad.loopexit.split-lp2579, %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443 ], [ %.pn127.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.pn136.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ], [ %.pn173.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625 ], [ %.pn165.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740 ], [ %i.aat, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551 ], [ %.pn152.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit926 ], [ %lpad.loopexit.split-lp2657, %.loopexit.split-lp1212.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.es = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !770
  %i.et = icmp eq i64 %i.es, 4611686018427387903
  br i1 %i.et, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc unwind label %.loopexit.split-lp1087.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %.noexc188 unwind label %.loopexit.split-lp1087.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc188:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.p, ptr %6, align 8, !tbaa !32, !alias.scope !770
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !36 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 5 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %.noexc188
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !38 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  %i.fb = add nuw nsw i64 %i.ez, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.ew, i64 %i.fb, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc188
  store ptr %i.ev, ptr %6, align 8, !tbaa !36, !alias.scope !770
  %i.fc = load i64, ptr %i.ew, align 8, !tbaa !37
  store i64 %i.fc, ptr %i.p, align 8, !tbaa !37, !alias.scope !770
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.fd = phi i64 [ %i.ez, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.fd, ptr %i.q, align 8, !tbaa !38, !alias.scope !770
  store ptr %i.ew, ptr %i.eu, align 8, !tbaa !36
  store i64 0, ptr %i.fe, align 8, !tbaa !38
  store i8 0, ptr %i.ew, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.ff = load i64, ptr %i.q, align 8, !tbaa !38, !noalias !771
  %i.fg = and i64 %i.ff, -32
  %i.fh = icmp eq i64 %i.fg, 4611686018427387872
  br i1 %i.fh, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i189

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc193 unwind label %.loopexit.split-lp1092.loopexit.split-lp.loopexit.split-lp

.noexc193:                                        ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i189: ; preds = %bb.i
  %i.fi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.147, i64 noundef 32)
          to label %.noexc194 unwind label %.loopexit.split-lp1092.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc194:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i189
  store ptr %i.r, ptr %5, align 8, !tbaa !32, !alias.scope !771
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !36 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 5 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

bb.k:                                             ; preds = %.noexc194
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !38 ; 3 uses
  %i.fo = icmp ult i64 %i.fn, 16
  call void @llvm.assume(i1 %i.fo)
  %i.fp = add nuw nsw i64 %i.fn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.fk, i64 %i.fp, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %.noexc194
  store ptr %i.fj, ptr %5, align 8, !tbaa !36, !alias.scope !771
  %i.fq = load i64, ptr %i.fk, align 8, !tbaa !37
  store i64 %i.fq, ptr %i.r, align 8, !tbaa !37, !alias.scope !771
  %.phi.trans.insert.i191 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.pre.i192 = load i64, ptr %.phi.trans.insert.i191, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.k
  %i.fr = phi i64 [ %i.fn, %bb.k ], [ %.pre.i192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %i.fr, ptr %i.s, align 8, !tbaa !38, !alias.scope !771
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !36
  store i64 0, ptr %i.fs, align 8, !tbaa !38
  store i8 0, ptr %i.fk, align 8, !tbaa !37
  %i.ft = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.02066
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !209 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 240
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !38, !noalias !772 ; 2 uses
  %i.fy = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !772
  %i.fz = sub i64 4611686018427387903, %i.fy
  %i.ga = icmp ult i64 %i.fz, %i.fx
  br i1 %i.ga, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc199 unwind label %.loopexit.split-lp1097.loopexit.split-lp.loopexit.split-lp

.noexc199:                                        ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 232
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !36, !noalias !772
  %i.gd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.gc, i64 noundef %i.fx)
          to label %.noexc200 unwind label %.loopexit.split-lp1097.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc200:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.t, ptr %4, align 8, !tbaa !32, !alias.scope !772
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !36 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 5 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

bb.n:                                             ; preds = %.noexc200
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !38 ; 3 uses
  %i.gj = icmp ult i64 %i.gi, 16
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add nuw nsw i64 %i.gi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.gf, i64 %i.gk, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %.noexc200
  store ptr %i.ge, ptr %4, align 8, !tbaa !36, !alias.scope !772
  %i.gl = load i64, ptr %i.gf, align 8, !tbaa !37
  store i64 %i.gl, ptr %i.t, align 8, !tbaa !37, !alias.scope !772
  %.phi.trans.insert.i197 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.pre.i198 = load i64, ptr %.phi.trans.insert.i197, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.n
  %i.gm = phi i64 [ %i.gi, %bb.n ], [ %.pre.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.gm, ptr %i.u, align 8, !tbaa !38, !alias.scope !772
  store ptr %i.gf, ptr %i.gd, align 8, !tbaa !36
  store i64 0, ptr %i.gn, align 8, !tbaa !38
  store i8 0, ptr %i.gf, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.go = load i64, ptr %i.u, align 8, !tbaa !38, !noalias !773
  %i.gp = add i64 %i.go, -4611686018427387891
  %i.gq = icmp ult i64 %i.gp, 13
  br i1 %i.gq, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i201

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc205 unwind label %.loopexit.split-lp1102.loopexit.split-lp.loopexit.split-lp

.noexc205:                                        ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i201: ; preds = %bb.o
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.148, i64 noundef 13)
          to label %.noexc206 unwind label %.loopexit.split-lp1102.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc206:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i201
  store ptr %i.v, ptr %3, align 8, !tbaa !32, !alias.scope !773
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !36 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 5 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

bb.q:                                             ; preds = %.noexc206
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !38 ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 16
  call void @llvm.assume(i1 %i.gx)
  %i.gy = add nuw nsw i64 %i.gw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.gt, i64 %i.gy, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %.noexc206
  store ptr %i.gs, ptr %3, align 8, !tbaa !36, !alias.scope !773
  %i.gz = load i64, ptr %i.gt, align 8, !tbaa !37
  store i64 %i.gz, ptr %i.v, align 8, !tbaa !37, !alias.scope !773
  %.phi.trans.insert.i203 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.pre.i204 = load i64, ptr %.phi.trans.insert.i203, align 8, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.q
  %i.ha = phi i64 [ %i.gw, %bb.q ], [ %.pre.i204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.ha, ptr %i.w, align 8, !tbaa !38, !alias.scope !773
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !36
  store i64 0, ptr %i.hb, align 8, !tbaa !38
end_hunk_1
begin_hunk_2_@_ZN15colvarbias_meta18read_replica_filesEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414
  %i.xt = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.ap
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416
  %i.xv = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.xx = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %.02066
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !209
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 464 ; 2 uses
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !268
  %i.yc = add i64 %i.yb, 1
  store i64 %i.yc, ptr %i.ya, align 8, !tbaa !268
  br label %bb.bv

.loopexit.split-lp1142.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339, %bb.ax
  %lpad.loopexit.split-lp2615 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

.loopexit.split-lp1147.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347, %bb.ba
  %lpad.loopexit.split-lp2618 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

.loopexit.split-lp1152.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i355, %bb.bd
  %lpad.loopexit.split-lp2621 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

.loopexit.split-lp1157.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i363, %bb.bg
  %lpad.loopexit.split-lp2624 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

bb.bt:                                            ; preds = %bb.bi
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

.loopexit.split-lp1162.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i373, %.critedge.i379, %bb.bn
  %lpad.loopexit.split-lp2627 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

.loopexit.split-lp1167.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i388, %bb.bp
  %lpad.loopexit.split-lp2630 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

bb.bu:                                            ; preds = %bb.br
  %i.ye = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yf = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.bd
  br i1 %i.yg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %bb.bu
  %i.yh = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.yi = add i64 %i.yh, 1
  call void @_ZdlPvm(ptr noundef %i.yf, i64 noundef %i.yi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %bb.bu, %.loopexit.split-lp1167.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  %.pn = phi { ptr, i32 } [ %i.ye, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420 ], [ %lpad.loopexit.split-lp2630, %.loopexit.split-lp1167.loopexit.split-lp.loopexit.split-lp ], [ %i.ye, %bb.bu ] ; 2 uses
  %i.yj = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %i.bb
  br i1 %i.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %i.yl = load i64, ptr %i.bb, align 8, !tbaa !37
  %i.ym = add i64 %i.yl, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.ym) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, %.loopexit.split-lp1162.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423 ], [ %lpad.loopexit.split-lp2627, %.loopexit.split-lp1162.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422 ] ; 2 uses
  %i.yn = load ptr, ptr %21, align 8, !tbaa !36   ; 2 uses
  %i.yo = icmp eq ptr %i.yn, %i.ba
  br i1 %i.yo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425
  %i.yp = load i64, ptr %i.ba, align 8, !tbaa !37
  %i.yq = add i64 %i.yp, 1
  call void @_ZdlPvm(ptr noundef %i.yn, i64 noundef %i.yq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426, %bb.bt
  %.pn.pn.pn = phi { ptr, i32 } [ %i.yd, %bb.bt ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.yr = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.ys = icmp eq ptr %i.yr, %i.ax
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
  %i.yt = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.yu = add i64 %i.yt, 1
  call void @_ZdlPvm(ptr noundef %i.yr, i64 noundef %i.yu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, %.loopexit.split-lp1157.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429 ], [ %lpad.loopexit.split-lp2624, %.loopexit.split-lp1157.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428 ] ; 2 uses
  %i.yv = load ptr, ptr %17, align 8, !tbaa !36   ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.av
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431
  %i.yx = load i64, ptr %i.av, align 8, !tbaa !37
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %.loopexit.split-lp1152.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432 ], [ %lpad.loopexit.split-lp2621, %.loopexit.split-lp1152.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431 ] ; 2 uses
  %i.yz = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.za = icmp eq ptr %i.yz, %i.at
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434
  %i.zb = load i64, ptr %i.at, align 8, !tbaa !37
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, %.loopexit.split-lp1147.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435 ], [ %lpad.loopexit.split-lp2618, %.loopexit.split-lp1147.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434 ] ; 2 uses
  %i.zd = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.ar
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %i.zf = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %.loopexit.split-lp1142.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438 ], [ %lpad.loopexit.split-lp2615, %.loopexit.split-lp1142.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ]
  %i.zh = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.zi = icmp eq ptr %i.zh, %i.ap
  br i1 %i.zi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  %i.zj = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %common.resume

bb.bv:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, %bb.c
  %i.zl = load ptr, ptr %i.e, align 8, !tbaa !207 ; 2 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %.02066
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !209 ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 456
  %i.zp = load i8, ptr %i.zo, align 8, !tbaa !252, !range !182, !noundef !183
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zr, i8 0, i64 16, i1 false)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !207 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.02066
  %.pre2071 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !209
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.zs = phi ptr [ %.pre2071, %bb.bw ], [ %i.zn, %bb.bv ] ; 3 uses
  %i.zt = phi ptr [ %.pre, %bb.bw ], [ %i.zl, %bb.bv ]
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 480
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !38
  %.not142 = icmp eq i64 %i.zv, 0
  br i1 %.not142, label %bb.en, label %.noexc.i544

.noexc.i544:                                      ; preds = %bb.bx
  store ptr %i.bf, ptr %22, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 18, ptr %i.a, align 8, !tbaa !34
  %i.zw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.zw, ptr %22, align 8, !tbaa !36
  %i.zx = load i64, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  store i64 %i.zx, ptr %i.bf, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.zw, ptr noundef nonnull align 1 dereferenceable(18) @.str.119, i64 18, i1 false)
  store i64 %i.zx, ptr %i.bg, align 8, !tbaa !38
  %i.zy = load ptr, ptr %22, align 8, !tbaa !36
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zx
  store i8 0, ptr %i.zz, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %49 = getelementptr inbounds nuw i8, ptr %i.zs, i64 472
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN14colvarproxy_io12input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(224) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 %22, i1 noundef zeroext false)
          to label %bb.by unwind label %bb.cb     ; 14 uses

bb.by:                                            ; preds = %.noexc.i544
  %i.aab = load ptr, ptr %22, align 8, !tbaa !36  ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.bf
  br i1 %i.aac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547: ; preds = %bb.by
  %i.aad = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %i.aab, i64 noundef %i.aae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547
  %i.aaf = load ptr, ptr %i.aaa, align 8, !tbaa !28
  %i.aag = getelementptr i8, ptr %i.aaf, i64 -24
  %i.aah = load i64, ptr %i.aag, align 8          ; 2 uses
  %i.aai = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 32
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !251 ; 2 uses
  %i.aal = and i32 %i.aak, 5
  %.not.i550 = icmp eq i32 %i.aal, 0
  br i1 %.not.i550, label %bb.bz, label %bb.dv

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549
  %i.aam = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %.02066
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !209
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 504
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !789 ; 2 uses
  %i.aar = icmp sgt i64 %i.aaq, 0
  br i1 %i.aar, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.aas = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.aaa, i64 noundef %i.aaq, i32 noundef 0) ; 0 uses
  %.pre2072 = load ptr, ptr %i.aaa, align 8, !tbaa !28
  %.phi.trans.insert2073 = getelementptr i8, ptr %.pre2072, i64 -24
  %.pre2074 = load i64, ptr %.phi.trans.insert2073, align 8 ; 2 uses
  %.phi.trans.insert2075 = getelementptr inbounds i8, ptr %i.aaa, i64 %.pre2074
  %.phi.trans.insert2076 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2075, i64 32
  %.pre2077 = load i32, ptr %.phi.trans.insert2076, align 8, !tbaa !251
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc.i544
  %i.aat = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aau = load ptr, ptr %22, align 8, !tbaa !36  ; 2 uses
  %i.aav = icmp eq ptr %i.aau, %i.bf
  br i1 %i.aav, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %bb.cb
  %i.aaw = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.aax = add i64 %i.aaw, 1
  call void @_ZdlPvm(ptr noundef %i.aau, i64 noundef %i.aax) #25
  br label %common.resume

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %i.aay = phi i32 [ %.pre2077, %bb.ca ], [ %i.aak, %bb.bz ]
  %i.aaz = phi i64 [ %.pre2074, %bb.ca ], [ %i.aah, %bb.bz ]
  %i.aba = and i32 %i.aay, 5
  %.not1050 = icmp eq i32 %i.aba, 0
  br i1 %.not1050, label %.preheader, label %bb.cd

.preheader:                                       ; preds = %bb.cc
  %i.abb = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %.02066
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !209
  %i.abe = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN15colvarbias_meta19read_hill_template_ISiEERT_S2_(ptr noundef nonnull align 8 dereferenceable(896) %i.abd, ptr noundef nonnull align 8 dereferenceable(16) %i.aaa) ; 2 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !28
  %i.abg = getelementptr i8, ptr %i.abf, i64 -24
  %i.abh = load i64, ptr %i.abg, align 8
  %i.abi = getelementptr inbounds i8, ptr %i.abe, i64 %i.abh
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !251
  %i.abl = and i32 %i.abk, 5
  %.not.i6262065 = icmp eq i32 %i.abl, 0
  br i1 %.not.i6262065, label %.lr.ph, label %._crit_edge

bb.cd:                                            ; preds = %bb.cc
  %i.abm = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aaz
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.abm, i32 noundef 0)
  %i.abn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.aaa, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.abo = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %.02066
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !209
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abr, i8 0, i64 16, i1 false)
  %i.abs = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %.02066 ; 2 uses
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !209 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 456
  store i8 0, ptr %i.abv, align 8, !tbaa !252
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 464 ; 2 uses
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !268
  %i.aby = add i64 %i.abx, 1
  store i64 %i.aby, ptr %i.abw, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.abz = load ptr, ptr %i.abt, align 8, !tbaa !209 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 472
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !36, !noalias !790
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 480
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !38, !noalias !790 ; 3 uses
  store ptr %i.br, ptr %26, align 8, !tbaa !32, !alias.scope !791
  store i64 0, ptr %i.bs, align 8, !tbaa !38, !alias.scope !791
  store i8 0, ptr %i.br, align 8, !tbaa !37, !alias.scope !791
  %i.ace = add i64 %i.acd, 25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.ace)
          to label %bb.ce unwind label %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  %i.acf = load i64, ptr %i.bs, align 8, !tbaa !38, !alias.scope !791
  %i.acg = add i64 %i.acf, -4611686018427387879
  %i.ach = icmp ult i64 %i.acg, 25
  br i1 %i.ach, label %.invoke.i.i560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i557

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i557: ; preds = %bb.ce
  %i.aci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.150, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i558 unwind label %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i558: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i557
  %i.acj = load i64, ptr %i.bs, align 8, !tbaa !38, !alias.scope !791
  %i.ack = sub i64 4611686018427387903, %i.acj
  %i.acl = icmp ult i64 %i.ack, %i.acd
  br i1 %i.acl, label %.invoke.i.i560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i559

.invoke.i.i560:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i558, %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.cont.i.i561 unwind label %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp

.cont.i.i561:                                     ; preds = %.invoke.i.i560
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i559: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i558
  %i.acm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %i.acb, i64 noundef %i.acd)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit562 unwind label %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i559, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i557, %bb.cd, %.invoke.i.i560
  %lpad.loopexit.split-lp2645 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acn = load ptr, ptr %26, align 8, !tbaa !36, !alias.scope !791 ; 2 uses
  %i.aco = icmp eq ptr %i.acn, %i.br
  br i1 %i.aco, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i554: ; preds = %.loopexit.split-lp1192.loopexit.split-lp.loopexit.split-lp
  %i.acp = load i64, ptr %i.br, align 8, !tbaa !37, !alias.scope !791
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acq) #25
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit562: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i559
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.acr = load i64, ptr %i.bs, align 8, !tbaa !38, !noalias !792
  %i.acs = add i64 %i.acr, -4611686018427387858
  %i.act = icmp ult i64 %i.acs, 46
  br i1 %i.act, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i563

bb.cf:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit562
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc568 unwind label %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp

.noexc568:                                        ; preds = %bb.cf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i563: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit562
  %i.acu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.156, i64 noundef 46)
          to label %.noexc569 unwind label %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc569:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i563
  store ptr %i.bt, ptr %25, align 8, !tbaa !32, !alias.scope !792
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !36 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acu, i64 16 ; 5 uses
  %i.acx = icmp eq ptr %i.acv, %i.acw
  br i1 %i.acx, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564

bb.cg:                                            ; preds = %.noexc569
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !38 ; 3 uses
  %i.ada = icmp ult i64 %i.acz, 16
  call void @llvm.assume(i1 %i.ada)
  %i.adb = add nuw nsw i64 %i.acz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.acw, i64 %i.adb, i1 false)
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564: ; preds = %.noexc569
  store ptr %i.acv, ptr %25, align 8, !tbaa !36, !alias.scope !792
  %i.adc = load i64, ptr %i.acw, align 8, !tbaa !37
  store i64 %i.adc, ptr %i.bt, align 8, !tbaa !37, !alias.scope !792
  %.phi.trans.insert.i565 = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %.pre.i566 = load i64, ptr %.phi.trans.insert.i565, align 8, !tbaa !38
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564, %bb.cg
  %i.add = phi i64 [ %i.acz, %bb.cg ], [ %.pre.i566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564 ]
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  store i64 %i.add, ptr %i.bu, align 8, !tbaa !38, !alias.scope !792
end_hunk_2
begin_hunk_3_@_ZN11colvar_gridIdE20init_from_boundariesEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.kr = load i64, ptr %i.al, align 8, !tbaa !37
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %i.kt = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.bb
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.kv = load i64, ptr %i.bb, align 8, !tbaa !37
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.kx = load ptr, ptr %i.j, align 8, !tbaa !228 ; 2 uses
  %i.ky = getelementptr inbounds nuw [168 x i8], ptr %i.kx, i64 %.0366
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load double, ptr %i.kz, align 8, !tbaa !229
  %i.lb = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.0366
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !179
  %i.le = call double @llvm.fmuladd.f64(double %i.ee, double %i.ld, double %i.la)
  %i.lf = load ptr, ptr %i.o, align 8, !tbaa !228
  %i.lg = getelementptr inbounds nuw [168 x i8], ptr %i.lf, i64 %.0366
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store double %i.le, ptr %i.lh, align 8, !tbaa !229
  br label %bb.au

bb.an:                                            ; preds = %bb.b
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.c
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %2) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn41.pn = phi { ptr, i32 } [ %i.lj, %bb.ao ], [ %i.li, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.ba

bb.aq:                                            ; preds = %bb.o
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.r
  %lpad.loopexit.split-lp462 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.ar:                                            ; preds = %bb.t
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.critedge.i, %bb.y
  %lpad.loopexit.split-lp464 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

.loopexit.split-lp265.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.as:                                            ; preds = %bb.ac
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

.loopexit.split-lp270.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i101, %.critedge.i107, %bb.ah
  %lpad.loopexit.split-lp469 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i116, %bb.aj
  %lpad.loopexit.split-lp472 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.at:                                            ; preds = %bb.al
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.az
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.at
  %i.lq = load i64, ptr %i.az, align 8, !tbaa !37
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.at, %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  %.pn44 = phi { ptr, i32 } [ %i.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %lpad.loopexit.split-lp472, %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp ], [ %i.ln, %bb.at ] ; 2 uses
  %i.ls = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.ax
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.lu = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %.loopexit.split-lp270.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %lpad.loopexit.split-lp469, %.loopexit.split-lp270.loopexit.split-lp.loopexit.split-lp ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ] ; 2 uses
  %i.lw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.aw
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.ly = load i64, ptr %i.aw, align 8, !tbaa !37
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.as
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.lm, %bb.as ], [ %.pn44.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ma = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.at
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.mc = load i64, ptr %i.at, align 8, !tbaa !37
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %.loopexit.split-lp265.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp265.loopexit.split-lp.loopexit.split-lp ], [ %.pn44.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ] ; 2 uses
  %i.me = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.ar
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.mg = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %lpad.loopexit.split-lp464, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp ], [ %.pn44.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 2 uses
  %i.mi = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.aq
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.mk = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.ar
  %.pn44.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ll, %bb.ar ], [ %.pn44.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %.pn44.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.mm = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.an
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.mo = load i64, ptr %i.an, align 8, !tbaa !37
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  %.pn44.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %lpad.loopexit.split-lp462, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn44.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ] ; 2 uses
  %i.mq = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.al
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.ms = load i64, ptr %i.al, align 8, !tbaa !37
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.aq
  %.pn44.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lk, %bb.aq ], [ %.pn44.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %.pn44.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  %i.mu = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.bb
  br i1 %i.mv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.mw = load i64, ptr %i.bb, align 8, !tbaa !37
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176

bb.au:                                            ; preds = %_ZN11colvarvalueD2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.my = phi ptr [ %i.dt, %_ZN11colvarvalueD2Ev.exit78 ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ]
  %i.mz = load ptr, ptr %i.c, align 8, !tbaa !227 ; 4 uses
  %i.na = load ptr, ptr %i.bc, align 8, !tbaa !226
  %.not.i253 = icmp eq ptr %i.mz, %i.na
  br i1 %.not.i253, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 %i.ed, ptr %i.mz, align 4, !tbaa !194
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  store ptr %i.nb, ptr %i.c, align 8, !tbaa !227
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.aw:                                            ; preds = %bb.au
  %i.nc = load ptr, ptr %i.a, align 8, !tbaa !225 ; 4 uses
  %i.nd = ptrtoint ptr %i.mz to i64
  %i.ne = ptrtoint ptr %i.nc to i64               ; 2 uses
  %i.nf = sub i64 %i.nd, %i.ne                    ; 5 uses
  %i.ng = icmp eq i64 %i.nf, 9223372036854775804
  br i1 %i.ng, label %bb.ax, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aw
  %i.nh = ashr exact i64 %i.nf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.nh, i64 1)
  %i.ni = add nsw i64 %.sroa.speculated.i.i.i, %i.nh ; 2 uses
  %i.nj = icmp ult i64 %i.ni, %i.nh
  %i.nk = call i64 @llvm.umin.i64(i64 %i.ni, i64 2305843009213693951)
  %i.nl = select i1 %i.nj, i64 2305843009213693951, i64 %i.nk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.nl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.nm = shl nuw nsw i64 %i.nl, 2
  %i.nn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #27 ; 4 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.nf ; 2 uses
  store i32 %i.ed, ptr %i.no, align 4, !tbaa !194
  %i.np = icmp sgt i64 %i.nf, 0
  br i1 %i.np, label %bb.ay, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ay:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nn, ptr align 4 %i.nc, i64 %i.nf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ay, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %.not.i17.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.nr = load ptr, ptr %i.bc, align 8, !tbaa !226
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = sub i64 %i.ns, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.nt) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.az, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.nn, ptr %i.a, align 8, !tbaa !225
  store ptr %i.nq, ptr %i.c, align 8, !tbaa !227
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nl
  store ptr %i.nu, ptr %i.bc, align 8, !tbaa !226
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !228
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.nv = phi ptr [ %i.my, %bb.av ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.nw = add nuw i64 %.0366, 1                   ; 2 uses
  %i.nx = load ptr, ptr %i.k, align 8, !tbaa !291
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = sdiv exact i64 %i.oa, 168
  %i.oc = icmp ult i64 %i.nw, %i.ob
  br i1 %i.oc, label %bb.b, label %._crit_edge, !llvm.loop !920

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176
  %.pn53.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %bb.ap ], [ %.pn44.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176 ]
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !34
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !34
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !34
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !34
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !927

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !34
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !34
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !34
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !290
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !290
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !232
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !232
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.g, %i.av
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #26
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i, %i.az      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775744)
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = select i1 %i.bc, i64 9223372036854775807, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1152921504606846968
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #27 ; 5 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !232   ; 4 uses
  %i.bk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !294

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !34
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !34
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.br = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ch, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bs = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !34
  %i.bv = and i64 %i.bu, %i.bt
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bv, 0
  %i.bw = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bx = shl nuw i64 1, %i.bw                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !34
  %i.bz = or i64 %i.by, %i.bx
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ca = xor i64 %i.bx, -1
  %i.cb = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !34
  %i.cc = and i64 %i.cb, %i.ca
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.n ], [ %i.bz, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !34
  %i.cd = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.ce = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.ce, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.ce, i32 0, i32 %i.cd
  %i.cf = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.cg = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.cg, i32 0, i32 %i.cf ; 4 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.cg, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 5 uses
  %i.ch = add nsw i64 %.020.i.i.i.i.i.i, -1
end_hunk_3
begin_hunk_4_@_ZN11colvar_gridIdE5setupERKSt6vectorIiSaIiEERKdRKm:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i93, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !227
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ac = phi i64 [ %.pre, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !288 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !287
  %i.af = trunc i64 %i.ac to i32
  %.015159 = add i32 %i.af, -1                    ; 2 uses
  %i.ag = icmp sgt i32 %.015159, -1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !225
  %i.ai = zext nneg i32 %.015159 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.p
  %i.aj = phi i64 [ %i.ad, %.lr.ph ], [ %i.cz, %bb.p ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !194
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN12colvarmodule6to_strB5cxx11ERKimm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.ak, i64 noundef 0, i64 noundef 0)
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.98, i64 noundef 51)
          to label %.noexc98 unwind label %bb.m   ; 6 uses

.noexc98:                                         ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !32, !alias.scope !994
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !36 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

bb.g:                                             ; preds = %.noexc98
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !38 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %.noexc98
  store ptr %i.ap, ptr %5, align 8, !tbaa !36, !alias.scope !994
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !37
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !37, !alias.scope !994
  %.phi.trans.insert.i95 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i96 = load i64, ptr %.phi.trans.insert.i95, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.g
  %i.ax = phi i64 [ %i.at, %bb.g ], [ %.pre.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !38, !alias.scope !994
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !36
  store i64 0, ptr %i.ay, align 8, !tbaa !38
  store i8 0, ptr %i.aq, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !38, !noalias !995
  %i.bb = and i64 %i.ba, -2
  %i.bc = icmp eq i64 %i.bb, 4611686018427387902
  br i1 %i.bc, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc105 unwind label %bb.n

.noexc105:                                        ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100: ; preds = %bb.h
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.32, i64 noundef 2)
          to label %.noexc106 unwind label %bb.n  ; 6 uses

.noexc106:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !32, !alias.scope !995
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

bb.j:                                             ; preds = %.noexc106
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !38 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.noexc106
  store ptr %i.bf, ptr %4, align 8, !tbaa !36, !alias.scope !995
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !37
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !37, !alias.scope !995
  %.phi.trans.insert.i102 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i103 = load i64, ptr %.phi.trans.insert.i102, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.j
  %i.bn = phi i64 [ %i.bj, %bb.j ], [ %.pre.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !38, !alias.scope !995
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !36
  store i64 0, ptr %i.bo, align 8, !tbaa !38
  store i8 0, ptr %i.bg, align 8, !tbaa !37
  %i.bq = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.be
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.l
  %i.bt = load i64, ptr %i.be, align 8, !tbaa !37
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  %i.bv = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ao
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.bx = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.bz = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !37
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115

bb.m:                                             ; preds = %bb.f
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100, %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.o:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.be
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.o
  %i.cj = load i64, ptr %i.be, align 8, !tbaa !37
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.n
  %.pn34 = phi { ptr, i32 } [ %i.cf, %bb.n ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.cg, %bb.o ] ; 2 uses
  %i.cl = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ao
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.cn = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.m
  %.pn34.pn = phi { ptr, i32 } [ %i.ce, %bb.m ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  %i.cp = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !37
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124

bb.p:                                             ; preds = %bb.e
  %i.cu = trunc i64 %i.aj to i32
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !194
  %i.cx = load i32, ptr %i.ak, align 4, !tbaa !194
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.aj, %i.cy                    ; 3 uses
  store i64 %i.cz, ptr %i.ae, align 8, !tbaa !287
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.da = icmp sgt i64 %indvars.iv, 0
  br i1 %i.da, label %bb.e, label %._crit_edge, !llvm.loop !993

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.u

._crit_edge:                                      ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.db = phi i64 [ %i.ad, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.cz, %bb.p ] ; 5 uses
  %i.dc = icmp ugt i64 %i.db, 1152921504606846975
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #26
  unreachable

bb.r:                                             ; preds = %._crit_edge
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !261
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = icmp ult i64 %i.dj, %i.db
  br i1 %i.dk, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.r
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.dh
  %i.do = shl nuw nsw i64 %i.db, 3
  %i.dp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #27 ; 4 uses
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !100 ; 4 uses
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %bb.s, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.dq, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.s, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.dq, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  %i.dw = load ptr, ptr %i.dd, align 8, !tbaa !261
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dy) #25
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.t, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  store ptr %i.dp, ptr %i.c, align 8, !tbaa !100
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store ptr %i.dz, ptr %i.e, align 8, !tbaa !99
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.db
  store ptr %i.ea, ptr %i.dd, align 8, !tbaa !261
  %.pre163 = load i64, ptr %i.ae, align 8, !tbaa !287
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %bb.r, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.eb = phi i64 [ %i.db, %bb.r ], [ %.pre163, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %.128 = phi i32 [ 0, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115 ]
  ret i32 %.128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !225    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !194
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !227
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !194
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !194
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !226
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !225
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !227
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !226
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.i, label %bb.c, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #26
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load double, ptr %2, align 8, !tbaa !179 ; 9 uses
  %i.n = add nsw i64 %i.j, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1
  %xtraiter24 = and i64 %i.p, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.07.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  store double %i.m, ptr %.07.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !179
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !996

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.n, 56
  br i1 %i.r, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store double %i.m, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !179
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  store double %i.m, ptr %i.s, align 8, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store double %i.m, ptr %i.t, align 8, !tbaa !179
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 24
  store double %i.m, ptr %i.u, align 8, !tbaa !179
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store double %i.m, ptr %i.v, align 8, !tbaa !179
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 40
  store double %i.m, ptr %i.w, align 8, !tbaa !179
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store double %i.m, ptr %i.x, align 8, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 56
  store double %i.m, ptr %i.y, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.z, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !997

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1
  %i.ab = load ptr, ptr %0, align 8, !tbaa !100   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !261
  store ptr %i.k, ptr %0, align 8, !tbaa !100
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !99
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !261
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !99 ; 6 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = icmp ugt i64 %1, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZNSt6vectorI11colvarvalueSaIS0_EEC2ERKS2_:bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 168
  %i.h = icmp ugt i64 %i.g, 54901024028897475
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorI11colvarvalueE8allocateEmPKv.exit.i.i.i, !prof !195

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorI11colvarvalueE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorI11colvarvalueE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorI11colvarvalueE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !291
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !292
  %i.n = load ptr, ptr %1, align 8, !tbaa !295    ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !295  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11colvarvalueSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructI11colvarvalueJRKS0_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructI11colvarvalueJRKS0_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructI11colvarvalueJRKS0_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  invoke void @_ZN11colvarvalueC1ERKS_(ptr noundef nonnull align 8 dereferenceable(168) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructI11colvarvalueJRKS0_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructI11colvarvalueJRKS0_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 168 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11colvarvalueSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #24 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.j, ptr noundef nonnull %.014.i.i.i.i)
          to label %_ZSt8_DestroyIP11colvarvalueEvT_S2_.exit.i.i.i.i unwind label %bb.e

_ZSt8_DestroyIP11colvarvalueEvT_S2_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP11colvarvalueEvT_S2_.exit.i.i.i.i, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIP11colvarvalueEvT_S2_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK11colvarvalueSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructI11colvarvalueJRKS0_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %_ZSt10_ConstructI11colvarvalueJRKS0_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !291
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !292
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #25
  br label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

declare void @_ZN18colvar_grid_scalarC1ERKS_(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(712)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11colvar_gridIdE8map_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %0, ptr noundef nonnull align 8 dereferenceable(698) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %class.colvarvalue, align 8         ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !288
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.e, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 72, ptr %i.b, align 8, !tbaa !34
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8, !tbaa !36
  %i.i = load i64, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.h, ptr noundef nonnull align 1 dereferenceable(72) @.str.115, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.l = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.g, align 8, !tbaa !37
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.x

bb.c:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.d:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.d
  %i.u = load i64, ptr %i.g, align 8, !tbaa !37
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.c
  %.pn33 = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !224, !noalias !1158 ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, 2305843009213693951
  br i1 %i.ac, label %.noexc.i39, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i39:                                       ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #26, !noalias !1158
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11colvar_gridIdE9new_indexEv.exit, label %.noexc2.i

.noexc2.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ad = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #27, !noalias !1158 ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ad, i1 false), !tbaa !194, !noalias !1158
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  br label %_ZNK11colvar_gridIdE9new_indexEv.exit

_ZNK11colvar_gridIdE9new_indexEv.exit:            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc2.i
  %.sroa.13.0 = phi i64 [ %i.ah, %.noexc2.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.0100.0 = phi ptr [ %i.ae, %.noexc2.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 15 uses
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.noexc2.i ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !224, !noalias !1159 ; 4 uses
  %i.al = icmp ugt i64 %i.ak, 2305843009213693951
  br i1 %i.al, label %.noexc.i45, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i40

.noexc.i45:                                       ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #26
          to label %.noexc46 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit88

.noexc46:                                         ; preds = %.noexc.i45
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i40: ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit
  %.not.i.i.i.i.i41 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i41, label %bb.f, label %.noexc2.i42

.noexc2.i42:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i40
  %i.am = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #27
          to label %.noexc47 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit88 ; 3 uses

.noexc47:                                         ; preds = %.noexc2.i42
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.am, i1 false), !tbaa !194, !noalias !1159
  %i.ap = ptrtoint ptr %i.ao to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i40, %.noexc47
  %.sroa.094.0 = phi ptr [ %i.an, %.noexc47 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i40 ] ; 13 uses
  %.sroa.11.0 = phi i64 [ %i.ap, %.noexc47 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i40 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 697 ; 2 uses
  %i.bh = ptrtoint ptr %.sroa.0100.0 to i64       ; 4 uses
  %i.bi = sub i64 %.0.i.i.i.i.i.i.i.i, %i.bh
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = trunc i64 %i.bj to i32
  %.013.i = add i32 %i.bk, -1                     ; 3 uses
  %i.bl = icmp sgt i32 %.013.i, -1
  %i.bm = zext i32 %.013.i to i64                 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.bm ; 3 uses
  %.not12.i164 = icmp eq i32 %.013.i, 0
  br label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit

_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit: ; preds = %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge, %bb.f
  %i.bo = load i64, ptr %i.w, align 8, !tbaa !224 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit
  %i.bq = load ptr, ptr %i.aq, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.br = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %i.bo
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.h, !llvm.loop !5

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.0911.i = phi i64 [ 0, %.lr.ph.i ], [ %i.br, %bb.g ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %.0911.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !194 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.0911.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !194
  %.not.i = icmp slt i32 %i.bt, %i.bw
  br i1 %.not.i, label %bb.g, label %bb.v

._crit_edge:                                      ; preds = %_ZN11colvarvalueD2Ev.exit, %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit
  %.lcssa = phi i64 [ 0, %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit ], [ %i.eb, %_ZN11colvarvalueD2Ev.exit ] ; 4 uses
  %i.bx = load i64, ptr %i.aj, align 8, !tbaa !224 ; 5 uses
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  br i1 %i.by, label %.loopexit117, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.bb, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.l
  %i.ca = add nuw i64 %.0911.i60, 1               ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %i.ca, %i.bx
  br i1 %exitcond.not.i63, label %.loopexit117, label %bb.k, !llvm.loop !5

bb.k:                                             ; preds = %bb.j, %.lr.ph.i59
  %.0911.i60 = phi i64 [ 0, %.lr.ph.i59 ], [ %i.ca, %bb.j ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.094.0, i64 %.0911.i60
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !194 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0911.i60
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !194
  %.not.i61 = icmp slt i32 %i.cc, %i.cf
  br i1 %.not.i61, label %bb.j, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64

.lr.ph:                                           ; preds = %bb.g, %_ZN11colvarvalueD2Ev.exit
  %.0121 = phi i64 [ %i.ea, %_ZN11colvarvalueD2Ev.exit ], [ 0, %bb.g ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %.0121
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !228
  %i.ci = getelementptr inbounds nuw [168 x i8], ptr %i.ch, i64 %.0121
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.0121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1160
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !229, !noalias !1160
  %i.cn = load double, ptr %i.ck, align 8, !tbaa !179, !noalias !1160
  %i.co = load i32, ptr %i.cg, align 4, !tbaa !194, !noalias !1160
  %i.cp = sitofp i32 %i.co to double
  %i.cq = fadd double %i.cp, 5.000000e-01
  %i.cr = call double @llvm.fmuladd.f64(double %i.cn, double %i.cq, double %i.cm)
  store double %i.cr, ptr %i.a, align 8, !tbaa !179, !noalias !1160
  invoke void @_ZN11colvarvalueC1ERKd(ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1160
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !228
  %i.ct = getelementptr inbounds nuw [168 x i8], ptr %i.cs, i64 %.0121
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !100
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.0121
  %i.cw = load double, ptr %i.ar, align 8, !tbaa !229
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !229
  %i.cz = fsub double %i.cw, %i.cy
  %i.da = load double, ptr %i.cv, align 8, !tbaa !179
  %i.db = fdiv double %i.cz, %i.da
  %i.dc = call noundef double @llvm.floor.f64(double %i.db)
  %i.dd = fptosi double %i.dc to i32
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.094.0, i64 %.0121
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !194
  %i.df = load ptr, ptr %i.as, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = load ptr, ptr %i.at, align 8, !tbaa !226
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dj) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !226
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.o, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.dp = load ptr, ptr %i.aw, align 8, !tbaa !259 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.dq = load ptr, ptr %i.ax, align 8, !tbaa !260
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #25
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.du = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 5 uses
  %i.dv = load ptr, ptr %i.az, align 8, !tbaa !99
  %.not.i.i.i4.i = icmp eq ptr %i.dv, %i.du
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.du, ptr %i.az, align 8, !tbaa !99
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i66 = icmp eq ptr %i.du, null
end_hunk_5
begin_hunk_6_@_ZN11colvar_gridIdE8map_gridERKS0_:bb.a
  %.01726.i.i = phi i64 [ %i.fs, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.094.0, i64 %.01627.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !194
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.01627.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !194
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ep, %i.em
  %i.er = add i64 %i.eq, %.01726.i.i
  %i.es = or disjoint i64 %.01627.i.i, 1          ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.094.0, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !194
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.es
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !194
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i64 %i.ey, %i.ev
  %i.fa = add i64 %i.ez, %i.er
  %i.fb = or disjoint i64 %.01627.i.i, 2          ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.094.0, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !194
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fb
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !194
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul nsw i64 %i.fh, %i.fe
  %i.fj = add i64 %i.fi, %i.fa
  %i.fk = or disjoint i64 %.01627.i.i, 3          ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.094.0, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !194
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fk
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !194
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul nsw i64 %i.fq, %i.fn
  %i.fs = add i64 %i.fr, %i.fj                    ; 3 uses
  %i.ft = add nuw i64 %.01627.i.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit115.loopexit.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !6

.loopexit115.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod.not, label %.loopexit115, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit115.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01627.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ft, %.loopexit115.loopexit.unr-lcssa ]
  %.01726.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fs, %.loopexit115.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod172)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %.01627.i.i.epil = phi i64 [ %.01627.i.i.epil.init, %.epil.preheader ], [ %i.gc, %bb.t ] ; 3 uses
  %.01726.i.i.epil = phi i64 [ %.01726.i.i.epil.init, %.epil.preheader ], [ %i.gb, %bb.t ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.094.0, i64 %.01627.i.i.epil
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !194
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.01627.i.i.epil
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !194
  %i.fz = sext i32 %i.fy to i64
  %i.ga = mul nsw i64 %i.fz, %i.fw
  %i.gb = add i64 %i.ga, %.01726.i.i.epil         ; 2 uses
  %i.gc = add nuw i64 %.01627.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115, label %bb.t, !llvm.loop !1154

.loopexit115:                                     ; preds = %.loopexit115.loopexit.unr-lcssa, %bb.t, %bb.s
  %.017.lcssa.i.i = phi i64 [ 0, %bb.s ], [ %i.fs, %.loopexit115.loopexit.unr-lcssa ], [ %i.gb, %bb.t ]
  %i.gd = getelementptr [8 x i8], ptr %i.ef, i64 %.017.lcssa.i.i
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %storemerge122
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !179
  br i1 %.not2125.not.i.i67, label %.loopexit, label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %.loopexit115
  %i.gg = load ptr, ptr %i.be, align 8, !tbaa !225 ; 5 uses
  br i1 %i.ei, label %.epil.preheader173, label %.lr.ph.i.i68.new

.lr.ph.i.i68.new:                                 ; preds = %.lr.ph.i.i68, %.lr.ph.i.i68.new
  %.01627.i.i69 = phi i64 [ %i.hq, %.lr.ph.i.i68.new ], [ 0, %.lr.ph.i.i68 ] ; 6 uses
  %.01726.i.i70 = phi i64 [ %i.hp, %.lr.ph.i.i68.new ], [ 0, %.lr.ph.i.i68 ]
  %niter180 = phi i64 [ %niter180.next.3, %.lr.ph.i.i68.new ], [ 0, %.lr.ph.i.i68 ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %.01627.i.i69
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !194
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.01627.i.i69
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !194
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul nsw i64 %i.gm, %i.gj
  %i.go = add i64 %i.gn, %.01726.i.i70
  %i.gp = or disjoint i64 %.01627.i.i69, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !194
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gp
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !194
  %i.gv = sext i32 %i.gu to i64
  %i.gw = mul nsw i64 %i.gv, %i.gs
  %i.gx = add i64 %i.gw, %i.go
  %i.gy = or disjoint i64 %.01627.i.i69, 2        ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !194
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gy
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !194
  %i.he = sext i32 %i.hd to i64
  %i.hf = mul nsw i64 %i.he, %i.hb
  %i.hg = add i64 %i.hf, %i.gx
  %i.hh = or disjoint i64 %.01627.i.i69, 3        ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !194
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.hh
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !194
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul nsw i64 %i.hn, %i.hk
  %i.hp = add i64 %i.ho, %i.hg                    ; 3 uses
  %i.hq = add nuw i64 %.01627.i.i69, 4            ; 2 uses
  %niter180.next.3 = add nuw i64 %niter180, 4     ; 2 uses
  %niter180.ncmp.3 = icmp eq i64 %niter180.next.3, %unroll_iter179
  br i1 %niter180.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i68.new, !llvm.loop !6

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i68.new
  br i1 %lcmp.mod176.not, label %.loopexit, label %.epil.preheader173

.epil.preheader173:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.01627.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.hq, %.loopexit.loopexit.unr-lcssa ]
  %.01726.i.i70.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.hp, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod178)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader173
  %.01627.i.i69.epil = phi i64 [ %.01627.i.i69.epil.init, %.epil.preheader173 ], [ %i.hz, %bb.u ] ; 3 uses
  %.01726.i.i70.epil = phi i64 [ %.01726.i.i70.epil.init, %.epil.preheader173 ], [ %i.hy, %bb.u ]
  %epil.iter175 = phi i64 [ 0, %.epil.preheader173 ], [ %epil.iter175.next, %bb.u ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %.01627.i.i69.epil
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !194
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.01627.i.i69.epil
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !194
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul nsw i64 %i.hw, %i.ht
  %i.hy = add i64 %i.hx, %.01726.i.i70.epil       ; 2 uses
  %i.hz = add nuw i64 %.01627.i.i69.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %.loopexit, label %bb.u, !llvm.loop !1155

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.u, %.loopexit115
  %.017.lcssa.i.i72 = phi i64 [ 0, %.loopexit115 ], [ %i.hp, %.loopexit.loopexit.unr-lcssa ], [ %i.hy, %bb.u ]
  %i.ia = getelementptr [8 x i8], ptr %i.eg, i64 %.017.lcssa.i.i72
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %storemerge122
  store double %i.gf, ptr %i.ib, align 8, !tbaa !179
  %i.ic = add nuw i64 %storemerge122, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ic, %i.ee
  br i1 %exitcond.not, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64, label %bb.s, !llvm.loop !1156

_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64: ; preds = %bb.l, %bb.k, %.loopexit, %.loopexit117
  br i1 %i.bl, label %.lr.ph.i73, label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge

.lr.ph.i73:                                       ; preds = %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64
  %i.id = load ptr, ptr %i.aq, align 8, !tbaa !225 ; 3 uses
  %i.ie = load i32, ptr %i.bn, align 4, !tbaa !194
  %i.if = add nsw i32 %i.ie, 1                    ; 2 uses
  store i32 %i.if, ptr %i.bn, align 4, !tbaa !194
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.bm
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !194
  %.not.i74125 = icmp slt i32 %i.if, %i.ih
  br i1 %.not.i74125, label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge, label %.lr.ph127.preheader

_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge: ; preds = %.lr.ph166, %.lr.ph.i73, %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64, %.lr.ph127._crit_edge
  br label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit, !llvm.loop !1157

.lr.ph127.preheader:                              ; preds = %.lr.ph.i73
  br i1 %.not12.i164, label %.lr.ph127._crit_edge, label %.lr.ph166

.lr.ph127:                                        ; preds = %.lr.ph166
  %.not12.i = icmp eq i64 %i.ij, 0
  br i1 %.not12.i, label %.lr.ph127._crit_edge, label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %i.ii = phi ptr [ %i.ik, %.lr.ph127 ], [ %i.bn, %.lr.ph127.preheader ]
  %indvars.iv165 = phi i64 [ %i.ij, %.lr.ph127 ], [ %i.bm, %.lr.ph127.preheader ]
  store i32 0, ptr %i.ii, align 4, !tbaa !194
  %i.ij = add nsw i64 %indvars.iv165, -1          ; 4 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.ij ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !194
  %i.im = add nsw i32 %i.il, 1                    ; 2 uses
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !194
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ij
  %i.io = load i32, ptr %i.in, align 4, !tbaa !194
  %.not.i74 = icmp slt i32 %i.im, %i.io
  br i1 %.not.i74, label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge, label %.lr.ph127, !llvm.loop !1157

.lr.ph127._crit_edge:                             ; preds = %.lr.ph127, %.lr.ph127.preheader
  %i.ip = load i32, ptr %i.id, align 4, !tbaa !194
  store i32 %i.ip, ptr %.sroa.0100.0, align 4, !tbaa !194
  br label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge

bb.v:                                             ; preds = %bb.i, %bb.h
  store i8 1, ptr %i.bg, align 1, !tbaa !309
  %.not.i.i.i = icmp eq ptr %.sroa.094.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit86.a, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iq = ptrtoint ptr %.sroa.094.0 to i64
  %i.ir = sub i64 %.sroa.11.0, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.094.0, i64 noundef %i.ir) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit86.a

_ZNSt6vectorIiSaIiEED2Ev.exit86.a:                ; preds = %bb.v, %bb.w
  %i.is = sub i64 %.sroa.13.0, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0, i64 noundef %i.is) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit86.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.y:                                             ; preds = %bb.r
  %i.it = ptrtoint ptr %.sroa.094.0 to i64
  %i.iu = sub i64 %.sroa.11.0, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.094.0, i64 noundef %i.iu) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread

_ZNSt6vectorIiSaIiEED2Ev.exit88:                  ; preds = %.noexc.i45, %.noexc2.i42
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sroa.0100.0, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIiSaIiEED2Ev.exit90, label %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge

_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88
  %.pre = ptrtoint ptr %.sroa.0100.0 to i64
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread

_ZNSt6vectorIiSaIiEED2Ev.exit88.thread:           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge, %bb.r, %bb.y
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge ], [ %i.bh, %bb.r ], [ %i.bh, %bb.y ]
  %.pn30.pn113 = phi { ptr, i32 } [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge ], [ %i.ed, %bb.r ], [ %i.ed, %bb.y ]
  %i.iw = sub i64 %.sroa.13.0, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0, i64 noundef %i.iw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

_ZNSt6vectorIiSaIiEED2Ev.exit90:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit88 ], [ %.pn30.pn113, %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread ]
  resume { ptr, i32 } %.pn33.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !291
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11colvar_gridIdEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %0, ptr noundef nonnull align 8 dereferenceable(698) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.colvar_grid_params, align 8  ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @_ZN18colvar_grid_paramsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  %i.c = load i64, ptr %2, align 8, !tbaa !224
  store i64 %i.c, ptr %i.a, align 8, !tbaa !224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8, !tbaa !304
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !304
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !225
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !304
  %i.n = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.o = insertelement <4 x ptr> %i.n, ptr %i.l, i64 1
  %i.p = shufflevector <2 x ptr> %i.m, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = shufflevector <4 x ptr> %i.o, <4 x ptr> %i.p, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.q, ptr %i.g, align 8, !tbaa !304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !228
  store ptr %i.t, ptr %i.r, align 8, !tbaa !228
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !291
  store ptr %i.w, ptr %i.u, align 8, !tbaa !291
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !292
  store ptr %i.z, ptr %i.x, align 8, !tbaa !292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !295
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !295
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !292
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !310
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !310
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !261
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  call void @_ZN18colvar_grid_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  invoke void @_ZN11colvarparseC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTV11colvar_gridIdE, i64 16), ptr %0, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !288
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !288
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i8 0, i64 48, i1 false)
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !105 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i, label %.noexc19, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = icmp ugt i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %.noexc.i.i, label %_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #27
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.bb = phi ptr [ null, %bb.b ], [ %i.ba, %_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !105
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !293
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !1161 ; 3 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1161
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 8
  br i1 %i.bk, label %bb.d, label %bb.e, !prof !294

bb.d:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bb, ptr align 8 %i.bf, i64 %i.bj, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc19
  %i.bl = icmp eq i64 %i.bj, 8
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !107
  store ptr %i.bm, ptr %i.bb, align 8, !tbaa !107
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bn = getelementptr inbounds i8, ptr %i.bb, i64 %i.bj
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !104
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 536
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.bp)
          to label %bb.h unwind label %bb.n
end_hunk_6
begin_hunk_7_@_ZN15colvarbias_meta25read_state_data_template_ISiEERT_S2_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.an
  %i.fg = load i64, ptr %i.ez, align 8, !tbaa !37
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.aw

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.dt
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.ao
  %i.fl = load i64, ptr %i.dt, align 8, !tbaa !37
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bj

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.aq:                                            ; preds = %.noexc266
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.ee
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.aq
  %i.fr = load i64, ptr %i.ee, align 8, !tbaa !37
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.ap
  %.pn108 = phi { ptr, i32 } [ %i.fn, %bb.ap ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %i.fo, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bj

bb.ar:                                            ; preds = %.noexc.i273
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

bb.as:                                            ; preds = %.noexc274
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ez
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %bb.as
  %i.fx = load i64, ptr %i.ez, align 8, !tbaa !37
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %bb.ar
  %.pn119 = phi { ptr, i32 } [ %i.ft, %bb.ar ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ], [ %i.fu, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bj

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i269
  br i1 %i.n, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fz = load ptr, ptr %i.dw, align 8, !tbaa !189
  invoke void @_ZN11colvar_gridIdE9copy_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.fz, ptr noundef nonnull align 8 dereferenceable(698) %i.dy)
          to label %bb.av unwind label %bb.ag

bb.av:                                            ; preds = %bb.au
  %i.ga = load ptr, ptr %i.ek, align 8, !tbaa !205
  invoke void @_ZN11colvar_gridIdE9copy_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.ga, ptr noundef nonnull align 8 dereferenceable(698) %i.em)
          to label %bb.aw unwind label %bb.ag

bb.aw:                                            ; preds = %bb.at, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !190 ; 8 uses
  %.not.i.i391 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i391, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gd, align 8, !tbaa !192
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !193
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !28
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24, !inline_history !12
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !28
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24, !inline_history !12
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i392 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i392, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !194
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i393

bb.bb:                                            ; preds = %bb.az
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i393

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i393: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i394 = phi i32 [ %i.gg, %bb.ba ], [ %i.gq, %bb.bb ]
  %i.gr = icmp eq i32 %.0.i.i.i.i394, 1
  br i1 %i.gr, label %bb.bc, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !195

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i393
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #24
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i393, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !190 ; 8 uses
  %.not.i.i395 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i395, label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.gv = load atomic i64, ptr %i.gu acquire, align 8 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 4294967297
  %i.gx = trunc i64 %i.gv to i32                  ; 2 uses
  br i1 %i.gw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.gu, align 8, !tbaa !192
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.gy, align 4, !tbaa !193
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !28
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #24, !inline_history !10
  %i.hc = load ptr, ptr %i.gt, align 8, !tbaa !28
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #24, !inline_history !10
  br label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i396 = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i.i396, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hg = add nsw i32 %i.gx, -1
  store i32 %i.hg, ptr %i.gu, align 8, !tbaa !194
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i397

bb.bh:                                            ; preds = %bb.bf
  %i.hh = atomicrmw volatile add ptr %i.gu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i397

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i397: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i398 = phi i32 [ %i.gx, %bb.bg ], [ %i.hh, %bb.bh ]
  %i.hi = icmp eq i32 %.0.i.i.i.i398, 1
  br i1 %i.hi, label %bb.bi, label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !195

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i397
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #24
  br label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i397, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.not.i271, label %bb.bk, label %bb.ci

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.ag
  %.pn119.pn = phi { ptr, i32 } [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.di, %bb.ag ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.do, %bb.ak ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.dj, %bb.ai ]
  call void @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.cj

bb.bk:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !200
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !299
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %i.hn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN15colvarbias_meta19read_hill_template_ISiEERT_S2_(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !28
  %i.hp = getelementptr i8, ptr %i.ho, i64 -24
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds i8, ptr %i.hn, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !251
  %i.hu = and i32 %i.ht, 5
  %.not.i430 = icmp eq i32 %i.hu, 0
  br i1 %.not.i430, label %bb.bl, label %bb.bm, !llvm.loop !1220

bb.bm:                                            ; preds = %bb.bl
  %i.hv = icmp eq ptr %i.hk, %i.hj
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.hx = load ptr, ptr %1, align 8, !tbaa !28
  %i.hy = getelementptr i8, ptr %i.hx, i64 -24
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds i8, ptr %1, i64 %i.hz
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ia, i32 noundef 0)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.hj, ptr %i.ib, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ic = load i64, ptr %i.hl, align 8, !tbaa !299
  %i.id = sub i64 %i.ic, %i.hm
  store i64 %i.id, ptr %i.c, align 8, !tbaa !34
  call void @_ZN12colvarmodule6to_strB5cxx11ERKmmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0, i64 noundef 0)
  %i.ie = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.178, i64 noundef 20)
          to label %.noexc550 unwind label %bb.bv ; 6 uses

.noexc550:                                        ; preds = %bb.bm
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.if, ptr %13, align 8, !tbaa !32, !alias.scope !1227
  %i.ig = load ptr, ptr %i.ie, align 8, !tbaa !36 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 5 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546

bb.bn:                                            ; preds = %.noexc550
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !38 ; 3 uses
  %i.il = icmp ult i64 %i.ik, 16
  call void @llvm.assume(i1 %i.il)
  %i.im = add nuw nsw i64 %i.ik, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.if, ptr noundef nonnull align 8 dereferenceable(1) %i.ih, i64 %i.im, i1 false)
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546: ; preds = %.noexc550
  store ptr %i.ig, ptr %13, align 8, !tbaa !36, !alias.scope !1227
  %i.in = load i64, ptr %i.ih, align 8, !tbaa !37
  store i64 %i.in, ptr %i.if, align 8, !tbaa !37, !alias.scope !1227
  %.phi.trans.insert.i547 = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.pre.i548 = load i64, ptr %.phi.trans.insert.i547, align 8, !tbaa !38
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546, %bb.bn
  %i.io = phi i64 [ %i.ik, %bb.bn ], [ %.pre.i548, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.io, ptr %i.iq, align 8, !tbaa !38, !alias.scope !1227
  store ptr %i.ih, ptr %i.ie, align 8, !tbaa !36
  store i64 0, ptr %i.ip, align 8, !tbaa !38
  store i8 0, ptr %i.ih, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !38, !noalias !1228
  %i.is = add i64 %i.ir, -4611686018427387876
  %i.it = icmp ult i64 %i.is, 28
  br i1 %i.it, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i552

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc557 unwind label %bb.bw

.noexc557:                                        ; preds = %bb.bp
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i552: ; preds = %bb.bo
  %i.iu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.179, i64 noundef 28)
          to label %.noexc558 unwind label %bb.bw ; 6 uses

.noexc558:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i552
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.iv, ptr %12, align 8, !tbaa !32, !alias.scope !1228
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !36 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 5 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553

bb.bq:                                            ; preds = %.noexc558
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !38 ; 3 uses
  %i.jb = icmp ult i64 %i.ja, 16
  call void @llvm.assume(i1 %i.jb)
  %i.jc = add nuw nsw i64 %i.ja, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iv, ptr noundef nonnull align 8 dereferenceable(1) %i.ix, i64 %i.jc, i1 false)
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %.noexc558
  store ptr %i.iw, ptr %12, align 8, !tbaa !36, !alias.scope !1228
  %i.jd = load i64, ptr %i.ix, align 8, !tbaa !37
  store i64 %i.jd, ptr %i.iv, align 8, !tbaa !37, !alias.scope !1228
  %.phi.trans.insert.i554 = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %.pre.i555 = load i64, ptr %.phi.trans.insert.i554, align 8, !tbaa !38
  br label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553, %bb.bq
  %i.je = phi i64 [ %i.ja, %bb.bq ], [ %.pre.i555, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.je, ptr %i.jg, align 8, !tbaa !38, !alias.scope !1228
  store ptr %i.ix, ptr %i.iu, align 8, !tbaa !36
  store i64 0, ptr %i.jf, align 8, !tbaa !38
  store i8 0, ptr %i.ix, align 8, !tbaa !37
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 10)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.jh = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.iv
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560: ; preds = %bb.bs
  %i.jj = load i64, ptr %i.iv, align 8, !tbaa !37
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i560
  %i.jl = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.if
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562
  %i.jn = load i64, ptr %i.if, align 8, !tbaa !37
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563
  %i.jp = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !37
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %i.hv, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit574, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  %i.ju = load ptr, ptr %i.hj, align 8, !tbaa !200 ; 2 uses
  %.not6.i = icmp eq ptr %i.ju, %i.hj
  br i1 %.not6.i, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bt, %.lr.ph.i
  %.sroa.05.07.i = phi ptr [ %i.jv, %.lr.ph.i ], [ %i.ju, %bb.bt ] ; 4 uses
  %i.jv = load ptr, ptr %.sroa.05.07.i, align 8, !tbaa !200 ; 2 uses
  %i.jw = load i64, ptr %i.hl, align 8, !tbaa !299
  %i.jx = add i64 %i.jw, -1
  store i64 %i.jx, ptr %i.hl, align 8, !tbaa !299
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.07.i) #24
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i, i64 16
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.jy) #24
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.07.i, i64 noundef 128) #25
  %.not.i569 = icmp eq ptr %i.jv, %i.hj
  br i1 %.not.i569, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit, label %.lr.ph.i, !llvm.loop !16

_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit: ; preds = %.lr.ph.i, %bb.bt
  %i.jz = load ptr, ptr %i.hw, align 8, !tbaa !200 ; 2 uses
  %.not6.i570 = icmp eq ptr %i.jz, %i.hw
  br i1 %.not6.i570, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit574, label %.lr.ph.i571

.lr.ph.i571:                                      ; preds = %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i571
  %.sroa.05.07.i572 = phi ptr [ %i.jz, %.lr.ph.i571 ], [ %i.kb, %bb.bu ] ; 4 uses
  %i.kb = load ptr, ptr %.sroa.05.07.i572, align 8, !tbaa !200 ; 2 uses
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !299
  %i.kd = add i64 %i.kc, -1
  store i64 %i.kd, ptr %i.ka, align 8, !tbaa !299
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.07.i572) #24
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i572, i64 16
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.ke) #24
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.07.i572, i64 noundef 128) #25
  %.not.i573 = icmp eq ptr %i.kb, %i.hw
  br i1 %.not.i573, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit574, label %bb.bu, !llvm.loop !16

bb.bv:                                            ; preds = %bb.bm
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i552, %bb.bp
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

bb.bx:                                            ; preds = %bb.br
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.iv
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598: ; preds = %bb.bx
  %i.kk = load i64, ptr %i.iv, align 8, !tbaa !37
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598, %bb.bw
  %.pn125 = phi { ptr, i32 } [ %i.kg, %bb.bw ], [ %i.kh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598 ], [ %i.kh, %bb.bx ] ; 2 uses
  %i.km = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.if
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
  %i.ko = load i64, ptr %i.if, align 8, !tbaa !37
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601, %bb.bv
  %.pn125.pn = phi { ptr, i32 } [ %i.kf, %bb.bv ], [ %.pn125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600 ]
  %i.kq = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !37
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cj

_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit574: ; preds = %bb.bu, %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  call void @_ZN15colvarbias_meta25rebin_grids_after_restartEv(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.kv = load i8, ptr %i.e, align 8, !tbaa !185, !range !182, !noundef !183
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit574
  %i.kx = load ptr, ptr %i.hw, align 8, !tbaa !200
  %i.ky = icmp eq ptr %i.kx, %i.hw
  br i1 %i.ky, label %bb.cg, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !299
  store i64 %i.la, ptr %i.d, align 8, !tbaa !34
  call void @_ZN12colvarmodule6to_strB5cxx11ERKmmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0, i64 noundef 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !38, !noalias !1229
  %i.ld = add i64 %i.lc, -4611686018427387802
  %i.le = icmp ult i64 %i.ld, 102
  br i1 %i.le, label %bb.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i616

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc621 unwind label %bb.ce

.noexc621:                                        ; preds = %bb.ca
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i616: ; preds = %bb.bz
  %i.lf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.181, i64 noundef 102)
          to label %.noexc622 unwind label %bb.ce ; 6 uses

.noexc622:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i616
  %i.lg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.lg, ptr %15, align 8, !tbaa !32, !alias.scope !1229
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !36 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 5 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617

bb.cb:                                            ; preds = %.noexc622
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !38 ; 3 uses
  %i.lm = icmp ult i64 %i.ll, 16
  call void @llvm.assume(i1 %i.lm)
  %i.ln = add nuw nsw i64 %i.ll, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lg, ptr noundef nonnull align 8 dereferenceable(1) %i.li, i64 %i.ln, i1 false)
  br label %bb.cc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617: ; preds = %.noexc622
  store ptr %i.lh, ptr %15, align 8, !tbaa !36, !alias.scope !1229
  %i.lo = load i64, ptr %i.li, align 8, !tbaa !37
  store i64 %i.lo, ptr %i.lg, align 8, !tbaa !37, !alias.scope !1229
  %.phi.trans.insert.i618 = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.pre.i619 = load i64, ptr %.phi.trans.insert.i618, align 8, !tbaa !38
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617, %bb.cb
  %i.lp = phi i64 [ %i.ll, %bb.cb ], [ %.pre.i619, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i617 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.lp, ptr %i.lr, align 8, !tbaa !38, !alias.scope !1229
  store ptr %i.li, ptr %i.lf, align 8, !tbaa !36
  store i64 0, ptr %i.lq, align 8, !tbaa !38
  store i8 0, ptr %i.li, align 8, !tbaa !37
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 10)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ls = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.lg
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624: ; preds = %bb.cd
  %i.lu = load i64, ptr %i.lg, align 8, !tbaa !37
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624
  %i.lw = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !37
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.cg

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i616, %bb.ca
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

bb.cf:                                            ; preds = %bb.cc
  %i.mc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.md = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.lg
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630: ; preds = %bb.cf
  %i.mf = load i64, ptr %i.lg, align 8, !tbaa !37
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630, %bb.ce
  %.pn131 = phi { ptr, i32 } [ %i.mb, %bb.ce ], [ %i.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630 ], [ %i.mc, %bb.cf ]
  %i.mh = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !37
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.ml) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.cj

bb.cg:                                            ; preds = %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, %bb.by
  %i.mm = load ptr, ptr %0, align 8, !tbaa !28
  %i.mn = getelementptr i8, ptr %i.mm, i64 -48
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds i8, ptr %0, i64 %i.mo
  %i.mq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13colvarbias_ti15read_state_dataERSi(ptr noundef nonnull align 8 dereferenceable(120) %i.mp, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  %i.mr = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds i8, ptr %0, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 257
  store i8 1, ptr %i.mv, align 1, !tbaa !269
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !184
  %i.my = icmp eq i32 %i.mx, 1
  br i1 %i.my, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 168
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = call noundef i32 %i.na(ptr noundef nonnull align 8 dereferenceable(896) %0) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret ptr %1

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %bb.bj
  %.pn135.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn, %bb.bj ], [ %.pn125.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606 ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ]
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN15colvarbias_meta24read_grid_data_template_ISi18colvar_grid_scalarEERT_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT0_SD_(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = tail call { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !38
  store i8 0, ptr %i.d, align 8, !tbaa !37
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.ae      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !251
  %i.m = and i32 %i.l, 5
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38   ; 3 uses
  %i.p = load i64, ptr %i.e, align 8, !tbaa !38
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread137, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.d
  %i.s = load ptr, ptr %5, align 8, !tbaa !36
  %i.t = load ptr, ptr %2, align 8, !tbaa !36
  %bcmp.i.i = call i32 @bcmp(ptr %i.t, ptr %i.s, i64 %i.o)
  %.not153 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not153, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread137, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread137: ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN18colvar_grid_scalar12read_restartERSi(ptr noundef nonnull align 8 dereferenceable(712) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.e unwind label %bb.ae      ; 2 uses

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread137
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !251
  %i.ab = and i32 %i.aa, 5
  %.not154 = icmp eq i32 %i.ab, 0
  br i1 %.not154, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit130, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !28
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef 0)
          to label %bb.f unwind label %bb.ae

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.b, i64 %i.c)
          to label %bb.g unwind label %bb.ae      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %1, align 8, !tbaa !28
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !251
  %i.an = or i32 %i.am, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ak, i32 noundef %i.an)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit unwind label %bb.ae

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !264, !range !182, !noundef !183
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit130, label %bb.h

bb.h:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.ar = icmp eq ptr %4, null
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !184
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit130

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.av = load ptr, ptr %0, align 8, !tbaa !28
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36, !noalias !1246
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !38, !noalias !1246 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !32, !alias.scope !1247
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.be, align 8, !tbaa !38, !alias.scope !1247
  store i8 0, ptr %i.bd, align 8, !tbaa !37, !alias.scope !1247
  %i.bf = add i64 %i.bc, 54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.bf)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !38, !alias.scope !1247
  %i.bh = add i64 %i.bg, -4611686018427387850
  %i.bi = icmp ult i64 %i.bh, 54
  br i1 %i.bi, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.183, i64 noundef 54)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !38, !alias.scope !1247
  %i.bl = sub i64 4611686018427387903, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bc
  br i1 %i.bm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.cont.i.i unwind label %bb.l

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %9, align 8, !tbaa !36, !alias.scope !1247 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bd
  br i1 %i.bq, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.br = load i64, ptr %i.be, align 8, !tbaa !38, !noalias !1248
  %i.bs = icmp eq i64 %i.br, 4611686018427387903
  br i1 %i.bs, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
end_hunk_7
begin_hunk_8_@_ZN15colvarbias_meta25read_state_data_template_IN12colvarmodule13memory_streamEEERT_S4_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.an
  %i.fc = load i64, ptr %i.ev, align 8, !tbaa !37
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.aw

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dt
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %bb.ao
  %i.fh = load i64, ptr %i.dt, align 8, !tbaa !37
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bj

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

bb.aq:                                            ; preds = %.noexc266
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ee
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.aq
  %i.fn = load i64, ptr %i.ee, align 8, !tbaa !37
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %bb.ap
  %.pn108 = phi { ptr, i32 } [ %i.fj, %bb.ap ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %i.fk, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bj

bb.ar:                                            ; preds = %.noexc.i272
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

bb.as:                                            ; preds = %.noexc273
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ev
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.as
  %i.ft = load i64, ptr %i.ev, align 8, !tbaa !37
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.ar
  %.pn119 = phi { ptr, i32 } [ %i.fp, %bb.ar ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %i.fq, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bj

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270
  br i1 %i.n, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fv = load ptr, ptr %i.dw, align 8, !tbaa !189
  invoke void @_ZN11colvar_gridIdE9copy_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.fv, ptr noundef nonnull align 8 dereferenceable(698) %i.dy)
          to label %bb.av unwind label %bb.ag

bb.av:                                            ; preds = %bb.au
  %i.fw = load ptr, ptr %i.ek, align 8, !tbaa !205
  invoke void @_ZN11colvar_gridIdE9copy_gridERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %i.fw, ptr noundef nonnull align 8 dereferenceable(698) %i.em)
          to label %bb.aw unwind label %bb.ag

bb.aw:                                            ; preds = %bb.at, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !190 ; 8 uses
  %.not.i.i390 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i390, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.fz, align 8, !tbaa !192
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !193
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !28
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #24, !inline_history !12
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !28
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #24, !inline_history !12
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i391 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i391, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !194
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i392

bb.bb:                                            ; preds = %bb.az
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i392

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i392: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i393 = phi i32 [ %i.gc, %bb.ba ], [ %i.gm, %bb.bb ]
  %i.gn = icmp eq i32 %.0.i.i.i.i393, 1
  br i1 %i.gn, label %bb.bc, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !195

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i392
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #24
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i392, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !190 ; 8 uses
  %.not.i.i394 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i394, label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.gq, align 8, !tbaa !192
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !193
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !28
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !10
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !10
  br label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i395 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i395, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !194
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396

bb.bh:                                            ; preds = %bb.bf
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i397 = phi i32 [ %i.gt, %bb.bg ], [ %i.hd, %bb.bh ]
  %i.he = icmp eq i32 %.0.i.i.i.i397, 1
  br i1 %i.he, label %bb.bi, label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !195

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24
  br label %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.eu, label %bb.bk, label %bb.ci

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, %bb.ag
  %.pn119.pn = phi { ptr, i32 } [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ], [ %i.di, %bb.ag ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280 ], [ %i.do, %bb.ak ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.dj, %bb.ai ]
  call void @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.cj

bb.bk:                                            ; preds = %bb.a, %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !200
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !299
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %i.hj = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN15colvarbias_meta19read_hill_template_IN12colvarmodule13memory_streamEEERT_S4_(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !318
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.bl, label %bb.bm, !llvm.loop !1291

bb.bm:                                            ; preds = %bb.bl
  %i.hn = icmp eq ptr %i.hg, %i.hf
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.hp, align 8, !tbaa !318
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.hf, ptr %i.hq, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.hr = load i64, ptr %i.hh, align 8, !tbaa !299
  %i.hs = sub i64 %i.hr, %i.hi
  store i64 %i.hs, ptr %i.c, align 8, !tbaa !34
  call void @_ZN12colvarmodule6to_strB5cxx11ERKmmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0, i64 noundef 0)
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.178, i64 noundef 20)
          to label %.noexc548 unwind label %bb.bv ; 6 uses

.noexc548:                                        ; preds = %bb.bm
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.hu, ptr %13, align 8, !tbaa !32, !alias.scope !1298
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !36 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 5 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544

bb.bn:                                            ; preds = %.noexc548
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !38 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.ib, i1 false)
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544: ; preds = %.noexc548
  store ptr %i.hv, ptr %13, align 8, !tbaa !36, !alias.scope !1298
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !37
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !37, !alias.scope !1298
  %.phi.trans.insert.i545 = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.pre.i546 = load i64, ptr %.phi.trans.insert.i545, align 8, !tbaa !38
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544, %bb.bn
  %i.id = phi i64 [ %i.hz, %bb.bn ], [ %.pre.i546, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.id, ptr %i.if, align 8, !tbaa !38, !alias.scope !1298
  store ptr %i.hw, ptr %i.ht, align 8, !tbaa !36
  store i64 0, ptr %i.ie, align 8, !tbaa !38
  store i8 0, ptr %i.hw, align 8, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !38, !noalias !1299
  %i.ih = add i64 %i.ig, -4611686018427387876
  %i.ii = icmp ult i64 %i.ih, 28
  br i1 %i.ii, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i550

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc555 unwind label %bb.bw

.noexc555:                                        ; preds = %bb.bp
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i550: ; preds = %bb.bo
  %i.ij = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.179, i64 noundef 28)
          to label %.noexc556 unwind label %bb.bw ; 6 uses

.noexc556:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i550
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ik, ptr %12, align 8, !tbaa !32, !alias.scope !1299
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !36 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 5 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

bb.bq:                                            ; preds = %.noexc556
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !38 ; 3 uses
  %i.iq = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iq)
  %i.ir = add nuw nsw i64 %i.ip, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ik, ptr noundef nonnull align 8 dereferenceable(1) %i.im, i64 %i.ir, i1 false)
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %.noexc556
  store ptr %i.il, ptr %12, align 8, !tbaa !36, !alias.scope !1299
  %i.is = load i64, ptr %i.im, align 8, !tbaa !37
  store i64 %i.is, ptr %i.ik, align 8, !tbaa !37, !alias.scope !1299
  %.phi.trans.insert.i552 = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.pre.i553 = load i64, ptr %.phi.trans.insert.i552, align 8, !tbaa !38
  br label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551, %bb.bq
  %i.it = phi i64 [ %i.ip, %bb.bq ], [ %.pre.i553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.it, ptr %i.iv, align 8, !tbaa !38, !alias.scope !1299
  store ptr %i.im, ptr %i.ij, align 8, !tbaa !36
  store i64 0, ptr %i.iu, align 8, !tbaa !38
  store i8 0, ptr %i.im, align 8, !tbaa !37
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 10)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.iw = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.ik
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558: ; preds = %bb.bs
  %i.iy = load i64, ptr %i.ik, align 8, !tbaa !37
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558
  %i.ja = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.hu
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560
  %i.jc = load i64, ptr %i.hu, align 8, !tbaa !37
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit560, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561
  %i.je = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !37
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %i.hn, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit572, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566
  %i.jj = load ptr, ptr %i.hf, align 8, !tbaa !200 ; 2 uses
  %.not6.i = icmp eq ptr %i.jj, %i.hf
  br i1 %.not6.i, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bt, %.lr.ph.i
  %.sroa.05.07.i = phi ptr [ %i.jk, %.lr.ph.i ], [ %i.jj, %bb.bt ] ; 4 uses
  %i.jk = load ptr, ptr %.sroa.05.07.i, align 8, !tbaa !200 ; 2 uses
  %i.jl = load i64, ptr %i.hh, align 8, !tbaa !299
  %i.jm = add i64 %i.jl, -1
  store i64 %i.jm, ptr %i.hh, align 8, !tbaa !299
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.07.i) #24
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i, i64 16
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.jn) #24
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.07.i, i64 noundef 128) #25
  %.not.i567 = icmp eq ptr %i.jk, %i.hf
  br i1 %.not.i567, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit, label %.lr.ph.i, !llvm.loop !16

_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit: ; preds = %.lr.ph.i, %bb.bt
  %i.jo = load ptr, ptr %i.ho, align 8, !tbaa !200 ; 2 uses
  %.not6.i568 = icmp eq ptr %i.jo, %i.ho
  br i1 %.not6.i568, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit572, label %.lr.ph.i569

.lr.ph.i569:                                      ; preds = %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i569
  %.sroa.05.07.i570 = phi ptr [ %i.jo, %.lr.ph.i569 ], [ %i.jq, %bb.bu ] ; 4 uses
  %i.jq = load ptr, ptr %.sroa.05.07.i570, align 8, !tbaa !200 ; 2 uses
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !299
  %i.js = add i64 %i.jr, -1
  store i64 %i.js, ptr %i.jp, align 8, !tbaa !299
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.07.i570) #24
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i570, i64 16
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.jt) #24
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.07.i570, i64 noundef 128) #25
  %.not.i571 = icmp eq ptr %i.jq, %i.ho
  br i1 %.not.i571, label %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit572, label %bb.bu, !llvm.loop !16

bb.bv:                                            ; preds = %bb.bm
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i550, %bb.bp
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598

bb.bx:                                            ; preds = %bb.br
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.ik
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596: ; preds = %bb.bx
  %i.jz = load i64, ptr %i.ik, align 8, !tbaa !37
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596, %bb.bw
  %.pn125 = phi { ptr, i32 } [ %i.jv, %bb.bw ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596 ], [ %i.jw, %bb.bx ] ; 2 uses
  %i.kb = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.hu
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598
  %i.kd = load i64, ptr %i.hu, align 8, !tbaa !37
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599, %bb.bv
  %.pn125.pn = phi { ptr, i32 } [ %i.ju, %bb.bv ], [ %.pn125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598 ]
  %i.kf = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !37
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cj

_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit572: ; preds = %bb.bu, %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566
  call void @_ZN15colvarbias_meta25rebin_grids_after_restartEv(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.kk = load i8, ptr %i.e, align 8, !tbaa !185, !range !182, !noundef !183
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit572
  %i.km = load ptr, ptr %i.ho, align 8, !tbaa !200
  %i.kn = icmp eq ptr %i.km, %i.ho
  br i1 %i.kn, label %bb.cg, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !299
  store i64 %i.kp, ptr %i.d, align 8, !tbaa !34
  call void @_ZN12colvarmodule6to_strB5cxx11ERKmmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0, i64 noundef 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %i.kq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !38, !noalias !1300
  %i.ks = add i64 %i.kr, -4611686018427387802
  %i.kt = icmp ult i64 %i.ks, 102
  br i1 %i.kt, label %bb.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i614

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc619 unwind label %bb.ce

.noexc619:                                        ; preds = %bb.ca
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i614: ; preds = %bb.bz
  %i.ku = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.181, i64 noundef 102)
          to label %.noexc620 unwind label %bb.ce ; 6 uses

.noexc620:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i614
  %i.kv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.kv, ptr %15, align 8, !tbaa !32, !alias.scope !1300
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !36 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 5 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

bb.cb:                                            ; preds = %.noexc620
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !38 ; 3 uses
  %i.lb = icmp ult i64 %i.la, 16
  call void @llvm.assume(i1 %i.lb)
  %i.lc = add nuw nsw i64 %i.la, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kv, ptr noundef nonnull align 8 dereferenceable(1) %i.kx, i64 %i.lc, i1 false)
  br label %bb.cc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %.noexc620
  store ptr %i.kw, ptr %15, align 8, !tbaa !36, !alias.scope !1300
  %i.ld = load i64, ptr %i.kx, align 8, !tbaa !37
  store i64 %i.ld, ptr %i.kv, align 8, !tbaa !37, !alias.scope !1300
  %.phi.trans.insert.i616 = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %.pre.i617 = load i64, ptr %.phi.trans.insert.i616, align 8, !tbaa !38
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615, %bb.cb
  %i.le = phi i64 [ %i.la, %bb.cb ], [ %.pre.i617, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615 ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.le, ptr %i.lg, align 8, !tbaa !38, !alias.scope !1300
  store ptr %i.kx, ptr %i.ku, align 8, !tbaa !36
  store i64 0, ptr %i.lf, align 8, !tbaa !38
  store i8 0, ptr %i.kx, align 8, !tbaa !37
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 10)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.lh = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.kv
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622: ; preds = %bb.cd
  %i.lj = load i64, ptr %i.kv, align 8, !tbaa !37
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622
  %i.ll = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !37
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.cg

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i614, %bb.ca
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630

bb.cf:                                            ; preds = %bb.cc
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.kv
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628: ; preds = %bb.cf
  %i.lu = load i64, ptr %i.kv, align 8, !tbaa !37
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628, %bb.ce
  %.pn131 = phi { ptr, i32 } [ %i.lq, %bb.ce ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628 ], [ %i.lr, %bb.cf ]
  %i.lw = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !37
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.cj

bb.cg:                                            ; preds = %_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE5eraseESt20_List_const_iteratorIS2_ES6_.exit572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, %bb.by
  %i.mb = load ptr, ptr %0, align 8, !tbaa !28
  %i.mc = getelementptr i8, ptr %i.mb, i64 -48
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = getelementptr inbounds i8, ptr %0, i64 %i.md
  %i.mf = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN13colvarbias_ti15read_state_dataERN12colvarmodule13memory_streamE(ptr noundef nonnull align 8 dereferenceable(120) %i.me, ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  %i.mg = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds i8, ptr %0, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 257
  store i8 1, ptr %i.mk, align 1, !tbaa !269
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !184
  %i.mn = icmp eq i32 %i.mm, 1
  br i1 %i.mn, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mg, i64 168
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = call noundef i32 %i.mp(ptr noundef nonnull align 8 dereferenceable(896) %0) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %_ZNSt12__shared_ptrI18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret ptr %1

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, %bb.bj
  %.pn135.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn, %bb.bj ], [ %.pn125.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604 ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633 ]
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(72) ptr @_ZN15colvarbias_meta24read_grid_data_template_IN12colvarmodule13memory_streamE18colvar_grid_scalarEERT_S5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT0_SF_(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 8, !tbaa !37
  %i.e = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZrsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERN12colvarmodule13memory_streamES8_RT_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !318
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38   ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !38
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread131, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.d
  %i.n = load ptr, ptr %5, align 8, !tbaa !36
  %i.o = load ptr, ptr %2, align 8, !tbaa !36
  %bcmp.i.i = call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.j)
  %.not147 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not147, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread131, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread131: ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN18colvar_grid_scalar12read_restartERN12colvarmodule13memory_streamE(ptr noundef nonnull align 8 dereferenceable(712) %3, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.e unwind label %bb.ac

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread131
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !318
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.b, ptr %i.a, align 8, !tbaa !319
  store i32 4, ptr %i.t, align 8, !tbaa !320
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.v = load i8, ptr %i.u, align 1, !tbaa !264, !range !182, !noundef !183
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.aj, label %bb.f

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.x = icmp eq ptr %4, null
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !184
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.aj

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ab = load ptr, ptr %0, align 8, !tbaa !28
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36, !noalias !1317
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !38, !noalias !1317 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !32, !alias.scope !1318
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !38, !alias.scope !1318
  store i8 0, ptr %i.aj, align 8, !tbaa !37, !alias.scope !1318
  %i.al = add i64 %i.ai, 54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.al)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !38, !alias.scope !1318
  %i.an = add i64 %i.am, -4611686018427387850
  %i.ao = icmp ult i64 %i.an, 54
  br i1 %i.ao, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.183, i64 noundef 54)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.j ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !38, !alias.scope !1318
  %i.ar = sub i64 4611686018427387903, %i.aq
  %i.as = icmp ult i64 %i.ar, %i.ai
  br i1 %i.as, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.cont.i.i unwind label %bb.j

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %9, align 8, !tbaa !36, !alias.scope !1318 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aj
  br i1 %i.aw, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !38, !noalias !1319
  %i.ay = icmp eq i64 %i.ax, 4611686018427387903
  br i1 %i.ay, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %.noexc58 unwind label %bb.ad  ; 6 uses

.noexc58:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.ba, ptr %8, align 8, !tbaa !32, !alias.scope !1319
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %.noexc58
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc58
  store ptr %i.bb, ptr %8, align 8, !tbaa !36, !alias.scope !1319
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !37
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !37, !alias.scope !1319
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
end_hunk_8
begin_hunk_9_@_ZN15colvarbias_meta19read_hill_template_ISiEERT_S2_:bb.a
  br label %bb.cw

bb.ct:                                            ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313
  %cond1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ true, %bb.cm ]
  %.5 = phi ptr [ %i.sf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ %.0, %bb.cm ]
  %i.st = load ptr, ptr %33, align 8, !tbaa !36   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.ru
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %bb.ct
  %i.sv = load i64, ptr %i.ru, align 8, !tbaa !37
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br i1 %cond1, label %bb.cu, label %bb.dj

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %i.sx = load i64, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %i.sy = load ptr, ptr %0, align 8, !tbaa !28
  %i.sz = getelementptr i8, ptr %i.sy, i64 -24
  %i.ta = load i64, ptr %i.sz, align 8
  %i.tb = getelementptr inbounds i8, ptr %0, i64 %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 264
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !322
  %.not147 = icmp sgt i64 %i.sx, %i.td
  br i1 %.not147, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !236, !range !182, !noundef !183
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.cx, label %bb.dj

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %bb.cq
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %i.sl, %bb.cq ]
  %i.th = load ptr, ptr %33, align 8, !tbaa !36   ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.ru
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %bb.cw
  %i.tj = load i64, ptr %i.ru, align 8, !tbaa !37
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.tm = load double, ptr %i.b, align 8, !tbaa !179
  invoke void @_ZN15colvarbias_meta4hillC1ExdRKSt6vectorI11colvarvalueSaIS2_EERKS1_IdSaIdEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %36, i64 noundef %i.sx, double noundef %i.tm, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, ptr noundef nonnull align 8 dereferenceable(112) %36)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %36) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !300
  %i.tp = icmp eq ptr %i.to, %i.tl
  br i1 %i.tp, label %bb.da, label %bb.de

bb.da:                                            ; preds = %bb.cz
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !201
  store ptr %i.tr, ptr %i.tn, align 8, !tbaa !300
  br label %bb.de

bb.db:                                            ; preds = %bb.cx
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.tt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %36) #24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn157 = phi { ptr, i32 } [ %i.tt, %bb.dc ], [ %i.ts, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.da, %bb.cz
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.tv = load i8, ptr %i.tu, align 8, !tbaa !185, !range !182, !noundef !183
  %i.tw = trunc nuw i8 %i.tv to i1
  br i1 %i.tw, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !189
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !201
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  %i.uc = invoke noundef double @_ZN11colvar_gridIdE28bin_distance_from_boundariesERKSt6vectorI11colvarvalueSaIS2_EEb(ptr noundef nonnull align 8 dereferenceable(698) %i.ty, ptr noundef nonnull align 8 dereferenceable(24) %i.ub, i1 noundef zeroext true)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !179
  %i.uf = call noundef double @llvm.floor.f64(double %i.ue)
  %i.ug = call double @llvm.fmuladd.f64(double %i.uf, double 3.000000e+00, double 1.000000e+00)
  %i.uh = fcmp olt double %i.uc, %i.ug
  br i1 %i.uh, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.uj = load ptr, ptr %i.tz, align 8, !tbaa !201
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  invoke void @_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ui, ptr noundef nonnull align 8 dereferenceable(112) %i.uk)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph420, %.lr.ph417, %bb.bl, %bb.ac, %bb.dh, %bb.df
  %lpad.loopexit.split-lp532 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.dg, %bb.dh, %bb.de
  %i.ul = load ptr, ptr %0, align 8, !tbaa !28
  %i.um = getelementptr i8, ptr %i.ul, i64 -24
  %i.un = load i64, ptr %i.um, align 8
  %i.uo = getelementptr inbounds i8, ptr %0, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 257
  store i8 1, ptr %i.up, align 1, !tbaa !269
  br label %bb.dj

bb.dj:                                            ; preds = %bb.cv, %.thread390, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.6 = phi ptr [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %i.ol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 ], [ %i.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %1, %bb.di ], [ %i.kf, %.thread ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %i.mg, %.thread390 ], [ %1, %bb.cv ]
  %i.uq = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.ek
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %bb.dj
  %i.us = load i64, ptr %i.ek, align 8, !tbaa !37
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.uu = load ptr, ptr %7, align 8, !tbaa !100   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361
  %i.uv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !261
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %i.uu to i64
  %i.uz = sub i64 %i.ux, %i.uy
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uz) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.va = load ptr, ptr %5, align 8, !tbaa !228
  %i.vb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !291
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.va, ptr noundef %i.vc)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i unwind label %bb.dm

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.vd = load ptr, ptr %5, align 8, !tbaa !228   ; 3 uses
  %.not.i.i.i362 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.i362, label %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i
  %i.ve = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !292
  %i.vg = ptrtoint ptr %i.vf to i64
  %i.vh = ptrtoint ptr %i.vd to i64
  %i.vi = sub i64 %i.vg, %i.vh
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef %i.vi) #25
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit

bb.dm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #28
  unreachable

_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %.pn172.pn = phi { ptr, i32 } [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %.pn170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %.pn168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %.pn166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310 ], [ %.pn161.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.pn128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %.pn144.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %.pn157, %bb.dd ], [ %.pn142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.pn137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %lpad.loopexit.split-lp532, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.vl = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.ek
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.vn = load i64, ptr %i.ek, align 8, !tbaa !37
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.vp = load ptr, ptr %7, align 8, !tbaa !100   ; 3 uses
  %.not.i.i.i366 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i366, label %_ZNSt6vectorIdSaIdEED2Ev.exit367, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  %i.vq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !261
  %i.vs = ptrtoint ptr %i.vr to i64
  %i.vt = ptrtoint ptr %i.vp to i64
  %i.vu = sub i64 %i.vs, %i.vt
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %i.vu) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit367

_ZNSt6vectorIdSaIdEED2Ev.exit367:                 ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %bb.w
  %.pn172.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.w ], [ %.pn172.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ %.pn172.pn, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit367, %bb.r
  %.pn176 = phi { ptr, i32 } [ %i.ei, %bb.r ], [ %.pn172.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit367 ]
  call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.p
  %.pn176.pn = phi { ptr, i32 } [ %.pn176, %bb.do ], [ %i.dl, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.dq

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit
  %.7 = phi ptr [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %.6, %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit ], [ %1, %bb.e ]
  %i.vv = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.m
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.vx = load i64, ptr %i.m, align 8, !tbaa !37
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.f
  %.pn179 = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %.pn176.pn, %bb.dp ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  %i.vz = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.m
  br i1 %i.wa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %bb.dq
  %i.wb = load i64, ptr %i.m, align 8, !tbaa !37
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn179

bb.dr:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370
  %.8 = phi ptr [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370 ], [ %1, %bb.a ]
  ret ptr %.8
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !36
  %bcmp.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_Z17hill_stream_errorISiERT_S1_mRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef 0)
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 0) ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !251
  %i.l = or i32 %i.k, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.m = load ptr, ptr %2, align 8, !tbaa !36, !noalias !1364
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38, !noalias !1364 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !32, !alias.scope !1365
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !38, !alias.scope !1365
  store i8 0, ptr %i.p, align 8, !tbaa !37, !alias.scope !1365
  %i.r = add i64 %i.o, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.q, align 8, !tbaa !38, !alias.scope !1365
  %i.t = add i64 %i.s, -4611686018427387868
  %i.u = icmp ult i64 %i.t, 36
  br i1 %i.u, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.207, i64 noundef 36)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.w = load i64, ptr %i.q, align 8, !tbaa !38, !alias.scope !1365
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.o
  br i1 %i.y, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !36, !alias.scope !1365 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.p
  br i1 %i.ac, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !37, !alias.scope !1365
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.af = load i64, ptr %i.q, align 8, !tbaa !38, !noalias !1366
  %i.ag = add i64 %i.af, -4611686018427387889
  %i.ah = icmp ult i64 %i.ag, 15
  br i1 %i.ah, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.208, i64 noundef 15)
          to label %.noexc9 unwind label %bb.h    ; 6 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
end_hunk_9
begin_hunk_10_@_ZN15colvarbias_meta19read_hill_template_IN12colvarmodule13memory_streamEEERT_S4_:bb.a
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.op) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %bb.bo
  %.pn148.pn.pn.pn = phi { ptr, i32 } [ %i.nr, %bb.bo ], [ %.pn148.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %.pn148.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %.loopexit.split-lp

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

bb.bu:                                            ; preds = %bb.bm
  %i.or = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.os = load ptr, ptr %27, align 8, !tbaa !36   ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.bu
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !37
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276, %bb.bt
  %.pn153 = phi { ptr, i32 } [ %i.oq, %bb.bt ], [ %i.or, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276 ], [ %i.or, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %.loopexit.split-lp

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341: ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.loopexit
  %i.ox = load ptr, ptr %0, align 8, !tbaa !28
  %i.oy = getelementptr i8, ptr %i.ox, i64 -24
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = getelementptr inbounds i8, ptr %0, i64 %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 264
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !322
  %.not134 = icmp sgt i64 %.0336, %i.pc
  br i1 %.not134, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !236, !range !182, !noundef !183
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.bw, label %bb.ci

bb.bw:                                            ; preds = %bb.bv, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.ph = load double, ptr %i.a, align 8, !tbaa !179
  invoke void @_ZN15colvarbias_meta4hillC1ExdRKSt6vectorI11colvarvalueSaIS2_EERKS1_IdSaIdEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %29, i64 noundef %.0336, double noundef %i.ph, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(112) %29)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !300
  %i.pk = icmp eq ptr %i.pj, %i.pg
  br i1 %i.pk, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !201
  store ptr %i.pm, ptr %i.pi, align 8, !tbaa !300
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bw
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.po = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15colvarbias_meta4hillD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %29) #24
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn144 = phi { ptr, i32 } [ %i.po, %bb.cb ], [ %i.pn, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %.loopexit.split-lp

bb.cd:                                            ; preds = %bb.bz, %bb.by
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !185, !range !182, !noundef !183
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !189
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !201
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.px = invoke noundef double @_ZN11colvar_gridIdE28bin_distance_from_boundariesERKSt6vectorI11colvarvalueSaIS2_EEb(ptr noundef nonnull align 8 dereferenceable(698) %i.pt, ptr noundef nonnull align 8 dereferenceable(24) %i.pw, i1 noundef zeroext true)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pz = load double, ptr %i.py, align 8, !tbaa !179
  %i.qa = call noundef double @llvm.floor.f64(double %i.pz)
  %i.qb = call double @llvm.fmuladd.f64(double %i.qa, double 3.000000e+00, double 1.000000e+00)
  %i.qc = fcmp olt double %i.px, %i.qb
  br i1 %i.qc, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qe = load ptr, ptr %i.pu, align 8, !tbaa !201
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  invoke void @_ZNSt7__cxx114listIN15colvarbias_meta4hillESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.qd, ptr noundef nonnull align 8 dereferenceable(112) %i.qf)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph352, %bb.aw, %bb.s, %bb.cg, %bb.ce
  %lpad.loopexit.split-lp442 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %bb.cd
  %i.qg = load ptr, ptr %0, align 8, !tbaa !28
  %i.qh = getelementptr i8, ptr %i.qg, i64 -24
  %i.qi = load i64, ptr %i.qh, align 8
  %i.qj = getelementptr inbounds i8, ptr %0, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 257
  store i8 1, ptr %i.qk, align 1, !tbaa !269
  br label %bb.ci

bb.ci:                                            ; preds = %bb.bv, %.thread339, %.thread, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %.3 = phi ptr [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %1, %bb.ch ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.jj, %.thread339 ], [ %i.hn, %.thread ], [ %1, %bb.bv ]
  %i.ql = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.cf
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.ci
  %i.qn = load i64, ptr %i.cf, align 8, !tbaa !37
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.qp = load ptr, ptr %5, align 8, !tbaa !100   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  %i.qq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !261
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.qu) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.qv = load ptr, ptr %3, align 8, !tbaa !228
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !291
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.qv, ptr noundef %i.qx)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i unwind label %bb.cl

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.qy = load ptr, ptr %3, align 8, !tbaa !228   ; 3 uses
  %.not.i.i.i318 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i.i318, label %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i
  %i.qz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !292
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %i.qy to i64
  %i.rd = sub i64 %i.rb, %i.rc
  call void @_ZdlPvm(ptr noundef nonnull %i.qy, i64 noundef %i.rd) #25
  br label %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit

bb.cl:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.re = landingpad { ptr, i32 }
          catch ptr null
  %i.rf = extractvalue { ptr, i32 } %i.re, 0
  call void @__clang_call_terminate(ptr %i.rf) #28
  unreachable

_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.cp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %.pn155.pn = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ %.pn148.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn144, %bb.cc ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %lpad.loopexit.split-lp442, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.rg = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.cf
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %.loopexit.split-lp
  %i.ri = load i64, ptr %i.cf, align 8, !tbaa !37
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.rk = load ptr, ptr %5, align 8, !tbaa !100   ; 3 uses
  %.not.i.i.i322 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i322, label %_ZNSt6vectorIdSaIdEED2Ev.exit323, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.rl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !261
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = ptrtoint ptr %i.rk to i64
  %i.rp = sub i64 %i.rn, %i.ro
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.rp) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit323

_ZNSt6vectorIdSaIdEED2Ev.exit323:                 ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %bb.o
  %.pn155.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.o ], [ %.pn155.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ], [ %.pn155.pn, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit323, %bb.j
  %.pn159 = phi { ptr, i32 } [ %i.cd, %bb.j ], [ %.pn155.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit323 ]
  call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.h
  %.pn159.pn = phi { ptr, i32 } [ %.pn159, %bb.cn ], [ %i.bg, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.cq

bb.cp:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit
  %.4 = phi ptr [ %.3, %_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev.exit ], [ %1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.rq = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.g
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %bb.cp
  %i.rs = load i64, ptr %i.g, align 8, !tbaa !37
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co, %bb.d
  %.pn162 = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn159.pn, %bb.co ]
  %i.ru = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.g
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.cq
  %i.rw = load i64, ptr %i.g, align 8, !tbaa !37
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn162

bb.cr:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %.5 = phi ptr [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ %1, %bb.a ]
  ret ptr %.5
}

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN10colvarbias19read_state_data_keyERN12colvarmodule13memory_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(72) ptr @_Z17hill_stream_errorIN12colvarmodule13memory_streamEERT_S3_mRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %1, ptr %i.b, align 8, !tbaa !319
  store i32 4, ptr %i.a, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.c = load ptr, ptr %2, align 8, !tbaa !36, !noalias !1376
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38, !noalias !1376 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !32, !alias.scope !1377
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !38, !alias.scope !1377
  store i8 0, ptr %i.f, align 8, !tbaa !37, !alias.scope !1377
  %i.h = add i64 %i.e, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.h)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !38, !alias.scope !1377
  %i.j = add i64 %i.i, -4611686018427387868
  %i.k = icmp ult i64 %i.j, 36
  br i1 %i.k, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.207, i64 noundef 36)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !38, !alias.scope !1377
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.e
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !36, !alias.scope !1377 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.f, align 8, !tbaa !37, !alias.scope !1377
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.v = load i64, ptr %i.g, align 8, !tbaa !38, !noalias !1378
  %i.w = add i64 %i.v, -4611686018427387889
  %i.x = icmp ult i64 %i.w, 15
  br i1 %i.x, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.208, i64 noundef 15)
          to label %.noexc9 unwind label %bb.h    ; 6 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !32, !alias.scope !1378
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !38 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc9
  store ptr %i.aa, ptr %3, align 8, !tbaa !36, !alias.scope !1378
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !37
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !37, !alias.scope !1378
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ai = phi i64 [ %i.ae, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !38, !alias.scope !1378
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !36
  store i64 0, ptr %i.aj, align 8, !tbaa !38
  store i8 0, ptr %i.ab, align 8, !tbaa !37
  %i.al = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 4)
end_hunk_10
begin_hunk_11_@_ZN15colvarbias_meta4hillC2ExdRKSt6vectorI11colvarvalueSaIS2_EERKS1_IdSaIdEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc54 unwind label %bb.g   ; 4 uses

.noexc54:                                         ; preds = %bb.c
  store ptr %i.w, ptr %i.n, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.x, ptr %i.y, align 8, !tbaa !261
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !179
  %i.z = getelementptr i8, ptr %i.w, i64 8        ; 3 uses
  %i.aa = add nsw i64 %i.t, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc54
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc54
  %.0.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc54 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !99
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !32
  %i.ag = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !34
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc55 unwind label %bb.h   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !36
  %i.al = load i64, ptr %i.c, align 8, !tbaa !34
  store i64 %i.al, ptr %i.af, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc55, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.am = phi ptr [ %i.ak, %.noexc55 ], [ %i.af, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ] ; 2 uses
  switch i64 %i.ai, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !37
  store i8 %i.an, ptr %i.am, align 1, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !34  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !38
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !255
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !291
  %i.au = load ptr, ptr %3, align 8, !tbaa !228   ; 2 uses
  %.not = icmp eq ptr %i.at, %i.au
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.h:                                             ; preds = %.noexc.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

.lr.ph:                                           ; preds = %bb.f, %_ZN11colvarvalueaSERKS_.exit
  %i.ax = phi ptr [ %i.cj, %_ZN11colvarvalueaSERKS_.exit ], [ %i.au, %bb.f ]
  %.0204 = phi i64 [ %i.ch, %_ZN11colvarvalueaSERKS_.exit ], [ 0, %bb.f ] ; 7 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !228
  %i.az = getelementptr inbounds nuw [168 x i8], ptr %i.ay, i64 %.0204
  %i.ba = getelementptr inbounds nuw [168 x i8], ptr %i.ax, i64 %.0204
  invoke void @_ZN11colvarvalue4typeERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.az, ptr noundef nonnull align 8 dereferenceable(168) %i.ba)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %.lr.ph
  %i.bb = load ptr, ptr %3, align 8, !tbaa !228
  %i.bc = getelementptr inbounds nuw [168 x i8], ptr %i.bb, i64 %.0204 ; 9 uses
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !228
  %i.be = getelementptr inbounds nuw [168 x i8], ptr %i.bd, i64 %.0204 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !258
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !258
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !296
  %i.bh = invoke noundef i32 @_ZN11colvarvalue18check_types_assignERKNS_4TypeES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc56 unwind label %bb.o   ; 0 uses

.noexc56:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bi = load i32, ptr %i.bc, align 8, !tbaa !258 ; 2 uses
  store i32 %i.bi, ptr %i.be, align 8, !tbaa !258
  switch i32 %i.bi, label %bb.n [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.l
    i32 7, label %bb.m
  ]

bb.j:                                             ; preds = %.noexc56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !229
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store double %i.bk, ptr %i.bl, align 8, !tbaa !229
  br label %_ZN11colvarvalueaSERKS_.exit

bb.k:                                             ; preds = %.noexc56, %.noexc56, %.noexc56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !tbaa.struct !297
  br label %_ZN11colvarvalueaSERKS_.exit

bb.l:                                             ; preds = %.noexc56, %.noexc56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false), !tbaa.struct !298
  br label %_ZN11colvarvalueaSERKS_.exit

bb.m:                                             ; preds = %.noexc56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.noexc57 unwind label %bb.o   ; 0 uses

.noexc57:                                         ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.noexc58 unwind label %bb.o   ; 0 uses

.noexc58:                                         ; preds = %.noexc57
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.noexc59 unwind label %bb.o   ; 0 uses

.noexc59:                                         ; preds = %.noexc58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.cb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.o ; 0 uses

bb.n:                                             ; preds = %.noexc56
  invoke void @_ZNK11colvarvalue8undef_opEv(ptr noundef nonnull align 8 dereferenceable(168) %i.be)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.o

_ZN11colvarvalueaSERKS_.exit:                     ; preds = %bb.l, %bb.k, %bb.j, %.noexc59, %bb.n
  %i.cc = load ptr, ptr %4, align 8, !tbaa !100
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.0204
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !179
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0204
  store double %i.ce, ptr %i.cg, align 8, !tbaa !179
  %i.ch = add nuw i64 %.0204, 1                   ; 2 uses
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !291
  %i.cj = load ptr, ptr %3, align 8, !tbaa !228   ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 168
  %i.co = icmp ult i64 %i.ch, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !1438

._crit_edge:                                      ; preds = %_ZN11colvarvalueaSERKS_.exit, %bb.f
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.i, %bb.m, %.noexc57, %.noexc58, %.noexc59, %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.af
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.o
  %i.cs = load i64, ptr %i.af, align 8, !tbaa !37
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201, %bb.h
  %.pn49.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ], [ %i.cp, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !261
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %bb.g
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.av, %bb.g ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.pn49.pn, %bb.p ]
  call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #24
  resume { ptr, i32 } %.pn49.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN15colvarbias_meta4hillC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !302
  store i64 %i.b, ptr %0, align 8, !tbaa !302
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 8, !tbaa !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !256
  store double %i.f, ptr %i.d, align 8, !tbaa !256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNSt6vectorI11colvarvalueSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.p, 9223372036854775800
  br i1 %i.q, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #27
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.s = phi ptr [ null, %bb.a ], [ %i.r, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !100
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !261
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !310  ; 3 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !310
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !294

bb.c:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.w, i64 %i.aa, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc9
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = load double, ptr %i.w, align 8, !tbaa !179
  store double %i.ad, ptr %i.s, align 8, !tbaa !179
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 %i.aa
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !32
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !34
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.k   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i
  store ptr %i.am, ptr %i.af, align 8, !tbaa !36
  %i.an = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc10, %bb.f
  %i.ao = phi ptr [ %i.am, %.noexc10 ], [ %i.ah, %bb.f ] ; 2 uses
  switch i64 %i.ak, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !37
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !37
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !38
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !255
  ret void

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.k:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !261
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %i.av, %bb.k ], [ %i.av, %bb.l ]
  call void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(112) ptr @_ZN15colvarbias_meta4hillaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(112) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !302
  store i64 %i.a, ptr %0, align 8, !tbaa !302
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.b, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !256
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.d, ptr %i.e, align 8, !tbaa !256
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11colvarvalueSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !255
  store double %i.o, ptr %i.b, align 8, !tbaa !255
  ret ptr %0
end_hunk_11
