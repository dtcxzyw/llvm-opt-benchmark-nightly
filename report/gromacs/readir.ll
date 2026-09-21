Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readir?download=true
inline.NumInlined: 4289
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 103
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_Z6get_irPKcS0_PN3gmx9MDModulesEP10t_inputrecP12t_gromppopts14WriteMdpHeaderP14WarningHandler:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1047: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1045
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #30
  %i.bph = load ptr, ptr %76, align 8, !tbaa !21  ; 2 uses
  %i.bpi = icmp eq ptr %i.bph, %i.bmw
  br i1 %i.bpi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1047
  %i.bpj = load i64, ptr %i.bmw, align 8, !tbaa !22
  %i.bpk = add i64 %i.bpj, 1
  call void @_ZdlPvm(ptr noundef %i.bph, i64 noundef %i.bpk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1047, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1048
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #30
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %78, ptr noundef nonnull @.str.509, i64 noundef %.04151690)
          to label %bb.tf unwind label %bb.tl

bb.tf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050
  %i.bpl = load ptr, ptr %78, align 8, !tbaa !21
  %i.bpm = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef nonnull %31, ptr noundef %i.bpl, i32 noundef -1, ptr noundef %6)
          to label %bb.tg unwind label %bb.tm

bb.tg:                                            ; preds = %bb.tf
  %i.bpn = load ptr, ptr %i.bdm, align 8, !tbaa !322
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 48
  %i.bpp = load ptr, ptr %i.bpo, align 8, !tbaa !325
  %i.bpq = getelementptr [64 x i8], ptr %i.bpp, i64 %.04151690
  %i.bpr = getelementptr i8, ptr %i.bpq, i64 248
  store i32 %i.bpm, ptr %i.bpr, align 4, !tbaa !169
  %i.bps = load ptr, ptr %78, align 8, !tbaa !21  ; 2 uses
  %i.bpt = icmp eq ptr %i.bps, %i.bmx
  br i1 %i.bpt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051: ; preds = %bb.tg
  %i.bpu = load i64, ptr %i.bmx, align 8, !tbaa !22
  %i.bpv = add i64 %i.bpu, 1
  call void @_ZdlPvm(ptr noundef %i.bps, i64 noundef %i.bpv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053: ; preds = %bb.tg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #30
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull @.str.510, i64 noundef %.04151690)
          to label %bb.th unwind label %bb.tn

bb.th:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053
  %i.bpw = load ptr, ptr %79, align 8, !tbaa !21
  %i.bpx = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef nonnull %31, ptr noundef %i.bpw, i32 noundef -1, ptr noundef %6)
          to label %bb.ti unwind label %bb.to

