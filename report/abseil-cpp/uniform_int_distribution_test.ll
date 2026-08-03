inline.NumInlined: 6744
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestIaE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 %i.t, ptr %i.c, align 1, !tbaa !19
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !19, !noalias !1038
  %.not.i122 = icmp slt i8 %i.t, %i.cl
  br i1 %.not.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIaaEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIaaEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEIaaEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEIaaEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cm = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bk, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIaaEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.ac, %bb.ab
  %i.cr = phi ptr [ %i.cq, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cr)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cs = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.af
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !19
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %_ZN7testing7MessageD2Ev.exit129, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.de, %bb.ai ], [ %i.dd, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.df = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.df, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.aj
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.dc, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEIaaEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i138, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !14 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.ak
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dp = load i8, ptr %i.a, align 1, !tbaa !19
  %i.dq = sitofp i8 %i.dp to double
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dq, ptr %i.dr, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1043

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.co, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.ds = sitofp i8 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.dt = sitofp i8 %i.t to double                ; 2 uses
  %i.du = fsub double %i.dt, %i.ds
  %i.dv = fadd double %i.du, 1.000000e+00
  %i.dw = fadd nnan double %i.ds, %i.dt
  %i.dx = fmul nnan double %i.dw, 5.000000e-01
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dz, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.ea, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fmul nnan double %i.eb, 5.000000e+00
  %23 = insertelement <2 x double> %i.ea, double %22, i64 1
  %i.ed = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.ec, i64 1
  %i.ee = fdiv <2 x double> %23, %i.ed            ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  %i.eg = fsub double 3.000000e+00, %i.ef         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eh = load double, ptr %i.g, align 8, !tbaa !1044
  %i.ei = extractelement <2 x double> %i.ee, i64 0 ; 3 uses
  %i.ej = fmul double %i.ei, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.dx, double noundef %i.eh, double noundef %i.ej)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ek = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i145, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146

_ZNK7testing15AssertionResult15failure_messageEv.exit146: ; preds = %bb.at, %bb.as
  %i.eq = phi ptr [ %i.ep, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.eq)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.er = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.er, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.av
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.ex, %bb.ay ], [ %i.ew, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ey = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.ev, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit149
  %i.fc = load ptr, ptr %i.h, align 8, !tbaa !54  ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.bb
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fi = load double, ptr %i.i, align 8, !tbaa !1046
  %i.fj = fmul double %i.ei, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.ei, double noundef %i.fi, double noundef %i.fj)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fk = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.en, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i158, label %_ZNK7testing15AssertionResult15failure_messageEv.exit159, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit159

_ZNK7testing15AssertionResult15failure_messageEv.exit159: ; preds = %bb.bh, %bb.bg
  %i.fp = phi ptr [ %i.fo, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fp)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fq = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i160 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i160, label %_ZN7testing7MessageD2Ev.exit162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bj
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !23
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit162

_ZN7testing7MessageD2Ev.exit162:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fw = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestIhE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 %i.t, ptr %i.c, align 1, !tbaa !19
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !19, !noalias !1050
  %.not.i122 = icmp ult i8 %i.t, %i.cl
  br i1 %.not.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cm = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bk, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.ac, %bb.ab
  %i.cr = phi ptr [ %i.cq, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cr)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cs = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.af
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !19
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %_ZN7testing7MessageD2Ev.exit129, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.de, %bb.ai ], [ %i.dd, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.df = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.df, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.aj
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.dc, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i138, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !14 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.ak
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dp = load i8, ptr %i.a, align 1, !tbaa !19
  %i.dq = uitofp i8 %i.dp to double
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dq, ptr %i.dr, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1053

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.co, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.ds = uitofp i8 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.dt = uitofp i8 %i.t to double                ; 2 uses
  %i.du = fsub double %i.dt, %i.ds
  %i.dv = fadd double %i.du, 1.000000e+00
  %i.dw = fadd nnan double %i.ds, %i.dt
  %i.dx = fmul nnan double %i.dw, 5.000000e-01
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dz, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.ea, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fmul nnan double %i.eb, 5.000000e+00
  %23 = insertelement <2 x double> %i.ea, double %22, i64 1
  %i.ed = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.ec, i64 1
  %i.ee = fdiv <2 x double> %23, %i.ed            ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  %i.eg = fsub double 3.000000e+00, %i.ef         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eh = load double, ptr %i.g, align 8, !tbaa !1044
  %i.ei = extractelement <2 x double> %i.ee, i64 0 ; 3 uses
  %i.ej = fmul double %i.ei, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.dx, double noundef %i.eh, double noundef %i.ej)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ek = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i145, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146

