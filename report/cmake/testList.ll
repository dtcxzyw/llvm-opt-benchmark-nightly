Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testList?download=true
inline.NumInlined: 2775
inline.NumDeleted: 395
loop-unroll.NumCompletelyUnrolled: 182
loop-unroll.NumUnrolled: 182
begin_hunk_0_@_ZN12_GLOBAL__N_113testModifiersEv:._crit_edge.i.i
  %.not4.i.i.i.i1117 = icmp eq ptr %i.aoi, %i.aoj
  br i1 %.not4.i.i.i.i1117, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1125, label %.lr.ph.i.i.i.i1118

.lr.ph.i.i.i.i1118:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1116, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1121
  %.05.i.i.i.i1119 = phi ptr [ %i.aop, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1121 ], [ %i.aoi, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1116 ] ; 3 uses
  %i.aok = load ptr, ptr %.05.i.i.i.i1119, align 8, !tbaa !25 ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1119, i64 16 ; 2 uses
  %i.aom = icmp eq ptr %i.aok, %i.aol
  br i1 %i.aom, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1120: ; preds = %.lr.ph.i.i.i.i1118
  %i.aon = load i64, ptr %i.aol, align 8, !tbaa !24
  %i.aoo = add i64 %i.aon, 1
  call void @_ZdlPvm(ptr noundef %i.aok, i64 noundef %i.aoo) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1121

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1121: ; preds = %.lr.ph.i.i.i.i1118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1120
  %i.aop = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1119, i64 32 ; 2 uses
  %.not.i.i.i.i1122 = icmp eq ptr %i.aop, %i.aoj
  br i1 %.not.i.i.i.i1122, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1123, label %.lr.ph.i.i.i.i1118, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1123: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1121
  %.pr.i.i1124 = load ptr, ptr %36, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1125

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1125: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1123, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1116
  %i.aoq = phi ptr [ %.pr.i.i1124, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1123 ], [ %i.aoi, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1116 ] ; 3 uses
  %.not.i.i1.i.i1126 = icmp eq ptr %i.aoq, null
  br i1 %.not.i.i1.i.i1126, label %_ZN6cmListD2Ev.exit1128, label %bb.dr

bb.dr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1125
  %i.aor = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !33
  %i.aot = ptrtoint ptr %i.aos to i64
  %i.aou = ptrtoint ptr %i.aoq to i64
  %i.aov = sub i64 %i.aot, %i.aou
  call void @_ZdlPvm(ptr noundef nonnull %i.aoq, i64 noundef %i.aov) #20
  br label %_ZN6cmListD2Ev.exit1128

_ZN6cmListD2Ev.exit1128:                          ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1125, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  %i.aow = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  store ptr %i.aow, ptr %42, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aow, ptr noundef nonnull align 1 dereferenceable(9) @.str.35, i64 9, i1 false)
  %i.aox = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 9, ptr %i.aox, align 8, !tbaa !23
  %i.aoy = getelementptr inbounds nuw i8, ptr %42, i64 25
  store i8 0, ptr %i.aoy, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %i.aoz = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  %i.apa = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 1, i32 noundef 0)
          to label %.noexc.i1136 unwind label %.body1138 ; 0 uses

.noexc.i1136:                                     ; preds = %_ZN6cmListD2Ev.exit1128
  %i.apb = load ptr, ptr %42, align 8, !tbaa !25  ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.apd = icmp eq ptr %i.apb, %i.apc
  br i1 %i.apd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141