bb.ti:                                            ; preds = %bb.th
  %i.bpy = load ptr, ptr %i.bdm, align 8, !tbaa !322 ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 48
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !325 ; 2 uses
  %i.bqb = getelementptr [64 x i8], ptr %i.bqa, i64 %.04151690
  %i.bqc = getelementptr i8, ptr %i.bqb, i64 252
  store i32 %i.bpx, ptr %i.bqc, align 4, !tbaa !169
  %i.bqd = load ptr, ptr %79, align 8, !tbaa !21  ; 2 uses
  %i.bqe = icmp eq ptr %i.bqd, %i.bmy
  br i1 %i.bqe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054: ; preds = %bb.ti
  %i.bqf = load i64, ptr %i.bmy, align 8, !tbaa !22
  %i.bqg = add i64 %i.bqf, 1
  call void @_ZdlPvm(ptr noundef %i.bqd, i64 noundef %i.bqg) #31
  %.pre1814 = load ptr, ptr %i.bdm, align 8, !tbaa !322 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1814, i64 48
  %.pre1815 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1056: ; preds = %bb.ti, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054
  %i.bqh = phi ptr [ %.pre1815, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054 ], [ %i.bqa, %bb.ti ]
  %i.bqi = phi ptr [ %.pre1814, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1054 ], [ %i.bpy, %bb.ti ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #30
  %i.bqj = add i64 %.04151690, 1                  ; 2 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqh, i64 192
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqi, i64 56
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !326
  %i.bqn = ptrtoint ptr %i.bqm to i64
  %i.bqo = ptrtoint ptr %i.bqk to i64
  %i.bqp = sub i64 %i.bqn, %i.bqo
  %i.bqq = ashr exact i64 %i.bqp, 6
  %.not523 = icmp eq i64 %i.bqj, %i.bqq
  br i1 %.not523, label %._crit_edge1692, label %bb.sx, !llvm.loop !461

bb.tj:                                            ; preds = %bb.sx
  %i.bqr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062

bb.tk:                                            ; preds = %._crit_edge.i.i1029
  %i.bqs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqt = load ptr, ptr %77, align 8, !tbaa !21  ; 2 uses
  %i.bqu = icmp eq ptr %i.bqt, %i.bms
  br i1 %i.bqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057: ; preds = %bb.tk
  %i.bqv = load i64, ptr %i.bms, align 8, !tbaa !22
  %i.bqw = add i64 %i.bqv, 1
  call void @_ZdlPvm(ptr noundef %i.bqt, i64 noundef %i.bqw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059: ; preds = %bb.tk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #30
  %i.bqx = load ptr, ptr %76, align 8, !tbaa !21  ; 2 uses
  %i.bqy = icmp eq ptr %i.bqx, %i.bmw
  br i1 %i.bqy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059
  %i.bqz = load i64, ptr %i.bmw, align 8, !tbaa !22
  %i.bra = add i64 %i.bqz, 1
  call void @_ZdlPvm(ptr noundef %i.bqx, i64 noundef %i.bra) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060, %bb.tj
  %.pn559.pn = phi { ptr, i32 } [ %i.bqr, %bb.tj ], [ %i.bqs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1060 ], [ %i.bqs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #30
  br label %.body1110.thread

bb.tl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1050
  %i.brb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065

bb.tm:                                            ; preds = %bb.tf
  %i.brc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.brd = load ptr, ptr %78, align 8, !tbaa !21  ; 2 uses
  %i.bre = icmp eq ptr %i.brd, %i.bmx
  br i1 %i.bre, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063: ; preds = %bb.tm
  %i.brf = load i64, ptr %i.bmx, align 8, !tbaa !22
  %i.brg = add i64 %i.brf, 1
  call void @_ZdlPvm(ptr noundef %i.brd, i64 noundef %i.brg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065: ; preds = %bb.tm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063, %bb.tl
  %.pn562 = phi { ptr, i32 } [ %i.brb, %bb.tl ], [ %i.brc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063 ], [ %i.brc, %bb.tm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #30
  br label %.body1110.thread

bb.tn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1053
  %i.brh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1068

bb.to:                                            ; preds = %bb.th
  %i.bri = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.brj = load ptr, ptr %79, align 8, !tbaa !21  ; 2 uses
  %i.brk = icmp eq ptr %i.brj, %i.bmy
  br i1 %i.brk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1068, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1066

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1066: ; preds = %bb.to
  %i.brl = load i64, ptr %i.bmy, align 8, !tbaa !22
  %i.brm = add i64 %i.brl, 1
  call void @_ZdlPvm(ptr noundef %i.brj, i64 noundef %i.brm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1068

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1068: ; preds = %bb.to, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1066, %bb.tn
  %.pn564 = phi { ptr, i32 } [ %i.brh, %bb.tn ], [ %i.bri, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1066 ], [ %i.bri, %bb.to ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #30
  br label %.body1110.thread

bb.tp:                                            ; preds = %._crit_edge1692
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef nonnull %31, ptr noundef nonnull @.str.512)
          to label %bb.tq unwind label %bb.rd

bb.tq:                                            ; preds = %bb.tp
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef nonnull %31, ptr noundef nonnull @.str.513)
          to label %bb.tr unwind label %bb.rd

bb.tr:                                            ; preds = %bb.tq
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef nonnull %31, ptr noundef nonnull @.str.514)
          to label %bb.ts unwind label %bb.rd

bb.ts:                                            ; preds = %bb.tr
  %i.brn = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.515, double noundef 0.000000e+00, ptr noundef %6)
          to label %bb.tt unwind label %bb.rd

bb.tt:                                            ; preds = %bb.ts
  %i.bro = fptrunc double %i.brn to float
  %i.brp = load ptr, ptr %i.bdm, align 8, !tbaa !322
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 40
  store float %i.bro, ptr %i.brq, align 4, !tbaa !149
  %i.brr = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.516, double noundef 0.000000e+00, ptr noundef %6)
          to label %bb.tu unwind label %bb.rd

bb.tu:                                            ; preds = %bb.tt
  %i.brs = fptrunc double %i.brr to float         ; 2 uses
  %i.brt = load ptr, ptr %i.bdm, align 8, !tbaa !322 ; 2 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 44
  store float %i.brs, ptr %i.bru, align 4, !tbaa !149
  %i.brv = getelementptr inbounds nuw i8, ptr %i.brt, i64 40
  %i.brw = load float, ptr %i.brv, align 4, !tbaa !149
  %94 = insertelement <2 x float> poison, float %i.brw, i64 0
  %95 = insertelement <2 x float> %94, float %i.brs, i64 1
  %96 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %95)
  %97 = fcmp uge <2 x float> %96, splat (float 1.000000e+00)
  %98 = bitcast <2 x i1> %97 to i2
  %99 = icmp eq i2 %98, 0
  br i1 %99, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 45, ptr nonnull @.str.517)
          to label %bb.tw unwind label %bb.rd

