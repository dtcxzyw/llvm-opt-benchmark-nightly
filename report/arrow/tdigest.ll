inline.NumInlined: 879
inline.NumDeleted: 431
begin_hunk_0_@_ZN5arrow8internal7TDigestD2Ev:bb.a
  %.ptr1.val.1.i.i.i = load ptr, ptr %.ptr1.1.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.1.i.i.i = icmp eq ptr %.ptr1.val.1.i.i.i, null
  br i1 %.not.i.i.i.1.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EED2Ev.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.ptr1.val3.1.i.i.i = load ptr, ptr %i.g, align 8
  %i.h = ptrtoint ptr %.ptr1.val3.1.i.i.i to i64
  %i.i = ptrtoint ptr %.ptr1.val.1.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.ptr1.val.1.i.i.i, i64 noundef %i.j) #21
  br label %_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 128) #21
  br label %_ZNSt10unique_ptrIN5arrow8internal7TDigest11TDigestImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow8internal7TDigest11TDigestImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5arrow8internal7TDigest11TDigestImplESt14default_deleteIS3_EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN5arrow8internal7TDigest11TDigestImplESt14default_deleteIS3_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal7TDigestC2EOS1_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !32
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  store ptr %i.d, ptr %i.b, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  store i64 %i.g, ptr %i.e, align 8, !tbaa !25
  store ptr null, ptr %i.f, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow8internal7TDigestaSEOS1_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) initializes((8, 16)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !32
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  store ptr %i.f, ptr %i.b, align 8, !tbaa !31
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #21
  br label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  store ptr null, ptr %i.k, align 8, !tbaa !25
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !25   ; 6 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !25
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow8internal7TDigest11TDigestImplESt14default_deleteIS3_EEaSEOS6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %.ptr1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.ptr1.val.i.i.i.i.i.i = load ptr, ptr %.ptr1.i.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.ptr1.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EED2Ev.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %.ptr1.val3.i.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %.ptr1.val3.i.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %.ptr1.val.i.i.i.i.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %.ptr1.val.i.i.i.i.i.i, i64 noundef %i.q) #21
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.ptr1.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.ptr1.val.1.i.i.i.i.i.i = load ptr, ptr %.ptr1.1.i.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.1.i.i.i.i.i.i = icmp eq ptr %.ptr1.val.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %.ptr1.val3.1.i.i.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = ptrtoint ptr %.ptr1.val3.1.i.i.i.i.i.i to i64
  %i.t = ptrtoint ptr %.ptr1.val.1.i.i.i.i.i.i to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.ptr1.val.1.i.i.i.i.i.i, i64 noundef %i.u) #21
  br label %_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_18CentroidESaIS3_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 128) #21
  br label %_ZNSt10unique_ptrIN5arrow8internal7TDigest11TDigestImplESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN5arrow8internal7TDigest11TDigestImplESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, %_ZNKSt14default_deleteIN5arrow8internal7TDigest11TDigestImplEEclEPS3_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal7TDigest8ValidateEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %1, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZNK5arrow8internal7TDigest10MergeInputEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call void @_ZN5arrow8internal7TDigest11TDigestImpl10MergeInputERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(124) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNK5arrow8internal7TDigest10MergeInputEv.exit

_ZNK5arrow8internal7TDigest10MergeInputEv.exit:   ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void @_ZNK5arrow8internal7TDigest11TDigestImpl8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal7TDigest10MergeInputEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call void @_ZN5arrow8internal7TDigest11TDigestImpl10MergeInputERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(124) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow8internal7TDigest11TDigestImpl8ValidateEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %.val23 = load ptr, ptr %i.f, align 8, !tbaa !33 ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val24 = load ptr, ptr %i.g, align 8, !tbaa !33 ; 3 uses
  %i.h = icmp eq ptr %.val23, %.val24             ; 2 uses
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.039 = phi double [ %i.p, %bb.f ], [ 0.000000e+00, %bb.a ]
  %.01638 = phi double [ %i.i, %bb.f ], [ f0xFFEFFFFFFFFFFFFF, %bb.a ]
  %.sroa.028.037 = phi ptr [ %i.q, %bb.f ], [ %.val23, %bb.a ] ; 3 uses
  %i.i = load double, ptr %.sroa.028.037, align 8, !tbaa !34 ; 3 uses
  %i.j = fcmp uno double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !36 ; 3 uses
  %i.m = fcmp uno double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(21) @.str.2)
  br label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit

bb.d:                                             ; preds = %bb.b
  %i.n = fcmp olt double %i.i, %.01638
  br i1 %i.n, label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp olt double %i.l, 1.000000e+00
  br i1 %i.o, label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = fadd double %.039, %i.l                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.q, %.val24
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.p, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !37 ; 2 uses
  %i.u = fcmp une double %.0.lcssa, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZN5arrow6Status8FromArgsIJRA30_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(30) @.str.5)
  br label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit

bb.h:                                             ; preds = %._crit_edge
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val22 = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.w = ptrtoint ptr %.val22 to i64
  %i.x = ptrtoint ptr %.val21 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = load i32, ptr %1, align 8, !tbaa !7
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val20 = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.af = ptrtoint ptr %.val20 to i64
  %i.ag = ptrtoint ptr %.val to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ugt i64 %i.ai, %i.ab
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(25) @.str.6)
  br label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  br i1 %i.h, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = ptrtoint ptr %.val24 to i64
  %i.am = ptrtoint ptr %.val23 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 4
  %.val29.i = load double, ptr %i.ak, align 8, !tbaa !14, !noalias !38 ; 2 uses
  %i.ap = fmul double %.val29.i, f0xBFF921FB54442D18
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %.038.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.au, %bb.p ]
  %.01937.i = phi double [ %i.ap, %.lr.ph.i ], [ %i.ax, %bb.p ]
  %.02336.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %bb.p ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val23, i64 %.02336.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !36, !noalias !38 ; 2 uses
  %i.at = fdiv double %i.as, %i.t
  %i.au = fadd double %.038.i, %i.at              ; 2 uses
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double 2.000000e+00, double -1.000000e+00)
  %i.aw = tail call double @asin(double noundef %i.av) #22, !tbaa !3, !noalias !38
  %i.ax = fmul double %.val29.i, %i.aw            ; 2 uses
  %i.ay = fcmp une double %i.as, 1.000000e+00
  %i.az = fsub double %i.ax, %.01937.i            ; 2 uses
  %i.ba = fcmp ogt double %i.az, 1.001000e+00
  %or.cond.i = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !38
  store double %i.az, ptr %i.a, align 8, !tbaa !23, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !41
  call void @_ZN5arrow8internal12JoinToStringIJRA21_KcdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(21) @.str.7, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !41
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %2, align 8, !tbaa !46, !noalias !41 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !51, !noalias !41
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %2, align 8, !tbaa !46, !noalias !41 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.o
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !51, !noalias !41
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !41
  resume { ptr, i32 } %i.bg

bb.p:                                             ; preds = %bb.l
  %i.bm = add nuw i64 %.02336.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bm, %i.ao
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.l, !llvm.loop !52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !38
  br label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit

.critedge.i:                                      ; preds = %bb.p, %bb.k
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !57
  br label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit

_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit.sink.split: ; preds = %bb.e, %bb.d
  %.str.4.sink = phi ptr [ @.str.3, %bb.d ], [ @.str.4, %bb.e ]
  tail call void @_ZN5arrow6Status8FromArgsIJRA24_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(24) %.str.4.sink)
  br label %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit

_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit: ; preds = %_ZNK5arrow8internal12_GLOBAL__N_113TDigestMergerINS1_8ScalerK1EE8ValidateERKSt6vectorINS1_8CentroidESaIS6_EEd.exit.sink.split, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %bb.c, %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal7TDigest4DumpEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZNK5arrow8internal7TDigest10MergeInputEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call void @_ZN5arrow8internal7TDigest11TDigestImpl10MergeInputERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(124) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZNK5arrow8internal7TDigest10MergeInputEv.exit

_ZNK5arrow8internal7TDigest10MergeInputEv.exit:   ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void @_ZNK5arrow8internal7TDigest11TDigestImpl4DumpEv(ptr noundef nonnull align 8 dereferenceable(124) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow8internal7TDigest11TDigestImpl4DumpEv(ptr noundef nonnull align 8 dereferenceable(124) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.d ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %.val16 = load ptr, ptr %i.e, align 8, !tbaa !17
  %.val817 = load ptr, ptr %i.f, align 8, !tbaa !20
  %.not = icmp eq ptr %.val817, %.val16
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15, %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 6) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load double, ptr %i.h, align 8, !tbaa !60
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %i.i) ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.13, i64 noundef 8) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load double, ptr %i.l, align 8, !tbaa !24
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.m) ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i8, ptr %i.u, align 8, !tbaa !79
  %.not.i1.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 67
  %i.x = load i8, ptr %i.w, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.t)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.t, i8 noundef signext 10), !inline_history !85
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.x, %bb.c ], [ %i.ab, %bb.d ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext %.0.i.i.i)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15
  %.018 = phi i64 [ %i.be, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15 ], [ 0, %bb.a ] ; 4 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %.018) ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.10, i64 noundef 9) ; 0 uses
  %.val10 = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.val10, i64 %.018
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !34
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, double noundef %i.ah) ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.11, i64 noundef 11) ; 0 uses
  %.val9 = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %.018
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !36
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, double noundef %i.am) ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63 ; 6 uses
  %.not.i.i.i11 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i11, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12: ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !79
  %.not.i1.i.i13 = icmp eq i8 %i.av, 0
  br i1 %.not.i1.i.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 67
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.at)
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef signext i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(570) %i.at, i8 noundef signext 10), !inline_history !85
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15: ; preds = %bb.f, %bb.g
  %.0.i.i.i14 = phi i8 [ %i.ax, %bb.f ], [ %i.bb, %bb.g ]
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext %.0.i.i.i14)
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) ; 0 uses
  %i.be = add nuw i64 %.018, 1                    ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !17
  %.val8 = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bf = ptrtoint ptr %.val8 to i64
  %i.bg = ptrtoint ptr %.val to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %i.bj = icmp ult i64 %i.be, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal7TDigest5MergeERKSt6vectorIS1_SaIS1_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.7", align 8     ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZNK5arrow8internal7TDigest10MergeInputEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call void @_ZN5arrow8internal7TDigest11TDigestImpl10MergeInputERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(124) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZNK5arrow8internal7TDigest10MergeInputEv.exit

_ZNK5arrow8internal7TDigest10MergeInputEv.exit:   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !90     ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5arrow8internal7TDigest10MergeInputEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNK5arrow8internal7TDigest10MergeInputEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %_ZNSt6vectorIPKN5arrow8internal7TDigest11TDigestImplESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN5arrow8internal7TDigest11TDigestImplESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN5arrow8internal7TDigest11TDigestImplESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.k, 2
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20
          to label %.noexc12 unwind label %bb.e   ; 4 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseIPKN5arrow8internal7TDigest11TDigestImplESaIS5_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.p, ptr %2, align 8, !tbaa !91
  store ptr %i.p, ptr %i.q, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l ; 2 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !96
  br label %_ZNSt6vectorIPKN5arrow8internal7TDigest11TDigestImplESaIS5_EE7reserveEm.exit
end_hunk_0