.body1138:                                        ; preds = %_ZN6cmListD2Ev.exit1128
  %i.ape = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %41) #17
  %i.apf = load ptr, ptr %42, align 8, !tbaa !25  ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.aph = icmp eq ptr %i.apf, %i.apg
  br i1 %i.aph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141: ; preds = %.noexc.i1136
  %i.api = load i64, ptr %i.apc, align 8, !tbaa !24
  %i.apj = add i64 %i.api, 1
  call void @_ZdlPvm(ptr noundef %i.apb, i64 noundef %i.apj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143: ; preds = %.noexc.i1136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  %i.apk = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  store ptr %i.apk, ptr %44, align 8, !tbaa !20
  store i8 54, ptr %i.apk, align 8, !tbaa !24
  %i.apl = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 1, ptr %i.apl, align 8, !tbaa !23
  %i.apm = getelementptr inbounds nuw i8, ptr %44, i64 17
  store i8 0, ptr %i.apm, align 1, !tbaa !24
  %i.apn = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.apo = getelementptr inbounds nuw i8, ptr %44, i64 48 ; 2 uses
  store ptr %i.apo, ptr %i.apn, align 8, !tbaa !20
  store i8 55, ptr %i.apo, align 8, !tbaa !24
  %i.app = getelementptr inbounds nuw i8, ptr %44, i64 40
  store i64 1, ptr %i.app, align 8, !tbaa !23
  %i.apq = getelementptr inbounds nuw i8, ptr %44, i64 49
  store i8 0, ptr %i.apq, align 1, !tbaa !24
  %i.apr = getelementptr inbounds nuw i8, ptr %44, i64 64
  %i.aps = getelementptr inbounds nuw i8, ptr %44, i64 80 ; 2 uses
  store ptr %i.aps, ptr %i.apr, align 8, !tbaa !20
  store i8 56, ptr %i.aps, align 8, !tbaa !24
  %i.apt = getelementptr inbounds nuw i8, ptr %44, i64 72
  store i64 1, ptr %i.apt, align 8, !tbaa !23
  %i.apu = getelementptr inbounds nuw i8, ptr %44, i64 81
  store i8 0, ptr %i.apu, align 1, !tbaa !24
  %i.apv = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1158 unwind label %.thread1787 ; 8 uses

.thread1787:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143
  %i.apw = landingpad { ptr, i32 }
          cleanup
  br label %.body1159

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143
  %i.apx = getelementptr inbounds nuw i8, ptr %44, i64 96
  store ptr %i.apv, ptr %43, align 8, !tbaa !29
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 96
  %i.apz = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  store ptr %i.apy, ptr %i.apz, align 8, !tbaa !33
  %i.aqa = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %44, ptr noundef nonnull %i.apx, ptr noundef nonnull %i.apv)
          to label %bb.dt unwind label %bb.ds     ; 4 uses

bb.ds:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1158
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.apv, i64 noundef 96) #20
  br label %.body1159