bb.tw:                                            ; preds = %bb.tu, %bb.tv
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef nonnull %31, ptr noundef nonnull @.str.518)
          to label %bb.tx unwind label %bb.rd

bb.tx:                                            ; preds = %bb.tw
  %i.brx = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.519, double noundef 1.000000e+00, ptr noundef %6)
          to label %bb.ty unwind label %bb.rd

bb.ty:                                            ; preds = %bb.tx
  %i.bry = fptrunc double %i.brx to float
  %i.brz = load ptr, ptr %i.bdm, align 8, !tbaa !322
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 36
  store float %i.bry, ptr %i.bsa, align 4, !tbaa !629
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.ql
  %i.bsb = invoke noundef i32 @_Z10get_eeenumPSt6vectorI9t_inpfileSaIS0_EEPKcPKS5_P14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.520, ptr noundef nonnull %i.u, ptr noundef %6)
          to label %bb.ua unwind label %.loopexit.split-lp1604

bb.ua:                                            ; preds = %bb.tz
  %i.bsc = icmp ne i32 %i.bsb, 0
  %i.bsd = getelementptr inbounds nuw i8, ptr %3, i64 865
  %i.bse = zext i1 %i.bsc to i8
  store i8 %i.bse, ptr %i.bsd, align 1, !tbaa !251
  invoke void @_Z18printStringNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef nonnull %31, ptr noundef nonnull @.str.521)
          to label %bb.ub unwind label %.loopexit.split-lp1604

bb.ub:                                            ; preds = %bb.ua
  %i.bsf = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 32768
  invoke void @_Z14setStringEntryPSt6vectorI9t_inpfileSaIS0_EEPKcPcS5_(ptr noundef nonnull %31, ptr noundef nonnull @.str.522, ptr noundef nonnull %i.bsg, ptr noundef null)
          to label %bb.uc unwind label %.loopexit.split-lp1604

bb.uc:                                            ; preds = %bb.ub
  %i.bsh = load ptr, ptr @_ZL15inputrecStrings, align 8, !tbaa !25
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 36864
  invoke void @_Z14setStringEntryPSt6vectorI9t_inpfileSaIS0_EEPKcPcS5_(ptr noundef nonnull %31, ptr noundef nonnull @.str.523, ptr noundef nonnull %i.bsi, ptr noundef null)
          to label %bb.ud unwind label %.loopexit.split-lp1604

bb.ud:                                            ; preds = %bb.uc
  %i.bsj = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.524, i32 noundef 0, ptr noundef %6)
          to label %bb.ue unwind label %.loopexit.split-lp1604

bb.ue:                                            ; preds = %bb.ud
  %i.bsk = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i32 %i.bsj, ptr %i.bsk, align 8, !tbaa !630
  %i.bsl = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.525, i32 noundef 0, ptr noundef %6)
          to label %bb.uf unwind label %.loopexit.split-lp1604

bb.uf:                                            ; preds = %bb.ue
  %i.bsm = getelementptr inbounds nuw i8, ptr %3, i64 716
  store i32 %i.bsl, ptr %i.bsm, align 4, !tbaa !631
  %i.bsn = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.526, i32 noundef 0, ptr noundef %6)
          to label %bb.ug unwind label %.loopexit.split-lp1604

