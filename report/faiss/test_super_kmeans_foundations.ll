inline.NumInlined: 1395
inline.NumDeleted: 493
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN50PdxLayout_ComputePartialNormsMatchesReference_Test8TestBodyEv:bb.a
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61, %bb.aq, %bb.an
  %.pn26.pn = phi { ptr, i32 } [ %i.bt, %bb.an ], [ %.pn26, %bb.aq ], [ %.pn26, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  br label %bb.au

bb.ar:                                            ; preds = %bb.af, %_ZN7testing7MessageD2Ev.exit59
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !23 ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit67, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64: ; preds = %bb.as
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit67

_ZN7testing15AssertionResultD2Ev.exit67:          ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ch = load float, ptr %.07.i.i.i.i.i.i.i.i.i.ptr.3, align 4, !tbaa !46
  %i.ci = fpext float %i.ch to double
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.63, double noundef %i.ci, double noundef f0x3FC1EB8520000000, double noundef f0x3EB0C6F7A0000000)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit67
  %i.cj = load i8, ptr %10, align 8, !tbaa !10, !range !21, !noundef !22
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.bf, label %bb.aw

bb.au:                                            ; preds = %_ZN7testing7MessageD2Ev.exit62, %bb.ah
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZN7testing7MessageD2Ev.exit62 ], [ %i.bk, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit84

bb.av:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit67
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i68, label %_ZNK7testing15AssertionResult15failure_messageEv.exit69, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !24
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit69

_ZNK7testing15AssertionResult15failure_messageEv.exit69: ; preds = %bb.ay, %bb.ax
  %i.cp = phi ptr [ %i.co, %bb.ay ], [ @.str.22, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 147, ptr noundef %i.cp)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit69
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.cq = load ptr, ptr %11, align 8, !tbaa !29   ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit72, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %bb.ba
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #18, !inline_history !33
  br label %_ZN7testing7MessageD2Ev.exit72

_ZN7testing7MessageD2Ev.exit72:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit75

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit69
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn30 = phi { ptr, i32 } [ %i.cw, %bb.bd ], [ %i.cv, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.cx = load ptr, ptr %11, align 8, !tbaa !29   ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i73, label %_ZN7testing7MessageD2Ev.exit75, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.be
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #18, !inline_history !33
  br label %_ZN7testing7MessageD2Ev.exit75

_ZN7testing7MessageD2Ev.exit75:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, %bb.be, %bb.bb
  %.pn30.pn = phi { ptr, i32 } [ %i.cu, %bb.bb ], [ %.pn30, %bb.be ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #18
  br label %bb.bh

bb.bf:                                            ; preds = %bb.at, %_ZN7testing7MessageD2Ev.exit72
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !23 ; 4 uses
  %.not.i.i76 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i76, label %_ZNSt6vectorIfSaIfEED2Ev.exit82, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77: ; preds = %bb.bg
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !34
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit82

_ZNSt6vectorIfSaIfEED2Ev.exit82:                  ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #19
  ret void

bb.bh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit75, %bb.av
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit75 ], [ %i.cl, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit84

_ZNSt6vectorIfSaIfEED2Ev.exit84:                  ; preds = %bb.bh, %bb.au, %bb.ag, %bb.s, %bb.e
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.bh ], [ %.pn26.pn.pn, %bb.au ], [ %.pn22.pn.pn, %bb.ag ], [ %.pn.pn.pn, %bb.s ], [ %i.h, %bb.e ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit86

_ZNSt6vectorIfSaIfEED2Ev.exit86:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit84, %bb.d
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit84 ], [ %i.g, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #19
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35BlockL2_ScalarMatchesReference_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35BlockL2_ScalarMatchesReference_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #20 ; 28 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #20
          to label %vector.ph unwind label %bb.b  ; 28 uses

vector.ph:                                        ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>, ptr %i.a, align 4, !tbaa !46
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, ptr %i.b, align 4, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x float> <float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>, ptr %i.c, align 4, !tbaa !46
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> <float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>, ptr %7, align 4, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x float> <float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01>, ptr %i.d, align 4, !tbaa !46
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x float> <float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01>, ptr %8, align 4, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x float> <float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01>, ptr %i.e, align 4, !tbaa !46
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x float> <float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01>, ptr %9, align 4, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x float> <float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01>, ptr %i.f, align 4, !tbaa !46
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <4 x float> <float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01>, ptr %10, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x float> <float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01>, ptr %i.g, align 4, !tbaa !46
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <4 x float> <float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01>, ptr %11, align 4, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x float> <float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01>, ptr %i.h, align 4, !tbaa !46
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x float> <float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01>, ptr %12, align 4, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x float> <float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01>, ptr %i.i, align 4, !tbaa !46
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <4 x float> <float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01>, ptr %13, align 4, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x float> <float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01>, ptr %i.j, align 4, !tbaa !46
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store <4 x float> <float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01>, ptr %14, align 4, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x float> <float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01>, ptr %i.k, align 4, !tbaa !46
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <4 x float> <float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01>, ptr %15, align 4, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <4 x float> <float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01>, ptr %i.l, align 4, !tbaa !46
  %16 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store <4 x float> <float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01>, ptr %16, align 4, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x float> <float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01>, ptr %i.m, align 4, !tbaa !46
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store <4 x float> <float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01>, ptr %17, align 4, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <4 x float> <float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01>, ptr %i.n, align 4, !tbaa !46
  %18 = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store <4 x float> <float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01>, ptr %18, align 4, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x float> <float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01>, ptr %i.o, align 4, !tbaa !46
  %19 = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store <4 x float> <float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01>, ptr %19, align 4, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x float> <float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01>, ptr %i.p, align 4, !tbaa !46
  %20 = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store <4 x float> <float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01>, ptr %20, align 4, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x float> <float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01>, ptr %i.q, align 4, !tbaa !46
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store <4 x float> <float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01>, ptr %21, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %vector.ph
  %indvars.iv.i = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.012.i = phi float [ 0.000000e+00, %vector.ph ], [ %i.ao, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.s = load float, ptr %i.r, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.u = load float, ptr %i.t, align 4, !tbaa !46
  %i.v = fsub float %i.s, %i.u                    ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %.012.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !46
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !46
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.w)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !46
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.ag = load float, ptr %i.af, align 4, !tbaa !46
  %i.ah = fsub float %i.ae, %i.ag                 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ac)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !46
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.2
  %i.am = load float, ptr %i.al, align 4, !tbaa !46
  %i.an = fsub float %i.ak, %i.am                 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.ai) ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 64
  br i1 %exitcond.not.i.3, label %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit, label %.lr.ph.i, !llvm.loop !61

_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit: ; preds = %.lr.ph.i
  %i.ap = fpext float %i.ao to double
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, double noundef %i.ap, double noundef 6.400000e+01, double noundef f0x3F1A36E2E0000000)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit61