_ZNK7testing15AssertionResult15failure_messageEv.exit146: ; preds = %bb.at, %bb.as
  %i.eq = phi ptr [ %i.ep, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.eq)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.er = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.er, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.av
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.ex, %bb.ay ], [ %i.ew, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ey = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.ev, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit149
  %i.fc = load ptr, ptr %i.h, align 8, !tbaa !54  ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.bb
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fi = load double, ptr %i.i, align 8, !tbaa !1046
  %i.fj = fmul double %i.ei, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.ei, double noundef %i.fi, double noundef %i.fj)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fk = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.en, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i158, label %_ZNK7testing15AssertionResult15failure_messageEv.exit159, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit159

_ZNK7testing15AssertionResult15failure_messageEv.exit159: ; preds = %bb.bh, %bb.bg
  %i.fp = phi ptr [ %i.fo, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fp)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fq = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i160 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i160, label %_ZN7testing7MessageD2Ev.exit162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bj
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !23
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit162

_ZN7testing7MessageD2Ev.exit162:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fw = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestIsE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !19
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i16 %i.t, ptr %i.c, align 2, !tbaa !567
  %i.ck = load i16, ptr %i.a, align 2, !tbaa !567, !noalias !1130
  %.not.i122 = icmp slt i16 %i.t, %i.ck
  br i1 %.not.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIssEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIssEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 2 dereferenceable(2) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEIssEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEIssEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cl = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIssEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.co, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.ac, %bb.ab
  %i.cq = phi ptr [ %i.cp, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cq)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cr = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.ae
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !14 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.af
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !19
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %_ZN7testing7MessageD2Ev.exit129, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.dd, %bb.ai ], [ %i.dc, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.de = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.de, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.aj
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.de) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.db, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEIssEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.di, null
  br i1 %.not.i.i138, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !14 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.ak
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !19
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.do = load i16, ptr %i.a, align 2, !tbaa !567
  %i.dp = sitofp i16 %i.do to double
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dp, ptr %i.dq, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1133

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.cn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.dr = sitofp i16 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.ds = sitofp i16 %i.t to double               ; 2 uses
  %i.dt = fsub double %i.ds, %i.dr
  %i.du = fadd double %i.dt, 1.000000e+00
  %i.dv = fadd nnan double %i.dr, %i.ds
  %i.dw = fmul nnan double %i.dv, 5.000000e-01
  %i.dx = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dy, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.dz, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %i.eb = fmul nnan double %i.ea, 5.000000e+00
  %23 = insertelement <2 x double> %i.dz, double %22, i64 1
  %i.ec = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.eb, i64 1
  %i.ed = fdiv <2 x double> %23, %i.ec            ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 1
  %i.ef = fsub double 3.000000e+00, %i.ee         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eg = load double, ptr %i.g, align 8, !tbaa !1044
  %i.eh = extractelement <2 x double> %i.ed, i64 0 ; 3 uses
  %i.ei = fmul double %i.eh, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.dw, double noundef %i.eg, double noundef %i.ei)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ej = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.en = load ptr, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.en, null
  br i1 %.not.i.i145, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146

_ZNK7testing15AssertionResult15failure_messageEv.exit146: ; preds = %bb.at, %bb.as
  %i.ep = phi ptr [ %i.eo, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.ep)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.eq = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.av
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.ew, %bb.ay ], [ %i.ev, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ex = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.eu, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit149
  %i.fb = load ptr, ptr %i.h, align 8, !tbaa !54  ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !14 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.bb
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !19
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fh = load double, ptr %i.i, align 8, !tbaa !1046
  %i.fi = fmul double %i.eh, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.eh, double noundef %i.fh, double noundef %i.fi)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fj = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.em, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i158, label %_ZNK7testing15AssertionResult15failure_messageEv.exit159, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit159

