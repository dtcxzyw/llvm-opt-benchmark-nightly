Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/duration_test?download=true
inline.NumInlined: 12490
inline.NumDeleted: 1106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_143Duration_ToDoubleSecondsCheckEdgeCases_Test8TestBodyEv:bb.a
_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %bb.z
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.1019, ptr noundef nonnull @.str.1020, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.bh = load ptr, ptr %8, align 8, !tbaa !46, !noalias !2985 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.d
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !49, !noalias !2985
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !2985
  %i.bl = load ptr, ptr %7, align 8, !tbaa !46, !noalias !2985 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.e
  br i1 %i.bm, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !2985
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.ac:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %8, align 8, !tbaa !46, !noalias !2985 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.ac
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !49, !noalias !2985
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.ab
  %.pn.i305 = phi { ptr, i32 } [ %i.bp, %bb.ab ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.bq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !2985
  %i.bv = load ptr, ptr %7, align 8, !tbaa !46, !noalias !2985 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.e
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !2985
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

common.resume:                                    ; preds = %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %.pn.i307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i309 ], [ %.pn.i321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i323 ], [ %.pn.i335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i337 ], [ %.pn149.pn.pn.pn.pn, %bb.di ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !2985
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !2985
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.y, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.bz = load i8, ptr %20, align 8, !tbaa !40, !range !41, !noundef !51
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i182, label %_ZNK7testing15AssertionResult15failure_messageEv.exit183, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit183

_ZNK7testing15AssertionResult15failure_messageEv.exit183: ; preds = %bb.af, %bb.ae
  %i.cd = phi ptr [ %i.cc, %bb.af ], [ @.str.113, %bb.ae ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1486, ptr noundef %i.cd)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit183
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.ce = load ptr, ptr %22, align 8, !tbaa !48   ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i184, label %_ZN7testing7MessageD2Ev.exit186, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.ah
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit186

_ZN7testing7MessageD2Ev.exit186:                  ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.an

bb.ai:                                            ; preds = %bb.ad
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit189

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit183
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn140 = phi { ptr, i32 } [ %i.ck, %bb.ak ], [ %i.cj, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.cl = load ptr, ptr %22, align 8, !tbaa !48   ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.al
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188, %bb.al, %bb.ai
  %.pn140.pn = phi { ptr, i32 } [ %i.ci, %bb.ai ], [ %.pn140, %bb.al ], [ %.pn140, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !42  ; 4 uses
  %.not.i.i190 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i190, label %_ZN7testing15AssertionResultD2Ev.exit194, label %bb.am

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit189
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !46 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191: ; preds = %bb.am
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !49
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit194

_ZN7testing15AssertionResultD2Ev.exit194:         ; preds = %_ZN7testing7MessageD2Ev.exit189, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.di

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit186
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !42  ; 4 uses
  %.not.i.i195 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i195, label %_ZN7testing15AssertionResultD2Ev.exit199, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196: ; preds = %bb.ao
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !49
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i196
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit199

_ZN7testing15AssertionResultD2Ev.exit199:         ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %.sroa.031.0.copyload = load i64, ptr %15, align 8, !tbaa !50 ; 2 uses
  %.sroa.232.0.copyload = load i32, ptr %.sroa.262.0..sroa_idx, align 8, !tbaa !50 ; 2 uses
  %i.db = call noundef double @_ZN4absl12lts_2026052615ToDoubleSecondsENS0_8DurationE(i64 %.sroa.031.0.copyload, i32 %.sroa.232.0.copyload) #30 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.dc = fcmp ult double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit199
  %i.dd = fcmp ult double %i.db, f0x43E0000000000000
  br i1 %i.dd, label %bb.aq, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.de = fptosi double %i.db to i64              ; 2 uses
  %i.df = sitofp i64 %i.de to double
  %i.dg = fsub nnan double %i.db, %i.df
  %i.dh = fmul nnan double %i.dg, 4.000000e+09
  %i.di = call double @llvm.round.f64(double %i.dh)
  %i.dj = fptoui double %i.di to i32              ; 3 uses
  %i.dk = icmp ugt i32 %i.dj, -294967297          ; 2 uses
  %i.dl = add nsw i32 %i.dj, 294967296
  %i.dm = zext i1 %i.dk to i64
  %.pn17.i.i = add nuw nsw i64 %i.dm, %i.de
  %.pn15.i.i = select i1 %i.dk, i32 %i.dl, i32 %i.dj
  %.fca.0.insert.i.pn.i.i = insertvalue { i64, i32 } poison, i64 %.pn17.i.i, 0
  %.pn.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i, i32 %.pn15.i.i, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.ar:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit199
  %36 = fcmp ord double %i.db, 0.000000e+00
  %37 = fcmp ugt double %i.db, f0xC3E0000000000000
  %or.cond.i = and i1 %36, %37
  br i1 %or.cond.i, label %bb.as, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.as:                                            ; preds = %bb.ar
  %i.dn = fneg double %i.db                       ; 2 uses
  %i.do = fptosi double %i.dn to i64              ; 2 uses
  %i.dp = sitofp i64 %i.do to double
  %i.dq = fsub nnan double %i.dn, %i.dp
  %i.dr = fmul nnan double %i.dq, 4.000000e+09
  %i.ds = call double @llvm.round.f64(double %i.dr)
  %i.dt = fptoui double %i.ds to i32              ; 3 uses
  %i.du = icmp ugt i32 %i.dt, -294967297          ; 2 uses
  %i.dv = add nsw i32 %i.dt, 294967296
  %i.dw = zext i1 %i.du to i64
  %.pn17.i58.i = add nuw nsw i64 %i.dw, %i.do     ; 2 uses
  %.pn15.i59.i = select i1 %i.du, i32 %i.dv, i32 %i.dt ; 2 uses
  switch i32 %.pn15.i59.i, label %bb.au [
    i32 0, label %bb.at
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  ]

bb.at:                                            ; preds = %bb.as
  %i.dx = sub nsw i64 0, %.pn17.i58.i
  %.fca.0.insert.i.i64.i = insertvalue { i64, i32 } poison, i64 %i.dx, 0
  %.fca.1.insert.i.i65.i = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.au:                                            ; preds = %bb.as
  %i.dy = xor i64 %.pn17.i58.i, -1
  %i.dz = sub i32 -294967296, %.pn15.i59.i
  %.fca.0.insert.i.i.i66.i = insertvalue { i64, i32 } poison, i64 %i.dy, 0
  %.fca.1.insert.i.i.i67.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i, i32 %i.dz, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit: ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %.pn.i200 = phi { i64, i32 } [ %.fca.1.insert.i.i65.i, %bb.at ], [ %.pn.i.i, %bb.aq ], [ { i64 9223372036854775807, i32 -1 }, %bb.ap ], [ { i64 -9223372036854775808, i32 -1 }, %bb.ar ], [ %.fca.1.insert.i.i.i67.i, %bb.au ], [ { i64 -9223372036854775808, i32 -1 }, %bb.as ] ; 2 uses
  %.fca.0.extract25 = extractvalue { i64, i32 } %.pn.i200, 0 ; 2 uses
  %.fca.1.extract26 = extractvalue { i64, i32 } %.pn.i200, 1 ; 2 uses
  store i64 %.fca.0.extract25, ptr %25, align 8
  store i32 %.fca.1.extract26, ptr %.sroa.228.0..sroa_idx, align 8
  %i.ea = icmp eq i64 %.sroa.031.0.copyload, %.fca.0.extract25
  %i.eb = icmp eq i32 %.sroa.232.0.copyload, %.fca.1.extract26
  %spec.select.i.i.i207 = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %spec.select.i.i.i207, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208

bb.aw:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !2986
  call void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(12) %15), !noalias !2986
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !2986
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(12) %25)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i311 unwind label %bb.ay, !noalias !2986

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i311: ; preds = %bb.aw
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24, ptr noundef nonnull @.str.1017, ptr noundef nonnull @.str.1021, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i311
  %i.ec = load ptr, ptr %6, align 8, !tbaa !46, !noalias !2986 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.g
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314: ; preds = %bb.ax
  %i.ee = load i64, ptr %i.g, align 8, !tbaa !49, !noalias !2986
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !2986
  %i.eg = load ptr, ptr %5, align 8, !tbaa !46, !noalias !2986 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.h
  br i1 %i.eh, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315
  %i.ei = load i64, ptr %i.h, align 8, !tbaa !49, !noalias !2986
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit319

bb.ay:                                            ; preds = %bb.aw
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i306

bb.az:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i311
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %6, align 8, !tbaa !46, !noalias !2986 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.g
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i312: ; preds = %bb.az
  %i.eo = load i64, ptr %i.g, align 8, !tbaa !49, !noalias !2986
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i306: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i312, %bb.ay
  %.pn.i307 = phi { ptr, i32 } [ %i.ek, %bb.ay ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i312 ], [ %i.el, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !2986
  %i.eq = load ptr, ptr %5, align 8, !tbaa !46, !noalias !2986 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.h
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i306
  %i.es = load i64, ptr %i.h, align 8, !tbaa !49, !noalias !2986
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !2986
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !2986
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208: ; preds = %bb.av, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit319
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.eu = load i8, ptr %24, align 8, !tbaa !40, !range !41, !noundef !51
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.bk, label %bb.ba

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.ew = load ptr, ptr %i.i, align 8, !tbaa !42  ; 2 uses
  %.not.i.i209 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i209, label %_ZNK7testing15AssertionResult15failure_messageEv.exit210, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit210

_ZNK7testing15AssertionResult15failure_messageEv.exit210: ; preds = %bb.bc, %bb.bb
  %i.ey = phi ptr [ %i.ex, %bb.bc ], [ @.str.113, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1489, ptr noundef %i.ey)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit210
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.ez = load ptr, ptr %26, align 8, !tbaa !48   ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i211, label %_ZN7testing7MessageD2Ev.exit213, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %bb.be
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(128) %i.ez) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit213

_ZN7testing7MessageD2Ev.exit213:                  ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.bk

bb.bf:                                            ; preds = %bb.ba
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit216

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit210
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn143 = phi { ptr, i32 } [ %i.ff, %bb.bh ], [ %i.fe, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.fg = load ptr, ptr %26, align 8, !tbaa !48   ; 3 uses
  %.not.i.i214 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i214, label %_ZN7testing7MessageD2Ev.exit216, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215: ; preds = %bb.bi
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !19
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit216

_ZN7testing7MessageD2Ev.exit216:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215, %bb.bi, %bb.bf
  %.pn143.pn = phi { ptr, i32 } [ %i.fd, %bb.bf ], [ %.pn143, %bb.bi ], [ %.pn143, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !42  ; 4 uses
  %.not.i.i217 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i217, label %_ZN7testing15AssertionResultD2Ev.exit221, label %bb.bj

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit216
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !46 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218: ; preds = %bb.bj
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !49
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit221

_ZN7testing15AssertionResultD2Ev.exit221:         ; preds = %_ZN7testing7MessageD2Ev.exit216, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.di

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit208, %_ZN7testing7MessageD2Ev.exit213
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !42  ; 4 uses
  %.not.i.i222 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i222, label %_ZN7testing15AssertionResultD2Ev.exit226, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223: ; preds = %bb.bl
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !49
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit226

_ZN7testing15AssertionResultD2Ev.exit226:         ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %.sroa.019.0.copyload = load i64, ptr %16, align 8, !tbaa !50 ; 2 uses
  %.sroa.220.0.copyload = load i32, ptr %.sroa.254.0..sroa_idx, align 8, !tbaa !50 ; 2 uses
  %i.fw = call noundef double @_ZN4absl12lts_2026052615ToDoubleSecondsENS0_8DurationE(i64 %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload) #30 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.fx = fcmp ult double %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226
  %i.fy = fcmp ult double %i.fw, f0x43E0000000000000
  br i1 %i.fy, label %bb.bn, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239

bb.bn:                                            ; preds = %bb.bm
  %i.fz = fptosi double %i.fw to i64              ; 2 uses
  %i.ga = sitofp i64 %i.fz to double
  %i.gb = fsub nnan double %i.fw, %i.ga
  %i.gc = fmul nnan double %i.gb, 4.000000e+09
  %i.gd = call double @llvm.round.f64(double %i.gc)
  %i.ge = fptoui double %i.gd to i32              ; 3 uses
  %i.gf = icmp ugt i32 %i.ge, -294967297          ; 2 uses
  %i.gg = add nsw i32 %i.ge, 294967296
  %i.gh = zext i1 %i.gf to i64
  %.pn17.i.i228 = add nuw nsw i64 %i.gh, %i.fz
  %.pn15.i.i229 = select i1 %i.gf, i32 %i.gg, i32 %i.ge
  %.fca.0.insert.i.pn.i.i230 = insertvalue { i64, i32 } poison, i64 %.pn17.i.i228, 0
  %.pn.i.i231 = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i230, i32 %.pn15.i.i229, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239

bb.bo:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226
  %38 = fcmp ord double %i.fw, 0.000000e+00
  %39 = fcmp ugt double %i.fw, f0xC3E0000000000000
  %or.cond.i232 = and i1 %38, %39
  br i1 %or.cond.i232, label %bb.bp, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239

bb.bp:                                            ; preds = %bb.bo
  %i.gi = fneg double %i.fw                       ; 2 uses
  %i.gj = fptosi double %i.gi to i64              ; 2 uses
  %i.gk = sitofp i64 %i.gj to double
  %i.gl = fsub nnan double %i.gi, %i.gk
  %i.gm = fmul nnan double %i.gl, 4.000000e+09
  %i.gn = call double @llvm.round.f64(double %i.gm)
  %i.go = fptoui double %i.gn to i32              ; 3 uses
  %i.gp = icmp ugt i32 %i.go, -294967297          ; 2 uses
  %i.gq = add nsw i32 %i.go, 294967296
  %i.gr = zext i1 %i.gp to i64
  %.pn17.i58.i233 = add nuw nsw i64 %i.gr, %i.gj  ; 2 uses
  %.pn15.i59.i234 = select i1 %i.gp, i32 %i.gq, i32 %i.go ; 2 uses
  switch i32 %.pn15.i59.i234, label %bb.br [
    i32 0, label %bb.bq
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gs = sub nsw i64 0, %.pn17.i58.i233
  %.fca.0.insert.i.i64.i235 = insertvalue { i64, i32 } poison, i64 %i.gs, 0
  %.fca.1.insert.i.i65.i236 = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i235, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239

bb.br:                                            ; preds = %bb.bp
  %i.gt = xor i64 %.pn17.i58.i233, -1
  %i.gu = sub i32 -294967296, %.pn15.i59.i234
  %.fca.0.insert.i.i.i66.i237 = insertvalue { i64, i32 } poison, i64 %i.gt, 0
  %.fca.1.insert.i.i.i67.i238 = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i237, i32 %i.gu, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239: ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.pn.i227 = phi { i64, i32 } [ %.fca.1.insert.i.i65.i236, %bb.bq ], [ %.pn.i.i231, %bb.bn ], [ { i64 9223372036854775807, i32 -1 }, %bb.bm ], [ { i64 -9223372036854775808, i32 -1 }, %bb.bo ], [ %.fca.1.insert.i.i.i67.i238, %bb.br ], [ { i64 -9223372036854775808, i32 -1 }, %bb.bp ] ; 2 uses
  %.fca.0.extract13 = extractvalue { i64, i32 } %.pn.i227, 0 ; 2 uses
  %.fca.1.extract14 = extractvalue { i64, i32 } %.pn.i227, 1 ; 2 uses
  store i64 %.fca.0.extract13, ptr %29, align 8
  store i32 %.fca.1.extract14, ptr %.sroa.216.0..sroa_idx, align 8
  %i.gv = icmp eq i64 %.sroa.019.0.copyload, %.fca.0.extract13
  %i.gw = icmp eq i32 %.sroa.220.0.copyload, %.fca.1.extract14
  %spec.select.i.i.i246 = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %spec.select.i.i.i246, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit247

bb.bt:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit239
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !2987
  call void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %16), !noalias !2987
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !2987
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(12) %29)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i325 unwind label %bb.bv, !noalias !2987

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i325: ; preds = %bb.bt
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.1018, ptr noundef nonnull @.str.1022, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i325
  %i.gx = load ptr, ptr %4, align 8, !tbaa !46, !noalias !2987 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.j
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328: ; preds = %bb.bu
  %i.gz = load i64, ptr %i.j, align 8, !tbaa !49, !noalias !2987
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i329: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !2987
  %i.hb = load ptr, ptr %3, align 8, !tbaa !46, !noalias !2987 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.k
  br i1 %i.hc, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i329
  %i.hd = load i64, ptr %i.k, align 8, !tbaa !49, !noalias !2987
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit333

bb.bv:                                            ; preds = %bb.bt
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i320

bb.bw:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i325
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = load ptr, ptr %4, align 8, !tbaa !46, !noalias !2987 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.j
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i326: ; preds = %bb.bw
  %i.hj = load i64, ptr %i.j, align 8, !tbaa !49, !noalias !2987
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i320: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i326, %bb.bv
  %.pn.i321 = phi { ptr, i32 } [ %i.hf, %bb.bv ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i326 ], [ %i.hg, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !2987
  %i.hl = load ptr, ptr %3, align 8, !tbaa !46, !noalias !2987 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.k
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i320
  %i.hn = load i64, ptr %i.k, align 8, !tbaa !49, !noalias !2987
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2987
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !2987
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit247

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit247: ; preds = %bb.bs, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit333
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %i.hp = load i8, ptr %28, align 8, !tbaa !40, !range !41, !noundef !51
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.ch, label %bb.bx

bb.bx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit247
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.hr = load ptr, ptr %i.l, align 8, !tbaa !42  ; 2 uses
  %.not.i.i248 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i248, label %_ZNK7testing15AssertionResult15failure_messageEv.exit249, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit249

_ZNK7testing15AssertionResult15failure_messageEv.exit249: ; preds = %bb.bz, %bb.by
  %i.ht = phi ptr [ %i.hs, %bb.bz ], [ @.str.113, %bb.by ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1492, ptr noundef %i.ht)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit249
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %i.hu = load ptr, ptr %30, align 8, !tbaa !48   ; 3 uses
  %.not.i.i250 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i250, label %_ZN7testing7MessageD2Ev.exit252, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251: ; preds = %bb.cb
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !19
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(128) %i.hu) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit252

_ZN7testing7MessageD2Ev.exit252:                  ; preds = %bb.cb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.ch

bb.cc:                                            ; preds = %bb.bx
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit255

bb.cd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit249
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #24
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn146 = phi { ptr, i32 } [ %i.ia, %bb.ce ], [ %i.hz, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  %i.ib = load ptr, ptr %30, align 8, !tbaa !48   ; 3 uses
  %.not.i.i253 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i253, label %_ZN7testing7MessageD2Ev.exit255, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254: ; preds = %bb.cf
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !19
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(128) %i.ib) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit255

_ZN7testing7MessageD2Ev.exit255:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254, %bb.cf, %bb.cc
  %.pn146.pn = phi { ptr, i32 } [ %i.hy, %bb.cc ], [ %.pn146, %bb.cf ], [ %.pn146, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.if = load ptr, ptr %i.l, align 8, !tbaa !42  ; 4 uses
  %.not.i.i256 = icmp eq ptr %i.if, null
  br i1 %.not.i.i256, label %_ZN7testing15AssertionResultD2Ev.exit260, label %bb.cg

bb.cg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit255
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !46 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i257: ; preds = %bb.cg
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !49
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i257
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit260

_ZN7testing15AssertionResultD2Ev.exit260:         ; preds = %_ZN7testing7MessageD2Ev.exit255, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.di

bb.ch:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit247, %_ZN7testing7MessageD2Ev.exit252
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !42  ; 4 uses
  %.not.i.i261 = icmp eq ptr %i.il, null
  br i1 %.not.i.i261, label %_ZN7testing15AssertionResultD2Ev.exit265, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !46 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262: ; preds = %bb.ci
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !49
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit265

_ZN7testing15AssertionResultD2Ev.exit265:         ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.ir = fsub double %i.fw, %i.db
  %i.is = fmul double %i.ir, 5.000000e-01
  %i.it = fadd double %i.db, %i.is                ; 3 uses
  %i.iu = fcmp oeq double %i.it, %i.db
  %i.iv = fcmp oeq double %i.it, %i.fw
  %or.cond364 = or i1 %i.iu, %i.iv
  br i1 %or.cond364, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit265, %bb.dh
  %i.iw = phi double [ %i.lv, %bb.dh ], [ %i.it, %_ZN7testing15AssertionResultD2Ev.exit265 ] ; 9 uses
  %.0130366 = phi double [ %.1131, %bb.dh ], [ %i.db, %_ZN7testing15AssertionResultD2Ev.exit265 ]
  %.0133365 = phi double [ %.1134, %bb.dh ], [ %i.fw, %_ZN7testing15AssertionResultD2Ev.exit265 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  %i.ix = fcmp ult double %i.iw, 0.000000e+00
  br i1 %i.ix, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph
  %i.iy = fcmp ult double %i.iw, f0x43E0000000000000
  br i1 %i.iy, label %bb.ck, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278

bb.ck:                                            ; preds = %bb.cj
  %i.iz = fptosi double %i.iw to i64              ; 2 uses
  %i.ja = sitofp i64 %i.iz to double
  %i.jb = fsub nnan double %i.iw, %i.ja
  %i.jc = fmul nnan double %i.jb, 4.000000e+09
  %i.jd = call double @llvm.round.f64(double %i.jc)
  %i.je = fptoui double %i.jd to i32              ; 3 uses
  %i.jf = icmp ugt i32 %i.je, -294967297          ; 2 uses
  %i.jg = add nsw i32 %i.je, 294967296
  %i.jh = zext i1 %i.jf to i64
  %.pn17.i.i267 = add nuw nsw i64 %i.jh, %i.iz
  %.pn15.i.i268 = select i1 %i.jf, i32 %i.jg, i32 %i.je
  %.fca.0.insert.i.pn.i.i269 = insertvalue { i64, i32 } poison, i64 %.pn17.i.i267, 0
  %.pn.i.i270 = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i269, i32 %.pn15.i.i268, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278

bb.cl:                                            ; preds = %.lr.ph
  %40 = fcmp ord double %i.iw, 0.000000e+00
  %41 = fcmp ugt double %i.iw, f0xC3E0000000000000
  %or.cond.i271 = and i1 %40, %41
  br i1 %or.cond.i271, label %bb.cm, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278

bb.cm:                                            ; preds = %bb.cl
  %i.ji = fneg double %i.iw                       ; 2 uses
  %i.jj = fptosi double %i.ji to i64              ; 2 uses
  %i.jk = sitofp i64 %i.jj to double
  %i.jl = fsub nnan double %i.ji, %i.jk
  %i.jm = fmul nnan double %i.jl, 4.000000e+09
  %i.jn = call double @llvm.round.f64(double %i.jm)
  %i.jo = fptoui double %i.jn to i32              ; 3 uses
  %i.jp = icmp ugt i32 %i.jo, -294967297          ; 2 uses
  %i.jq = add nsw i32 %i.jo, 294967296
  %i.jr = zext i1 %i.jp to i64
  %.pn17.i58.i272 = add nuw nsw i64 %i.jr, %i.jj  ; 2 uses
  %.pn15.i59.i273 = select i1 %i.jp, i32 %i.jq, i32 %i.jo ; 2 uses
  switch i32 %.pn15.i59.i273, label %bb.co [
    i32 0, label %bb.cn
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.js = sub nsw i64 0, %.pn17.i58.i272
  %.fca.0.insert.i.i64.i274 = insertvalue { i64, i32 } poison, i64 %i.js, 0
  %.fca.1.insert.i.i65.i275 = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i274, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278

bb.co:                                            ; preds = %bb.cm
  %i.jt = xor i64 %.pn17.i58.i272, -1
  %i.ju = sub i32 -294967296, %.pn15.i59.i273
  %.fca.0.insert.i.i.i66.i276 = insertvalue { i64, i32 } poison, i64 %i.jt, 0
  %.fca.1.insert.i.i.i67.i277 = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i276, i32 %i.ju, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278: ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co
  %.pn.i266 = phi { i64, i32 } [ %.fca.1.insert.i.i65.i275, %bb.cn ], [ %.pn.i.i270, %bb.ck ], [ { i64 9223372036854775807, i32 -1 }, %bb.cj ], [ { i64 -9223372036854775808, i32 -1 }, %bb.cl ], [ %.fca.1.insert.i.i.i67.i277, %bb.co ], [ { i64 -9223372036854775808, i32 -1 }, %bb.cm ] ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i266, 0 ; 3 uses
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i266, 1 ; 3 uses
  store i64 %.fca.0.extract, ptr %32, align 8
  store i32 %.fca.1.extract, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.03.0.copyload = load i64, ptr %15, align 8, !tbaa !50
  %.sroa.24.0.copyload = load i32, ptr %.sroa.262.0..sroa_idx, align 8, !tbaa !50
  %i.jv = icmp eq i64 %.fca.0.extract, %.sroa.03.0.copyload
  %i.jw = icmp eq i32 %.fca.1.extract, %.sroa.24.0.copyload
  %spec.select.i = select i1 %i.jv, i1 %i.jw, i1 false
  br i1 %spec.select.i, label %bb.dh, label %bb.cp

bb.cp:                                            ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %.sroa.03.0.copyload.i.i282 = load i64, ptr %16, align 8, !tbaa !50, !noalias !2988
  %.sroa.24.0.copyload.i.i284 = load i32, ptr %.sroa.254.0..sroa_idx, align 8, !tbaa !50, !noalias !2988
  %i.jx = icmp eq i64 %.fca.0.extract, %.sroa.03.0.copyload.i.i282
  %i.jy = icmp eq i32 %.fca.1.extract, %.sroa.24.0.copyload.i.i284
  %spec.select.i.i.i285 = select i1 %i.jx, i1 %i.jy, i1 false
  br i1 %spec.select.i.i.i285, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit286

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !2989
  call void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(12) %32), !noalias !2989
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !2989
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_202605268DurationEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(12) %16)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i339 unwind label %bb.ct, !noalias !2989

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i339: ; preds = %bb.cr
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.1023, ptr noundef nonnull @.str.1018, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i339
  %i.jz = load ptr, ptr %2, align 8, !tbaa !46, !noalias !2989 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.m
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i342: ; preds = %bb.cs
  %i.kb = load i64, ptr %i.m, align 8, !tbaa !49, !noalias !2989
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i343: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !2989
  %i.kd = load ptr, ptr %1, align 8, !tbaa !46, !noalias !2989 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.n
  br i1 %i.ke, label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i343
  %i.kf = load i64, ptr %i.n, align 8, !tbaa !49, !noalias !2989
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #26
  br label %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit347

bb.ct:                                            ; preds = %bb.cr
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i334

bb.cu:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605268DurationES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i339
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kj = load ptr, ptr %2, align 8, !tbaa !46, !noalias !2989 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.m
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i340: ; preds = %bb.cu
  %i.kl = load i64, ptr %i.m, align 8, !tbaa !49, !noalias !2989
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i334: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i340, %bb.ct
  %.pn.i335 = phi { ptr, i32 } [ %i.kh, %bb.ct ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i340 ], [ %i.ki, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !2989
  %i.kn = load ptr, ptr %1, align 8, !tbaa !46, !noalias !2989 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.n
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i334
  %i.kp = load i64, ptr %i.n, align 8, !tbaa !49, !noalias !2989
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !2989
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !2989
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit286

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit286: ; preds = %bb.cq, %_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_.exit347
  %i.kr = load i8, ptr %33, align 8, !tbaa !40, !range !41, !noundef !51
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.df, label %bb.cv

bb.cv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.kt = load ptr, ptr %i.o, align 8, !tbaa !42  ; 2 uses
  %.not.i.i287 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i287, label %_ZNK7testing15AssertionResult15failure_messageEv.exit288, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit288

_ZNK7testing15AssertionResult15failure_messageEv.exit288: ; preds = %bb.cx, %bb.cw
  %i.kv = phi ptr [ %i.ku, %bb.cx ], [ @.str.113, %bb.cw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1501, ptr noundef %i.kv)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit288
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.kw = load ptr, ptr %34, align 8, !tbaa !48   ; 3 uses
  %.not.i.i289 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i289, label %_ZN7testing7MessageD2Ev.exit291, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290: ; preds = %bb.cz
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !19
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(128) %i.kw) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit291

_ZN7testing7MessageD2Ev.exit291:                  ; preds = %bb.cz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %bb.df

bb.da:                                            ; preds = %bb.cv
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit294

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit288
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn149 = phi { ptr, i32 } [ %i.lc, %bb.dc ], [ %i.lb, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.ld = load ptr, ptr %34, align 8, !tbaa !48   ; 3 uses
  %.not.i.i292 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i292, label %_ZN7testing7MessageD2Ev.exit294, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293: ; preds = %bb.dd
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !19
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(128) %i.ld) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit294

_ZN7testing7MessageD2Ev.exit294:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293, %bb.dd, %bb.da
  %.pn149.pn = phi { ptr, i32 } [ %i.la, %bb.da ], [ %.pn149, %bb.dd ], [ %.pn149, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  %i.lh = load ptr, ptr %i.o, align 8, !tbaa !42  ; 4 uses
  %.not.i.i295 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i295, label %_ZN7testing15AssertionResultD2Ev.exit299, label %bb.de

bb.de:                                            ; preds = %_ZN7testing7MessageD2Ev.exit294
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !46 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i296: ; preds = %bb.de
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !49
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.lm) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i296
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit299

_ZN7testing15AssertionResultD2Ev.exit299:         ; preds = %_ZN7testing7MessageD2Ev.exit294, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %bb.di

bb.df:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit286, %_ZN7testing7MessageD2Ev.exit291
  %i.ln = load ptr, ptr %i.o, align 8, !tbaa !42  ; 4 uses
  %.not.i.i300 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i300, label %_ZN7testing15AssertionResultD2Ev.exit304, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !46 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301: ; preds = %bb.dg
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !49
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit304

_ZN7testing15AssertionResultD2Ev.exit304:         ; preds = %bb.df, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit304, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278
  %.1134 = phi double [ %i.iw, %_ZN7testing15AssertionResultD2Ev.exit304 ], [ %.0133365, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278 ] ; 4 uses
  %.1131 = phi double [ %.0130366, %_ZN7testing15AssertionResultD2Ev.exit304 ], [ %i.iw, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit278 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %i.lt = fsub double %.1134, %.1131
  %i.lu = fmul double %i.lt, 5.000000e-01
  %i.lv = fadd double %.1131, %i.lu               ; 3 uses
  %i.lw = fcmp oeq double %i.lv, %.1131
  %i.lx = fcmp oeq double %i.lv, %.1134
  %or.cond = or i1 %i.lw, %i.lx
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.dh, %_ZN7testing15AssertionResultD2Ev.exit265
  %.0133.lcssa = phi double [ %i.fw, %_ZN7testing15AssertionResultD2Ev.exit265 ], [ %.1134, %bb.dh ]
  %.0130.lcssa = phi double [ %i.db, %_ZN7testing15AssertionResultD2Ev.exit265 ], [ %.1131, %bb.dh ]
  call fastcc void @_ZN12_GLOBAL__N_121VerifyApproxSameAsMulEdPi(double noundef %.0130.lcssa, ptr noundef %i.a)
  call fastcc void @_ZN12_GLOBAL__N_121VerifyApproxSameAsMulEdPi(double noundef %.0133.lcssa, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %.0115.add = add nuw nsw i64 %.0115.idx368, 12  ; 2 uses
  %.not137 = icmp eq i64 %.0115.add, 24
  br i1 %.not137, label %bb.i, label %bb.j

bb.di:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit221, %_ZN7testing15AssertionResultD2Ev.exit299, %_ZN7testing15AssertionResultD2Ev.exit260, %_ZN7testing15AssertionResultD2Ev.exit194, %_ZN7testing15AssertionResultD2Ev.exit
  %.pn149.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing15AssertionResultD2Ev.exit ], [ %.pn140.pn, %_ZN7testing15AssertionResultD2Ev.exit194 ], [ %.pn143.pn, %_ZN7testing15AssertionResultD2Ev.exit221 ], [ %.pn149.pn, %_ZN7testing15AssertionResultD2Ev.exit299 ], [ %.pn146.pn, %_ZN7testing15AssertionResultD2Ev.exit260 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_121VerifyApproxSameAsMulEdPi(double noundef %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20260526::Duration", align 8 ; 6 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 9 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = fcmp ult double %0, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ult double %0, f0x43E0000000000000
  br i1 %i.c, label %bb.c, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = fptosi double %0 to i64                  ; 2 uses
  %i.e = sitofp i64 %i.d to double
  %i.f = fsub nnan double %0, %i.e
  %i.g = fmul nnan double %i.f, 4.000000e+09
  %i.h = tail call double @llvm.round.f64(double %i.g)
  %i.i = fptoui double %i.h to i32                ; 3 uses
  %i.j = icmp ugt i32 %i.i, -294967297            ; 2 uses
  %i.k = add nsw i32 %i.i, 294967296
  %i.l = zext i1 %i.j to i64
  %.pn17.i.i = add nuw nsw i64 %i.l, %i.d
  %.pn15.i.i = select i1 %i.j, i32 %i.k, i32 %i.i
  %.fca.0.insert.i.pn.i.i = insertvalue { i64, i32 } poison, i64 %.pn17.i.i, 0
  %.pn.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i.i, i32 %.pn15.i.i, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.d:                                             ; preds = %bb.a
  %12 = fcmp ord double %0, 0.000000e+00
  %13 = fcmp ugt double %0, f0xC3E0000000000000
  %or.cond.i = and i1 %12, %13
  br i1 %or.cond.i, label %bb.e, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = fneg double %0                           ; 2 uses
  %i.n = fptosi double %i.m to i64                ; 2 uses
  %i.o = sitofp i64 %i.n to double
  %i.p = fsub nnan double %i.m, %i.o
  %i.q = fmul nnan double %i.p, 4.000000e+09
  %i.r = tail call double @llvm.round.f64(double %i.q)
  %i.s = fptoui double %i.r to i32                ; 3 uses
  %i.t = icmp ugt i32 %i.s, -294967297            ; 2 uses
  %i.u = add nsw i32 %i.s, 294967296
  %i.v = zext i1 %i.t to i64
  %.pn17.i58.i = add nuw nsw i64 %i.v, %i.n       ; 2 uses
  %.pn15.i59.i = select i1 %i.t, i32 %i.u, i32 %i.s ; 2 uses
  switch i32 %.pn15.i59.i, label %bb.g [
    i32 0, label %bb.f
    i32 -1, label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = sub nsw i64 0, %.pn17.i58.i
  %.fca.0.insert.i.i64.i = insertvalue { i64, i32 } poison, i64 %i.w, 0
  %.fca.1.insert.i.i65.i = insertvalue { i64, i32 } %.fca.0.insert.i.i64.i, i32 0, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = xor i64 %.pn17.i58.i, -1
  %i.y = sub i32 -294967296, %.pn15.i59.i
  %.fca.0.insert.i.i.i66.i = insertvalue { i64, i32 } poison, i64 %i.x, 0
  %.fca.1.insert.i.i.i67.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i66.i, i32 %i.y, 1
  br label %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit

_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.pn.i = phi { i64, i32 } [ %.fca.1.insert.i.i65.i, %bb.f ], [ %.pn.i.i, %bb.c ], [ { i64 9223372036854775807, i32 -1 }, %bb.b ], [ { i64 -9223372036854775808, i32 -1 }, %bb.d ], [ %.fca.1.insert.i.i.i67.i, %bb.g ], [ { i64 -9223372036854775808, i32 -1 }, %bb.e ] ; 2 uses
  %.fca.0.extract42 = extractvalue { i64, i32 } %.pn.i, 0 ; 3 uses
  %.fca.1.extract43 = extractvalue { i64, i32 } %.pn.i, 1 ; 3 uses
  store i64 %.fca.0.extract42, ptr %4, align 8
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.245.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 1, ptr %3, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.22.0..sroa_idx.i, align 8
  %i.z = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202605268DurationmLEd(ptr noundef nonnull align 4 dereferenceable(12) %3, double noundef %0) #24 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.z, align 4, !tbaa !50 ; 3 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.24.0.copyload.i = load i32, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload.i, ptr %5, align 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.24.0.copyload.i, ptr %.sroa.233.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fca.0.extract42, ptr %2, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.aa = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202605268DurationmIES1_(ptr noundef nonnull align 4 dereferenceable(12) %2, i64 %.sroa.03.0.copyload.i, i32 %.sroa.24.0.copyload.i) #24 ; 2 uses
  %.sroa.011.0.copyload.i = load i64, ptr %i.aa, align 4, !tbaa !50 ; 5 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !50 ; 3 uses
  %.fca.0.insert.i66 = insertvalue { i64, i32 } poison, i64 %.sroa.011.0.copyload.i, 0
  %.fca.1.insert.i67 = insertvalue { i64, i32 } %.fca.0.insert.i66, i32 %.sroa.212.0.copyload.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ab = icmp slt i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.ab, label %bb.h, label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit

bb.h:                                             ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit
  switch i32 %.sroa.212.0.copyload.i, label %bb.k [
    i32 0, label %bb.i
    i32 -1, label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp eq i64 %.sroa.011.0.copyload.i, -9223372036854775808
  br i1 %i.ac, label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = sub nsw i64 0, %.sroa.011.0.copyload.i
  %.fca.0.insert.i.i.i = insertvalue { i64, i32 } poison, i64 %i.ad, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i, i32 0, 1
  br label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = xor i64 %.sroa.011.0.copyload.i, -1
  %i.af = sub i32 -294967296, %.sroa.212.0.copyload.i
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i32 } poison, i64 %i.ae, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i.i, i32 %i.af, 1
  br label %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit

_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit: ; preds = %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit, %bb.h, %bb.i, %bb.j, %bb.k
  %.fca.1.insert.merged.i = phi { i64, i32 } [ { i64 9223372036854775807, i32 -1 }, %bb.h ], [ %.fca.1.insert.i.i.i.i, %bb.k ], [ %.fca.1.insert.i.i.i, %bb.j ], [ { i64 9223372036854775807, i32 -1 }, %bb.i ], [ %.fca.1.insert.i67, %_ZN4absl12lts_202605267SecondsIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEENS0_8DurationES3_.exit ] ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i32 } %.fca.1.insert.merged.i, 0 ; 2 uses
  %.not.i.i = icmp eq i64 %.fca.0.extract8, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_20260526gtENS0_8DurationES1_.exit, label %.split

.split:                                           ; preds = %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit
  %i.ag = icmp sgt i64 %.fca.0.extract8, 0
  br i1 %i.ag, label %bb.l, label %bb.at

_ZN4absl12lts_20260526gtENS0_8DurationES1_.exit:  ; preds = %_ZN4absl12lts_2026052611AbsDurationENS0_8DurationE.exit
  %.fca.1.extract9 = extractvalue { i64, i32 } %.fca.1.insert.merged.i, 1
  %i.ah = icmp ugt i32 %.fca.1.extract9, 1
  br i1 %i.ah, label %bb.l, label %bb.at

bb.l:                                             ; preds = %.split, %_ZN4absl12lts_20260526gtENS0_8DurationES1_.exit
  %i.ai = load i32, ptr %1, align 4, !tbaa !50    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 10
  br i1 %i.aj, label %bb.at, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ak = add nsw i32 %i.ai, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 10, ptr %i.a, align 4, !tbaa !50
  %.not.i = icmp eq i32 %i.ai, 10
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.1024, ptr noundef nonnull @.str.1025, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.1030)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.al = load i8, ptr %6, align 8, !tbaa !40, !range !41, !noundef !51
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr %7, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.1026, i64 noundef 36)
          to label %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit unwind label %bb.w ; 0 uses

_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit:       ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i68, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.r, %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit
  %i.at = phi ptr [ %i.as, %bb.r ], [ @.str.113, %_ZN7testing7MessagelsIA37_cEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1449, ptr noundef %i.at)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.au = load ptr, ptr %7, align 8, !tbaa !48    ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.au, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #24, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 4 uses
  %.not.i.i70 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i70, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

end_hunk_0
