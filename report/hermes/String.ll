inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vm24stringPrototypeSubstringEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !60
  %i.z = and i32 %i.y, 2147483647
  %i.aa = uitofp nneg i32 %i.z to double          ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %.not56 = icmp eq i32 %i.ac, 0
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm24stringPrototypeSubstringEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ai = extractvalue { i32, i64 } %i.af, 1
  %i.aj = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ak = icmp ugt i32 %i.aj, 1
  br i1 %i.ak, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm24stringPrototypeSubstringEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.e, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.g
  %storemerge = phi double [ %i.as, %bb.g ], [ %i.aa, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ %i.aa, %bb.e ]
  %4 = insertelement <2 x i64> poison, i64 %i.ai, i64 1
  %5 = bitcast <2 x i64> %4 to <2 x double>
  %6 = insertelement <2 x double> %5, double %storemerge, i64 0 ; 2 uses
  %7 = fcmp olt <2 x double> %6, zeroinitializer
  %8 = select <2 x i1> %7, <2 x double> zeroinitializer, <2 x double> %6 ; 3 uses
  %9 = insertelement <2 x double> poison, double %i.aa, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fcmp ogt <2 x double> %8, %10             ; 2 uses
  %12 = extractelement <2 x i1> %11, i64 1
  %13 = extractelement <2 x double> %8, i64 1
  %.sroa.speculated47.a = select i1 %12, double %i.aa, double %13
  %14 = fptoui double %.sroa.speculated47.a to i64 ; 2 uses
  %15 = extractelement <2 x i1> %11, i64 0
  %16 = extractelement <2 x double> %8, i64 0
  %.sroa.speculated44 = select i1 %15, double %i.aa, double %16
  %i.at = fptoui double %.sroa.speculated44 to i64 ; 2 uses
  %.sroa.speculated24 = call i64 @llvm.umin.i64(i64 %i.at, i64 %14) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %14, i64 %i.at)
  %i.au = call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 %.sroa.speculated24)
  %i.av = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i, i64 noundef %.sroa.speculated24, i64 noundef %i.au) #14 ; 2 uses
  %i.aw = extractvalue { i32, i64 } %i.av, 0
end_hunk_2