_ZNK7testing15AssertionResult15failure_messageEv.exit159: ; preds = %bb.bh, %bb.bg
  %i.fo = phi ptr [ %i.fn, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fo)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fp = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i160 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i160, label %_ZN7testing7MessageD2Ev.exit162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bj
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit162

_ZN7testing7MessageD2Ev.exit162:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fv = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestItE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !19
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i16 %i.t, ptr %i.c, align 2, !tbaa !567
  %i.ck = load i16, ptr %i.a, align 2, !tbaa !567, !noalias !1135
  %.not.i122 = icmp ult i16 %i.t, %i.ck
  br i1 %.not.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIttEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 2 dereferenceable(2) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cl = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.co, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.ac, %bb.ab
  %i.cq = phi ptr [ %i.cp, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cq)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cr = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.ae
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !14 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.af
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !19
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %_ZN7testing7MessageD2Ev.exit129, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.dd, %bb.ai ], [ %i.dc, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.de = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.de, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.aj
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.de) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.db, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEIttEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.di, null
  br i1 %.not.i.i138, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !14 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.ak
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !19
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.do = load i16, ptr %i.a, align 2, !tbaa !567
  %i.dp = uitofp i16 %i.do to double
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dp, ptr %i.dq, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1138

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.cn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.dr = uitofp i16 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.ds = uitofp i16 %i.t to double               ; 2 uses
  %i.dt = fsub double %i.ds, %i.dr
  %i.du = fadd double %i.dt, 1.000000e+00
  %i.dv = fadd nnan double %i.dr, %i.ds
  %i.dw = fmul nnan double %i.dv, 5.000000e-01
  %i.dx = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dy, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.dz, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %i.eb = fmul nnan double %i.ea, 5.000000e+00
  %23 = insertelement <2 x double> %i.dz, double %22, i64 1
  %i.ec = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.eb, i64 1
  %i.ed = fdiv <2 x double> %23, %i.ec            ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 1
  %i.ef = fsub double 3.000000e+00, %i.ee         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eg = load double, ptr %i.g, align 8, !tbaa !1044
  %i.eh = extractelement <2 x double> %i.ed, i64 0 ; 3 uses
  %i.ei = fmul double %i.eh, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.dw, double noundef %i.eg, double noundef %i.ei)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ej = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.en = load ptr, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.en, null
  br i1 %.not.i.i145, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146

_ZNK7testing15AssertionResult15failure_messageEv.exit146: ; preds = %bb.at, %bb.as
  %i.ep = phi ptr [ %i.eo, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.ep)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.eq = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.av
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.ew, %bb.ay ], [ %i.ev, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ex = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.eu, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit149
  %i.fb = load ptr, ptr %i.h, align 8, !tbaa !54  ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !14 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.bb
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !19
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fh = load double, ptr %i.i, align 8, !tbaa !1046
  %i.fi = fmul double %i.eh, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.eh, double noundef %i.fh, double noundef %i.fi)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fj = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.em, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i158, label %_ZNK7testing15AssertionResult15failure_messageEv.exit159, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit159

_ZNK7testing15AssertionResult15failure_messageEv.exit159: ; preds = %bb.bh, %bb.bg
  %i.fo = phi ptr [ %i.fn, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fo)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fp = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i160 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i160, label %_ZN7testing7MessageD2Ev.exit162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bj
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit162