bb.ug:                                            ; preds = %bb.uf
  %i.bso = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i32 %i.bsn, ptr %i.bso, align 8, !tbaa !632
  %i.bsp = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.527, i32 noundef 0, ptr noundef %6)
          to label %bb.uh unwind label %.loopexit.split-lp1604

bb.uh:                                            ; preds = %bb.ug
  %i.bsq = getelementptr inbounds nuw i8, ptr %3, i64 724
  store i32 %i.bsp, ptr %i.bsq, align 4, !tbaa !633
  %i.bsr = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.528, double noundef 0.000000e+00, ptr noundef %6)
          to label %bb.ui unwind label %.loopexit.split-lp1604

bb.ui:                                            ; preds = %bb.uh
  %i.bss = fptrunc double %i.bsr to float
  %i.bst = getelementptr inbounds nuw i8, ptr %3, i64 728
  store float %i.bss, ptr %i.bst, align 8, !tbaa !634
  %i.bsu = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.529, double noundef 0.000000e+00, ptr noundef %6)
          to label %bb.uj unwind label %.loopexit.split-lp1604

bb.uj:                                            ; preds = %bb.ui
  %i.bsv = fptrunc double %i.bsu to float
  %i.bsw = getelementptr inbounds nuw i8, ptr %3, i64 732
  store float %i.bsv, ptr %i.bsw, align 4, !tbaa !635
  %i.bsx = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.530, double noundef 0.000000e+00, ptr noundef %6)
          to label %bb.uk unwind label %.loopexit.split-lp1604

bb.uk:                                            ; preds = %bb.uj
  %i.bsy = fptrunc double %i.bsx to float
  %i.bsz = getelementptr inbounds nuw i8, ptr %3, i64 736
  store float %i.bsy, ptr %i.bsz, align 8, !tbaa !636
  %i.bta = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef nonnull %31, ptr noundef nonnull @.str.531, double noundef 0.000000e+00, ptr noundef %6)
          to label %bb.ul unwind label %.loopexit.split-lp1604

bb.ul:                                            ; preds = %bb.uk
  %i.btb = fptrunc double %i.bta to float
  %i.btc = getelementptr inbounds nuw i8, ptr %3, i64 740
  store float %i.btb, ptr %i.btc, align 4, !tbaa !637
  %i.btd = load ptr, ptr %i.r, align 8, !tbaa !34
  %.not524 = icmp eq ptr %i.btd, null
  br i1 %.not524, label %.preheader1602, label %bb.um

bb.um:                                            ; preds = %bb.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 2)
          to label %bb.un unwind label %bb.vh

bb.un:                                            ; preds = %bb.um
  invoke void @_ZN3gmx14TextOutputFileC1ERKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull align 8 dereferenceable(40) %81)
          to label %bb.uo unwind label %bb.vi

bb.uo:                                            ; preds = %bb.un
  %i.bte = getelementptr inbounds nuw i8, ptr %81, i64 32 ; 2 uses
  %i.btf = load ptr, ptr %i.bte, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i1069 = icmp eq ptr %i.btf, null
  br i1 %.not.i.i.i1069, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i1070, label %bb.up

bb.up:                                            ; preds = %bb.uo
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bte, ptr noundef nonnull %i.btf) #30
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i1070

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i1070: ; preds = %bb.up, %bb.uo
  %i.btg = load ptr, ptr %81, align 8, !tbaa !21  ; 2 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.bti = icmp eq ptr %i.btg, %i.bth
  br i1 %i.bti, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit1073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i1070
  %i.btj = load i64, ptr %i.bth, align 8, !tbaa !22
  %i.btk = add i64 %i.btj, 1
  call void @_ZdlPvm(ptr noundef %i.btg, i64 noundef %i.btk) #31
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit1073

_ZNSt10filesystem7__cxx114pathD2Ev.exit1073:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i1070, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #30
  %i.btl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.btm = load i8, ptr %i.btl, align 8, !tbaa !557, !range !166, !noundef !167
  %i.btn = trunc nuw i8 %i.btm to i1
  br i1 %i.btn, label %bb.uq, label %bb.vl

