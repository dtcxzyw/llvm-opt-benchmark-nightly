Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EdgeMerger?download=true
inline.NumInlined: 287
inline.NumDeleted: 155
begin_hunk_0_@_ZN4geos9operation9overlayng10EdgeMerger5mergeERSt6vectorIPNS1_4EdgeESaIS5_EE:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.9", align 8      ; 4 uses
  %3 = alloca %"class.std::tuple.12", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load double, ptr %1, align 8, !tbaa !28  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8           ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, %.lr.ph.i.i.i
  %.016.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i ] ; 9 uses
  %.0815.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !28 ; 2 uses
  %i.m = fcmp olt double %i.l, %i.d
  br i1 %i.m, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp ogt double %i.l, %i.d
  br i1 %i.n, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.q = fcmp olt double %i.p, %i.f
  br i1 %i.q, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fcmp ogt double %i.p, %i.f
  br i1 %i.r, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !30 ; 2 uses
  %i.u = fcmp olt double %i.t, %i.h
  br i1 %i.u, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = fcmp ogt double %i.t, %i.h
  br i1 %i.v, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 56
  %i.x = load double, ptr %i.w, align 8, !tbaa !31
  %i.y = fcmp olt double %i.x, %i.j
  br i1 %i.y, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i, %bb.f, %bb.d, %bb.b
  br label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i: ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i, %bb.g, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i ], [ 16, %bb.g ], [ 16, %bb.c ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0815.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread.i.i.i ], [ %.016.i.i.i, %bb.g ], [ %.016.i.i.i, %bb.c ], [ %.016.i.i.i, %bb.e ], [ %.016.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.i.i.i ] ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread12.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ad = fcmp olt double %i.d, %i.ac
  br i1 %i.ad, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = fcmp ogt double %i.d, %i.ac
  br i1 %i.ae, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ag = load double, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.ah = fcmp olt double %i.f, %i.ag
  br i1 %i.ah, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = fcmp ogt double %i.f, %i.ag
  br i1 %i.ai, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = fcmp olt double %i.h, %i.ak
  br i1 %i.al, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = fcmp ogt double %i.h, %i.ak
  br i1 %i.am, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  %i.ao = load double, ptr %i.an, align 8, !tbaa !31
  %i.ap = fcmp olt double %i.j, %i.ao
  br i1 %i.ap, label %.critedge, label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15

.critedge:                                        ; preds = %bb.l, %bb.j, %bb.h, %bb.a, %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit
  %.08.lcssa.i.i.i11 = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit ], [ %.19.i.i.i, %_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit ], [ %.19.i.i.i, %bb.h ], [ %.19.i.i.i, %bb.j ], [ %.19.i.i.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %1, ptr %2, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.aq = call ptr @_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15

_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit.thread15: ; preds = %bb.m, %bb.i, %bb.k, %.critedge, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit
  %.sroa.06.0 = phi ptr [ %i.aq, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessIN4geos9operation9overlayng7EdgeKeyEEclERKS3_S6_.exit ], [ %.19.i.i.i, %bb.k ], [ %.19.i.i.i, %bb.i ], [ %.19.i.i.i, %bb.m ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 64
  ret ptr %i.ar
}

declare void @_ZN4geos4util6Assert6isTrueEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4geos9operation9overlayng4Edge5mergeEPKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.in.i14.i = load i32, ptr %0, align 8, !tbaa !60 ; 2 uses
  %.sink.i15.i.not = icmp eq i32 %.sink.in.i14.i, 2
  %.sink4.i16.i = load i8, ptr %i.a, align 8, !range !61
  %.not = select i1 %.sink.i15.i.not, i8 %.sink4.i16.i, i8 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink.in.i8.i = load i32, ptr %1, align 4, !tbaa !60 ; 3 uses
  %.sink.i9.i.not = icmp eq i32 %.sink.in.i8.i, 2
  %.sink4.i10.i = load i8, ptr %i.b, align 4, !range !61
  %.not18 = select i1 %.sink.i9.i.not, i8 %.sink4.i10.i, i8 1
  %.not19 = and i8 %.not18, %.not
  store i8 %.not19, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sink.in.i.i = load i32, ptr %i.c, align 4, !tbaa !60 ; 2 uses
  %.sink.i.i.not = icmp eq i32 %.sink.in.i.i, 2
  %.sink4.i.i = load i8, ptr %i.d, align 4, !range !61
  %.not22 = select i1 %.sink.i.i.not, i8 %.sink4.i.i, i8 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sink.in.i8.i13 = load i32, ptr %i.e, align 4, !tbaa !60 ; 3 uses
  %.sink.i9.i14.not = icmp eq i32 %.sink.in.i8.i13, 2
  %.sink4.i10.i15 = load i8, ptr %i.f, align 4, !range !61
  %.not23 = select i1 %.sink.i9.i14.not, i8 %.sink4.i10.i15, i8 1
  %.not24 = and i8 %.not23, %.not22
  store i8 %.not24, ptr %i.d, align 4, !tbaa !71
  %i.g = icmp sgt i32 %.sink.in.i8.i, %.sink.in.i14.i
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %.sink.in.i8.i, ptr %0, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp sgt i32 %.sink.in.i8.i13, %.sink.in.i.i
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.sink.in.i8.i13, ptr %i.c, align 4, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0), !inline_history !59
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0), !inline_history !59
  %i.u = load <2 x double>, ptr %i.n, align 8
  %i.v = load <2 x double>, ptr %i.t, align 8
  %i.w = fcmp oeq <2 x double> %i.u, %i.v
  %2 = freeze <2 x i1> %i.w
  %3 = bitcast <2 x i1> %2 to i2
  %.0.i.i = icmp eq i2 %3, -1
  br i1 %.0.i.i, label %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit, label %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit.thread