_ZN7testing7MessageD2Ev.exit162:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fv = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestIiE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 %i.u, ptr %i.c, align 4, !tbaa !39
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !39, !noalias !1140
  %.not.i122 = icmp slt i32 %i.u, %i.cg
  br i1 %.not.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ch = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bf, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.ac, %bb.ab
  %i.cm = phi ptr [ %i.cl, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cm)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cn = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.ae
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.af
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !19
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %_ZN7testing7MessageD2Ev.exit129, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.cz, %bb.ai ], [ %i.cy, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.da = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.da, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.aj
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(128) %i.da) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.cx, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.de, null
  br i1 %.not.i.i138, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.ak
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !39
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dl, ptr %i.dm, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1143

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.cj, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.dn = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.do = sitofp i32 %i.u to double               ; 2 uses
  %i.dp = fsub double %i.do, %i.dn
  %i.dq = fadd double %i.dp, 1.000000e+00
  %i.dr = fadd nnan double %i.dn, %i.do
  %i.ds = fmul nnan double %i.dr, 5.000000e-01
  %i.dt = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.du, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.dv, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  %i.dx = fmul nnan double %i.dw, 5.000000e+00
  %23 = insertelement <2 x double> %i.dv, double %22, i64 1
  %i.dy = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.dx, i64 1
  %i.dz = fdiv <2 x double> %23, %i.dy            ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 1
  %i.eb = fsub double 3.000000e+00, %i.ea         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ec = load double, ptr %i.g, align 8, !tbaa !1044
  %i.ed = extractelement <2 x double> %i.dz, i64 0 ; 3 uses
  %i.ee = fmul double %i.ed, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.ds, double noundef %i.ec, double noundef %i.ee)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ef = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i145, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146

_ZNK7testing15AssertionResult15failure_messageEv.exit146: ; preds = %bb.at, %bb.as
  %i.el = phi ptr [ %i.ek, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.el)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.em = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.em, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.av
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.es, %bb.ay ], [ %i.er, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.et = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.et, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !23
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.eq, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit149
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !54  ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !14 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.bb
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !19
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fd = load double, ptr %i.i, align 8, !tbaa !1046
  %i.fe = fmul double %i.ed, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.ed, double noundef %i.fd, double noundef %i.fe)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.ff = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.ei, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i158, label %_ZNK7testing15AssertionResult15failure_messageEv.exit159, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit159

_ZNK7testing15AssertionResult15failure_messageEv.exit159: ; preds = %bb.bh, %bb.bg
  %i.fk = phi ptr [ %i.fj, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fk)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fl = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i160 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i160, label %_ZN7testing7MessageD2Ev.exit162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bj
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !23
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(128) %i.fl) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit162

_ZN7testing7MessageD2Ev.exit162:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fr = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestIjE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 %i.u, ptr %i.c, align 4, !tbaa !39
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !39, !noalias !1145
  %.not.i122 = icmp ult i32 %i.u, %i.cg
  br i1 %.not.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ch = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bf, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !54  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit126, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit126

_ZNK7testing15AssertionResult15failure_messageEv.exit126: ; preds = %bb.ac, %bb.ab
  %i.cm = phi ptr [ %i.cl, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cm)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cn = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.ae
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit129
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.af
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !19
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %_ZN7testing7MessageD2Ev.exit129, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit126
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.cz, %bb.ai ], [ %i.cy, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.da = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.da, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.aj
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(128) %i.da) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.cx, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.de, null
  br i1 %.not.i.i138, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.ak
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !39
  %i.dl = uitofp i32 %i.dk to double
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dl, ptr %i.dm, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1148

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.cj, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.dn = uitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.do = uitofp i32 %i.u to double               ; 2 uses
  %i.dp = fsub double %i.do, %i.dn
  %i.dq = fadd double %i.dp, 1.000000e+00
  %i.dr = fadd nnan double %i.dn, %i.do
  %i.ds = fmul nnan double %i.dr, 5.000000e-01
  %i.dt = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.du, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.dv, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  %i.dx = fmul nnan double %i.dw, 5.000000e+00
  %23 = insertelement <2 x double> %i.dv, double %22, i64 1
  %i.dy = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.dx, i64 1
  %i.dz = fdiv <2 x double> %23, %i.dy            ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 1
  %i.eb = fsub double 3.000000e+00, %i.ea         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ec = load double, ptr %i.g, align 8, !tbaa !1044
  %i.ed = extractelement <2 x double> %i.dz, i64 0 ; 3 uses
  %i.ee = fmul double %i.ed, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.ds, double noundef %i.ec, double noundef %i.ee)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ef = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i145, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146

