inline.NumInlined: 705
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_110_getScriptESt17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkE:bb.a
  %i.aj = load ptr, ptr %2, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.u, i32 noundef 4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph.3, %.lr.ph.3, %.lr.ph.3, %.lr.ph.3, %bb.d, %.lr.ph.2, %.lr.ph.2, %.lr.ph.2, %.lr.ph.2, %bb.c, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %bb.b, %bb.a, %bb.g, %.critedge, %bb.h
  %.019 = phi i64 [ 4, %.critedge ], [ 0, %bb.g ], [ 4, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph.1 ], [ 0, %bb.c ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.2 ], [ 0, %bb.d ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.3 ]
  ret i64 %.019
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i64 0, 4) i64 @_ZN12_GLOBAL__N_110_getRegionESt17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkE(i64 %0, ptr nofree readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  switch i8 %i.c, label %bb.b [
    i8 64, label %.loopexit
    i8 46, label %.loopexit
    i8 95, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph.preheader
  %exitcond.not = icmp eq i64 %0, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1
  switch i8 %i.e, label %bb.c [
    i8 64, label %.loopexit
    i8 46, label %.loopexit
    i8 95, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.c:                                             ; preds = %.lr.ph.1
  %exitcond.1.not = icmp eq i64 %0, 2
  br i1 %exitcond.1.not, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1
  switch i8 %i.g, label %bb.d [
    i8 64, label %.critedge
    i8 46, label %.critedge
    i8 95, label %.critedge
    i8 45, label %.critedge
  ]

bb.d:                                             ; preds = %.lr.ph.2
  %exitcond.2.not = icmp eq i64 %0, 3
  br i1 %exitcond.2.not, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.loopexit [
    i8 64, label %.critedge
    i8 46, label %.critedge
    i8 95, label %.critedge
    i8 45, label %.critedge
  ]

.critedge:                                        ; preds = %.lr.ph.3, %.lr.ph.3, %.lr.ph.3, %.lr.ph.3, %bb.d, %.lr.ph.2, %.lr.ph.2, %.lr.ph.2, %.lr.ph.2, %bb.c
  %i.j = phi i1 [ false, %bb.c ], [ false, %.lr.ph.2 ], [ false, %.lr.ph.2 ], [ false, %.lr.ph.2 ], [ false, %.lr.ph.2 ], [ true, %bb.d ], [ true, %.lr.ph.3 ], [ true, %.lr.ph.3 ], [ true, %.lr.ph.3 ], [ true, %.lr.ph.3 ]
  %.028.lcssa = phi i64 [ 2, %bb.c ], [ 2, %.lr.ph.2 ], [ 2, %.lr.ph.2 ], [ 2, %.lr.ph.2 ], [ 2, %.lr.ph.2 ], [ 3, %bb.d ], [ 3, %.lr.ph.3 ], [ 3, %.lr.ph.3 ], [ 3, %.lr.ph.3 ], [ 3, %.lr.ph.3 ] ; 6 uses
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull %i.b) #14 ; 7 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  br i1 %i.j, label %bb.h, label %.critedge31

bb.g:                                             ; preds = %bb.e, %bb.g
  %.02754 = phi i64 [ 0, %bb.e ], [ %i.t, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.02754
  %i.q = load i8, ptr %i.p, align 1
  %i.r = call signext i8 @uprv_toupper_78(i8 noundef signext %i.q) #14
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.02754
  store i8 %i.r, ptr %i.s, align 1
  %i.t = add nuw i64 %.02754, 1                   ; 2 uses
  %exitcond58.not = icmp eq i64 %i.t, %.028.lcssa
  br i1 %exitcond58.not, label %bb.f, label %bb.g, !llvm.loop !52

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 0, ptr %i.u, align 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.h
  %i.v = phi ptr [ %i.z, %bb.i ], [ @.str.1085, %bb.h ]
  %.112.i = phi ptr [ %i.y, %bb.i ], [ @_ZN12_GLOBAL__N_111COUNTRIES_3E, %bb.h ] ; 3 uses
  %i.w = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.v) #15
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN12_GLOBAL__N_110_findIndexEPKPKcS1_.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.112.i, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !50

._crit_edge.i:                                    ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.112.i, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not11.1.i = icmp eq ptr %i.ab, null
  br i1 %.not11.1.i, label %.critedge31, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %bb.j
  %i.ac = phi ptr [ %i.ag, %bb.j ], [ %i.ab, %._crit_edge.i ]
  %.112.1.i = phi ptr [ %i.af, %bb.j ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %i.ad = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.ac) #15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN12_GLOBAL__N_110_findIndexEPKPKcS1_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.1.i
  %i.af = getelementptr inbounds nuw i8, ptr %.112.1.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.1.i = icmp eq ptr %i.ag, null
  br i1 %.not.1.i, label %.critedge31, label %.lr.ph.1.i, !llvm.loop !50

_ZN12_GLOBAL__N_110_findIndexEPKPKcS1_.exit:      ; preds = %.lr.ph.i, %.lr.ph.1.i
  %.112.lcssa.i = phi ptr [ %.112.1.i, %.lr.ph.1.i ], [ %.112.i, %.lr.ph.i ]
  %i.ah = ptrtoint ptr %.112.lcssa.i to i64
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = sub i32 %i.ai, ptrtoint (ptr @_ZN12_GLOBAL__N_111COUNTRIES_3E to i32)
  %i.ak = lshr i32 %i.aj, 3
  %.sroa.0.0.extract.trunc = zext nneg i32 %i.ak to i64
  %sext = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.al = ashr exact i64 %sext, 45
  %i.am = getelementptr inbounds i8, ptr @_ZN12_GLOBAL__N_19COUNTRIESE, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #15
  br label %.critedge31

.critedge31:                                      ; preds = %bb.j, %bb.f, %._crit_edge.i, %_ZN12_GLOBAL__N_110_findIndexEPKPKcS1_.exit
  %.sink72 = phi i64 [ %i.ao, %_ZN12_GLOBAL__N_110_findIndexEPKPKcS1_.exit ], [ %.028.lcssa, %bb.f ], [ %.028.lcssa, %._crit_edge.i ], [ %.028.lcssa, %bb.j ]
  %.sink = phi ptr [ %i.an, %_ZN12_GLOBAL__N_110_findIndexEPKPKcS1_.exit ], [ %i.o, %bb.f ], [ %i.o, %._crit_edge.i ], [ %i.o, %bb.j ]
  %i.ap = trunc i64 %.sink72 to i32
  %i.aq = load ptr, ptr %2, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.sink, i32 noundef %i.ap) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %bb.b, %bb.a, %.lr.ph.3, %.critedge, %.critedge31
  %.2 = phi i64 [ %.028.lcssa, %.critedge ], [ 0, %.lr.ph.3 ], [ %.028.lcssa, %.critedge31 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph.1 ]
  ret i64 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN12_GLOBAL__N_111_getVariantESt17basic_string_viewIcSt11char_traitsIcEEcPN6icu_788ByteSinkEbR10UErrorCode(i64 %0, ptr %1, i8 noundef signext %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [179 x i8], align 16              ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = load i32, ptr %5, align 4
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = icmp eq i64 %0, 0
  %or.cond124 = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond124, label %.critedge81, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %2, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i82 [
    i8 95, label %bb.c
    i8 45, label %bb.c
    i8 64, label %.lr.ph137
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not79 = icmp eq ptr %3, null
  br i1 %.not79, label %.lr.ph.i.i.us, label %.lr.ph.i.i

.lr.ph.i.i.us:                                    ; preds = %bb.c, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us
  %.sroa.11.0.us = phi ptr [ %i.ab, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us ], [ %1, %bb.c ] ; 2 uses
  %.sroa.0.0.us = phi i64 [ %i.ac, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us ], [ %0, %bb.c ] ; 7 uses
  %.062.us = phi i64 [ %i.ad, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us ], [ 0, %bb.c ]
  %.not.us = icmp eq i64 %.sroa.0.0.us, 0
  br i1 %.not.us, label %.thread.us, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us:  ; preds = %.lr.ph.i.i.us, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a
  %.0111420.i.i.us = phi i64 [ %6, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a ], [ 0, %.lr.ph.i.i.us ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.11.0.us, i64 %.0111420.i.i.us
  %i.h = load i8, ptr %i.g, align 1
  %i.i = sext i8 %i.h to i32
  %i.j = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.i, i64 noundef 4) #14
  %.not13.not.i.i.us = icmp eq ptr %i.j, null
  br i1 %.not13.not.i.i.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a, label %bb.d

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us
  %6 = add nuw i64 %.0111420.i.i.us, 1            ; 2 uses
  %i.k = icmp eq i64 %6, %.sroa.0.0.us
  br i1 %i.k, label %.thread.us, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.us
  %i.l = icmp eq i64 %.0111420.i.i.us, -1
  br i1 %i.l, label %.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %.0111420.i.i.us, 1
  %exitcond.not.i.i.us = icmp eq i64 %i.m, %.sroa.0.0.us ; 2 uses
  %spec.select125.us = select i1 %exitcond.not.i.i.us, i64 %.sroa.0.0.us, i64 %.0111420.i.i.us
  br label %.thread.us

.thread.us:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a, %bb.e, %bb.d, %.lr.ph.i.i.us
  %i.n = phi i1 [ %exitcond.not.i.i.us, %bb.e ], [ true, %.lr.ph.i.i.us ], [ true, %bb.d ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a ]
  %.2.i.i102104.us = phi i64 [ %.0111420.i.i.us, %bb.e ], [ -1, %.lr.ph.i.i.us ], [ -1, %bb.d ], [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a ] ; 2 uses
  %i.o = phi i64 [ %spec.select125.us, %bb.e ], [ 0, %.lr.ph.i.i.us ], [ %.sroa.0.0.us, %bb.d ], [ %.sroa.0.0.us, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.us.a ]
  %i.p = add i64 %i.o, %.062.us                   ; 6 uses
  %i.q = icmp ugt i64 %i.p, 179
  br i1 %i.q, label %.split133.us, label %bb.f

bb.f:                                             ; preds = %.thread.us
  br i1 %i.n, label %.critedge81, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.11.0.us, i64 %.2.i.i102104.us ; 4 uses
  %i.s = sub i64 %.sroa.0.0.us, %.2.i.i102104.us  ; 2 uses
  %i.t = load i8, ptr %i.r, align 1               ; 2 uses
  switch i8 %i.t, label %bb.h [
    i8 64, label %.critedge81
    i8 46, label %.critedge81
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ugt i64 %i.s, 2
  %i.v = icmp eq i8 %i.t, 45
  %or.cond126.us = and i1 %i.u, %i.v
  br i1 %or.cond126.us, label %bb.i, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.x = load i8, ptr %i.w, align 1
  switch i8 %i.x, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us [
    i8 116, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us
    i8 84, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us
    i8 117, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us
    i8 85, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us
    i8 120, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us
    i8 88, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us
  ]

_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 45
  br i1 %i.aa, label %.critedge81, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us

_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.us: ; preds = %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.us, %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.ac = add i64 %i.s, -1
  %i.ad = add nuw nsw i64 %i.p, 1
  br label %.lr.ph.i.i.us, !llvm.loop !53

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %.sroa.11.0 = phi ptr [ %i.br, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %1, %bb.c ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.bs, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %0, %bb.c ] ; 7 uses
  %.062 = phi i64 [ %i.bt, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ 0, %bb.c ]
  %.056 = phi i1 [ true, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %4, %bb.c ]
  %.not = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.j
  %.0111420.i.i = phi i64 [ %i.ai, %bb.j ], [ 0, %.lr.ph.i.i ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %.0111420.i.i
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = sext i8 %i.af to i32
  %i.ah = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.ag, i64 noundef 4) #14
  %.not13.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not13.not.i.i, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ai = add nuw i64 %.0111420.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %.sroa.0.0
  br i1 %exitcond.not.i.i, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.aj = icmp eq i64 %.0111420.i.i, -1
  br i1 %i.aj, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %i.ak = add nuw i64 %.0111420.i.i, 1
  %i.al = icmp eq i64 %i.ak, %.sroa.0.0           ; 2 uses
  %spec.select125 = select i1 %i.al, i64 %.sroa.0.0, i64 %.0111420.i.i
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %.lr.ph.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %i.am = phi i1 [ %i.al, %bb.k ], [ true, %.lr.ph.i.i ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ true, %bb.j ]
  %.2.i.i102104 = phi i64 [ %.0111420.i.i, %bb.k ], [ -1, %.lr.ph.i.i ], [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ -1, %bb.j ] ; 2 uses
  %i.an = phi i64 [ %spec.select125, %bb.k ], [ 0, %.lr.ph.i.i ], [ %.sroa.0.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %.sroa.0.0, %bb.j ] ; 4 uses
  %i.ao = add i64 %i.an, %.062                    ; 6 uses
  %i.ap = icmp ugt i64 %i.ao, 179
  br i1 %i.ap, label %.split133.us, label %bb.l

.split133.us:                                     ; preds = %.thread, %.thread.us
  store i32 1, ptr %5, align 4
  br label %.critedge81

bb.l:                                             ; preds = %.thread
  br i1 %.056, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %3, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.3, i32 noundef 1) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.at = trunc i64 %i.an to i32                  ; 2 uses
  %i.au = call i32 @uprv_min_78(i32 noundef %i.at, i32 noundef 179) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4
  %i.av = load ptr, ptr %3, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.au, i32 noundef %i.au, ptr noundef nonnull %i.a, i32 noundef 179, ptr noundef nonnull %i.b) #14 ; 2 uses
  %.not150 = icmp eq i64 %i.an, 0
  br i1 %.not150, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.n
  %i.az = load ptr, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ay, i32 noundef %i.at) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.am, label %.critedge81, label %bb.o

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.069131 = phi i64 [ %i.bg, %.lr.ph ], [ 0, %bb.n ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %.069131
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = call signext i8 @uprv_toupper_78(i8 noundef signext %i.bd) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.069131
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = add nuw i64 %.069131, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

bb.o:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %.2.i.i102104 ; 4 uses
  %i.bi = sub i64 %.sroa.0.0, %.2.i.i102104       ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 1             ; 2 uses
  switch i8 %i.bj, label %bb.p [
    i8 64, label %.critedge81
    i8 46, label %.critedge81
  ]

bb.p:                                             ; preds = %bb.o
  %i.bk = icmp ugt i64 %i.bi, 2
  %i.bl = icmp eq i8 %i.bj, 45
  %or.cond126 = and i1 %i.bk, %i.bl
  br i1 %or.cond126, label %bb.q, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  switch i8 %i.bn, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread [
    i8 116, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 84, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 117, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 85, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 120, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 88, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, 45
  br i1 %i.bq, label %.critedge81, label %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.p, %bb.q, %_ZN12_GLOBAL__N_117_isBCP47ExtensionESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bs = add i64 %i.bi, -1
  %i.bt = add nuw nsw i64 %i.ao, 1
  br label %.lr.ph.i.i, !llvm.loop !53

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i82:   ; preds = %bb.b
  %i.bu = tail call ptr @memchr(ptr noundef %1, i32 noundef 64, i64 noundef %0) #14 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i83, label %.critedge81, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i82
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %1 to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %.not.not.i = icmp eq i64 %i.bx, -1
  br i1 %.not.not.i, label %.critedge81, label %bb.r

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.i
  %i.by = add nuw nsw i64 %i.bx, 1                ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.ca = sub i64 %0, %i.by                       ; 2 uses
  %.not151 = icmp eq i64 %i.ca, 0
  br i1 %.not151, label %.critedge, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.b, %bb.r
  %.166183 = phi i64 [ %i.by, %bb.r ], [ 0, %bb.b ] ; 21 uses
  %.sroa.093.0182 = phi i64 [ %i.ca, %bb.r ], [ %0, %bb.b ] ; 13 uses
  %.sroa.7.0181 = phi ptr [ %i.bz, %bb.r ], [ %1, %bb.b ] ; 8 uses
  %.not78 = icmp eq ptr %3, null
  br i1 %.not78, label %.lr.ph137.split.us.split.us, label %.lr.ph137.split.preheader

.lr.ph137.split.preheader:                        ; preds = %.lr.ph137
  %i.cb = load i8, ptr %.sroa.7.0181, align 1     ; 2 uses
end_hunk_0