_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit: ; preds = %bb.e
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 1), !inline_history !59
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 1), !inline_history !59
  %i.ah = load <2 x double>, ptr %i.ab, align 8
  %i.ai = load <2 x double>, ptr %i.ag, align 8
  %i.aj = fcmp oeq <2 x double> %i.ah, %i.ai
  %4 = freeze <2 x i1> %i.aj
  %5 = bitcast <2 x i1> %4 to i2
  %.0.i4.i = icmp eq i2 %5, -1
  %spec.select = select i1 %.0.i4.i, i32 1, i32 -1
  br label %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit.thread

_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit.thread: ; preds = %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit, %bb.e
  %i.ak = phi i32 [ -1, %bb.e ], [ %spec.select, %_ZNK4geos9operation9overlayng4Edge17relativeDirectionEPKS2_.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !74
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = add nsw i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !75
  %i.at = mul nsw i32 %i.as, %i.ak
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !75
  %i.aw = add nsw i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN4geos9operation9overlayng7EdgeKeyEPNS2_4EdgeESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  invoke void @_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable

_ZNSt8_Rb_treeIN4geos9operation9overlayng7EdgeKeyESt4pairIKS3_PNS2_4EdgeEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos9operation9overlayng4Edge9directionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !76
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %i.h, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4geos4util13GEOSExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.r unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.d
  %.017 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.017, label %.sink.split, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.017, label %.sink.split, label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0) ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 1) ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !inline_history !76
  %i.ac = add i64 %i.ab, -1
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.ac) ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !inline_history !76
  %i.am = add i64 %i.al, -2
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.am) ; 2 uses
  %i.ar = load double, ptr %i.r, align 8, !tbaa !77 ; 2 uses
  %i.as = load double, ptr %i.ag, align 8, !tbaa !77 ; 2 uses
  %i.at = fcmp olt double %i.ar, %i.as
  br i1 %i.at, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = fcmp ogt double %i.ar, %i.as
  br i1 %i.au, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %i.az = fcmp olt double %i.aw, %i.ay
  br i1 %i.az, label %.thread, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit:  ; preds = %bb.h
  %i.ba = fcmp ule double %i.aw, %i.ay
  br i1 %i.ba, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit
  %i.bb = load double, ptr %i.w, align 8, !tbaa !77 ; 2 uses
  %i.bc = load double, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %i.bd = fcmp olt double %i.bb, %i.bc
  br i1 %i.bd, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = fcmp ogt double %i.bb, %i.bc
  br i1 %i.be, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !26 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bj = fcmp olt double %i.bg, %i.bi
  br i1 %i.bj, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = fcmp ule double %i.bg, %i.bi
  br i1 %i.bk, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %i.bl, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTIN4geos4util13GEOSExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
end_hunk_0
