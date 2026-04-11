inline.NumInlined: 602
inline.NumDeleted: 355
begin_hunk_0_@_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEEixEOS5_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.013.us.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp slt i64 %i.k, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.l, ptr %.0812.us.i.i.i, ptr %.013.us.i.i.i
  %spec.select14.i.i.i = select i1 %i.l, i64 24, i64 16
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us.i.i.i

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us.i.i.i: ; preds = %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us.i.i.i, %.lr.ph.split.us.i.i.i
  %.19.us.i.i.i = phi ptr [ %.013.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %spec.select.i.i.i, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us.i.i.i ] ; 2 uses
  %.pn.us.i.i.i = phi i64 [ 16, %.lr.ph.split.us.i.i.i ], [ %spec.select14.i.i.i, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.013.us.i.i.i, i64 %.pn.us.i.i.i
  %.1.us.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !45 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %.1.us.i.i.i, null
  br i1 %.not.us.i.i.i, label %_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !50
end_hunk_0
begin_hunk_1_@_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEEixEOS5_:bb.a
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.i.i.i

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.i.i.i: ; preds = %bb.b, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %bb.b ], [ %.013.i.i.i, %.lr.ph.split.i.i.i ], [ %.013.i.i.i, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn.i.i.i = phi i64 [ 24, %bb.b ], [ 16, %.lr.ph.split.i.i.i ], [ 16, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.pn.i.i.i
  %.1.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISC_EESt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !50
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_:bb.a
_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.us, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.us
  %.0.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.us, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.us ], [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.us ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.us, 0
  br i1 %i.n, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  br i1 %i.e, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us, label %bb.c

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us: ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !15
  %i.p = icmp slt i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %i.o
  br i1 %i.p, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us, %bb.b, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us: ; preds = %bb.c, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us
  %.0.i.i40.us = phi i1 [ false, %bb.c ], [ true, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us ], [ true, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us ]
  %.pn.us = phi i64 [ 24, %bb.c ], [ 16, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us ], [ 16, %_ZStltIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i.i.i.i.i.us ]
  %i.q = getelementptr inbounds nuw i8, ptr %.03846.us, i64 %.pn.us
  %.038.us = load ptr, ptr %i.q, align 8, !tbaa !45 ; 2 uses
  %.not.us = icmp eq ptr %.038.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !97
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.03846.us50.us, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !23
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us, label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us

_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us: ; preds = %.lr.ph.split.us49.split.us
  %i.u = getelementptr inbounds nuw i8, ptr %.03846.us50.us, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  %i.w = icmp slt i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %i.v ; 2 uses
  %spec.select78 = select i1 %i.w, i64 16, i64 24
  br label %_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us

_ZNKSt4lessISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEEEclERKS5_S8_.exit.thread.us52.us: ; preds = %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us, %.lr.ph.split.us49.split.us
  %.0.i.i40.us53.us = phi i1 [ true, %.lr.ph.split.us49.split.us ], [ %i.w, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us ]
  %.pn.us54.us = phi i64 [ 16, %.lr.ph.split.us49.split.us ], [ %spec.select78, %_ZSt3getILm0EJlSt17basic_string_viewIcSt11char_traitsIcEEEERKNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERKS8_.exit.i.i.i.i.i.i.i.i.us51.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %.03846.us50.us, i64 %.pn.us54.us
  %.038.us55.us = load ptr, ptr %i.x, align 8, !tbaa !45 ; 2 uses
  %.not.us56.us = icmp eq ptr %.038.us55.us, null
  br i1 %.not.us56.us, label %._crit_edge, label %.lr.ph.split.us49.split.us, !llvm.loop !97
end_hunk_3