_ZNK7testing15AssertionResult15failure_messageEv.exit146: ; preds = %bb.at, %bb.as
  %i.el = phi ptr [ %i.ek, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.el)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.em = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.em, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.av
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.es, %bb.ay ], [ %i.er, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.et = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.et, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.az
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !23
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit152

_ZN7testing7MessageD2Ev.exit152:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.eq, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit149
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !54  ; 4 uses
  %.not.i.i153 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i153, label %_ZN7testing15AssertionResultD2Ev.exit157, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !14 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154: ; preds = %bb.bb
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !19
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit157

_ZN7testing15AssertionResultD2Ev.exit157:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fd = load double, ptr %i.i, align 8, !tbaa !1046
  %i.fe = fmul double %i.ed, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.ed, double noundef %i.fd, double noundef %i.fe)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.ff = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit152, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.ei, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit157
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i158, label %_ZNK7testing15AssertionResult15failure_messageEv.exit159, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit159

_ZNK7testing15AssertionResult15failure_messageEv.exit159: ; preds = %bb.bh, %bb.bg
  %i.fk = phi ptr [ %i.fj, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fk)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fl = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i160 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i160, label %_ZN7testing7MessageD2Ev.exit162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bj
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !23
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(128) %i.fl) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit162

_ZN7testing7MessageD2Ev.exit162:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fr = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestIlE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.w, ptr %i.c, align 8, !tbaa !40
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !40, !noalias !1150
  %.not.i126 = icmp slt i64 %i.w, %i.cl
  br i1 %.not.i126, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIllEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cm = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bk, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i129, label %_ZNK7testing15AssertionResult15failure_messageEv.exit130, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit130

_ZNK7testing15AssertionResult15failure_messageEv.exit130: ; preds = %bb.ac, %bb.ab
  %i.cr = phi ptr [ %i.cq, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cr)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cs = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i131, label %_ZN7testing7MessageD2Ev.exit133, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit133

_ZN7testing7MessageD2Ev.exit133:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !54  ; 4 uses
  %.not.i.i134 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i134, label %_ZN7testing15AssertionResultD2Ev.exit138, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit133
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135: ; preds = %bb.af
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !19
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit138

_ZN7testing15AssertionResultD2Ev.exit138:         ; preds = %_ZN7testing7MessageD2Ev.exit133, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.de, %bb.ai ], [ %i.dd, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.df = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.df, null
  br i1 %.not.i.i139, label %_ZN7testing7MessageD2Ev.exit141, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.aj
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit141

_ZN7testing7MessageD2Ev.exit141:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.dc, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.dj = load ptr, ptr %i.i, align 8, !tbaa !54  ; 4 uses
  %.not.i.i142 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i142, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !14 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143: ; preds = %bb.ak
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !40
  %i.dq = sitofp i64 %i.dp to double
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dq, ptr %i.dr, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1153

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit141, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %i.co, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.ds = sitofp i64 %.sroa.0217.0.copyload to double ; 2 uses
  %i.dt = sitofp i64 %i.w to double               ; 2 uses
  %i.du = fsub double %i.dt, %i.ds
  %i.dv = fadd double %i.du, 1.000000e+00
  %i.dw = fadd nnan double %i.ds, %i.dt
  %i.dx = fmul nnan double %i.dw, 5.000000e-01
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dz, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.ea, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fmul nnan double %i.eb, 5.000000e+00
  %23 = insertelement <2 x double> %i.ea, double %22, i64 1
  %i.ed = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.ec, i64 1
  %i.ee = fdiv <2 x double> %23, %i.ed            ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  %i.eg = fsub double 3.000000e+00, %i.ef         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eh = load double, ptr %i.j, align 8, !tbaa !1044
  %i.ei = extractelement <2 x double> %i.ee, i64 0 ; 3 uses
  %i.ej = fmul double %i.ei, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.dx, double noundef %i.eh, double noundef %i.ej)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ek = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !54  ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i157, label %_ZNK7testing15AssertionResult15failure_messageEv.exit158, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit158