bb.c:                                             ; preds = %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit
  %i.ar = load i8, ptr %1, align 8, !tbaa !10, !range !21, !noundef !22
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.n, label %bb.e

bb.d:                                             ; preds = %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.ax = phi ptr [ %i.aw, %bb.g ], [ @.str.22, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 167, ptr noundef %i.ax)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ay = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i32, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #18, !inline_history !33
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit35

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.be, %bb.l ], [ %i.bd, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.bf = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit35, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34: ; preds = %bb.m
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #18, !inline_history !33
  br label %_ZN7testing7MessageD2Ev.exit35

_ZN7testing7MessageD2Ev.exit35:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34, %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %.pn, %bb.m ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #18
  br label %bb.p

bb.n:                                             ; preds = %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i36, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #19
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph.preheader.i

_ZNSt6vectorIfSaIfEED2Ev.exit38:                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit57
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 256) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 256) #19
  ret void

bb.p:                                             ; preds = %_ZN7testing7MessageD2Ev.exit35, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit35 ], [ %i.at, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

.lr.ph.preheader.i:                               ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit57
  %indvar = phi i64 [ 0, %_ZN7testing15AssertionResultD2Ev.exit ], [ %indvar.next, %_ZN7testing15AssertionResultD2Ev.exit57 ] ; 2 uses
  %indvars.iv84 = phi i64 [ 1, %_ZN7testing15AssertionResultD2Ev.exit ], [ %indvars.iv.next85, %_ZN7testing15AssertionResultD2Ev.exit57 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %xtraiter = and i64 %indvars.iv84, 3            ; 3 uses
  %i.br = icmp ult i64 %indvar, 3
  br i1 %i.br, label %.lr.ph.i39.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %indvars.iv84, 9223372036854775804
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39, %.lr.ph.preheader.i.new
  %indvars.iv.i40 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i42.3, %.lr.ph.i39 ] ; 6 uses
  %.012.i41 = phi float [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.cp, %.lr.ph.i39 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i39 ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i40
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !46
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i40
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !46
  %i.bw = fsub float %i.bt, %i.bv                 ; 2 uses
  %i.bx = call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %.012.i41)
  %indvars.iv.next.i42 = or disjoint i64 %indvars.iv.i40, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i42
  %i.bz = load float, ptr %i.by, align 4, !tbaa !46
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i42
end_hunk_0