bb.dt:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i1158
  %i.aqc = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  store ptr %i.aqa, ptr %i.aqc, align 8, !tbaa !28
  %i.aqd = getelementptr inbounds nuw i8, ptr %44, i64 64
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !25 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %44, i64 80 ; 2 uses
  %i.aqg = icmp eq ptr %i.aqe, %i.aqf
  br i1 %i.aqg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162: ; preds = %bb.dt
  %i.aqh = load i64, ptr %i.aqf, align 8, !tbaa !24
  %i.aqi = add i64 %i.aqh, 1
  call void @_ZdlPvm(ptr noundef %i.aqe, i64 noundef %i.aqi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162
  %i.aqj = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !25 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %44, i64 48 ; 2 uses
  %i.aqm = icmp eq ptr %i.aqk, %i.aql
  br i1 %i.aqm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164
  %i.aqn = load i64, ptr %i.aql, align 8, !tbaa !24
  %i.aqo = add i64 %i.aqn, 1
  call void @_ZdlPvm(ptr noundef %i.aqk, i64 noundef %i.aqo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162.1
  %i.aqp = load ptr, ptr %44, align 8, !tbaa !25  ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.aqr = icmp eq ptr %i.aqp, %i.aqq
  br i1 %i.aqr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.1
  %i.aqs = load i64, ptr %i.aqq, align 8, !tbaa !24
  %i.aqt = add i64 %i.aqs, 1
  call void @_ZdlPvm(ptr noundef %i.aqp, i64 noundef %i.aqt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1162.2
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  %i.aqu = load ptr, ptr %41, align 8, !tbaa !34  ; 4 uses
  %i.aqv = icmp eq ptr %i.apv, %i.aqa
  %.sroa.020.0.i12201790 = getelementptr inbounds nuw i8, ptr %i.aqu, i64 64 ; 2 uses
  br i1 %i.aqv, label %_ZN6cmList6insertEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEOSC_NS_14ExpandElementsENS_13EmptyElementsE.exit, label %bb.du

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2
  %.pre.i = load ptr, ptr %i.aoz, align 8, !tbaa !28
  br label %bb.dv

bb.dv:                                            ; preds = %.noexc1221, %bb.du
  %i.aqw = phi ptr [ %i.aqu, %bb.du ], [ %i.are, %.noexc1221 ]
  %i.aqx = phi ptr [ %.pre.i, %bb.du ], [ %i.ard, %.noexc1221 ]
  %.sroa.033.050.i = phi ptr [ %i.apv, %bb.du ], [ %i.arl, %.noexc1221 ] ; 2 uses
  %.sroa.027.049.i = phi ptr [ %.sroa.020.0.i12201790, %bb.du ], [ %i.ark, %.noexc1221 ]
  %i.aqy = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr %.sroa.027.049.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.050.i, i32 noundef 1, i32 noundef 0)
          to label %.noexc1221 unwind label %bb.ed

.noexc1221:                                       ; preds = %bb.dv
  %i.aqz = ptrtoint ptr %i.aqx to i64
  %i.ara = ptrtoint ptr %i.aqw to i64
  %i.arb = sub i64 %i.aqz, %i.ara
  %i.arc = ashr exact i64 %i.arb, 5
  %i.ard = load ptr, ptr %i.aoz, align 8, !tbaa !28 ; 2 uses
  %i.are = load ptr, ptr %41, align 8, !tbaa !29  ; 4 uses
  %i.arf = ptrtoint ptr %i.ard to i64
  %i.arg = ptrtoint ptr %i.are to i64
  %i.arh = sub i64 %i.arf, %i.arg
  %i.ari = ashr exact i64 %i.arh, 5
  %i.arj = sub nsw i64 %i.ari, %i.arc
  %i.ark = getelementptr inbounds [32 x i8], ptr %i.aqy, i64 %i.arj
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i, i64 32 ; 2 uses
  %.not41.i = icmp eq ptr %i.arl, %i.aqa
  br i1 %.not41.i, label %.noexc1166, label %bb.dv, !llvm.loop !4

.noexc1166:                                       ; preds = %.noexc1221
  %.sroa.020.0.i1220 = getelementptr inbounds nuw i8, ptr %i.are, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc1166, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.arr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.apv, %.noexc1166 ] ; 3 uses
  %i.arm = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.aro = icmp eq ptr %i.arm, %i.arn
  br i1 %i.aro, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.arp = load i64, ptr %i.arn, align 8, !tbaa !24
  %i.arq = add i64 %i.arp, 1
  call void @_ZdlPvm(ptr noundef %i.arm, i64 noundef %i.arq) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.arr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.arr, %i.aqa
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.apv, ptr %i.aqc, align 8, !tbaa !28
  %.pre1458 = load ptr, ptr %41, align 8, !tbaa !29
  br label %_ZN6cmList6insertEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEOSC_NS_14ExpandElementsENS_13EmptyElementsE.exit

_ZN6cmList6insertEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEOSC_NS_14ExpandElementsENS_13EmptyElementsE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %.sroa.020.0.i12201792 = phi ptr [ %.sroa.020.0.i1220, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i ], [ %.sroa.020.0.i12201790, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2 ]
  %.pn.i12191791 = phi ptr [ %i.are, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i ], [ %i.aqu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2 ]
  %i.ars = phi ptr [ %.pre1458, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i ], [ %i.aqu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1164.2 ] ; 2 uses
  %i.art = load ptr, ptr %i.aoz, align 8, !tbaa !28 ; 2 uses
  %i.aru = ptrtoint ptr %i.art to i64
  %i.arv = ptrtoint ptr %i.ars to i64
  %i.arw = sub i64 %i.aru, %i.arv
  %.not432 = icmp eq i64 %i.arw, 256
  br i1 %.not432, label %bb.dw, label %.critedge473.thread

bb.dw:                                            ; preds = %_ZN6cmList6insertEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEOSC_NS_14ExpandElementsENS_13EmptyElementsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %.sroa.2.0.copyload.i1168 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !30, !noalias !211
  %.sroa.0.0.copyload.i1167 = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !31, !noalias !211
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr %i.ars, ptr %i.art, i64 %.sroa.0.0.copyload.i1167, ptr %.sroa.2.0.copyload.i1168)
          to label %_ZNK6cmList9to_stringB5cxx11Ev.exit1170 unwind label %bb.ee

