Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/shapes?download=true
inline.NumInlined: 51
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3p2t8Triangle21SetConstrainedEdgeCCWERKNS_5PointEb:bb.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.a, ptr %i.e, align 2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 %i.a, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.a, ptr %i.i, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3p2t8Triangle20SetConstrainedEdgeCWERKNS_5PointEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.a, ptr %i.e, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.a, ptr %i.i, align 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 %i.a, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN3p2t8Triangle17GetDelunayEdgeCCWERKNS_5PointE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %1, %i.e
  %. = select i1 %i.f, i64 3, i64 4
  %.sink = select i1 %i.c, i64 5, i64 %.
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0.in = load i8, ptr %i.g, align 1, !range !3, !noundef !4
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN3p2t8Triangle16GetDelunayEdgeCWERKNS_5PointE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %1, %i.e
  %. = select i1 %i.f, i64 5, i64 3
  %.sink = select i1 %i.c, i64 4, i64 %.
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0.in = load i8, ptr %i.g, align 1, !range !3, !noundef !4
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3p2t8Triangle17SetDelunayEdgeCCWERKNS_5PointEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %1, %i.f
  %. = select i1 %i.g, i64 3, i64 4
  %.sink5 = select i1 %i.d, i64 5, i64 %.
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink5
  store i8 %i.a, ptr %i.h, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3p2t8Triangle16SetDelunayEdgeCWERKNS_5PointEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %1, %i.f
  %. = select i1 %i.g, i64 5, i64 3
  %.sink5 = select i1 %i.d, i64 4, i64 %.
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink5
  store i8 %i.a, ptr %i.h, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3p2t8Triangle10DebugPrintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load double, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.c) ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.g) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load double, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load double, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.p) ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load double, ptr %i.t, align 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, double noundef %i.u) ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load double, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.y) ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load i8, ptr %i.ag, align 8
  %.not.i1.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 67
  %i.aj = load i8, ptr %i.ai, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.af)
  %i.ak = load ptr, ptr %i.af, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef signext i8 %i.am(ptr noundef nonnull align 8 dereferenceable(570) %i.af, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.aj, %bb.c ], [ %i.an, %bb.d ]
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext %.0.i.i.i)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3p2t8Triangle19CircumcicleContainsERKNS_5PointE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load double, ptr %i.h, align 8
  %i.j = load <2 x double>, ptr %i.b, align 8     ; 2 uses
  %2 = load <2 x double>, ptr %1, align 8         ; 4 uses
  %i.k = load <2 x double>, ptr %i.d, align 8     ; 2 uses
  %i.l = shufflevector <2 x double> %i.j, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.m = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fsub <2 x double> %i.l, %i.m             ; 4 uses
  %i.o = shufflevector <2 x double> %i.j, <2 x double> %i.k, <2 x i32> <i32 1, i32 3>
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %4 = fsub <2 x double> %i.o, %3                 ; 4 uses
  %5 = extractelement <2 x double> %2, i64 0
  %i.p = fsub double %i.g, %5                     ; 4 uses
  %6 = extractelement <2 x double> %2, i64 1
  %i.q = fsub double %i.i, %6                     ; 4 uses
  %i.r = fmul <2 x double> %4, %4
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.n, <2 x double> %i.r) ; 2 uses
  %i.t = fmul double %i.q, %i.q
  %i.u = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.t) ; 2 uses
  %i.v = extractelement <2 x double> %4, i64 1    ; 2 uses
  %i.w = fneg double %i.v
  %i.x = fmul double %i.u, %i.w
  %i.y = extractelement <2 x double> %i.s, i64 1  ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.q, double %i.y, double %i.x)
  %i.aa = extractelement <2 x double> %i.n, i64 1
  %i.ab = fneg double %i.aa                       ; 2 uses
  %i.ac = fmul double %i.u, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.p, double %i.y, double %i.ac)
  %i.ae = fneg double %i.ad
  %i.af = extractelement <2 x double> %4, i64 0
  %i.ag = fmul double %i.af, %i.ae
  %i.ah = extractelement <2 x double> %i.n, i64 0
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.z, double %i.ag)
  %i.aj = fmul double %i.q, %i.ab
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.p, double %i.v, double %i.aj)
  %i.al = extractelement <2 x double> %i.s, i64 0
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ak, double %i.ai)
  %i.an = fcmp olt double %i.am, 0.000000e+00
  ret i1 %i.an
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3p2t8Triangle18IsCounterClockwiseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load double, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fsub double %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = fsub double %i.k, %i.m
  %i.o = load double, ptr %i.i, align 8
  %i.p = fsub double %i.o, %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = fsub double %i.r, %i.m
  %i.t = fneg double %i.s
  %i.u = fmul double %i.p, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.g, double %i.n, double %i.u)
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  ret i1 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3p2t10IsDelaunayERKSt6vectorIPNS_8TriangleESaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not49 = icmp eq ptr %i.a, %i.c
  br i1 %.not49, label %.loopexit42, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %._crit_edge
  %.sroa.032.050 = phi ptr [ %i.df, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.032.050, align 8    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.028.048 = phi ptr [ %i.a, %.lr.ph ], [ %i.de, %.loopexit ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.028.048, align 8    ; 4 uses
  %i.i = icmp eq ptr %i.d, %i.h
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load <2 x double>, ptr %i.k, align 8     ; 3 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = load <2 x double>, ptr %i.l, align 8     ; 2 uses
  %i.q = load double, ptr %i.m, align 8
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load double, ptr %i.t, align 8           ; 3 uses
  %i.v = load ptr, ptr %i.j, align 8
  %1 = load <2 x double>, ptr %i.v, align 8       ; 4 uses
  %i.w = shufflevector <2 x double> %i.n, <2 x double> %i.p, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.x = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fsub <2 x double> %i.w, %i.x             ; 4 uses
  %i.z = insertelement <2 x double> %i.o, double %i.q, i64 1 ; 2 uses
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %3 = fsub <2 x double> %i.z, %2                 ; 4 uses
  %4 = extractelement <2 x double> %1, i64 0
  %i.aa = fsub double %i.s, %4                    ; 4 uses
  %5 = extractelement <2 x double> %1, i64 1
  %i.ab = fsub double %i.u, %5                    ; 4 uses
  %i.ac = fmul <2 x double> %3, %3
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.y, <2 x double> %i.ac) ; 2 uses
  %i.ae = fmul double %i.ab, %i.ab
  %i.af = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ae) ; 2 uses
  %i.ag = extractelement <2 x double> %3, i64 1   ; 2 uses
  %i.ah = fneg double %i.ag
  %i.ai = fmul double %i.af, %i.ah
  %i.aj = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.aj, double %i.ai)
  %i.al = extractelement <2 x double> %i.y, i64 1
  %i.am = fneg double %i.al                       ; 2 uses
  %i.an = fmul double %i.af, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aj, double %i.an)
  %i.ap = fneg double %i.ao
  %i.aq = extractelement <2 x double> %3, i64 0
  %i.ar = fmul double %i.aq, %i.ap
  %i.as = extractelement <2 x double> %i.y, i64 0
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ak, double %i.ar)
  %i.au = fmul double %i.ab, %i.am
  %i.av = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ag, double %i.au)
  %i.aw = extractelement <2 x double> %i.ad, i64 0
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.av, double %i.at)
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  br i1 %i.ay, label %.loopexit42, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %6 = load <2 x double>, ptr %i.ba, align 8      ; 4 uses
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fsub <2 x double> %i.w, %7                 ; 4 uses
  %9 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = fsub <2 x double> %i.z, %9              ; 4 uses
  %10 = extractelement <2 x double> %6, i64 0
  %11 = fsub double %i.s, %10                     ; 4 uses
  %12 = extractelement <2 x double> %6, i64 1
  %i.bc = fsub double %i.u, %12                   ; 4 uses
  %i.bd = fmul <2 x double> %i.bb, %i.bb
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %8, <2 x double> %i.bd) ; 2 uses
  %i.bf = fmul double %i.bc, %i.bc
  %i.bg = tail call double @llvm.fmuladd.f64(double %11, double %11, double %i.bf) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bb, i64 1 ; 2 uses
  %i.bi = fneg double %i.bh
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bk, double %i.bj)
  %i.bm = extractelement <2 x double> %8, i64 1
  %i.bn = fneg double %i.bm                       ; 2 uses
  %i.bo = fmul double %i.bg, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %11, double %i.bk, double %i.bo)
  %i.bq = fneg double %i.bp
  %i.br = extractelement <2 x double> %i.bb, i64 0
  %i.bs = fmul double %i.br, %i.bq
  %i.bt = extractelement <2 x double> %8, i64 0
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bl, double %i.bs)
  %i.bv = fmul double %i.bc, %i.bn
  %i.bw = tail call double @llvm.fmuladd.f64(double %11, double %i.bh, double %i.bv)
  %i.bx = extractelement <2 x double> %i.be, i64 0
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bw, double %i.bu)
  %i.bz = fcmp olt double %i.by, 0.000000e+00
  br i1 %i.bz, label %.loopexit42, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %13 = load <2 x double>, ptr %i.cb, align 8     ; 4 uses
  %i.cc = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fsub <2 x double> %i.w, %i.cc           ; 4 uses
  %i.ce = shufflevector <2 x double> %i.n, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %15 = fsub <2 x double> %i.ce, %14              ; 4 uses
  %16 = extractelement <2 x double> %13, i64 0
  %i.cf = fsub double %i.s, %16                   ; 4 uses
  %17 = extractelement <2 x double> %13, i64 1
  %i.cg = fsub double %i.u, %17                   ; 4 uses
  %i.ch = fmul <2 x double> %15, %15
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cd, <2 x double> %i.ch) ; 2 uses
  %i.cj = fmul double %i.cg, %i.cg
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %i.cj) ; 2 uses
  %i.cl = extractelement <2 x double> %15, i64 1  ; 2 uses
  %i.cm = fneg double %i.cl
  %i.cn = fmul double %i.ck, %i.cm
  %i.co = extractelement <2 x double> %i.ci, i64 1 ; 2 uses
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.co, double %i.cn)
  %i.cq = extractelement <2 x double> %i.cd, i64 1
  %i.cr = fneg double %i.cq                       ; 2 uses
  %i.cs = fmul double %i.ck, %i.cr
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.co, double %i.cs)
  %i.cu = fneg double %i.ct
  %i.cv = extractelement <2 x double> %15, i64 0
  %i.cw = fmul double %i.cv, %i.cu
  %i.cx = extractelement <2 x double> %i.cd, i64 0
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cp, double %i.cw)
  %i.cz = fmul double %i.cg, %i.cr
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cl, double %i.cz)
  %i.db = extractelement <2 x double> %i.ci, i64 0
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double %i.da, double %i.cy)
  %i.dd = fcmp olt double %i.dc, 0.000000e+00
  br i1 %i.dd, label %.loopexit42, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.028.048, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.de, %i.c
  br i1 %.not41, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.032.050, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.c
  br i1 %.not, label %.loopexit42, label %.lr.ph

.loopexit42:                                      ; preds = %._crit_edge, %.preheader, %bb.c, %bb.d, %bb.a
  %.not45 = phi i1 [ false, %.preheader ], [ true, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ true, %._crit_edge ]
  ret i1 %.not45
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = distinct !{null, null, null, null}
end_hunk_0