bb.uq:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit1073
  %i.bto = load ptr, ptr %31, align 8, !tbaa !256 ; 3 uses
  %i.btp = load ptr, ptr %i.ar, align 8, !tbaa !257
  %i.btq = ptrtoint ptr %i.btp to i64
  %i.btr = ptrtoint ptr %i.bto to i64
  %i.bts = sub i64 %i.btq, %i.btr
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bto, i64 %i.bts
  %i.btu = invoke noundef i32 @_Z11search_einpN3gmx8ArrayRefIK9t_inpfileEEPKc(ptr %i.bto, ptr %i.btt, ptr noundef nonnull @.str.370)
          to label %bb.ur unwind label %bb.vk

bb.ur:                                            ; preds = %bb.uq
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #30
  %i.btv = load i32, ptr %i.vw, align 4, !tbaa !556 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.btw = call i32 @llvm.abs.i32(i32 %i.btv, i1 false) ; 5 uses
  %i.btx = icmp ult i32 %i.btw, 10
  br i1 %i.btx, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ur, %bb.ux
  %.030.i.i = phi i32 [ %i.buf, %bb.ux ], [ 1, %bb.ur ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.bue, %bb.ux ], [ %i.btw, %bb.ur ] ; 5 uses
  %i.bty = icmp ult i32 %.02329.i.i, 100
  br i1 %i.bty, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %.lr.ph.i.i
  %i.btz = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ut:                                            ; preds = %.lr.ph.i.i
  %i.bua = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.bua, label %bb.uu, label %bb.uv

bb.uu:                                            ; preds = %bb.ut
  %i.bub = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.uv:                                            ; preds = %bb.ut
  %i.buc = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.buc, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %i.bud = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ux:                                            ; preds = %bb.uv
  %i.bue = udiv i32 %.02329.i.i, 10000
  %i.buf = add i32 %.030.i.i, 4                   ; 2 uses
  %i.bug = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.bug, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !464

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ux, %bb.uw, %bb.uu, %bb.us, %bb.ur
  %.022.i.i = phi i32 [ %i.bud, %bb.uw ], [ %i.btz, %bb.us ], [ %i.bub, %bb.uu ], [ 1, %bb.ur ], [ %i.buf, %bb.ux ] ; 2 uses
  %.lobit.i = lshr i32 %i.btv, 31                 ; 2 uses
  %i.buh = add i32 %.022.i.i, %.lobit.i
  %i.bui = zext i32 %i.buh to i64
  %i.buj = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 9 uses
  store ptr %i.buj, ptr %82, align 8, !tbaa !17, !alias.scope !638
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %82, i64 noundef %i.bui, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.va

end_hunk_0
begin_hunk_1_@_Z12double_checkP10t_inputrecPA3_fbbP14WarningHandler:bb.a
  %i.r = load i32, ptr %i.q, align 4, !tbaa !135  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load i32, ptr %i.t, align 8, !tbaa !151
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %thread-pre-split.thread

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.x = load i32, ptr %i.w, align 8, !tbaa !267
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %thread-pre-split.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(71) %i.a, ptr noundef nonnull align 1 dereferenceable(71) @.str.749, i64 71, i1 false)
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.z, ptr nonnull %i.a)
  %.pr.pre = load i32, ptr %i.q, align 4, !tbaa !135
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.k, %bb.h
  %i.aa = phi i32 [ %i.r, %bb.h ], [ %.pr.pre, %bb.k ] ; 2 uses
  switch i32 %i.aa, label %thread-pre-split.thread [
    i32 2, label %bb.l
    i32 6, label %bb.l
  ]

bb.l:                                             ; preds = %thread-pre-split, %thread-pre-split
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !266
  %i.ad = icmp slt i32 %i.ac, 8
  br i1 %i.ad, label %bb.m, label %thread-pre-split.thread

bb.m:                                             ; preds = %bb.l
  %i.ae = call noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef %i.aa)
  %i.af = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.750, ptr noundef %i.ae) #30 ; 0 uses
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.ag, ptr nonnull %i.a)
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.j, %bb.i, %thread-pre-split, %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !152
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.n, label %.thread