_ZNK6cmList9to_stringB5cxx11Ev.exit1170:          ; preds = %bb.dw
  %i.arx = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !23 ; 2 uses
  %i.arz = icmp eq i64 %i.ary, 15
  %.pre1459 = load ptr, ptr %45, align 8, !tbaa !25 ; 4 uses
  br i1 %i.arz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit1170
  %i.asa = load i64, ptr %.pre1459, align 1
  %i.asb = xor i64 %i.asa, 4266944276064254769
  %i.asc = getelementptr i8, ptr %.pre1459, i64 7
  %i.asd = load i64, ptr %i.asc, align 1
  %i.ase = xor i64 %i.asd, 3835716936503343163
  %i.asf = or i64 %i.asb, %i.ase
  %i.asg = icmp ne i64 %i.asf, 0
  %i.ash = zext i1 %i.asg to i32
  %bcmp.i.i1171.fr = freeze i32 %i.ash
  %i.asi = icmp ne i32 %bcmp.i.i1171.fr, 0
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZNK6cmList9to_stringB5cxx11Ev.exit1170
  %.ph1406 = phi i1 [ true, %_ZNK6cmList9to_stringB5cxx11Ev.exit1170 ], [ %i.asi, %bb.dx ]
  %i.asj = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.ask = icmp eq ptr %.pre1459, %i.asj
  br i1 %i.ask, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1174: ; preds = %bb.dy
  %i.asl = icmp ult i64 %i.ary, 16
  call void @llvm.assume(i1 %i.asl)
  br label %.critedge473

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1173: ; preds = %bb.dy
  %i.asm = load i64, ptr %i.asj, align 8, !tbaa !24
  %i.asn = add i64 %i.asm, 1
  call void @_ZdlPvm(ptr noundef %.pre1459, i64 noundef %i.asn) #20
  br label %.critedge473

.critedge473:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1174
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  br i1 %.ph1406, label %.critedge473.thread, label %bb.dz

.critedge473.thread:                              ; preds = %_ZN6cmList6insertEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEOSC_NS_14ExpandElementsENS_13EmptyElementsE.exit, %.critedge473
  br label %bb.dz

bb.dz:                                            ; preds = %.critedge473, %.critedge473.thread
  %i.aso = phi i1 [ false, %.critedge473.thread ], [ %i.aob, %.critedge473 ]
  %i.asp = getelementptr inbounds nuw i8, ptr %.pn.i12191791, i64 72
  %i.asq = load i64, ptr %i.asp, align 8, !tbaa !23
  %i.asr = icmp eq i64 %i.asq, 1
  br i1 %i.asr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread

bb.ea:                                            ; preds = %bb.dq, %bb.dp
  %.pn422 = phi { ptr, i32 } [ %i.any, %bb.dp ], [ %i.anz, %bb.dq ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #17
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1097.1
  %.pn422.pn = phi { ptr, i32 } [ %.pn422, %bb.ea ], [ %i.anm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1097.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #17
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1094
  %.pn422.pn.pn = phi { ptr, i32 } [ %.pn422.pn, %bb.eb ], [ %i.aks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1094 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %bb.ep

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1178: ; preds = %.body1138
  %i.ass = load i64, ptr %i.apg, align 8, !tbaa !24
  %i.ast = add i64 %i.ass, 1
  call void @_ZdlPvm(ptr noundef %i.apf, i64 noundef %i.ast) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180: ; preds = %.body1138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1178
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  br label %bb.eo

.body1159:                                        ; preds = %.thread1787, %bb.ds
  %i.asu = phi { ptr, i32 } [ %i.apw, %.thread1787 ], [ %i.aqb, %bb.ds ]
  %i.asv = getelementptr inbounds nuw i8, ptr %44, i64 64
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !25 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %44, i64 80 ; 2 uses
  %i.asy = icmp eq ptr %i.asw, %i.asx
  br i1 %i.asy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181: ; preds = %.body1159
  %i.asz = load i64, ptr %i.asx, align 8, !tbaa !24
  %i.ata = add i64 %i.asz, 1
  call void @_ZdlPvm(ptr noundef %i.asw, i64 noundef %i.ata) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183: ; preds = %.body1159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181
  %i.atb = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !25 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %44, i64 48 ; 2 uses
  %i.ate = icmp eq ptr %i.atc, %i.atd
  br i1 %i.ate, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183
  %i.atf = load i64, ptr %i.atd, align 8, !tbaa !24
  %i.atg = add i64 %i.atf, 1
  call void @_ZdlPvm(ptr noundef %i.atc, i64 noundef %i.atg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181.1
  %i.ath = load ptr, ptr %44, align 8, !tbaa !25  ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.atj = icmp eq ptr %i.ath, %i.ati
  br i1 %i.atj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.1
  %i.atk = load i64, ptr %i.ati, align 8, !tbaa !24
  %i.atl = add i64 %i.atk, 1
  call void @_ZdlPvm(ptr noundef %i.ath, i64 noundef %i.atl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181.2
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  br label %bb.en

bb.ed:                                            ; preds = %bb.dv
  %i.atm = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ee:                                            ; preds = %bb.dw
  %i.atn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  br label %bb.em

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177: ; preds = %bb.dz
  %i.ato = load ptr, ptr %.sroa.020.0.i12201792, align 8, !tbaa !25
  %lhsc1772 = load i8, ptr %i.ato, align 1
  %lhsc1772.fr = freeze i8 %lhsc1772
  %.not1429 = icmp eq i8 %lhsc1772.fr, 54
  br i1 %.not1429, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread1418, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread: ; preds = %bb.dz, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread1418

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread1418: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread
  %i.atp = phi i1 [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread ], [ %i.aso, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177 ]
  %i.atq = load ptr, ptr %43, align 8, !tbaa !34  ; 5 uses
  %i.atr = load ptr, ptr %i.aqc, align 8, !tbaa !34 ; 2 uses
  %i.ats = icmp eq ptr %i.atq, %i.atr             ; 2 uses
  %.21 = select i1 %i.ats, i1 %i.atp, i1 false    ; 2 uses
  br i1 %i.ats, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1198, label %.lr.ph.i.i.i1191

.lr.ph.i.i.i1191:                                 ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread1418, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1194
  %.05.i.i.i1192 = phi ptr [ %i.aty, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1194 ], [ %i.atq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread1418 ] ; 3 uses
  %i.att = load ptr, ptr %.05.i.i.i1192, align 8, !tbaa !25 ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.05.i.i.i1192, i64 16 ; 2 uses
  %i.atv = icmp eq ptr %i.att, %i.atu
  br i1 %i.atv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1193: ; preds = %.lr.ph.i.i.i1191
  %i.atw = load i64, ptr %i.atu, align 8, !tbaa !24
  %i.atx = add i64 %i.atw, 1
  call void @_ZdlPvm(ptr noundef %i.att, i64 noundef %i.atx) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1194

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1194: ; preds = %.lr.ph.i.i.i1191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1193
  %i.aty = getelementptr inbounds nuw i8, ptr %.05.i.i.i1192, i64 32 ; 2 uses
  %.not.i.i.i1195 = icmp eq ptr %i.aty, %i.atr
  br i1 %.not.i.i.i1195, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1198, label %.lr.ph.i.i.i1191, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1198: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1194, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1177.thread1418
  %.not.i.i1.i1199 = icmp eq ptr %i.atq, null
  br i1 %.not.i.i1.i1199, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1202, label %bb.ef

bb.ef:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1198
  %i.atz = load ptr, ptr %i.apz, align 8, !tbaa !33
  %i.aua = ptrtoint ptr %i.atz to i64
  %i.aub = ptrtoint ptr %i.atq to i64
  %i.auc = sub i64 %i.aua, %i.aub
  call void @_ZdlPvm(ptr noundef nonnull %i.atq, i64 noundef %i.auc) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1202
end_hunk_0
