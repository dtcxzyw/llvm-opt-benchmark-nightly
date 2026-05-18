inline.NumInlined: 5797
inline.NumDeleted: 815
begin_hunk_0_@_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE10CreatePhisEPNS0_5TNodeIS3_EEPNS8_IS4_EEPNS8_IS5_EESE_SE_SE_SA_SA_SA_PNS8_IS6_EE:bb.a
  br i1 %.not.i18, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit17
  store ptr %i.w, ptr %6, align 8, !noalias !1096
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit17, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.y = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i20, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19
  store ptr %i.y, ptr %7, align 8, !noalias !1099
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i22 = icmp eq ptr %i.aa, null
  br i1 %.not.i22, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21
  store ptr %i.aa, ptr %8, align 8, !noalias !1102
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i24 = icmp eq ptr %i.ac, null
  br i1 %.not.i24, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23
  store ptr %i.ac, ptr %9, align 8, !noalias !1105
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23, %bb.k
  %i.ad = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i26 = icmp eq ptr %i.ad, null
  br i1 %.not.i26, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25
  store ptr %i.ad, ptr %10, align 8, !noalias !1108
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TEEE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE10CreatePhisEPNS0_5TNodeIS3_EEPNS8_IS4_EEPNS8_IS5_EESE_SE_SE_SA_SA_SA_PNS8_IS6_EESE_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %12 = alloca %"class.std::vector.156", align 8  ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #12 ; 7 uses
  store ptr %i.a, ptr %12, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  store i8 7, ptr %i.a, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 67372036, ptr %.sroa.5.0..sroa_idx, align 1
  store <4 x i8> <i8 7, i8 7, i8 7, i8 4>, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 4, ptr %.sroa.13.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %12) #10
  %i.f = load ptr, ptr %12, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.j) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.k = load ptr, ptr %i.e, align 8              ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit
  store ptr %i.m, ptr %1, align 8, !noalias !1111
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i13, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.o, ptr %2, align 8, !noalias !1114
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i14 = icmp eq ptr %i.q, null
  br i1 %.not.i14, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.q, ptr %3, align 8, !noalias !1117
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i15 = icmp eq ptr %i.s, null
  br i1 %.not.i15, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit16, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.s, ptr %4, align 8, !noalias !1120
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit16

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit16: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i17 = icmp eq ptr %i.u, null
  br i1 %.not.i17, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit18, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit16
  store ptr %i.u, ptr %5, align 8, !noalias !1123
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit18

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit18: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit16, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i19 = icmp eq ptr %i.w, null
  br i1 %.not.i19, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit20, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit18
  store ptr %i.w, ptr %6, align 8, !noalias !1126
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit20

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit20: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit18, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.y = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i21 = icmp eq ptr %i.y, null
  br i1 %.not.i21, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit22, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit20
  store ptr %i.y, ptr %7, align 8, !noalias !1129
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit22

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit22: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit20, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i23, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit24, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit22
  store ptr %i.aa, ptr %8, align 8, !noalias !1132
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit24

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit24: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit22, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i25, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit26, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit24
  store ptr %i.ac, ptr %9, align 8, !noalias !1135
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit26

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit26: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit24, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ae = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i27 = icmp eq ptr %i.ae, null
  br i1 %.not.i27, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit26
  store ptr %i.ae, ptr %10, align 8, !noalias !1138
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit26, %bb.l
  %i.af = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i28 = icmp eq ptr %i.af, null
  br i1 %.not.i28, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit29, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.af, ptr %11, align 8, !noalias !1141
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit29

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit29: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE10CreatePhisEPNS0_5TNodeIS3_EEPNS8_IS4_EEPNS8_IS5_EESE_SE_SE_SA_SA_SA_PNS8_IS6_EESE_SE_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %13 = alloca %"class.std::vector.156", align 8  ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #12 ; 6 uses
  store ptr %i.a, ptr %13, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  store i8 7, ptr %i.a, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 67372036, ptr %.sroa.5.0..sroa_idx.a, align 1
  store <6 x i8> <i8 7, i8 7, i8 7, i8 4, i8 4, i8 4>, ptr %.sroa.9.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %13) #10
  %i.f = load ptr, ptr %13, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.j) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.k = load ptr, ptr %i.e, align 8              ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit
  store ptr %i.m, ptr %1, align 8, !noalias !1144
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i14 = icmp eq ptr %i.o, null
  br i1 %.not.i14, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.o, ptr %2, align 8, !noalias !1147
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i15 = icmp eq ptr %i.q, null
  br i1 %.not.i15, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.q, ptr %3, align 8, !noalias !1150
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i16 = icmp eq ptr %i.s, null
  br i1 %.not.i16, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.s, ptr %4, align 8, !noalias !1153
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit17

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit17: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i18 = icmp eq ptr %i.u, null
  br i1 %.not.i18, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit17
  store ptr %i.u, ptr %5, align 8, !noalias !1156
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit17, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i20 = icmp eq ptr %i.w, null
  br i1 %.not.i20, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19
  store ptr %i.w, ptr %6, align 8, !noalias !1159
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit19, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.y = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i22 = icmp eq ptr %i.y, null
  br i1 %.not.i22, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21
  store ptr %i.y, ptr %7, align 8, !noalias !1162
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit21, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i24 = icmp eq ptr %i.aa, null
  br i1 %.not.i24, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23
  store ptr %i.aa, ptr %8, align 8, !noalias !1165
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit23, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i26 = icmp eq ptr %i.ac, null
  br i1 %.not.i26, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit27, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25
  store ptr %i.ac, ptr %9, align 8, !noalias !1168
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit27

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit27: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit25, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ae = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i28 = icmp eq ptr %i.ae, null
  br i1 %.not.i28, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit27
  store ptr %i.ae, ptr %10, align 8, !noalias !1171
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit27, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.ag = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i29 = icmp eq ptr %i.ag, null
  br i1 %.not.i29, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit30, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.ag, ptr %11, align 8, !noalias !1174
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit30

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit30: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS6_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.m
  %i.ah = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i31 = icmp eq ptr %i.ah, null
  br i1 %.not.i31, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit32, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit30
  store ptr %i.ah, ptr %12, align 8, !noalias !1177
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit32

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit32: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_NS0_6Int32TES5_S5_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit30, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE10CreatePhisEPNS0_5TNodeIS3_EEPNS7_IS4_EEPNS7_IS5_EESD_SD_SD_S9_S9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %11 = alloca %"class.std::vector.156", align 8  ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(10) ptr @_Znwm(i64 noundef 10) #12 ; 6 uses
  store ptr %i.a, ptr %11, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  store i8 7, ptr %i.a, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 67372036, ptr %.sroa.5.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 117901063, ptr %.sroa.9.0..sroa_idx, align 1
  store ptr %i.b, ptr %i.d, align 8
  %i.e = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %11) #10
  %i.f = load ptr, ptr %11, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.j) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.k = load ptr, ptr %i.e, align 8              ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit
  store ptr %i.m, ptr %1, align 8, !noalias !1180
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i12 = icmp eq ptr %i.o, null
  br i1 %.not.i12, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.o, ptr %2, align 8, !noalias !1183
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit

_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS3_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i13 = icmp eq ptr %i.q, null
  br i1 %.not.i13, label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS4_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
  store ptr %i.q, ptr %3, align 8, !noalias !1186
  br label %_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_3SmiENS0_7JSArrayENS0_5BoolTES5_S5_S5_S3_S3_S3_S3_EE9AssignPhiIS5_EEvPNS0_5TNodeIT_EEPNS1_4NodeE.exit
end_hunk_0