bb.n:                                             ; preds = %thread-pre-split.thread
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 52, ptr nonnull @.str.751)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.c, %thread-pre-split.thread, %bb.n, %bb.g
  br i1 %3, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !152
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 59, ptr nonnull @.str.752)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !268
  %i.ap = fcmp ogt float %i.ao, 9.000000e+01
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(70) %i.a, ptr noundef nonnull align 1 dereferenceable(70) @.str.753, i64 70, i1 false)
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.aq, ptr nonnull %i.a)
  store float 9.000000e+01, ptr %i.an, align 4, !tbaa !268
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !176 ; 2 uses
  %.not39 = icmp eq i32 %i.ar, 1
  br i1 %.not39, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load i32, ptr %i.as, align 8, !tbaa !144
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 119, ptr nonnull @.str.754)
  %.pre58 = load i32, ptr %i.b, align 8, !tbaa !176
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.av = phi i32 [ %.pre58, %bb.u ], [ %i.ar, %bb.t ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !142 ; 2 uses
  %i.ay = fmul float %i.ax, %i.ax
  %i.az = call noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef %i.av, ptr noundef %1)
  %i.ba = fcmp ult float %i.ay, %i.az
  br i1 %i.ba, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(162) %i.a, ptr noundef nonnull align 1 dereferenceable(162) @.str.755, i64 162, i1 false)
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.bb, ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #6