_ZNK7testing15AssertionResult15failure_messageEv.exit158: ; preds = %bb.at, %bb.as
  %i.eq = phi ptr [ %i.ep, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.eq)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit158
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.er = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i159 = icmp eq ptr %i.er, null
  br i1 %.not.i.i159, label %_ZN7testing7MessageD2Ev.exit161, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.av
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit161

_ZN7testing7MessageD2Ev.exit161:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit164

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit158
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.ex, %bb.ay ], [ %i.ew, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ey = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i162 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i162, label %_ZN7testing7MessageD2Ev.exit164, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %bb.az
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit164

_ZN7testing7MessageD2Ev.exit164:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.ev, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit161
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !54  ; 4 uses
  %.not.i.i165 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i165, label %_ZN7testing15AssertionResultD2Ev.exit169, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i166: ; preds = %bb.bb
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i166
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit169

_ZN7testing15AssertionResultD2Ev.exit169:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fi = load double, ptr %i.l, align 8, !tbaa !1046
  %i.fj = fmul double %i.ei, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.ei, double noundef %i.fi, double noundef %i.fj)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit169
  %i.fk = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit164, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit164 ], [ %i.en, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit169
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fn = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i170, label %_ZNK7testing15AssertionResult15failure_messageEv.exit171, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit171

_ZNK7testing15AssertionResult15failure_messageEv.exit171: ; preds = %bb.bh, %bb.bg
  %i.fp = phi ptr [ %i.fo, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fp)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit171
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fq = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i172 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i172, label %_ZN7testing7MessageD2Ev.exit174, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173: ; preds = %bb.bj
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !23
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit174

_ZN7testing7MessageD2Ev.exit174:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit177

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit171
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fw = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_143UniformIntDistributionTest_TestMoments_TestImE8TestBodyEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.u
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.w, ptr %i.c, align 8, !tbaa !40
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !40, !noalias !1155
  %.not.i126 = icmp ult i64 %i.w, %i.cl
  br i1 %.not.i126, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.84)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.z