declare noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_readir.cpp() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 19, ptr %i.a, align 8, !tbaa !19
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !21
  %i.c = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 8), align 8, !tbaa !23
  %i.d = load ptr, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 40), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 57), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64), align 8, !tbaa !17
  store i32 1919508848, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 72), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 84), align 4, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96), align 8, !tbaa !17
  store i64 7809649004360788324, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 104), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 120), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 136), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 149), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160), align 8, !tbaa !17
  store i32 1819047280, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 168), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 180), align 4, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 200), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 211), align 1, !tbaa !22
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev, ptr nonnull @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i16.p0(<4 x i16>, ptr captures(none), <4 x i1>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #29 = { noreturn }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { cold nounwind }
attributes #35 = { cold }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = distinct !{!2, !32}
!3 = distinct !{!3, !32}
!4 = distinct !{!4, !32}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !10, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!20, !18, i64 8}
!24 = !{!"p1 _ZTS20gmx_inputrec_strings", !14, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !28, i64 8}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!29, !28, i64 16}
!34 = !{!15, !15, i64 0}
!35 = !{!"p1 _ZTS8t_lambda", !14, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS10t_expanded", !14, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTS20IntegrationAlgorithm", !10, i64 0}
!40 = !{!"_ZTS12CutoffScheme", !10, i64 0}
!41 = !{!"_ZTS19ComRemovalAlgorithm", !10, i64 0}
!42 = !{!"double", !10, i64 0}
!43 = !{!"bool", !10, i64 0}
!44 = !{!"p1 _ZTSN3gmx8MtsLevelE", !14, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !47, i64 0}
!49 = !{!"float", !10, i64 0}
!50 = !{!"_ZTS13EwaldGeometry", !10, i64 0}
!51 = !{!"_ZTS12LongRangeVdW", !10, i64 0}
!52 = !{!"_ZTS7PbcType", !10, i64 0}
!53 = !{!"_ZTS26EnsembleTemperatureSetting", !10, i64 0}
!54 = !{!"_ZTS19TemperatureCoupling", !10, i64 0}
!55 = !{!"_ZTS16PressureCoupling", !10, i64 0}
!56 = !{!"_ZTS20PressureCouplingType", !10, i64 0}
!57 = !{!"_ZTS15RefCoordScaling", !10, i64 0}
!58 = !{!"_ZTS23PressureCouplingOptions", !55, i64 0, !56, i64 4, !11, i64 8, !49, i64 12, !10, i64 16, !10, i64 52, !57, i64 88}
!59 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !14, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !62, i64 0}
!64 = !{!"_ZTS22CoulombInteractionType", !10, i64 0}
!65 = !{!"_ZTS20InteractionModifiers", !10, i64 0}
!66 = !{!"_ZTS15VanDerWaalsType", !10, i64 0}
!67 = !{!"_ZTS24DispersionCorrectionType", !10, i64 0}
!68 = !{!"_ZTS26FreeEnergyPerturbationType", !10, i64 0}
!69 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !35, i64 0}
!70 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !69, i64 0}
!71 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !72, i64 0}
!74 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !73, i64 0}
!75 = !{!"p1 _ZTS9t_simtemp", !14, i64 0}
!76 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !75, i64 0}
!77 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !76, i64 0}
!78 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !79, i64 0}
!81 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !80, i64 0}
!82 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !37, i64 0}
!83 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !85, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTS27DistanceRestraintRefinement", !10, i64 0}
!89 = !{!"_ZTS26DistanceRestraintWeighting", !10, i64 0}
!90 = !{!"_ZTS19ConstraintAlgorithm", !10, i64 0}
!91 = !{!"_ZTS8WallType", !10, i64 0}
!92 = !{!"p1 _ZTS13pull_params_t", !14, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !92, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !97, i64 0}
!99 = !{!"p1 _ZTSN3gmx9AwhParamsE", !14, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !99, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !100, i64 0}
!102 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !103, i64 0}
!105 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !104, i64 0}
!106 = !{!"p1 _ZTS5t_rot", !14, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !106, i64 0}
!108 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !107, i64 0}
!109 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !110, i64 0}
!112 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !111, i64 0}
!113 = !{!"_ZTS8SwapType", !10, i64 0}
!114 = !{!"p1 _ZTS12t_swapcoords", !14, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !114, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !115, i64 0}
!117 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !116, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !118, i64 0}
!120 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !119, i64 0}
!121 = !{!"p1 _ZTS5t_IMD", !14, i64 0}
!122 = !{!"p1 float", !14, i64 0}
!123 = !{!"p1 int", !14, i64 0}
!124 = !{!"any p2 pointer", !14, i64 0}
!125 = !{!"p2 float", !124, i64 0}
!126 = !{!"_ZTS9t_grpopts", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !122, i64 16, !122, i64 24, !14, i64 32, !123, i64 40, !125, i64 48, !125, i64 56, !122, i64 64, !63, i64 72, !123, i64 96, !123, i64 104, !11, i64 112}
!127 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !14, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !127, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !128, i64 0}
!130 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !131, i64 0}
!133 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !132, i64 0}
!134 = !{!"_ZTS10t_inputrec", !11, i64 0, !39, i64 4, !18, i64 8, !11, i64 16, !18, i64 24, !11, i64 32, !40, i64 36, !11, i64 40, !11, i64 44, !41, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !42, i64 80, !42, i64 88, !43, i64 96, !48, i64 104, !49, i64 128, !49, i64 132, !49, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !49, i64 156, !49, i64 160, !50, i64 164, !49, i64 168, !51, i64 172, !52, i64 176, !43, i64 180, !43, i64 181, !53, i64 184, !49, i64 188, !54, i64 192, !11, i64 196, !43, i64 200, !58, i64 204, !63, i64 296, !63, i64 320, !11, i64 344, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !64, i64 364, !65, i64 368, !49, i64 372, !49, i64 376, !49, i64 380, !49, i64 384, !43, i64 388, !66, i64 392, !65, i64 396, !49, i64 400, !49, i64 404, !67, i64 408, !49, i64 412, !49, i64 416, !68, i64 420, !74, i64 424, !43, i64 432, !81, i64 440, !43, i64 448, !87, i64 456, !88, i64 464, !49, i64 468, !89, i64 472, !43, i64 476, !11, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !11, i64 496, !49, i64 500, !49, i64 504, !11, i64 508, !49, i64 512, !11, i64 516, !11, i64 520, !90, i64 524, !11, i64 528, !49, i64 532, !11, i64 536, !43, i64 540, !49, i64 544, !18, i64 552, !11, i64 560, !91, i64 564, !49, i64 568, !10, i64 572, !10, i64 580, !49, i64 588, !43, i64 592, !98, i64 600, !43, i64 608, !105, i64 616, !43, i64 624, !112, i64 632, !113, i64 640, !120, i64 648, !43, i64 656, !121, i64 664, !49, i64 672, !10, i64 676, !11, i64 712, !11, i64 716, !11, i64 720, !11, i64 724, !49, i64 728, !49, i64 732, !49, i64 736, !49, i64 740, !126, i64 744, !43, i64 864, !43, i64 865, !43, i64 866, !43, i64 867, !127, i64 872, !133, i64 880}
!135 = !{!134, !39, i64 4}
!136 = !{!134, !42, i64 88}
!137 = !{!28, !28, i64 0}
!138 = !{!134, !64, i64 364}
!139 = !{!134, !49, i64 376}
end_hunk_1