_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cm = load i8, ptr %5, align 8, !tbaa !43, !range !52, !noundef !53
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.critedge103, label %bb.aa

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit115, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit115 ], [ %i.bk, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.am

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.aa:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i129, label %_ZNK7testing15AssertionResult15failure_messageEv.exit130, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit130

_ZNK7testing15AssertionResult15failure_messageEv.exit130: ; preds = %bb.ac, %bb.ab
  %i.cr = phi ptr [ %i.cq, %bb.ac ], [ @.str, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef %i.cr)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cs = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i131, label %_ZN7testing7MessageD2Ev.exit133, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit133

_ZN7testing7MessageD2Ev.exit133:                  ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !54  ; 4 uses
  %.not.i.i134 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i134, label %_ZN7testing15AssertionResultD2Ev.exit138, label %bb.af

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit133
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135: ; preds = %bb.af
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !19
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit138

_ZN7testing15AssertionResultD2Ev.exit138:         ; preds = %_ZN7testing7MessageD2Ev.exit133, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge109

bb.ag:                                            ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn77 = phi { ptr, i32 } [ %i.de, %bb.ai ], [ %i.dd, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.df = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.df, null
  br i1 %.not.i.i139, label %_ZN7testing7MessageD2Ev.exit141, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.aj
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit141

_ZN7testing7MessageD2Ev.exit141:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %bb.aj, %bb.ag
  %.pn77.pn = phi { ptr, i32 } [ %i.dc, %bb.ag ], [ %.pn77, %bb.aj ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %bb.al

.critedge103:                                     ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.dj = load ptr, ptr %i.i, align 8, !tbaa !54  ; 4 uses
  %.not.i.i142 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i142, label %.critedge105, label %bb.ak

bb.ak:                                            ; preds = %.critedge103
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !14 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143: ; preds = %bb.ak
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #24
  br label %.critedge105

.critedge105:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %.critedge103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !40
  %i.dq = uitofp i64 %i.dp to double
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.dq, ptr %i.dr, align 8, !tbaa !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond, label %.critedge107, label %bb.c, !llvm.loop !1158

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit141, %bb.z
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %i.co, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.y
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.critedge107:                                     ; preds = %.critedge105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %8, ptr nonnull %i.d, i64 100000)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.critedge107
  %i.ds = uitofp i64 %.sroa.0217.0.copyload to double ; 2 uses
  %i.dt = uitofp i64 %i.w to double               ; 2 uses
  %i.du = fsub double %i.dt, %i.ds
  %i.dv = fadd double %i.du, 1.000000e+00
  %i.dw = fadd nnan double %i.ds, %i.dt
  %i.dx = fmul nnan double %i.dw, 5.000000e-01
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dz, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %21 = extractelement <2 x double> %i.ea, i64 1
  %22 = fmul nnan double %21, 6.000000e+00
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fmul nnan double %i.eb, 5.000000e+00
  %23 = insertelement <2 x double> %i.ea, double %22, i64 1
  %i.ed = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.ec, i64 1
  %i.ee = fdiv <2 x double> %23, %i.ed            ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  %i.eg = fsub double 3.000000e+00, %i.ef         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eh = load double, ptr %i.j, align 8, !tbaa !1044
  %i.ei = extractelement <2 x double> %i.ee, i64 0 ; 3 uses
  %i.ej = fmul double %i.ei, 1.000000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, double noundef %i.dx, double noundef %i.eh, double noundef %i.ej)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ek = load i8, ptr %9, align 8, !tbaa !43, !range !52, !noundef !53
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ba, label %bb.ar

bb.ap:                                            ; preds = %.critedge107
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !54  ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i157, label %_ZNK7testing15AssertionResult15failure_messageEv.exit158, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit158

_ZNK7testing15AssertionResult15failure_messageEv.exit158: ; preds = %bb.at, %bb.as
  %i.eq = phi ptr [ %i.ep, %bb.at ], [ @.str, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 164, ptr noundef %i.eq)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit158
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.er = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i159 = icmp eq ptr %i.er, null
  br i1 %.not.i.i159, label %_ZN7testing7MessageD2Ev.exit161, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.av
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit161

_ZN7testing7MessageD2Ev.exit161:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit164

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit158
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn82 = phi { ptr, i32 } [ %i.ex, %bb.ay ], [ %i.ew, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ey = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i162 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i162, label %_ZN7testing7MessageD2Ev.exit164, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %bb.az
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit164

_ZN7testing7MessageD2Ev.exit164:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163, %bb.az, %bb.aw
  %.pn82.pn = phi { ptr, i32 } [ %i.ev, %bb.aw ], [ %.pn82, %bb.az ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ao, %_ZN7testing7MessageD2Ev.exit161
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !54  ; 4 uses
  %.not.i.i165 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i165, label %_ZN7testing15AssertionResultD2Ev.exit169, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i166: ; preds = %bb.bb
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i166
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit169

_ZN7testing15AssertionResultD2Ev.exit169:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.fi = load double, ptr %i.l, align 8, !tbaa !1046
  %i.fj = fmul double %i.ei, 1.500000e-02
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, double noundef %i.ei, double noundef %i.fi, double noundef %i.fj)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit169
  %i.fk = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.bo, label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit164, %bb.aq
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit164 ], [ %i.en, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cu

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit169
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fn = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i170, label %_ZNK7testing15AssertionResult15failure_messageEv.exit171, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit171

_ZNK7testing15AssertionResult15failure_messageEv.exit171: ; preds = %bb.bh, %bb.bg
  %i.fp = phi ptr [ %i.fo, %bb.bh ], [ @.str, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.fp)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit171
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fq = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i172 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i172, label %_ZN7testing7MessageD2Ev.exit174, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173: ; preds = %bb.bj
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !23
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #25, !inline_history !57
  br label %_ZN7testing7MessageD2Ev.exit174

_ZN7testing7MessageD2Ev.exit174:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit177

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit171
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.fw = landingpad { ptr, i32 }
end_hunk_7
